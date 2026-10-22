#!/usr/bin/env python3
"""Independent exact checker for hierarchical k = 9 certificates of C_6.39 <= claimed.

Usage: python3 check639_k9.py CERT9.json TREEDIR [NPROC]
Standard library only (uses check639.py / check639_k8.py from the same directory).

Certificate: K = 9; blocks of types (t,m) with 2m - t <= 7 ("lower"), (6,7) ("mid", 2m - t = 8) and (7,8) ("top",
2m - t = 9); "claimed" (lambda9), "cap" (>= claimed), "excluded8" / "excluded9": [pattern bits, Gordan rows].
Mathematics (see the paper: Theorem 3.3, Proposition 4.1, Lemmas 4.2, 4.3, 5.1 and 5.2):
  f8(K) := k = 8 value of an 8-pattern for the lower + mid blocks = (1/8) sum_y f7(K - y) + (1/28) sum_{a<b} Qmid[F_a][F_b].
  For a 9-pattern M: val9(M) = (1/9) sum_x f8(M - x) + (1/36) sum_{a<b} Qtop[F_a][F_b], F_a = (M - b, J = all but a),
  F_b = (M - a, J = all but b - 1)   (D = C(9,7) * 2 = 72, two orders of (A, B)).
  Checks: (1) every consistent 8-tuple with f8 > cap is excluded (unrealizable, Gordan);
  (2) S = consistent 8-tuples with f8 > 9 claimed - 8 cap, not excluded; every consistent 9-tuple whose nine
      restrictions all lie in S has val9 <= claimed or is excluded;
  (3) core = 8-patterns of the top flags; every consistent 9-tuple with at least two restrictions in the core has
      val9 <= claimed or is excluded (with fewer than two, no pair (a, b) has both F_a and F_b in a top block).
  Then every realizable 9-model has val9 <= claimed: if it is in (2) or (3) it was checked; otherwise its top part is 0
  (at most one restriction is a core pattern) and some restriction has f8 <= 9 claimed - 8 cap while all have f8 <= cap
  (realizable restrictions are never excluded), so the average is <= claimed.
"""
import sys, os, json, itertools, time
from fractions import Fraction
from math import gcd
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import check639 as C7
import check639_k8 as C8

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")

G = {}


def lcm(a, b):
    return a * b // gcd(a, b)


def load(certfn):
    cert = json.load(open(certfn))
    assert cert['K'] == 9
    lower, mid, top = [], [], []
    for b in cert['blocks']:
        t, m = b['t'], b['m']
        assert 0 <= t <= m and 2 * m - t <= 9
        if 2 * m - t <= 7:
            lower.append(b)
        elif (t, m) == (6, 7):
            mid.append(b)
        else:
            assert (t, m) == (7, 8), 'unsupported type'
            top.append(b)
    claimed = Fraction(*cert['claimed'])
    cap = Fraction(*cert['cap'])
    assert cap >= claimed
    return cert, lower, mid, top, claimed, cap


def restr_bits(bits, k, U):
    """bits of a k-pattern (string) restricted to sorted subset U (as a tuple of 0/1)."""
    idxk = G['tidx'][k]
    return tuple(int(bits[idxk[(U[d], U[a], U[b], U[c])]]) for (d, a, b, c) in G['T'][len(U)])


def tuple8_of_bits(bits8):
    """8-pattern bits -> (R_0..R_7) 7-pattern indices, or None if some restriction is not a listed 7-pattern."""
    R = []
    for y in range(8):
        U = tuple(q for q in range(8) if q != y)
        n = G['look7'].get(restr_bits(bits8, 8, U))
        if n is None:
            return None
        R.append(n)
    return tuple(R)


def consistent8(R):
    del7 = G['del7']
    for a in range(8):
        for b in range(a + 1, 8):
            if del7[R[a]][b - 1] != del7[R[b]][a]:
                return False
    return del7[R[7]] is not None


