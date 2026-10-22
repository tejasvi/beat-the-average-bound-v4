#!/usr/bin/env python3
"""Independent enumeration of realizable sorted k-models for the relation x_a + x_b + x_c < 2 x_d.

Method (different from search/enum_models.py): breadth-first search over the cells of the hyperplane
arrangement {L_tau = 0} inside the open cone K = {0 < x_0 < x_1 < ... < x_{k-1}}.  Two cells joined by a
facet differ in exactly one sign (the hyperplanes L_tau are pairwise distinct and distinct from the walls of K),
and the facet-adjacency graph of the cells of an arrangement inside an open convex set is connected (a generic
segment between two cells crosses one hyperplane at a time).  Hence: start at one cell, flip every single sign of
every cell found, keep the realizable ones.  Every decision is exact:
  realizable     -> integer witness x with all strict inequalities checked in integer arithmetic;
  not realizable -> Gordan certificate: integers y >= 0, not all 0, with sum_i y_i r_i = 0 over the rows r_i of the
                    strict system (x_0 > 0, x_i - x_{i-1} > 0, s_tau L_tau > 0); checked in integer arithmetic.
Float LPs (scipy/HiGHS) only propose witnesses and certificates.

Output: models_k.json = list of [witness, bits] with bits in MY tuple order (d ascending, then {a<b<c} lex).
Usage: indep_models.py K
"""
import sys, json, itertools, time
from fractions import Fraction
import numpy as np
from scipy.optimize import linprog

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")


def my_tuples(k):
    return [(d,) + S for d in range(k) for S in itertools.combinations([i for i in range(k) if i != d], 3)]


def pattern_of(x, T):
    """bits of an integer configuration x (sorted, generic) over tuple list T; asserts genericity."""
    out = []
    for (d, a, b, c) in T:
        v = 2 * x[d] - x[a] - x[b] - x[c]
        assert v != 0, 'non-generic witness'
        out.append(1 if v > 0 else 0)
    return tuple(out)


def rows_of(signs, T, k):
    R = []
    for i in range(k):
        r = [0] * k
        r[i] = 1
        if i > 0:
            r[i - 1] = -1
        R.append(r)
    for s, (d, a, b, c) in zip(signs, T):
        r = [0] * k
        r[d] += 2 * s
        r[a] -= s
        r[b] -= s
        r[c] -= s
        R.append(r)
    return R


def exact_null(Mrows, ncols):
    """Basis of the rational null space {z : M z = 0} (M given as list of rows of ints), via RREF over Q."""
    M = [[Fraction(v) for v in row] for row in Mrows]
    piv = []
    r = 0
    for c in range(ncols):
        p = None
        for i in range(r, len(M)):
            if M[i][c] != 0:
                p = i
                break
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
    free = [c for c in range(ncols) if c not in piv]
    basis = []
    for fc in free:
        z = [Fraction(0)] * ncols
        z[fc] = Fraction(1)
        for i, pc in enumerate(piv):
            z[pc] = -M[i][fc]
        basis.append(z)
    return basis


def try_witness(R, k):
    A = np.array(R, dtype=float)
    res = linprog(np.zeros(k), A_ub=-A, b_ub=-np.ones(len(R)), bounds=[(None, None)] * k, method='highs')
    if res.status == 0:
        x = res.x
        for scale in (2 ** 20, 2 ** 30, 2 ** 40):
            xi = [int(round(v * scale)) for v in x]
            if all(sum(a * b for a, b in zip(r, xi)) > 0 for r in R):
                return xi
        raise RuntimeError('LP feasible but rounding failed')
    if res.status == 2:
        return None
    raise RuntimeError(f'LP status {res.status}')


def gordan_cert(R, k):
    """Integer y >= 0, y != 0, sum y_i R_i = 0 (exactly verified), from a float LP + exact null space."""
    n = len(R)
    A = np.array(R, dtype=float)
    Aeq = np.vstack([A.T, np.ones((1, n))])
    beq = np.zeros(k + 1)
    beq[k] = 1.0
    res = linprog(np.zeros(n), A_eq=Aeq, b_eq=beq, bounds=[(0, None)] * n, method='highs')
    if res.status != 0:
        raise RuntimeError(f'Gordan LP status {res.status}')
    y = res.x
    S = [i for i in range(n) if y[i] > 1e-9]
    # null space of the k x |S| matrix with columns R_i, i in S
    Mrows = [[R[i][j] for i in S] for j in range(k)]
    B = exact_null(Mrows, len(S))
    cand = []
    if len(B) == 1:
        cand.append(B[0])
    else:
        # least-squares coordinates of y_S in the exact basis, rounded to rationals
        Bm = np.array([[float(v) for v in b] for b in B]).T
        coef, *_ = np.linalg.lstsq(Bm, y[S], rcond=None)
        for den in (10 ** 6, 10 ** 9, 10 ** 12):
            cf = [Fraction(int(round(c * den)), den) for c in coef]
            cand.append([sum(cf[q] * B[q][i] for q in range(len(B))) for i in range(len(S))])
    for z in cand:
        if all(v < 0 for v in z):
            z = [-v for v in z]
        if all(v > 0 for v in z):
            from math import lcm
            L = 1
            for v in z:
                L = lcm(L, v.denominator)
            yi = [int(v * L) for v in z]
            out = {S[i]: yi[i] for i in range(len(S))}
            tot = [sum(out[i] * R[i][j] for i in out) for j in range(k)]
            assert all(t == 0 for t in tot) and all(v > 0 for v in out.values())
            return out
    raise RuntimeError('could not make an exact Gordan certificate')


def bfs(k):
    T = my_tuples(k)
    x0 = [2 ** i for i in range(k)]  # generic: 2^(d+1) has one binary digit, 2^a+2^b+2^c has three
    p0 = pattern_of(x0, T)
    found = {p0: x0}
    queue = [p0]
    ncert = 0
    nlp = 0
    infeasible = set()
    qi = 0
    while qi < len(queue):
        p = queue[qi]
        qi += 1
        for t in range(len(T)):
            q = list(p)
            q[t] ^= 1
            q = tuple(q)
            if q in found or q in infeasible:
                continue
            signs = [1 if b else -1 for b in q]
            R = rows_of(signs, T, k)
            nlp += 1
            w = try_witness(R, k)
            if w is not None:
                assert all(w[i] > (w[i - 1] if i else 0) for i in range(k))
                assert pattern_of(w, T) == q
                found[q] = w
                queue.append(q)
            else:
                gordan_cert(R, k)
                ncert += 1
                infeasible.add(q)
    return T, found, ncert, nlp


if __name__ == '__main__':
    K = int(sys.argv[1])
    t0 = time.time()
    T, found, ncert, nlp = bfs(K)
    dens = [Fraction(sum(p), len(T)) for p in found]
    print(f'k={K}: {len(found)} realizable models (BFS over single flips), {nlp} LPs, {ncert} exact Gordan '
          f'certificates for rejected flips, max density {max(dens)} = {float(max(dens)):.6f}, {time.time()-t0:.1f} s')
    with open(f'models_{K}.json', 'w') as f:
        json.dump([[found[p], list(p)] for p in sorted(found)], f)
