#!/usr/bin/env python3
"""Independent enumeration of realizable sorted 7-models (BFS over arrangement cells by single flips).

Same method as indep_models.py (see there for the completeness argument), plus an exact local filter:
a flipped 7-pattern whose restriction to some 6-subset of the points is not in the (complete, exactly
certified) list of realizable 6-models from indep_models.py is not realizable, because the restriction of a
realizable sorted configuration to a subset is a realizable sorted configuration.  Only flips passing the filter
go to an LP; each LP outcome is made exact (integer witness or Gordan certificate, both verified exactly).
Usage: indep_models7.py NPROC        (reads models_6.json, writes models_7.json)
"""
import sys, json, itertools, time
from fractions import Fraction
from math import lcm
from multiprocessing import Pool
import numpy as np
from scipy.optimize import linprog

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")

K = 7


def my_tuples(k):
    return [(d,) + S for d in range(k) for S in itertools.combinations([i for i in range(k) if i != d], 3)]


T7 = my_tuples(K)
T6 = my_tuples(6)
IDX7 = {t: i for i, t in enumerate(T7)}


def rows_of(code):
    R = []
    for i in range(K):
        r = [0] * K
        r[i] = 1
        if i > 0:
            r[i - 1] = -1
        R.append(r)
    for j, (d, a, b, c) in enumerate(T7):
        s = 1 if (code >> j) & 1 else -1
        r = [0] * K
        r[d] += 2 * s
        r[a] -= s
        r[b] -= s
        r[c] -= s
        R.append(r)
    return R


def code_of(x):
    c = 0
    for j, (d, a, b, cc) in enumerate(T7):
        v = 2 * x[d] - x[a] - x[b] - x[cc]
        assert v != 0
        if v > 0:
            c |= 1 << j
    return c


def exact_null(Mrows, ncols):
    M = [[Fraction(v) for v in row] for row in Mrows]
    piv = []
    r = 0
    for c in range(ncols):
        p = next((i for i in range(r, len(M)) if M[i][c] != 0), None)
        if p is None:
            continue
        M[r], M[p] = M[p], M[r]
        inv = 1 / M[r][c]
        M[r] = [v * inv for v in M[r]]
        for i in range(len(M)):
            if i != r and M[i][c] != 0:
                f = M[i][c]
                M[i] = [a - f * b for a, b in zip(M[i], M[r])]
        piv.append(c)
        r += 1
        if r == len(M):
            break
    basis = []
    for fc in [c for c in range(ncols) if c not in piv]:
        z = [Fraction(0)] * ncols
        z[fc] = Fraction(1)
        for i, pc in enumerate(piv):
            z[pc] = -M[i][fc]
        basis.append(z)
    return basis


def exact_gordan(R, y):
    """from a float nonnegative y with y^T R ~ 0: exact positive integer certificate on its support, or None."""
    n = len(R)
    S = [i for i in range(n) if y[i] > 1e-9]
    if not S:
        return None
    B = exact_null([[R[i][j] for i in S] for j in range(K)], len(S))
    cand = []
    if len(B) == 1:
        cand.append(B[0])
    elif len(B) > 1:
        Bm = np.array([[float(v) for v in b] for b in B]).T
        coef, *_ = np.linalg.lstsq(Bm, y[S], rcond=None)
        for den in (10 ** 6, 10 ** 9, 10 ** 12):
            cf = [Fraction(int(round(c * den)), den) for c in coef]
            cand.append([sum(cf[q] * B[q][i] for q in range(len(B))) for i in range(len(S))])
    for z in cand:
        if all(v < 0 for v in z):
            z = [-v for v in z]
        if all(v > 0 for v in z):
            L = 1
            for v in z:
                L = lcm(L, v.denominator)
            cert = {S[i]: int(z[i] * L) for i in range(len(S))}
            if all(sum(m * R[i][j] for i, m in cert.items()) == 0 for j in range(K)):
                return cert
    return None


