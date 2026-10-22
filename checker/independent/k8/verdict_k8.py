#!/usr/bin/env python3
"""Independent check (k = 8): final verdict from indep_k8_out.json + the certificate.
PASS iff every candidate 8-pattern with value above the claim is listed in "excluded" with a valid Gordan certificate:
positive integers y_i with sum_i y_i r_i = 0, rows r_i built here from the pattern bits (x_0 > 0, x_i - x_{i-1} > 0,
s_tau L_tau > 0 with s_tau = +1 if the bit is 1 else -1, tuples in the documented order of T_8).
With --lp, also re-derives infeasibility of each such pattern by an LP and an exact Gordan certificate of my own.
Usage: verdict_k8.py CERT8.json indep_k8_out.json [--lp]
"""
import sys, json, itertools
from fractions import Fraction

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")


def doc_order(m):
    T = [(d,) + S for d in range(m) for S in itertools.combinations([i for i in range(m) if i != d], 3)]
    return sorted(T, key=lambda t: (max(t), t[0], t[1], t[2], t[3]))


T8 = doc_order(8)


def rows(bits):
    R = []
    for i in range(8):
        r = [0] * 8
        r[i] = 1
        if i:
            r[i - 1] = -1
        R.append(r)
    for bt, (d, a, b, c) in zip(bits, T8):
        s = 1 if bt else -1
        r = [0] * 8
        r[d] += 2 * s
        r[a] -= s
        r[b] -= s
        r[c] -= s
        R.append(r)
    return R


def gordan_valid(bits, cert):
    R = rows(bits)
    if not cert:
        return False
    tot = [0] * 8
    for rid, mult in cert:
        if type(rid) is not int or type(mult) is not int or mult <= 0 or not 0 <= rid < len(R):
            return False
        for z in range(8):
            tot[z] += mult * R[rid][z]
    return all(z == 0 for z in tot)


def lp_infeasible(bits):
    """own exact certificate: float LP for y >= 0, sum y = 1, y^T R = 0, then exact null space on the support."""
    import numpy as np
    from scipy.optimize import linprog
    R = rows(bits)
    A = np.array(R, dtype=float)
    n = len(R)
    res = linprog(np.zeros(n), A_eq=np.vstack([A.T, np.ones((1, n))]), b_eq=np.r_[np.zeros(8), 1.0],
                  bounds=[(0, None)] * n, method='highs')
    if res.status != 0:
        return None
    S = [i for i in range(n) if res.x[i] > 1e-9]
    # exact null space of the 8 x |S| matrix
    M = [[Fraction(R[i][j]) for i in S] for j in range(8)]
    piv, r = [], 0
    for c in range(len(S)):
        p = next((i for i in range(r, 8) if M[i][c] != 0), None)
        if p is None:
            continue
        M[r], M[p] = M[p], M[r]
        M[r] = [v / M[r][c] for v in M[r]]
        for i in range(8):
            if i != r and M[i][c] != 0:
                f = M[i][c]
                M[i] = [a - f * b for a, b in zip(M[i], M[r])]
        piv.append(c)
        r += 1
    free = [c for c in range(len(S)) if c not in piv]
    if len(free) != 1:
        return ('nullity', len(free))
    z = [Fraction(0)] * len(S)
    z[free[0]] = Fraction(1)
    for i, pc in enumerate(piv):
        z[pc] = -M[i][free[0]]
    if all(v < 0 for v in z):
        z = [-v for v in z]
    if not all(v > 0 for v in z):
        return None
    from math import lcm
    L = 1
    for v in z:
        L = lcm(L, v.denominator)
    cert = [[S[i], int(z[i] * L)] for i in range(len(S))]
    assert gordan_valid(bits, cert)
    return cert


def main():
    cert = json.load(open(sys.argv[1]))
    O = json.load(open(sys.argv[2]))
    S = int(O['S'])
    claimed = Fraction(*cert['claimed'])
    excl = {e[0]: e[1] for e in cert.get('excluded', [])}
    bad = 0
    for h in O['high']:
        M, v = int(h[2]), Fraction(int(h[3]), S)
        assert v > claimed
        bits = [(M >> j) & 1 for j in range(len(T8))]
        key = ''.join(map(str, bits))
        g = excl.get(key)
        ok = g is not None and gordan_valid(bits, g)
        line = f'pattern above the claim: value {float(v):.12f}; listed in excluded: {g is not None}; certificate valid: {ok}'
        if '--lp' in sys.argv:
            line += f'; my own LP/Gordan certificate: {lp_infeasible(bits)}'
        print(line)
        bad += not ok
    vb = Fraction(int(O['best'][0]), S)
    print(f'candidate 8-patterns {O["ntot"]}; max over those not above the claim {float(vb):.12f} ({vb})')
    print('VERDICT:', 'PASS' if bad == 0 and vb <= claimed else f'FAIL ({bad} unexcluded patterns above the claim)',
          f'claimed {claimed} = {float(claimed)}')
    sys.exit(0 if bad == 0 else 1)


if __name__ == '__main__':
    main()
