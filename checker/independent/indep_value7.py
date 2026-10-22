#!/usr/bin/env python3
"""Independent exact evaluation of a certificate (any K) on witness configurations.

Reads from the certificate only K, the claimed bound, the flag labels and the SOS terms.  For every witness
configuration x (sorted positive integers, generic) it computes, from the definitions:
  d(M) = #{(d,{a,b,c}) : 2 x_d > x_a + x_b + x_c} / (K C(K-1,3));
  for each (t, m): sum over ordered pairs (U1, U2) of m-subsets with |U1 n U2| = t of Q_b[flag(U1,J), flag(U2,J)]
  (J = U1 n U2, block b = any block containing both flags), divided by the number of such pairs;
  flag(U, J) = (bits of the sorted sub-configuration x|U over the documented order of T_m, positions of J in U),
  documented order = tuples (d, a<b<c) sorted by (max, d, a, b, c).
Q_b = V^T diag(w) V / den^2 is formed exactly with python-flint integer matrices (w_num >= 0 checked, so PSD).
The final comparison max_x value(x) <= claimed is exact (common denominator, integers).
Usage: indep_value7.py CERT.json MODELS.json NPROC [--dump out.json]
       MODELS.json = list of [witness, ...] (only the witness is used)
"""
import sys, json, itertools, time
from fractions import Fraction
from math import comb, lcm, gcd
from multiprocessing import Pool
import flint

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")

G = {}


def doc_order(m):
    T = [(d,) + S for d in range(m) for S in itertools.combinations([i for i in range(m) if i != d], 3)]
    return sorted(T, key=lambda t: (max(t), t[0], t[1], t[2], t[3]))