def f8_scaled(R):
    """f8 * 224 * L (integer) for the 8-tuple R = (R_0..R_7) via check639_k8 (P = R_7, Cs = R_0..R_6)."""
    return C8.value8_scaled(R[7], R[:7])


def anchored8(r, v):
    """All consistent 8-tuples K = (K_0..K_7) with K_r = v (7-pattern indices)."""
    key = (r, v)
    memo = G['memo8']
    if key in memo:
        return memo[key]
    del7, by_del = G['del7'], G['by_del']
    ys = [y for y in range(8) if y != r]
    # index each domain by the deletions needed for consistency with earlier positions z < y (z != r):
    # del7[K_z][y - 1] == del7[K_y][z]
    idx = []
    for i, y in enumerate(ys):
        rp = r if r < y else r - 1      # position of r in [8] minus y
        yp = y if y < r else y - 1      # position of y in [8] minus r
        d = {}
        for c in by_del[rp].get(del7[v][yp], []):
            d.setdefault(tuple(del7[c][z] for z in ys[:i]), []).append(c)
        idx.append(d)
    out = []
    cur = []

    def rec(i):
        if i == len(ys):
            K = [0] * 8
            for y, c in zip(ys, cur):
                K[y] = c
            K[r] = v
            out.append(tuple(K))
            return
        y = ys[i]
        need = tuple(del7[cur[j]][y - 1] for j in range(i))
        for c in idx[i].get(need, ()):
            cur.append(c)
            rec(i + 1)
            cur.pop()

    rec(0)
    memo[key] = out
    return out


def join9(x, N, dom_of):
    """Consistent 9-tuples (R_0..R_8) of 8-tuples with R_x = N; dom_of(y) gives candidate 8-tuples for R_y.
    Consistency for z < y (both != x): (R_z) - (y - 1) == (R_y) - z, i.e. R_z[y-1] == R_y[z]."""
    ys = [y for y in range(9) if y != x]
    idx = []
    for i, y in enumerate(ys):
        d = {}
        for c in dom_of(y):
            d.setdefault(tuple(c[z] for z in ys[:i]), []).append(c)
        idx.append(d)
    out = []
    cur = []

    def rec(i):
        if i == len(ys):
            R = [None] * 9
            for y, c in zip(ys, cur):
                R[y] = c
            R[x] = N
            out.append(tuple(R))
            return
        y = ys[i]
        need = tuple(cur[j][y - 1] for j in range(i))
        for c in idx[i].get(need, ()):
            cur.append(c)
            rec(i + 1)
            cur.pop()

    rec(0)
    return out


def val9_scaled(R9):
    """val9 * S9 as an integer, S9 = 9 * 224 * L * 36 * Lt."""
    s8 = 0
    for K in R9:
        s8 += f8_scaled(K)
    q = 0
    topkey, topint = G['topkey9'], G['topint9']
    for a in range(9):
        for b in range(a + 1, 9):
            fa = topkey.get((R9[b], a))
            if fa is None:
                continue
            fb = topkey.get((R9[a], b - 1))
            if fb is None:
                continue
            for (ba, la) in fa:
                for (bb, lb) in fb:
                    if ba == bb:
                        q += topint[ba][la][lb]
    return 36 * G['Lt'] * s8 + 9 * 224 * G['L'] * q


def pattern9(R9):
    """Bits over T_9 of a 9-tuple of 8-tuples."""
    out = []
    bits8 = [C8.pattern8(G['models7'], K[7], K[:7]) for K in R9]
    i8 = G['tidx'][8]
    for (d, a, b, c) in G['T'][9]:
        pts = (d, a, b, c)
        x = 8 if 8 not in pts else min(q for q in range(8) if q not in pts)
        rel = tuple(q if q < x else q - 1 for q in pts)
        out.append(bits8[x][i8[rel]])
    return out


