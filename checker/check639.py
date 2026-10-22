#!/usr/bin/env python3
"""Independent exact checker for flag-algebra certificates of  C_6.39 = sup_mu P[X1+X2+X3 < 2 X4] <= claimed.

Usage: python3 check639.py CERT.json TREEDIR [NPROC]

Uses only the Python standard library and exact integer / Fraction arithmetic. Shares with the search code only
the documented conventions:
  * points of a k-configuration are 0..k-1, sorted increasingly: 0 < x_0 < ... < x_{k-1};
  * T_k = tuples (d, a, b, c), a < b < c, d not in {a, b, c}, form L = 2 x_d - x_a - x_b - x_c, relation holds iff L > 0;
    ordered by level j = max(d, a, b, c) for j = 3..k-1, inside a level by d, then (a, b, c) lexicographically;
  * a k-model is the 0/1 vector over T_k; a pattern restricted to a subset U (sorted) is read through U;
  * trees_k.json: for each (k-1)-model P (in the order produced for k-1, starting from the single 3-model) a pair
    [perm, tokens]: perm = order in which the level-(k-1) tuples are decided; tokens in preorder:
      2            -> both signs: subtree with bit 1, then subtree with bit 0;
      1, cert      -> bit 1 kept, bit 0 refuted;  0, cert -> bit 0 kept, bit 1 refuted;
      cert = n, row_1, mult_1, ..., row_n, mult_n with positive integer mults; row ids 0..k-1 are x_0 > 0 and
      x_i - x_{i-1} > 0; row k + tau is (+-)L_tau > 0 with the sign tau has at that node (parent bit, path bit, or
      the refuted bit for the tuple being decided). The checker verifies sum mult * row = 0 (Gordan).
  * certificate blocks: t, m, flags = list of [bits of an m-pattern over T_m as a 0/1 string, J = t positions],
    sos = {den, terms: [[w_num, w_den, v]]}, Q = sum (w_num/w_den) (v/den)(v/den)^T  (PSD by construction).
Mathematical content checked: for every k-pattern M in the rebuilt list (which contains all realizable k-models),
  d(M) + sum_blocks sum_{(J,A,B)} Q[fl(M,J,A), fl(M,J,B)] / (C(k,t) C(k-t,m-t) C(k-m,m-t)) <= claimed.
"""
import sys, json, itertools
from fractions import Fraction
from math import comb

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")


def tuples_of(k):
    T = []
    for j in range(3, k):
        for d in range(j + 1):
            others = [i for i in range(j + 1) if i != d]
            for (a, b, c) in itertools.combinations(others, 3):
                if j in (d, a, b, c):
                    T.append((d, a, b, c))
    if k >= 4:
        assert len(T) == k * comb(k - 1, 3)
    return T


def form_row(tup, k, sign):
    d, a, b, c = tup
    r = [0] * k
    r[d] += 2 * sign
    r[a] -= sign
    r[b] -= sign
    r[c] -= sign
    return r


def order_row(i, k):
    r = [0] * k
    r[i] = 1
    if i > 0:
        r[i - 1] = -1
    return r


