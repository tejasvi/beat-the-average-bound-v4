#!/usr/bin/env python3
"""Enumerate sorted k-models by canonical augmentation (new maximum point) with Gordan certificates.

Usage: enum_models.py K NPROC   (needs models_{K-1}.npz unless K == 4)
Output: models_K.npz  (bits: N x |T_K| uint8, wit: N x K int64 witness, parent: N int64)
        tree_K.pkl    (per parent: token stream, see below)

Token stream for parent P (preorder over the new forms of level K-1 in the order 'perm'):
  2            both signs realizable: subtree for sign + (bit 1), then subtree for sign - (bit 0)
  1, cert      only + kept; cert proves the - sign infeasible
  0, cert      only - kept; cert proves the + sign infeasible
  cert = [len, row_1, mult_1, ..., row_len, mult_len]; row ids: 0..K-1 order rows, K + tau for tuple tau of T_K
  (taken with the sign it has at this node: parent bit, path bit, or the pruned sign for the current form).
"""
import sys, time, pickle
from fractions import Fraction
from math import gcd
import numpy as np
from scipy import sparse
import highspy
from common import all_tuples, level_tuples, form_matrix, order_matrix

INF = highspy.kHighsInf


class LPS:
    def __init__(self):
        h = highspy.Highs()
        h.setOptionValue('output_flag', False)
        self.h = h
        self.n_feas = 0
        self.n_cert = 0

    def _solve(self, ncol, nrow, cost, cl, cu, rl, ru, M):
        h = self.h
        h.clearModel()
        lp = highspy.HighsLp()
        lp.num_col_ = ncol
        lp.num_row_ = nrow
        lp.col_cost_ = cost
        lp.col_lower_ = cl
        lp.col_upper_ = cu
        lp.row_lower_ = rl
        lp.row_upper_ = ru
        M = sparse.csc_matrix(M)
        lp.a_matrix_.format_ = highspy.MatrixFormat.kColwise
        lp.a_matrix_.start_ = M.indptr.astype(np.int32)
        lp.a_matrix_.index_ = M.indices.astype(np.int32)
        lp.a_matrix_.value_ = M.data.astype(np.float64)
        lp.a_matrix_.num_col_ = ncol
        lp.a_matrix_.num_row_ = nrow
        h.passModel(lp)
        h.run()
        return h.getModelStatus()

    def feasible(self, A):
        """Return x with A x >= 1, or None if infeasible."""
        self.n_feas += 1
        n, k = A.shape
        st = self._solve(k, n, np.zeros(k), np.full(k, -INF), np.full(k, INF), np.ones(n), np.full(n, INF),
                         A.astype(np.float64))
        if st == highspy.HighsModelStatus.kOptimal:
            return np.array(self.h.getSolution().col_value)
        if st == highspy.HighsModelStatus.kInfeasible:
            return None
        raise RuntimeError(f'LP status {st}')

    def gordan(self, A):
        """Exact integer y >= 0, y != 0 with y^T A = 0 (A integer), as dict row -> mult."""
        self.n_cert += 1
        n, k = A.shape
        M = np.vstack([A.T.astype(np.float64), np.ones((1, n))])
        rl = np.zeros(k + 1)
        rl[k] = 1.0
        st = self._solve(n, k + 1, np.zeros(n), np.zeros(n), np.full(n, INF), rl, rl.copy(), M)
        if st != highspy.HighsModelStatus.kOptimal:
            raise RuntimeError(f'Gordan LP status {st}')
        y = np.array(self.h.getSolution().col_value)
        S = [i for i in range(n) if y[i] > 1e-9]
        v = exact_positive_null(A[S], y[S])
        if v is None:
            raise RuntimeError('no exact certificate')
        return {S[i]: v[i] for i in range(len(S)) if v[i] != 0}


def nullspace_Q(rows):
    """Basis of {y : sum_i y_i rows[i] = 0} over Q. rows: s x k integer array."""
    s, k = rows.shape
    # matrix B = rows^T (k x s); RREF
    B = [[Fraction(int(rows[j, i])) for j in range(s)] for i in range(k)]
    piv_cols = []
    r = 0
    for c in range(s):
        p = None
        for i in range(r, k):
            if B[i][c] != 0:
                p = i
                break
        if p is None:
            continue
        B[r], B[p] = B[p], B[r]
        pv = B[r][c]
        B[r] = [e / pv for e in B[r]]
        for i in range(k):
            if i != r and B[i][c] != 0:
                f = B[i][c]
                B[i] = [a - f * b for a, b in zip(B[i], B[r])]
        piv_cols.append(c)
        r += 1
        if r == k:
            break
    free = [c for c in range(s) if c not in piv_cols]
    basis = []
    for fc in free:
        v = [Fraction(0)] * s
        v[fc] = Fraction(1)
        for i, pc in enumerate(piv_cols):
            v[pc] = -B[i][fc]
        basis.append(v)
    return basis