def gordan_ok(bits, k, cert):
    Tk = G['T'][k]
    tot = [0] * k
    for rid, mult in cert:
        assert type(mult) is int and mult > 0
        assert type(rid) is int and 0 <= rid < k + len(Tk)
        r = C7.order_row(rid, k) if rid < k else C7.form_row(Tk[rid - k], k, 1 if bits[rid - k] else -1)
        for z in range(k):
            tot[z] += mult * r[z]
    return len(cert) > 0 and all(z == 0 for z in tot)


def stage1(ps):
    """f8 over all consistent 8-tuples with parents ps: (count, max f8 scaled, tuples above cap, S tuples)."""
    capn, capd, thrn, thrd = G['cap_s']
    above, S = [], []
    n = 0
    best = None
    for p in ps:
        for Cs in C8.consistent_tuples(p):
            n += 1
            R = tuple(Cs) + (p,)
            v = C8.value8_scaled(p, Cs)
            if best is None or v > best:
                best = v
            if v * capd > capn:
                above.append(R)
            if v * thrd > thrn:
                S.append(R)
    return n, best, above, S


def stage_eval(items):
    """items: list of (x, N) anchored joins over all 8-tuples, or ('S', N) joins inside S."""
    claimed_s = G['claimed_s']
    high, n, best = [], 0, None
    for kind, x, N in items:
        if kind == 'S':
            sidx = G['S_by7']
            R9s = join9(8, N, lambda y: sidx.get(N[y], []))
        else:
            def dom_of(y, x=x, N=N):
                rp = x if x < y else x - 1     # position of x in [9] minus y
                q = y if y < x else y - 1      # position of y in [9] minus x
                return anchored8(rp, N[q])
            R9s = join9(x, N, dom_of)
        ex8 = G['excluded8']
        coreset = G['coreset']
        for R9 in R9s:
            if any(K in ex8 for K in R9):
                continue        # has an unrealizable restriction (verified), so it is unrealizable
            if kind == 'C':
                cpos = [y for y in range(9) if R9[y] in coreset]
                if len(cpos) < 2 or cpos[0] != x:
                    continue    # top part is 0 (< 2 core restrictions; Lemma 5.2) or handled at its first core position
            n += 1
            v = val9_scaled(R9)
            if v * claimed_s[1] > claimed_s[0]:
                high.append(R9)
            elif best is None or v > best:
                best = v
    return n, best, high


