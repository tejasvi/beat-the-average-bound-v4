#!/usr/bin/env python3
"""Independent exact checker for k = 8 flag-algebra certificates of C_6.39 <= claimed (no 8-model enumeration).

Usage: python3 check639_k8.py CERT8.json TREEDIR [NPROC]

Standard library only; uses check639.py (same directory) for the documented conventions and the 7-pattern rebuild.
Mathematics (see the paper: Lemmas 2.1-2.3 and 3.1, Theorem 3.3, Proposition 4.1, Lemmas 4.2 and 5.1):
  * Every realizable sorted 8-model M is the pattern of a consistent tuple (P, C_0..C_6) of 7-patterns from the complete
    rebuilt list: P = M - 7, C_x = M - x, C_x - 6 = P - x, and C_a - (b-1) = C_b - a for a < b <= 6 (Lemma 4.2 and
    the join in Section 4 of the paper).
  * For blocks with 2m - t <= 7 the value of M is the average over its eight 7-point restrictions of the k = 7 value
    (each triple spanning s <= 7 points lies in 8 - s seven-subsets and D_8 = 8 D_7 / (8 - s); Lemma 5.1 (a), (b)).
  * Blocks (t, m) = (6, 7) contribute (1/28) sum_{a<b} Q[F_a][F_b], F_a = (M - b, J = all positions except a),
    F_b = (M - a, J = all positions except b - 1) (Lemma 5.1 (c)).
  * Every consistent tuple whose exact value exceeds the claim must appear in "excluded" with a Gordan certificate
    (positive integers y with sum y_i r_i = 0 over the strict rows x_0 > 0, x_i - x_{i-1} > 0, +-L_tau > 0 of its pattern).
"""
import sys, os, json, itertools
from fractions import Fraction
from math import comb, gcd
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import check639 as C7

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")

_G = {}


def lcm(a, b):
    return a * b // gcd(a, b)


def load(certfn):
    with open(certfn) as f:
        cert = json.load(f)
    assert cert['K'] == 8
    lower, top = [], []
    for b in cert['blocks']:
        t, m = b['t'], b['m']
        assert 0 <= t <= m and 2 * m - t <= 8
        if 2 * m - t <= 7:
            lower.append(b)
        else:
            assert (t, m) == (6, 7), 'only (6,7) is supported among types with 2m - t = 8'
            top.append(b)
    claimed = Fraction(cert['claimed'][0], cert['claimed'][1])
    return cert, lower, top, claimed


