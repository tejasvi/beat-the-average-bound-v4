#!/usr/bin/env python3
"""k = 9 hierarchical flag SDP (search side): lower part = k=8 functional f8 (capped on 8-models), top part = (7,8)
flags restricted to a core set of 8-patterns.  9-patterns are consistent 9-tuples (R_0..R_8), R_x = M - x = row of
k8/tuples8.npz.  Usage (estimate): k9.py OUT ACT8.npy VAL8.npy DELTA_S0 [lam8cap]
"""
import os, sys, time, subprocess, pickle
import numpy as np
from scipy import sparse
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)
sys.path.insert(0, ROOT)
sys.path.insert(0, os.path.join(ROOT, 'k8'))
from sdp8 import Problem
from bits8 import bits_of_tuples
from common import all_tuples, tuple_index, form_matrix, order_matrix
from enum_models import LPS

PAIRS9 = [(a, b) for a in range(9) for b in range(a + 1, 9)]


class Level9:
    def __init__(self, P):
        self.P = P
        self.T = P.T
        self.ptr = np.load('k8/tuples8.npz')['ptr']
        n = self.T.shape[0]
        self.idx = {}
        for r in range(7):
            o = np.argsort(self.T[:, r], kind='stable').astype(np.int64)
            self.idx[r] = (o, self.T[o, r])
        # 9-pattern bits from 8-pattern bits: tuple tau of T_9 read from R_x, x = 8 if 8 not in tau else min point not in tau
        T9 = all_tuples(9)
        I8 = tuple_index(8)
        self.SRC = np.empty(len(T9), dtype=np.int64)
        self.IDX = np.empty(len(T9), dtype=np.int64)
        for i, t in enumerate(T9):
            x = 8 if 8 not in t else min(q for q in range(8) if q not in t)
            rel = tuple(q if q < x else q - 1 for q in t)
            self.SRC[i] = x
            self.IDX[i] = I8[rel]
        self.F9 = form_matrix(9)
        self.O9 = order_matrix(9)

    def lookup(self, r, v):
        if r == 7:
            return np.arange(self.ptr[v], self.ptr[v + 1])
        o, keys = self.idx[r]
        lo = np.searchsorted(keys, v, 'left')
        hi = np.searchsorted(keys, v, 'right')
        return o[lo:hi]

    def anchored(self, x, N, mask=None):
        """All consistent 9-tuples with R_x = N (rows of tuples8), optionally all other R_y in mask."""
        T = self.T
        ys = [y for y in range(9) if y != x]
        dom = {}
        for y in ys:
            r = x if x < y else x - 1
            q = y if y < x else y - 1
            d = self.lookup(r, T[N, q])
            if mask is not None:
                d = d[mask[d]]
            dom[y] = d
        part = None
        done = []
        for y in ys:
            cand = dom[y]
            if part is None:
                part = cand[:, None]
                done.append(y)
                continue
            if part.shape[0] == 0 or len(cand) == 0:
                return np.zeros((0, 9), dtype=np.int64)
            ck = np.zeros(len(cand), dtype=np.uint64)
            rk = np.zeros(part.shape[0], dtype=np.uint64)
            for j, z in enumerate(done):  # z < y: T[R_z, y-1] == T[R_y, z]
                ck = ck * np.uint64(1000003) + T[cand, z].astype(np.uint64)
                rk = rk * np.uint64(1000003) + T[part[:, j], y - 1].astype(np.uint64)
            o = np.argsort(ck, kind='stable')
            cks = ck[o]
            lo = np.searchsorted(cks, rk, 'left')
            hi = np.searchsorted(cks, rk, 'right')
            cnt = hi - lo
            rows = np.repeat(np.arange(part.shape[0]), cnt)
            if len(rows) == 0:
                return np.zeros((0, 9), dtype=np.int64)
            starts = np.repeat(lo - np.concatenate([[0], np.cumsum(cnt)[:-1]]), cnt)
            part = np.column_stack([part[rows], cand[o[np.arange(len(rows)) + starts]]])
            ok = np.ones(part.shape[0], dtype=bool)
            for j, z in enumerate(done):
                ok &= T[part[:, -1], z] == T[part[:, j], y - 1]
            part = part[ok]
            done.append(y)
        out = np.empty((part.shape[0], 9), dtype=np.int64)
        for j, y in enumerate(done):
            out[:, y] = part[:, j]
        out[:, x] = N
        return out

    def bits9(self, R):
        """9-pattern bits for 9-tuples R (n x 9)."""
        out = np.empty((R.shape[0], len(self.SRC)), dtype=np.uint8)
        for s in range(9):
            sel = np.nonzero(self.SRC == s)[0]
            b8 = bits_of_tuples(self.T[R[:, s]], self.P.M7)
            out[:, sel] = b8[:, self.IDX[sel]]
        return out

    def realizable(self, R, lps):
        B = self.bits9(R)
        res = []
        for b in B:
            s = 2 * b.astype(np.int64) - 1
            A = np.vstack([self.O9, s[:, None] * self.F9])
            x = lps.feasible(A)
            if x is not None:
                xi = np.round(x * 1000).astype(np.int64)
                assert np.all(A @ xi > 0)
                res.append((xi, None))
            else:
                res.append((None, lps.gordan(A)))
        return res


