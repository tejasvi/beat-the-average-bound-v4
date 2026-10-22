#!/usr/bin/env python3
"""Independent check (k = 8): join of 7-models into candidate 8-patterns and exact evaluation of a k = 8 certificate.

Inputs (all my own except the certificate):
  models_7.json  my BFS list of realizable 7-models (integer witnesses), complete by the cell-BFS argument;
  f7.json        exact k = 7 values of the certificate's lower blocks on those witnesses (indep_value7.py, K = 7 view);
  CERT8.json     the certificate (flag labels, SOS terms, claimed bound, excluded patterns).
Join (bit-level, restrictions computed from witness coordinates): an 8-pattern M is kept iff M - x is a listed 7-model
for every x in 0..7.  Write P = M - 7.  For x <= 6, C = M - x is a listed 7-model whose first six points form P - x;
its tuples through its last point fix the bits of M's tuples through point 7 that avoid x.  The candidates for slot x
are indexed by their bits on the tuples already fixed by slots 0..x-1.
Value (Lemma 5.1 of the paper): val8 = (1/8) sum_{x=0..7} f7(M - x) + (1/28) sum_{a<b} Q[F_a][F_b], with
F_a = (M - b, J = positions except a), F_b = (M - a, J = positions except b - 1); all exact, one common denominator.
Usage: indep_k8.py CERT8.json NPROC
models_7.json and f7.json are read from, and indep_k8_out.json is written to, the current directory.
indep_k8_out.json also records every n-th candidate of each of the 16*NPROC chunks, where n is the environment variable
SAMPLE_EVERY (default 25000).
"""
import sys, os, json, itertools, time, hashlib, random
from fractions import Fraction
from math import lcm
import flint
from multiprocessing import get_context

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")

AUD = os.getcwd()
G = {}


def doc_order(m):
    T = [(d,) + S for d in range(m) for S in itertools.combinations([i for i in range(m) if i != d], 3)]
    return sorted(T, key=lambda t: (max(t), t[0], t[1], t[2], t[3]))


def pbits(y, order):
    return tuple(1 if 2 * y[d] > y[a] + y[b] + y[c] else 0 for (d, a, b, c) in order)