def setup(certfn):
    C = json.load(open(certfn))
    K = C['K']
    blocks = []
    for b in C['blocks']:
        t, m = b['t'], b['m']
        assert 2 * m - t <= K and 0 <= t <= m
        labels = [(bits, tuple(J)) for bits, J in b['flags']]
        assert len(set(labels)) == len(labels)
        n = len(labels)
        den = b['sos']['den']
        assert isinstance(den, int) and den != 0
        terms = b['sos']['terms']
        L = 1
        for wn, wd, v in terms:
            assert isinstance(wn, int) and isinstance(wd, int) and wn >= 0 and wd > 0 and len(v) == n
            assert all(isinstance(z, int) for z in v)
            L = lcm(L, wd)
        V = flint.fmpz_mat([v for wn, wd, v in terms])
        WV = flint.fmpz_mat([[wn * (L // wd) * z for z in v] for wn, wd, v in terms])
        Qm = V.transpose() * WV   # = sum_i w_i L v_i v_i^T  (integers)
        Q = [[int(Qm[i, j]) for j in range(n)] for i in range(n)]
        assert all(Q[i][j] == Q[j][i] for i in range(n) for j in range(i))
        blocks.append(dict(t=t, m=m, labels=labels, Q=Q, Qden=L * den * den))
    G['K'] = K
    G['claimed'] = Fraction(*C['claimed'])
    G['blocks'] = blocks
    G['TK'] = [(d,) + S for d in range(K) for S in itertools.combinations([i for i in range(K) if i != d], 3)]
    assert len(G['TK']) == K * comb(K - 1, 3)
    groups = {}
    for bi, b in enumerate(blocks):
        g = groups.setdefault((b['t'], b['m']), {})
        for i, lab in enumerate(b['labels']):
            g.setdefault(lab, []).append((bi, i))
    G['groups'] = groups
    G['order'] = {m: doc_order(m) for (t, m) in groups}
    pairs = {}
    for (t, m) in groups:
        P = []
        for U1 in itertools.combinations(range(K), m):
            s1 = set(U1)
            for U2 in itertools.combinations(range(K), m):
                J = tuple(sorted(s1.intersection(U2)))
                if len(J) == t:
                    P.append((U1, tuple(U1.index(j) for j in J), U2, tuple(U2.index(j) for j in J)))
        assert len(P) == comb(K, t) * comb(K - t, m - t) * comb(K - m, m - t)
        pairs[(t, m)] = P
    G['pairs'] = pairs
    # common denominator for the exact value: d(M) has denominator |T_K|, block b has #pairs * Qden_b
    D = len(G['TK'])
    for b in blocks:
        D = lcm(D, len(pairs[(b['t'], b['m'])]) * b['Qden'])
    G['D'] = D
    G['mult'] = [D // (len(pairs[(b['t'], b['m'])]) * b['Qden']) for b in blocks]
    return K


def init(certfn):
    setup(certfn)


def value_num(x):
    """numerator N(x) with value(x) = N(x) / G['D']."""
    K, TK, blocks = G['K'], G['TK'], G['blocks']
    assert all(x[i] > (x[i - 1] if i else 0) for i in range(K))
    ones = 0
    for (d, a, b, c) in TK:
        v = 2 * x[d] - x[a] - x[b] - x[c]
        assert v != 0
        ones += v > 0
    num = ones * (G['D'] // len(TK))
    S = [0] * len(blocks)
    for (t, m), where in G['groups'].items():
        order = G['order'][m]
        bits = {}
        for U in itertools.combinations(range(K), m):
            y = [x[u] for u in U]
            bits[U] = ''.join('1' if 2 * y[d] > y[a] + y[b] + y[c] else '0' for (d, a, b, c) in order)
        for (U1, J1, U2, J2) in G['pairs'][(t, m)]:
            f = where.get((bits[U1], J1))
            if f is None:
                continue
            g = where.get((bits[U2], J2))
            if g is None:
                continue
            for bf, i in f:
                for bg, j in g:
                    if bf == bg:
                        S[bf] += blocks[bf]['Q'][i][j]
    for bi in range(len(blocks)):
        num += S[bi] * G['mult'][bi]
    return num


def chunk(items):
    best = None
    out = []
    for idx, x in items:
        v = value_num(x)
        out.append((idx, v))
    return out


def main():
    certfn, modfn, nproc = sys.argv[1], sys.argv[2], int(sys.argv[3])
    dump = sys.argv[5] if len(sys.argv) > 5 and sys.argv[4] == '--dump' else None
    t0 = time.time()
    setup(certfn)
    print(f'K={G["K"]}, {len(G["blocks"])} blocks, sizes {[len(b["labels"]) for b in G["blocks"]]}, '
          f'claimed {G["claimed"]} ({time.time()-t0:.0f} s setup)', flush=True)
    models = json.load(open(modfn))
    items = [(i, rec[0]) for i, rec in enumerate(models)]
    n = max(1, len(items) // (nproc * 8))
    chunks = [items[i:i + n] for i in range(0, len(items), n)]
    vals = [None] * len(items)
    with Pool(nproc, initializer=init, initargs=(certfn,)) as pool:
        for out in pool.imap_unordered(chunk, chunks):
            for i, v in out:
                vals[i] = v
    best = max(range(len(vals)), key=lambda i: vals[i])
    vmax = Fraction(vals[best], G['D'])
    ok = vmax <= G['claimed']
    print(f'max over {len(vals)} witness configurations: {vmax} = {float(vmax):.12f} (#{best}, witness {items[best][1]})')
    srt = sorted(vals, reverse=True)
    print('top:', [f'{v / G["D"]:.12f}' for v in srt[:4]], 'min:', f'{srt[-1] / G["D"]:.6f}',
          ' within 1e-8 of max:', sum(1 for v in vals if Fraction(vals[best] - v, G['D']) < Fraction(1, 10 ** 8)))
    print('claimed', G['claimed'], '=', float(G['claimed']), 'PASS' if ok else 'FAIL', f'({time.time()-t0:.0f} s)')
    if dump:
        json.dump({'D': str(G['D']), 'vals': [str(v) for v in vals]}, open(dump, 'w'))
    sys.exit(0 if ok else 1)


if __name__ == '__main__':
    main()