def top_keys(R):
    """For 9-tuples R: arrays (n, 36) of flag keys F_a = R_b*8 + a, F_b = R_a*8 + (b-1)."""
    n = R.shape[0]
    FA = np.empty((n, 36), dtype=np.int64)
    FB = np.empty((n, 36), dtype=np.int64)
    for j, (a, b) in enumerate(PAIRS9):
        FA[:, j] = R[:, b] * 8 + a
        FB[:, j] = R[:, a] * 8 + (b - 1)
    return FA, FB


def write_sdpa2(fn, blocks, rhs, lamc, trace_r, trace_top=None):
    """Constraints i: sum_b <Q_b, C_b(i)>/D_b + s_i - lamc_i (lp - lm) = rhs_i; maximize lm - lp;
    sum tr Q_b <= trace_r over non-top blocks and sum tr Q_b <= trace_top over top ('78') blocks."""
    if trace_top is None:
        trace_top = trace_r
    m = len(rhs)
    nb = len(blocks)
    with open(fn, 'w') as f:
        f.write(f'{m + 2}\n{nb + 2}\n')
        f.write(' '.join(str(b['bs']) for b in blocks) + f' {-(m + 2)} -2\n')
        f.write(' '.join(repr(float(v)) for v in rhs) + f' {float(trace_r)!r} {float(trace_top)!r}\n')
        f.write(f'0 {nb + 2} 1 1 -1.0\n0 {nb + 2} 2 2 1.0\n')
        for bi, b in enumerate(blocks):
            sub = b['M'].tocoo()
            bs = b['bs']
            F, G = sub.col // bs, sub.col % bs
            keep = F <= G
            r, F, G, v = sub.row[keep], F[keep], G[keep], sub.data[keep] / b['D']
            lines = [f'{r[i]+1} {bi+1} {F[i]+1} {G[i]+1} {float(v[i])!r}\n' for i in range(len(r))]
            f.writelines(lines)
        lines = []
        for j in range(m):
            lines.append(f'{j+1} {nb+1} {j+1} {j+1} 1.0\n')
            if lamc[j]:
                lines.append(f'{j+1} {nb+2} 1 1 {-float(lamc[j])!r}\n{j+1} {nb+2} 2 2 {float(lamc[j])!r}\n')
        for bi, b in enumerate(blocks):
            row = m + 2 if b.get('kind') == '78' else m + 1
            for i in range(b['bs']):
                lines.append(f'{row} {bi+1} {i+1} {i+1} 1.0\n')
        lines.append(f'{m+1} {nb+1} {m+1} {m+1} 1.0\n')
        lines.append(f'{m+2} {nb+1} {m+2} {m+2} 1.0\n')
        f.writelines(lines)