def decide(code):
    """('F', witness) or ('I', certificate) for the 7-pattern 'code' (my tuple order); exact."""
    R = rows_of(code)
    A = np.array(R, dtype=float)
    n = len(R)
    # LP: max s  s.t.  A x >= s, s <= 1  (x free).  s* > 0 iff the strict system is feasible.
    c = np.zeros(K + 1)
    c[K] = -1.0
    Aub = np.hstack([-A, np.ones((n, 1))])
    res = linprog(c, A_ub=Aub, b_ub=np.zeros(n), bounds=[(None, None)] * K + [(None, 1.0)], method='highs')
    if res.status != 0:
        raise RuntimeError(f'LP status {res.status}')
    if -res.fun > 1e-7:
        x = res.x[:K] / res.x[K]
        for scale in (2 ** 20, 2 ** 30, 2 ** 40, 2 ** 50):
            xi = [int(round(v * scale)) for v in x]
            if all(sum(a * b for a, b in zip(r, xi)) > 0 for r in R):
                assert code_of(xi) == code
                return code, ('F', xi)
    y = -np.array(res.ineqlin.marginals)
    cert = exact_gordan(R, y)
    if cert is None:  # fallback: dedicated Gordan LP  (y >= 0, sum y = 1, y^T A = 0)
        Aeq = np.vstack([A.T, np.ones((1, n))])
        beq = np.zeros(K + 1)
        beq[K] = 1.0
        r2 = linprog(np.zeros(n), A_eq=Aeq, b_eq=beq, bounds=[(0, None)] * n, method='highs')
        if r2.status == 0:
            cert = exact_gordan(R, r2.x)
    if cert is None:
        raise RuntimeError(f'undecided pattern {code}')
    return code, ('I', cert)


def main():
    nproc = int(sys.argv[1])
    t0 = time.time()
    m6 = json.load(open('models_6.json'))
    set6 = set()
    for w, bits in m6:
        set6.add(sum(int(b) << j for j, b in enumerate(bits)))
    assert len(set6) == 1290
    subsets = [tuple(i for i in range(K) if i != o) for o in range(K)]
    pos = []   # pos[s][j] = index in T7 of the j-th tuple of T6 mapped through subset s
    for U in subsets:
        pos.append([IDX7[(U[d], U[a], U[b], U[c])] for (d, a, b, c) in T6])
    inv = []   # inv[t] = list of (s, j): subsets s containing all points of tuple t and its position j there
    for t, tup in enumerate(T7):
        lst = []
        for s, U in enumerate(subsets):
            if set(tup) <= set(U):
                lst.append((s, pos[s].index(t)))
        assert len(lst) == 3
        inv.append(lst)

    def restr(code, s):
        r = 0
        for j, p in enumerate(pos[s]):
            if (code >> p) & 1:
                r |= 1 << j
        return r

    x0 = [2 ** i for i in range(K)]
    c0 = code_of(x0)
    found = {c0: x0}
    infeasible = {}
    frontier = [c0]
    nfilt = 0
    nlp = 0
    level = 0
    with Pool(nproc) as pool:
        while frontier:
            cand = set()
            for p in frontier:
                rc = [restr(p, s) for s in range(K)]
                assert all(r in set6 for r in rc), 'a realizable 7-cell has a 6-restriction outside the 6-list'
                for t in range(len(T7)):
                    q = p ^ (1 << t)
                    if q in found or q in infeasible or q in cand:
                        continue
                    if any((rc[s] ^ (1 << j)) not in set6 for (s, j) in inv[t]):
                        nfilt += 1
                        continue
                    cand.add(q)
            nlp += len(cand)
            newf = []
            for q, (kind, obj) in pool.imap_unordered(decide, sorted(cand), chunksize=64):
                if kind == 'F':
                    found[q] = obj
                    newf.append(q)
                else:
                    R = rows_of(q)
                    assert all(v > 0 for v in obj.values())
                    assert all(sum(m * R[i][j] for i, m in obj.items()) == 0 for j in range(K))
                    infeasible[q] = obj
            level += 1
            print(f'level {level}: frontier {len(frontier)} -> candidates {len(cand)} -> new cells {len(newf)}; '
                  f'found {len(found)}, certified infeasible {len(infeasible)}, filtered {nfilt}, '
                  f'{time.time()-t0:.0f} s', flush=True)
            frontier = newf
    print(f'k=7: {len(found)} realizable models; {nlp} LPs; {len(infeasible)} exact Gordan certificates; '
          f'{nfilt} flips rejected by the 6-restriction filter; {time.time()-t0:.0f} s')
    json.dump([[found[c], c] for c in sorted(found)], open('models_7.json', 'w'))


if __name__ == '__main__':
    main()