def main():
    certfn, treedir = sys.argv[1], sys.argv[2]
    nproc = int(sys.argv[3]) if len(sys.argv) > 3 else 1
    t0 = time.time()
    cert, lower, mid, top, claimed, cap = load(certfn)
    print(f'certificate K=9: lower {len(lower)}, mid (6,7) {len(mid)}, top (7,8) {len(top)} blocks; claimed {claimed} = '
          f'{float(claimed):.10f}, cap {float(cap):.10f}; excluded8 {len(cert["excluded8"])}, excluded9 '
          f'{len(cert["excluded9"])}', flush=True)
    G['T'] = {k: C7.tuples_of(k) for k in range(4, 10)}
    G['tidx'] = {k: {t: i for i, t in enumerate(G['T'][k])} for k in range(4, 10)}
    models7 = C7.rebuild_models(7, treedir)
    G['models7'] = models7
    f7 = C8.f7_values(models7, lower)
    C8.init8(models7, f7, mid)
    G['del7'] = C8._G['del7']
    G['look7'] = {tuple(N): n for n, N in enumerate(models7)}
    G['L'] = C8._G['L']
    by_del = [dict() for _ in range(7)]
    for n, row in enumerate(G['del7']):
        for i in range(7):
            by_del[i].setdefault(row[i], []).append(n)
    G['by_del'] = by_del
    G['memo8'] = {}
    # top blocks: flags (8-pattern bits, J of size 7) -> 8-tuple and position
    topkey, tops = {}, []
    for bi, b in enumerate(top):
        Qint, Qden = C8.build_Q(b)
        tops.append((Qint, Qden))
        for li, (bits, J) in enumerate(b['flags']):
            assert len(J) == 7 and list(J) == sorted(J) and all(0 <= j < 8 for j in J)
            (pp,) = set(range(8)) - set(J)
            R = tuple8_of_bits(bits)
            if R is None or not consistent8(R):
                continue            # never occurs in a realizable 9-model
            topkey.setdefault((R, pp), []).append((bi, li))
    Lt = 1
    for _, Qden in tops:
        Lt = lcm(Lt, Qden)
    G['topint9'] = [[[e * (Lt // Qden) for e in row] for row in Qint] for Qint, Qden in tops]
    G['topkey9'] = topkey
    G['Lt'] = Lt
    core = sorted(set(R for (R, pp) in topkey))
    G['coreset'] = set(core)
    S8 = 224 * G['L']
    thr = 9 * claimed - 8 * cap
    G['cap_s'] = (cap.numerator * S8, cap.denominator, thr.numerator * S8, thr.denominator)
    S9 = 9 * 224 * G['L'] * 36 * Lt
    G['claimed_s'] = (claimed.numerator * S9, claimed.denominator)
    from multiprocessing import get_context
    ctx = get_context('fork')
    ps = list(range(len(models7)))
    with ctx.Pool(nproc) as pool:
        res = pool.map(stage1, [ps[i::nproc * 8] for i in range(nproc * 8)])
    n8 = sum(r[0] for r in res)
    above = [R for r in res for R in r[2]]
    S = sorted(set(R for r in res for R in r[3]))
    ex8 = {e[0]: e[1] for e in cert['excluded8']}
    bad8 = 0
    excluded8 = set()
    for R in above:
        bits = C8.pattern8(models7, R[7], R[:7])
        key = ''.join('1' if z else '0' for z in bits)
        g = ex8.get(key)
        if g is None or not gordan_ok(bits, 8, g):
            bad8 += 1
        else:
            excluded8.add(R)
    S = [R for R in S if R not in excluded8]   # only verified (unrealizable) exclusions are removed
    G['excluded8'] = excluded8
    print(f'stage 1: {n8} consistent 8-tuples; above cap {len(above)} (unexcluded {bad8}); |S| = {len(S)}; core {len(core)}; '
          f'{time.time()-t0:.0f}s', flush=True)
    if bad8:
        print('RESULT: FAIL (8-level)')
        sys.exit(1)
    S_by7 = {}
    for R in S:
        S_by7.setdefault(R[7], []).append(R)
    G['S_by7'] = S_by7
    items = [('S', 8, N) for N in S] + [('C', x, N) for N in core for x in range(9)]
    with ctx.Pool(nproc) as pool:
        res = pool.map(stage_eval, [items[i::nproc * 4] for i in range(nproc * 4)])
    n9 = sum(r[0] for r in res)
    best = max((r[1] for r in res if r[1] is not None), default=None)
    high = sorted(set(R for r in res for R in r[2]))
    ex9 = {e[0]: e[1] for e in cert['excluded9']}
    bad9 = 0
    for R9 in high:
        bits = pattern9(R9)
        key = ''.join('1' if z else '0' for z in bits)
        g = ex9.get(key)
        if g is None or not gordan_ok(bits, 9, g):
            bad9 += 1
    bestf = Fraction(best, S9) if best is not None else None
    print(f'stages 2-3: {n9} 9-tuples checked; max among those not above the claim {float(bestf) if bestf is not None else None}; '
          f'above the claim {len(high)} (unexcluded {bad9}); {time.time()-t0:.0f}s', flush=True)
    if bad9:
        print('RESULT: FAIL (9-level)')
        sys.exit(1)
    print('RESULT: PASS', f'C_6.39 <= {claimed} = {float(claimed):.10f}')


if __name__ == '__main__':
    main()