def read_sol2(fn, blocks):
    with open(fn) as f:
        y = np.array([float(v) for v in f.readline().split()])
        Qs = [np.zeros((b['bs'], b['bs'])) for b in blocks]
        lam = [0.0, 0.0]
        for line in f:
            p = line.split()
            mat, blk, i, j, v = int(p[0]), int(p[1]), int(p[2]), int(p[3]), float(p[4])
            if mat != 2:
                continue
            if blk <= len(blocks):
                Qs[blk - 1][i - 1, j - 1] = v
                Qs[blk - 1][j - 1, i - 1] = v
            elif blk == len(blocks) + 2:
                lam[i - 1] = v
    return y, Qs, lam[0] - lam[1]


def build_sdp(P, L9, A8, A9, core, lam8cap):
    """Blocks with rows = [A8 constraints (8-level), A9 constraints (9-level)]; returns blocks, rhs, lamc."""
    ninv = np.unique(np.concatenate([A8, A9.ravel()]))
    pos = {int(v): i for i, v in enumerate(ninv)}
    blocks8, d8 = P.coeffs(ninv)
    n8, n9 = len(A8), len(A9)
    # selector matrices: 8-level rows (scaled by 9) and 9-level rows (sum of the nine restrictions)
    r8 = np.array([pos[int(v)] for v in A8])
    S8 = sparse.csr_matrix((np.full(n8, 9.0), (np.arange(n8), r8)), shape=(n8, len(ninv)))
    rr = np.repeat(np.arange(n9), 9)
    cc = np.array([pos[int(v)] for v in A9.ravel()])
    S9 = sparse.csr_matrix((np.ones(len(rr)), (rr, cc)), shape=(n9, len(ninv)))
    S = sparse.vstack([S8, S9]).tocsr()
    blocks = []
    for b in blocks8:
        M = (S @ b['M']).tocsr()
        M.eliminate_zeros()
        blocks.append(dict(b, M=M, D=9 * b['D']))
    # top (7,8) blocks over core flags
    FA, FB = top_keys(A9)
    coreset = set(int(c) for c in core)
    keys = np.unique(np.concatenate([FA.ravel(), FB.ravel()]))
    keys = np.array([k for k in keys if (k // 8) in coreset], dtype=np.int64)
    if os.environ.get('NOTOP'):
        keys = np.zeros(0, dtype=np.int64)
    ty = P.T[keys // 8, keys % 8] if len(keys) else np.zeros(0, dtype=np.int64)
    for s in np.unique(ty):
        ks = keys[ty == s]
        loc = {int(k): i for i, k in enumerate(ks)}
        bs = len(ks)
        rows, cols = [], []
        for i in range(n9):
            for j in range(36):
                fa, fb = int(FA[i, j]), int(FB[i, j])
                if fa in loc and fb in loc:
                    rows += [n8 + i, n8 + i]
                    cols += [loc[fa] * bs + loc[fb], loc[fb] * bs + loc[fa]]
        if not rows:
            continue
        M = sparse.csr_matrix((np.ones(len(rows)), (rows, cols)), shape=(n8 + n9, bs * bs))
        M.sum_duplicates()
        blocks.append(dict(kind='78', s=int(s), bs=bs, M=M, D=72, keys=ks))
    d9 = d8[[pos[int(v)] for v in A9.ravel()]].reshape(n9, 9).mean(axis=1) if n9 else np.zeros(0)
    if os.environ.get('TEST8'):
        rhs = np.concatenate([-d8[r8], -d9])
        lamc = np.ones(n8 + n9)
    elif os.environ.get('DELTA8'):
        # f8(N) <= lambda9 + delta8 on 8-models, val9(M) <= lambda9 on 9-models (lam8cap := lambda9 + delta8)
        rhs = np.concatenate([float(os.environ['DELTA8']) - d8[r8], -d9])
        lamc = np.ones(n8 + n9)
    else:
        rhs = np.concatenate([lam8cap - d8[r8], -d9])
        lamc = np.concatenate([np.zeros(n8), np.ones(n9)])
    # prune lower blocks to occurring flags
    out = []
    for b in blocks:
        if b.get('kind') == '78':
            out.append(b)
            continue
        bs = b['bs']
        cols = np.unique(b['M'].tocoo().col)
        if len(cols) == 0:
            continue
        Fk = np.unique(np.concatenate([cols // bs, cols % bs]))
        p_ = -np.ones(bs, dtype=np.int64)
        p_[Fk] = np.arange(len(Fk))
        Ma = b['M'].tocoo()
        nb = len(Fk)
        Mp = sparse.csr_matrix((Ma.data, (Ma.row, p_[Ma.col // bs] * nb + p_[Ma.col % bs])), shape=(Ma.shape[0], nb * nb))
        out.append(dict(b, bs=nb, M=Mp, F=Fk))
    return out, rhs, lamc


def main():
    out, act8fn, val8fn = sys.argv[1], sys.argv[2], sys.argv[3]
    delta = float(sys.argv[4])
    lam8cap = float(sys.argv[5]) if len(sys.argv) > 5 else None
    t0 = time.time()
    P = Problem()
    L9 = Level9(P)
    val8 = np.load(val8fn)
    A8 = np.load(act8fn)
    lam8 = float(val8[A8].max())
    if lam8cap is None:
        lam8cap = lam8 + 1e-7
    S0 = np.nonzero(val8 >= lam8 - delta)[0]
    lps = LPS()
    # drop unrealizable 8-patterns from S0
    keep = []
    for i in S0:
        b = bits_of_tuples(P.T[[i]], P.M7)[0]
        s = 2 * b.astype(np.int64) - 1
        if lps.feasible(np.vstack([P.O, s[:, None] * P.F])) is not None:
            keep.append(int(i))
    S0 = np.array(keep, dtype=np.int64)
    mask = np.zeros(P.T.shape[0], dtype=bool)
    mask[S0] = True
    print(f'lam8 {lam8:.10f}, cap {lam8cap:.10f}; S0 (realizable, within {delta:g}): {len(S0)}; {time.time()-t0:.0f}s', flush=True)
    R = [L9.anchored(8, int(N), mask) for N in S0] if os.environ.get('TEST8') != '1' else []
    R = np.concatenate(R) if R else np.zeros((0, 9), dtype=np.int64)
    res = L9.realizable(R, lps) if len(R) else []
    A9 = R[[i for i, (w, g) in enumerate(res) if w is not None]] if len(R) else R
    print(f'9-tuples with all restrictions in S0: {len(R)}, realizable {len(A9)}; {time.time()-t0:.0f}s', flush=True)
    A8 = np.unique(np.concatenate([A8, A9.ravel()])) if len(A9) else A8   # restrictions of 9-models are 8-models
    blocks, rhs, lamc = build_sdp(P, L9, A8, A9, S0, lam8cap)
    print(f'SDP: {len(rhs)} constraints, {len(blocks)} blocks (78: {sum(1 for b in blocks if b.get("kind")=="78")}), '
          f'max bs {max(b["bs"] for b in blocks)}; {time.time()-t0:.0f}s', flush=True)
    fn, sol = f'{out}.dat-s', f'{out}.sol'
    write_sdpa2(fn, blocks, rhs, lamc, float(os.environ.get('TRACE_R', '200')), float(os.environ.get('TRACE_TOP', os.environ.get('TRACE_R', '200'))))
    with open(f'{out}.csdp.log', 'w') as lf:
        subprocess.run([os.environ['CSDP_BIN'], fn, sol], stdout=lf, stderr=subprocess.STDOUT)
    y, Qs, lam9 = read_sol2(sol, blocks)
    os.remove(fn)
    print(f'lambda9 (subproblem) {lam9:.10f}  vs lam8 {lam8:.10f}  (gain {lam8 - lam9:.2e}); {time.time()-t0:.0f}s', flush=True)
    pickle.dump(dict(blocks=[{k: v for k, v in b.items() if k != 'M'} for b in blocks], Q=Qs, lam9=lam9, lam8cap=lam8cap,
                     A8=A8, A9=A9, S0=S0), open(f'{out}.pkl', 'wb'))


if __name__ == '__main__':
    main()