def rebuild_models(K, treedir):
    """Return list of k-patterns (tuples of bits over T_K) containing every realizable K-model."""
    models = [()]  # the single 3-model
    for k in range(4, K + 1):
        Tk = tuples_of(k)
        npar = len(tuples_of(k - 1))
        level = Tk[npar:]
        assert all(max(t) == k - 1 for t in level)
        with open(f'{treedir}/trees_{k}.json') as f:
            trees = json.load(f)
        assert len(trees) == len(models), (k, len(trees), len(models))
        out = []
        ncert = 0
        for P, (perm, tokens) in zip(models, trees):
            assert sorted(perm) == list(range(len(level)))
            pos = 0
            assign = [None] * len(level)

            def row_of(rid, cur, bad_sign):
                if rid < k:
                    return order_row(rid, k)
                tau = rid - k
                if tau < npar:
                    return form_row(Tk[tau], k, 1 if P[tau] else -1)
                u = tau - npar
                assert 0 <= u < len(level)
                if u == cur:
                    return form_row(level[u], k, bad_sign)
                assert assign[u] is not None, 'certificate uses an undecided tuple'
                return form_row(level[u], k, 1 if assign[u] else -1)

            def walk(i):
                nonlocal pos, ncert
                if i == len(level):
                    out.append(tuple(P) + tuple(assign))
                    return
                u = perm[i]
                tok = tokens[pos]
                pos += 1
                if tok == 2:
                    for bit in (1, 0):
                        assign[u] = bit
                        walk(i + 1)
                    assign[u] = None
                    return
                assert tok in (0, 1)
                n = tokens[pos]
                pos += 1
                assert n >= 1
                bad_sign = -1 if tok == 1 else 1
                tot = [0] * k
                for q in range(n):
                    rid, mult = tokens[pos], tokens[pos + 1]
                    pos += 2
                    assert isinstance(mult, int) and mult > 0
                    assert type(mult) is int and type(rid) is int and 0 <= rid < k + len(Tk)
                    r = row_of(rid, u, bad_sign)
                    for z in range(k):
                        tot[z] += mult * r[z]
                assert all(z == 0 for z in tot), 'bad Gordan certificate'
                ncert += 1
                assign[u] = tok
                walk(i + 1)
                assign[u] = None

            sys.setrecursionlimit(100000)
            walk(0)
            assert pos == len(tokens)
        models = out
        print(f'  k={k}: {len(models)} patterns, {ncert} Gordan certificates verified', flush=True)
    return models


