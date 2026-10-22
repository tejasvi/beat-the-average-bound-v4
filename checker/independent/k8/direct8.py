#!/usr/bin/env python3
"""Independent check (k = 8): evaluate the certificate on given 8-patterns directly from the definition
(without Lemma 5.1 of the paper):
  val8(M) = d(M) + sum_blocks (1/#pairs) sum_{(U1,U2): |U1|=|U2|=m, |U1 n U2|=t} Q_b[flag(U1,J), flag(U2,J)],
  J = U1 n U2, flag(U,J) = (bits of M restricted to U over the documented order of T_m, positions of J in U),
for every block including (6,7).  Compares with the values computed by indep_k8.py (Lemma 5.1) on its top and sampled
patterns, exactly.  Usage: direct8.py CERT8.json indep_k8_out.json NPROC
"""
import sys, json, itertools, time
from fractions import Fraction
from math import comb, lcm
import flint
from multiprocessing import get_context

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")

G = {}


def doc_order(m):
    T = [(d,) + S for d in range(m) for S in itertools.combinations([i for i in range(m) if i != d], 3)]
    return sorted(T, key=lambda t: (max(t), t[0], t[1], t[2], t[3]))


def setup(certfn):
    cert = json.load(open(certfn))
    K = cert['K']
    T8 = doc_order(K)
    idx8 = {t: i for i, t in enumerate(T8)}
    blocks = []
    groups = {}
    for b in cert['blocks']:
        t, m = b['t'], b['m']
        labels = [(bits, tuple(J)) for bits, J in b['flags']]
        n = len(labels)
        den = b['sos']['den']
        L = 1
        for wn, wd, v in b['sos']['terms']:
            assert type(wn) is int and wn >= 0 and type(wd) is int and wd > 0
            L = lcm(L, wd)
        V = flint.fmpz_mat([v for wn, wd, v in b['sos']['terms']])
        WV = flint.fmpz_mat([[wn * (L // wd) * z for z in v] for wn, wd, v in b['sos']['terms']])
        Qm = V.transpose() * WV
        bi = len(blocks)
        blocks.append(([[int(Qm[i, j]) for j in range(n)] for i in range(n)], L * den * den, t, m))
        g = groups.setdefault((t, m), {})
        for i, lab in enumerate(labels):
            g.setdefault(lab, []).append((bi, i))
    pairs = {}
    sub = {}
    for (t, m) in groups:
        P = []
        for U1 in itertools.combinations(range(K), m):
            for U2 in itertools.combinations(range(K), m):
                J = tuple(sorted(set(U1) & set(U2)))
                if len(J) == t:
                    P.append((U1, tuple(U1.index(j) for j in J), U2, tuple(U2.index(j) for j in J)))
        assert len(P) == comb(K, t) * comb(K - t, m - t) * comb(K - m, m - t)
        pairs[(t, m)] = P
        Tm = doc_order(m)
        for U in itertools.combinations(range(K), m):
            sub[U] = [idx8[(U[d], U[a], U[b], U[c])] for (d, a, b, c) in Tm]
    G.update(K=K, T8=T8, blocks=blocks, groups=groups, pairs=pairs, sub=sub)


def direct(M):
    """exact val8 of the 8-pattern M (int over T_8 doc order)."""
    T8, blocks = G['T8'], G['blocks']
    bit = [(M >> j) & 1 for j in range(len(T8))]
    val = Fraction(sum(bit), len(T8))
    S = [0] * len(blocks)
    for (t, m), where in G['groups'].items():
        rs = {}
        for (U1, J1, U2, J2) in G['pairs'][(t, m)]:
            if U1 not in rs:
                rs[U1] = ''.join(str(bit[i]) for i in G['sub'][U1])
            if U2 not in rs:
                rs[U2] = ''.join(str(bit[i]) for i in G['sub'][U2])
            f = where.get((rs[U1], J1))
            if f is None:
                continue
            g = where.get((rs[U2], J2))
            if g is None:
                continue
            for bf, i in f:
                for bg, j in g:
                    if bf == bg:
                        S[bf] += blocks[bf][0][i][j]
    for bi, (Q, qd, t, m) in enumerate(blocks):
        if S[bi]:
            val += Fraction(S[bi], len(G['pairs'][(t, m)]) * qd)
    return val


def work(items):
    return [(direct(M), v) for v, M in items]


def main():
    certfn, outfn, nproc = sys.argv[1], sys.argv[2], int(sys.argv[3])
    t0 = time.time()
    setup(certfn)
    O = json.load(open(outfn))
    S = int(O['S'])
    items = [(Fraction(int(v), S), int(M)) for v, M in O['top'] + O['samp']]
    items += [(Fraction(int(h[3]), S), int(h[2])) for h in O['high']]
    ctx = get_context('fork')
    with ctx.Pool(nproc) as pool:
        res = pool.map(work, [items[i::nproc * 4] for i in range(nproc * 4)])
    pairs = [z for r in res for z in r]
    bad = [(float(a), float(b)) for a, b in pairs if a != b]
    print(f'{len(pairs)} patterns ({len(O["top"])} top, {len(O["samp"])} sampled, {len(O["high"])} above the claim): '
          f'direct-definition value == Lemma 5.1 value for {len(pairs) - len(bad)}; mismatches {len(bad)} {bad[:5]}; '
          f'max direct {float(max(a for a, b in pairs)):.12f}; {time.time()-t0:.0f} s')


if __name__ == '__main__':
    main()