def exact_positive_null(rows, yf):
    basis = nullspace_Q(rows)
    if not basis:
        return None
    s = rows.shape[0]
    if len(basis) == 1:
        v = basis[0]
        if sum(v) < 0:
            v = [-e for e in v]
        if min(v) < 0:
            return None
    else:
        N = np.array([[float(e) for e in b] for b in basis]).T  # s x r
        z, *_ = np.linalg.lstsq(N, yf, rcond=None)
        v = None
        for den in (10**3, 10**6, 10**9, 10**12):
            zr = [Fraction(round(zi * den), den) for zi in z]
            cand = [sum(zr[j] * basis[j][i] for j in range(len(basis))) for i in range(s)]
            if min(cand) >= 0 and max(cand) > 0:
                v = cand
                break
        if v is None:
            return None
    L = 1
    for e in v:
        L = L * e.denominator // gcd(L, e.denominator)
    w = [int(e * L) for e in v]
    g = 0
    for e in w:
        g = gcd(g, e)
    w = [e // g for e in w]
    # exact check
    tot = np.zeros(rows.shape[1], dtype=object)
    for i in range(s):
        tot = tot + w[i] * rows[i].astype(object)
    assert all(t == 0 for t in tot) and min(w) >= 0 and max(w) > 0
    return w


def extend(args):
    """All children of parent model pbits (length |T_{k-1}|) with witness pw (length k-1)."""
    k, pbits, pw = args
    lps = LPS()
    F = form_matrix(k)
    O = order_matrix(k)
    npar = len(pbits)
    new = level_tuples(k - 1)
    sp = 2 * np.asarray(pbits, dtype=np.int64) - 1
    base = np.vstack([O, sp[:, None] * F[:npar]])
    base_ids = list(range(k)) + [k + t for t in range(npar)]
    n = k - 1
    xs = np.asarray(pw, dtype=np.float64)
    theta = []
    for (d, a, b, c) in new:
        if d == n:
            theta.append((xs[a] + xs[b] + xs[c]) / 2)
        else:
            oth = [i for i in (a, b, c) if i != n]
            theta.append(2 * xs[d] - xs[oth[0]] - xs[oth[1]])
    perm = sorted(range(len(new)), key=lambda i: theta[i])
    x0 = np.concatenate([xs, [xs[-1] + 1.0]])
    assert np.all(base @ x0 >= 1 - 1e-9)
    tokens = []
    leaves = []
    nb = len(new)
    newbits = [0] * nb

    def dfs(i, A, ids, x):
        if i == nb:
            leaves.append((list(newbits), x))
            return
        t = perm[i]
        r = F[npar + t]
        v = float(r @ x)
        feas = {}
        for s in (1, -1):
            if s * v > 1e-7:
                feas[s] = x / min(1.0, s * v)
            else:
                Ac = np.vstack([A, s * r[None, :]])
                xx = lps.feasible(Ac)
                feas[s] = xx
        if feas[1] is not None and feas[-1] is not None:
            tokens.append(2)
            for s in (1, -1):
                newbits[t] = 1 if s == 1 else 0
                dfs(i + 1, np.vstack([A, s * r[None, :]]), ids + [k + npar + t], feas[s])
        else:
            s_ok = 1 if feas[1] is not None else -1
            if feas[s_ok] is None:
                raise RuntimeError('node infeasible')
            s_bad = -s_ok
            Ab = np.vstack([A, s_bad * r[None, :]])
            cert = lps.gordan(Ab)
            ids_b = ids + [k + npar + t]
            tokens.append(1 if s_ok == 1 else 0)
            tokens.append(len(cert))
            for ri, mu in sorted(cert.items()):
                tokens.append(ids_b[ri])
                tokens.append(mu)
            newbits[t] = 1 if s_ok == 1 else 0
            dfs(i + 1, np.vstack([A, s_ok * r[None, :]]), ids + [k + npar + t], feas[s_ok])

    sys.setrecursionlimit(10000)
    dfs(0, base, base_ids, x0)
    # children: full bits over T_k (parent bits, then level k-1 bits in level order), exact witness check
    out = []
    Fk = F
    for nbits, x in leaves:
        bits = np.concatenate([np.asarray(pbits, dtype=np.uint8), np.asarray(nbits, dtype=np.uint8)])
        # rational witness: scale so all margins >= 1 hold approx, then round to integers on a fine grid
        xi = np.round(x * 1000).astype(np.int64)
        s = 2 * bits.astype(np.int64) - 1
        okw = bool(np.all((s[:, None] * Fk) @ xi > 0) and xi[0] > 0 and np.all(np.diff(xi) > 0))
        if not okw:
            raise RuntimeError('witness rounding failed')
        out.append((bits, xi))
    return out, (perm, tokens), lps.n_feas, lps.n_cert


def main():
    K = int(sys.argv[1])
    nproc = int(sys.argv[2]) if len(sys.argv) > 2 else 1
    if K == 4:
        parents = [(np.zeros(0, dtype=np.uint8), np.array([1, 2, 3], dtype=np.int64))]
    else:
        z = np.load(f'models_{K-1}.npz')
        parents = list(zip(z['bits'], z['wit']))
    t0 = time.time()
    tasks = [(K, pb, pw) for pb, pw in parents]
    if nproc > 1:
        from multiprocessing import Pool
        with Pool(nproc) as pool:
            res = pool.map(extend, tasks, chunksize=max(1, len(tasks) // (nproc * 8)))
    else:
        res = [extend(t) for t in tasks]
    bits, wit, par, trees = [], [], [], []
    nf = nc = 0
    for pi, (out, tree, a, b) in enumerate(res):
        nf += a
        nc += b
        trees.append(tree)
        for bb, xi in out:
            bits.append(bb)
            wit.append(xi)
            par.append(pi)
    bits = np.array(bits, dtype=np.uint8)
    wit = np.array(wit, dtype=np.int64)
    np.savez_compressed(f'models_{K}.npz', bits=bits, wit=wit, parent=np.array(par, dtype=np.int64))
    with open(f'tree_{K}.pkl', 'wb') as f:
        pickle.dump(trees, f, protocol=4)
    dens = bits.sum(axis=1)
    print(f'K={K}: parents {len(parents)}, models {len(bits)}, LPs feas {nf} cert {nc}, '
          f'max true {dens.max()}/{bits.shape[1]} = {dens.max()/bits.shape[1]:.6f}, time {time.time()-t0:.1f}s')


if __name__ == '__main__':
    main()