def load_cert(fn):
    with open(fn) as f:
        C = json.load(f)
    K = C['K']
    assert K >= 4
    blocks = []
    for b in C['blocks']:
        t, m = b['t'], b['m']
        assert 0 <= t <= m and 2 * m - t <= K, 'Lemma 3.1 of the paper needs 2m - t <= K'
        nT = len(tuples_of(m)) if m >= 4 else 0
        keys = []
        for bits, J in b['flags']:
            assert len(bits) == nT and set(bits) <= {'0', '1'}
            assert len(J) == t and sorted(J) == list(J) and len(set(J)) == t and all(0 <= j < m for j in J)
            keys.append((bits, tuple(J)))
        assert len(set(keys)) == len(keys), 'repeated flag'
        n = len(keys)
        den = b['sos']['den']
        assert type(den) is int and den != 0
        # Q = sum w v v^T / den^2, w = w_num / w_den; build exact integer matrix with common denominator
        terms = b['sos']['terms']
        L = 1
        for wn, wd, v in terms:
            assert wn >= 0 and wd > 0 and len(v) == n
            assert type(wn) is int and type(wd) is int and all(type(z) is int for z in v)
            L = L * wd // __import__('math').gcd(L, wd)
        Qint = [[0] * n for _ in range(n)]
        for wn, wd, v in terms:
            w = wn * (L // wd)
            for i in range(n):
                if v[i] == 0:
                    continue
                wi = w * v[i]
                row = Qint[i]
                for j in range(n):
                    if v[j]:
                        row[j] += wi * v[j]
        Qden = L * den * den  # Q = Qint / Qden
        blocks.append(dict(t=t, m=m, keys={k: i for i, k in enumerate(keys)}, Q=Qint, Qden=Qden))
    claimed = Fraction(C['claimed'][0], C['claimed'][1])
    return K, blocks, claimed


_G = {}


def init_worker(K, blocks):
    _G['K'] = K
    _G['blocks'] = blocks
    TK = tuples_of(K)
    idx = {t: i for i, t in enumerate(TK)}
    _G['nT'] = len(TK)
    ms = sorted(set(b['m'] for b in blocks))
    sub_idx = {}
    for m in ms:
        Tm = tuples_of(m) if m >= 4 else []
        for U in itertools.combinations(range(K), m):
            sub_idx[U] = [idx[(U[d], U[a], U[b], U[c])] for (d, a, b, c) in Tm]
    _G['sub_idx'] = sub_idx
    pairs = sorted(set((b['t'], b['m']) for b in blocks))
    trip = {}
    for (t, m) in pairs:
        L = []
        for J in itertools.combinations(range(K), t):
            rest = [i for i in range(K) if i not in J]
            for A in itertools.combinations(rest, m - t):
                rest2 = [i for i in rest if i not in A]
                for B in itertools.combinations(rest2, m - t):
                    U1 = tuple(sorted(J + A))
                    U2 = tuple(sorted(J + B))
                    L.append((U1, tuple(U1.index(j) for j in J), U2, tuple(U2.index(j) for j in J)))
        assert len(L) == comb(K, t) * comb(K - t, m - t) * comb(K - m, m - t)
        trip[(t, m)] = L
    _G['trip'] = trip
    groups = {}
    for bi, b in enumerate(blocks):
        g = groups.setdefault((b['t'], b['m']), {})
        for key, i in b['keys'].items():
            g.setdefault(key, []).append((bi, i))
    _G['groups'] = groups


def value(M):
    """Exact value d(M) + sum_b <Q_b, c_b(M)> for one K-pattern M."""
    K, blocks = _G['K'], _G['blocks']
    restr = {}

    def r(U):
        s = restr.get(U)
        if s is None:
            s = ''.join('1' if M[i] else '0' for i in _G['sub_idx'][U])
            restr[U] = s
        return s

    total = Fraction(sum(1 for z in M if z), _G['nT'])
    S = [0] * len(blocks)
    for (t, m), where in _G['groups'].items():
        # where: flag key -> list of (block number, index in block); one pass over the triples of (t, m)
        for (U1, J1, U2, J2) in _G['trip'][(t, m)]:
            fl = where.get((r(U1), J1))
            if fl is None:
                continue
            gl = where.get((r(U2), J2))
            if gl is None:
                continue
            for (bf, f) in fl:
                for (bg, g) in gl:
                    if bf == bg:
                        S[bf] += blocks[bf]['Q'][f][g]
    for bi, b in enumerate(blocks):
        if S[bi]:
            D = len(_G['trip'][(b['t'], b['m'])])
            total += Fraction(S[bi], D * b['Qden'])
    return total


def chunk_max(chunk):
    best = None
    arg = None
    for i, M in chunk:
        v = value(M)
        if best is None or v > best:
            best, arg = v, i
    return best, arg


def main():
    certfn, treedir = sys.argv[1], sys.argv[2]
    nproc = int(sys.argv[3]) if len(sys.argv) > 3 else 1
    K, blocks, claimed = load_cert(certfn)
    print(f'certificate: K={K}, blocks {[len(b["keys"]) for b in blocks]}, claimed {claimed} = {float(claimed):.9f}')
    models = rebuild_models(K, treedir)
    items = list(enumerate(models))
    if nproc > 1:
        from multiprocessing import Pool
        n = max(1, len(items) // (nproc * 4))
        chunks = [items[i:i + n] for i in range(0, len(items), n)]
        with Pool(nproc, initializer=init_worker, initargs=(K, blocks)) as pool:
            res = pool.map(chunk_max, chunks)
    else:
        init_worker(K, blocks)
        res = [chunk_max(items)]
    best, arg = max(res, key=lambda z: z[0])
    print(f'max over {len(models)} patterns: {best} = {float(best):.12f} (pattern #{arg})')
    ok = best <= claimed
    print('RESULT:', 'PASS' if ok else 'FAIL', f'C_6.39 <= {claimed} = {float(claimed):.9f}' if ok else '')
    sys.exit(0 if ok else 1)


if __name__ == '__main__':
    main()