def setup(certfn):
    T6, T7, T8 = doc_order(6), doc_order(7), doc_order(8)
    assert T8[:140] == T7 and all(max(t) == 7 for t in T8[140:])
    lev7 = {t: i for i, t in enumerate(T8[140:])}          # level-7 tuples of T_8 -> 0..139
    W = [w for w, _ in json.load(open(f'{AUD}/models_7.json'))]
    n7 = len(W)
    for w in W:
        assert all(w[i] > (w[i - 1] if i else 0) for i in range(7))
    bits7 = [pbits(w, T7) for w in W]
    str7 = [''.join(map(str, b)) for b in bits7]
    assert len(set(str7)) == n7
    last6 = [pbits(w[:6], T6) for w in W]                   # C - 6
    dele6 = [[pbits([w[i] for i in range(7) if i != x], T6) for x in range(7)] for w in W]   # P - x
    children = {}
    for n in range(n7):
        children.setdefault(last6[n], []).append(n)
    # slot x: C's tuples through its point 6 -> M's level-7 tuples avoiding x
    T7lev6 = [(j, t) for j, t in enumerate(T7) if 6 in t]
    cover, val = [], []
    for x in range(7):
        mp = lambda i: 7 if i == 6 else (i if i < x else i + 1)
        pos = [(j, lev7[tuple(mp(i) for i in t)]) for j, t in T7lev6]
        cover.append(sum(1 << q for _, q in pos))
        val.append([sum(1 << q for j, q in pos if bits7[n][j]) for n in range(n7)])
    acc = 0
    over = []
    for x in range(7):
        over.append(cover[x] & acc)
        acc |= cover[x]
    assert acc == (1 << 140) - 1
    # f7 (exact, from my independent evaluator), common denominator
    F = json.load(open(f'{AUD}/f7.json'))
    D7 = int(F['D'])
    f7num = [int(v) for v in F['vals']]
    assert len(f7num) == n7
    cert = json.load(open(certfn))
    assert cert['K'] == 8
    claimed = Fraction(*cert['claimed'])
    tops = []
    flagidx = {}
    for b in cert['blocks']:
        t, m = b['t'], b['m']
        if 2 * m - t <= 7:
            continue
        assert (t, m) == (6, 7)
        labels = [(bits, tuple(J)) for bits, J in b['flags']]
        n = len(labels)
        den = b['sos']['den']
        assert type(den) is int and den != 0
        L = 1
        for wn, wd, v in b['sos']['terms']:
            assert type(wn) is int and type(wd) is int and wn >= 0 and wd > 0 and len(v) == n
            assert all(type(z) is int for z in v)
            L = lcm(L, wd)
        V = flint.fmpz_mat([v for wn, wd, v in b['sos']['terms']])
        WV = flint.fmpz_mat([[wn * (L // wd) * z for z in v] for wn, wd, v in b['sos']['terms']])
        Qm = V.transpose() * WV
        bi = len(tops)
        tops.append(([[int(Qm[i, j]) for j in range(n)] for i in range(n)], L * den * den))
        for i, lab in enumerate(labels):
            flagidx.setdefault(lab, []).append((bi, i))
    Lc = D7
    for _, qd in tops:
        Lc = lcm(Lc, qd)
    f7s = [v * (Lc // D7) for v in f7num]
    topQ = [[[e * (Lc // qd) for e in row] for row in Q] for Q, qd in tops]
    # (7-model n, unmarked position p) -> list of (block, index)
    look = {}
    allJ = {p: tuple(i for i in range(7) if i != p) for p in range(7)}
    for n in range(n7):
        for p in range(7):
            e = flagidx.get((str7[n], allJ[p]))
            if e:
                look[(n, p)] = e
    G.update(T8=T8, bits7=bits7, str7=str7, dele6=dele6, children=children, cover=cover, val=val, over=over,
             f7s=f7s, topQ=topQ, look=look, Lc=Lc, claimed=claimed, n7=n7, cert=cert, D7=D7, f7num=f7num,
             tops=tops, flagidx=flagidx)


def join(p):
    """all (C_0..C_6) for parent p, as lists of indices, with the level-7 bit word."""
    children, dele6, val, over = G['children'], G['dele6'], G['val'], G['over']
    slots = []
    for x in range(7):
        idx = {}
        for c in children.get(dele6[p][x], ()):
            idx.setdefault(val[x][c] & over[x], []).append(c)
        slots.append(idx)
    out = []
    cur = []

    def rec(x, accv):
        if x == 7:
            out.append((tuple(cur), accv))
            return
        for c in slots[x].get(accv & over[x], ()):
            cur.append(c)
            rec(x + 1, accv | val[x][c])
            cur.pop()
    rec(0, 0)
    return out


def value_scaled(p, Cs):
    """val8 * 224 * Lc as an integer."""
    f7s, topQ, look = G['f7s'], G['topQ'], G['look']
    R = list(Cs) + [p]
    s = 28 * sum(f7s[r] for r in R)
    q = 0
    for a in range(8):
        for b in range(a + 1, 8):
            fa = look.get((R[b], a))
            if fa is None:
                continue
            fb = look.get((R[a], b - 1))
            if fb is None:
                continue
            for ba, i in fa:
                for bb, j in fb:
                    if ba == bb:
                        q += topQ[ba][i][j]
    return s + 8 * q


def m_int(p, accv):
    """8-pattern as an int over T_8 doc order: bits 0..139 from P, bits 140..279 from the level-7 word."""
    v = 0
    for j, bt in enumerate(G['bits7'][p]):
        if bt:
            v |= 1 << j
    return v | (accv << 140)


def work(ps):
    S = 224 * G['Lc']
    cl = G['claimed']
    thr_num, thr_den = cl.numerator * S, cl.denominator
    n = 0
    best = None
    high = []
    per = []
    top = []      # the 8 largest values not above the claim in this chunk (for the direct-definition check)
    samp = []     # every SAMPLE_EVERY-th pattern (deterministic sample; default 25000)
    for p in ps:
        tup = join(p)
        dig = 0
        for Cs, accv in tup:
            v = value_scaled(p, Cs)
            M = m_int(p, accv)
            dig = (dig + int.from_bytes(hashlib.blake2b(M.to_bytes(35, 'little'), digest_size=8).digest(), 'little')) % (1 << 64)
            if v * thr_den > thr_num:
                high.append((p, Cs, M, v))
            else:
                if best is None or v > best[0]:
                    best = (v, p, Cs, M)
                if len(top) < 8 or v > top[-1][0]:
                    top.append((v, M))
                    top.sort(key=lambda z: -z[0])
                    del top[8:]
            n += 1
            if n % int(os.environ.get("SAMPLE_EVERY", "25000")) == 0:
                samp.append((v, M))
        per.append((G['str7'][p], len(tup), dig))
    return n, best, high, per, top, samp


def main():
    certfn, nproc = sys.argv[1], int(sys.argv[2])
    t0 = time.time()
    setup(certfn)
    print(f'setup {time.time()-t0:.0f} s: {G["n7"]} 7-models, {len(G["tops"])} (6,7) blocks, '
          f'{len(G["look"])} (model, position) flag hits', flush=True)
    ps = list(range(G['n7']))
    random.Random(1).shuffle(ps)
    chunks = [ps[i::nproc * 16] for i in range(nproc * 16)]
    ctx = get_context('fork')
    with ctx.Pool(nproc) as pool:
        res = pool.map(work, chunks)
    S = 224 * G['Lc']
    ntot = sum(r[0] for r in res)
    best = max((r[1] for r in res if r[1] is not None), key=lambda z: z[0])
    high = [h for r in res for h in r[2]]
    per = [x for r in res for x in r[3]]
    tot_dig = sum(d for _, _, d in per) % (1 << 64)
    print(f'join: {ntot} candidate 8-patterns; digest {tot_dig:016x}; {time.time()-t0:.0f} s')
    vb = Fraction(best[0], S)
    print(f'max value among patterns not above the claim: {vb} = {float(vb):.12f} (parent witness index {best[1]})')
    print(f'above the claim {G["claimed"]} = {float(G["claimed"])}: {len(high)}', [f'{float(Fraction(h[3], S)):.9f}' for h in high])
    top = sorted([z for r in res for z in r[4]], key=lambda z: -z[0])[:200]
    samp = [z for r in res for z in r[5]]
    json.dump({'ntot': ntot, 'digest': tot_dig, 'S': str(S),
               'best': [str(best[0]), best[1], list(best[2]), str(best[3])],
               'high': [[h[0], list(h[1]), str(h[2]), str(h[3])] for h in high], 'per': per,
               'top': [[str(v), str(M)] for v, M in top], 'samp': [[str(v), str(M)] for v, M in samp]},
              open(f'{AUD}/indep_k8_out.json', 'w'))


if __name__ == '__main__':
    main()