def build_Q(b):
    """Exact Q = Qint / Qden from SOS terms (PSD by construction)."""
    n = len(b['flags'])
    den = b['sos']['den']
    assert type(den) is int and den != 0
    L = 1
    for wn, wd, v in b['sos']['terms']:
        assert wn >= 0 and wd > 0 and len(v) == n
        assert type(wn) is int and type(wd) is int and all(type(z) is int for z in v)
        L = lcm(L, wd)
    Qint = [[0] * n for _ in range(n)]
    for wn, wd, v in b['sos']['terms']:
        w = wn * (L // wd)
        nz = [i for i in range(n) if v[i]]
        for i in nz:
            wi = w * v[i]
            row = Qint[i]
            for j in nz:
                row[j] += wi * v[j]
    return Qint, L * den * den


def f7_values(models7, lower):
    """Exact k = 7 value of each 7-pattern for the lower blocks (as Fractions), via check639's machinery."""
    blocks = []
    for b in lower:
        t, m = b['t'], b['m']
        keys = []
        for bits, J in b['flags']:
            assert len(J) == t and list(J) == sorted(J) and len(set(J)) == t and all(0 <= j < m for j in J)
            keys.append((bits, tuple(J)))
        assert len(set(keys)) == len(keys)
        Qint, Qden = build_Q(b)
        blocks.append(dict(t=t, m=m, keys={k: i for i, k in enumerate(keys)}, Q=Qint, Qden=Qden))
    C7.init_worker(7, blocks)
    return [C7.value(M) for M in models7]


def init8(models7, f7, top):
    T7 = C7.tuples_of(7)
    T6 = C7.tuples_of(6)
    idx7 = {t: i for i, t in enumerate(T7)}
    key6 = {}
    # deletion map del7[N][i] = index (in a dict of 6-patterns) of N - i
    pat6 = {}
    del7 = []
    for N in models7:
        row = []
        for i in range(7):
            U = [q for q in range(7) if q != i]
            bits = tuple(N[idx7[(U[d], U[a], U[b], U[c])]] for (d, a, b, c) in T6)
            row.append(pat6.setdefault(bits, len(pat6)))
        del7.append(row)
    children = {}
    for n, row in enumerate(del7):
        children.setdefault(row[6], []).append(n)
    # top blocks: flag -> (block, local index); flags are (bits of a 7-pattern, J of size 6)
    look7 = {''.join('1' if z else '0' for z in N): n for n, N in enumerate(models7)}
    topkey = {}
    tops = []
    for bi, b in enumerate(top):
        Qint, Qden = build_Q(b)
        tops.append((Qint, Qden))
        seen = set()
        for li, (bits, J) in enumerate(b['flags']):
            assert len(J) == 6 and list(J) == sorted(J) and all(0 <= j < 7 for j in J)
            (p,) = set(range(7)) - set(J)
            n = look7.get(bits)
            assert (bits, p) not in seen
            seen.add((bits, p))
            if n is None:
                continue  # a flag on an unrealizable pattern never occurs
            topkey.setdefault((n, p), []).append((bi, li))
    # common denominator for exact integer evaluation
    L = 1
    for v in f7:
        L = lcm(L, v.denominator)
    for _, Qden in tops:
        L = lcm(L, Qden)
    # value8 * (8 * 28 * L) = 28 * L * sum f7 + 8 * L * sum Q-terms
    f7int = [v.numerator * (L // v.denominator) for v in f7]
    topint = [([[e * (L // Qden) for e in row] for row in Qint]) for Qint, Qden in tops]
    _G.update(del7=del7, children=children, f7int=f7int, topkey=topkey, topint=topint, L=L)


def consistent_tuples(p):
    """All (C_0..C_6) with C_x in children(P - x) and del7[C_a][b-1] == del7[C_b][a] for a < b."""
    del7, children = _G['del7'], _G['children']
    doms = [children.get(del7[p][x], []) for x in range(7)]
    idx = []
    for x in range(7):
        d = {}
        for c in doms[x]:
            d.setdefault(tuple(del7[c][:x]), []).append(c)
        idx.append(d)
    out = []
    cur = []

    def rec(x):
        if x == 7:
            out.append(tuple(cur))
            return
        key = tuple(del7[cur[a]][x - 1] for a in range(x))
        for c in idx[x].get(key, ()):
            cur.append(c)
            rec(x + 1)
            cur.pop()

    rec(0)
    return out


def value8_scaled(p, Cs):
    """Integer value8 * 224 * L for the tuple (C_0..C_6, P = p)."""
    f7int, topkey, topint = _G['f7int'], _G['topkey'], _G['topint']
    R = list(Cs) + [p]  # R[x] = M - x
    s = 0
    for x in range(8):
        s += f7int[R[x]]
    s *= 28
    q = 0
    for a in range(8):
        for b in range(a + 1, 8):
            fa = topkey.get((R[b], a))
            if fa is None:
                continue
            fb = topkey.get((R[a], b - 1))
            if fb is None:
                continue
            for (ba, la) in fa:
                for (bb, lb) in fb:
                    if ba == bb:
                        q += topint[ba][la][lb]
    return s + 8 * q


def work(ps):
    claimed_scaled = _G['claimed_scaled']
    best = None   # max over tuples not above the claim
    high = []
    n = 0
    for p in ps:
        for Cs in consistent_tuples(p):
            n += 1
            v = value8_scaled(p, Cs)
            if v * claimed_scaled[1] > claimed_scaled[0]:
                high.append((p, Cs, v))
            elif best is None or v > best[0]:
                best = (v, p, Cs)
    return n, best, high


def pattern8(models7, p, Cs):
    """Bits over T_8 of the tuple (C_0..C_6, P)."""
    T8 = C7.tuples_of(8)
    idx7 = {t: i for i, t in enumerate(C7.tuples_of(7))}
    R = list(Cs) + [p]
    bits = []
    for (d, a, b, c) in T8:
        pts = (d, a, b, c)
        x = 7 if 7 not in pts else min(q for q in range(7) if q not in pts)
        rel = tuple(q if q < x else q - 1 for q in pts)
        bits.append(models7[R[x]][idx7[rel]])
    return bits


def gordan_ok(bits, cert):
    T8 = C7.tuples_of(8)
    tot = [0] * 8
    for rid, mult in cert:
        assert isinstance(mult, int) and mult > 0
        assert type(mult) is int and type(rid) is int and 0 <= rid < 8 + len(T8)
        if rid < 8:
            r = C7.order_row(rid, 8)
        else:
            tau = rid - 8
            r = C7.form_row(T8[tau], 8, 1 if bits[tau] else -1)
        for z in range(8):
            tot[z] += mult * r[z]
    return all(z == 0 for z in tot) and len(cert) > 0


def main():
    certfn, treedir = sys.argv[1], sys.argv[2]
    nproc = int(sys.argv[3]) if len(sys.argv) > 3 else 1
    cert, lower, top, claimed = load(certfn)
    print(f'certificate: K=8, lower blocks {len(lower)}, (6,7) blocks {len(top)}, claimed {claimed} = '
          f'{float(claimed):.9f}, excluded patterns listed {len(cert.get("excluded", []))}', flush=True)
    models7 = C7.rebuild_models(7, treedir)
    f7 = f7_values(models7, lower)
    print(f'  f7: max {float(max(f7)):.9f}', flush=True)
    init8(models7, f7, top)
    S = 8 * 28 * _G['L']
    _G['claimed_scaled'] = (claimed.numerator * S, claimed.denominator)  # v/S > claimed  <=>  v*den > num*S
    ps = list(range(len(models7)))
    if nproc > 1:
        from multiprocessing import get_context
        ctx = get_context('fork')
        chunks = [ps[i::nproc * 8] for i in range(nproc * 8)]
        with ctx.Pool(nproc) as pool:
            res = pool.map(work, chunks)
    else:
        res = [work(ps)]
    ntot = sum(r[0] for r in res)
    best = max((r[1] for r in res if r[1] is not None), key=lambda z: z[0])
    high = [h for r in res for h in r[2]]
    print(f'consistent tuples: {ntot}; max value among tuples not above the claim {Fraction(best[0], S)} = '
          f'{float(Fraction(best[0], S)):.12f}; above the claim: {len(high)}'
          + (f' (max {float(Fraction(max(h[2] for h in high), S)):.12f})' if high else ''), flush=True)
    excl = {e[0]: e[1] for e in cert.get('excluded', [])}
    bad = 0
    for p, Cs, v in high:
        bits = pattern8(models7, p, Cs)
        key = ''.join('1' if z else '0' for z in bits)
        g = excl.get(key)
        if g is None or not gordan_ok(bits, g):
            bad += 1
    if bad == 0:
        # the maximum over tuples not excluded
        print(f'all {len(high)} tuples above the claim are excluded by verified Gordan certificates')
        print('RESULT: PASS', f'C_6.39 <= {claimed} = {float(claimed):.9f}')
        sys.exit(0)
    print(f'RESULT: FAIL ({bad} tuples above the claim without a valid exclusion)')
    sys.exit(1)


if __name__ == '__main__':
    main()
