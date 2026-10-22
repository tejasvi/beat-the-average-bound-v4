#!/usr/bin/env python3
"""Flag SDP via CSDP with cutting planes over models (search only).

Usage: sdp_csdp.py K 't1:m1,t2:m2,...' OUTPREFIX [init_active] [add_per_round]
Primal (CSDP P): X = blockdiag(Q_b ..., diag(s_M : M active), diag(lp, lm)),
  for active M: sum_b <Q_b, C_b(M)>/D_b + s_M - lp + lm = -d(M);  maximize lm - lp  (lambda = lp - lm).
"""
import sys, os, time, subprocess
import numpy as np
from scipy.sparse import coo_matrix as sp_coo
from flags import load_models, flag_matrices, restrictions

CSDP = '/usr/bin/csdp'


def build_blocks(Mk, K, pairs):
    blocks = []  # (t, m, s, bs, csr matrix of counts, D)
    Rcache = {}
    for (t, m) in pairs:
        if m not in Rcache:
            Rcache[m] = restrictions(Mk, K, m)
        subs, R = Rcache[m]
        fs, mats, D = flag_matrices(Mk, K, t, m, R=R, subs=subs)
        for s, M in enumerate(mats):
            bs = fs.blocksize[s]
            if bs == 0 or M.nnz == 0:
                continue
            blocks.append(dict(t=t, m=m, s=s, bs=bs, M=M.tocsr(), D=D))
    return blocks


def evaluate(blocks, d, Qs):
    val = d.copy()
    for b, Q in zip(blocks, Qs):
        val += (b['M'] @ Q.reshape(-1)) / b['D']
    return val


TRACE_R = float(os.environ.get('TRACE_R', '1000'))


def write_sdpa(fn, blocks, d, active):
    na = len(active)
    nb = len(blocks)
    with open(fn, 'w') as f:
        # constraints 1..na: models; constraint na+1: sum_b tr(Q_b) + s_R = TRACE_R (keeps subproblems bounded)
        f.write(f'{na + 1}\n{nb + 2}\n')
        f.write(' '.join(str(b['bs']) for b in blocks) + f' {-(na + 1)} -2\n')
        f.write(' '.join(repr(float(-d[i])) for i in active) + f' {TRACE_R!r}\n')
        # objective C: lambda block (lm - lp)
        f.write(f'0 {nb + 2} 1 1 -1.0\n0 {nb + 2} 2 2 1.0\n')
        lines = []
        for bi, b in enumerate(blocks):
            sub = b['M'][active].tocoo()
            bs = b['bs']
            r, c, v = sub.row, sub.col, sub.data
            F, G = c // bs, c % bs
            keep = F <= G
            r, F, G, v = r[keep], F[keep], G[keep], v[keep] / b['D']
            arr = np.column_stack([r + 1, np.full(len(r), bi + 1), F + 1, G + 1])
            for row, val in zip(arr, v):
                lines.append(f'{row[0]} {row[1]} {row[2]} {row[3]} {float(val)!r}\n')
            if len(lines) > 200000:
                f.writelines(lines)
                lines = []
        f.writelines(lines)
        lines = []
        for j in range(na):
            lines.append(f'{j+1} {nb+1} {j+1} {j+1} 1.0\n{j+1} {nb+2} 1 1 -1.0\n{j+1} {nb+2} 2 2 1.0\n')
        for bi, b in enumerate(blocks):
            for i in range(b['bs']):
                lines.append(f'{na+1} {bi+1} {i+1} {i+1} 1.0\n')
        lines.append(f'{na+1} {nb+1} {na+1} {na+1} 1.0\n')
        f.writelines(lines)


def read_sol(fn, blocks, na):
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
                Q = Qs[blk - 1]
                Q[i - 1, j - 1] = v
                Q[j - 1, i - 1] = v
            elif blk == len(blocks) + 2:
                lam[i - 1] = v
    return y, Qs, lam[0] - lam[1]


def main():
    K = int(sys.argv[1])
    pairs = [tuple(int(a) for a in s.split(':')) for s in sys.argv[2].split(',')]
    out = sys.argv[3]
    init_active = sys.argv[4] if len(sys.argv) > 4 else '3000'
    add = int(sys.argv[5]) if len(sys.argv) > 5 else 3000
    t0 = time.time()
    Mk = load_models(K)
    d = Mk.sum(axis=1) / Mk.shape[1]
    blocks = build_blocks(Mk, K, pairs)
    print(f'K={K} models {len(Mk)} plain {d.max():.6f}; blocks {[b["bs"] for b in blocks]}; build {time.time()-t0:.1f}s',
          flush=True)
    if init_active.endswith('.npy'):
        active = sorted(set(np.load(init_active).tolist()))
    else:
        order = np.argsort(-d, kind='stable')
        active = sorted(order[:int(init_active)].tolist())
    it = 0
    while True:
        it += 1
        fn = f'{out}_it{it}.dat-s'
        sol = f'{out}_it{it}.sol'
        if os.environ.get('PRUNE', '1') == '1':
            sblocks, keep = [], []
            core = np.load(os.environ['CORE_SET']) if os.environ.get('CORE_SET') else None
            core_tm = os.environ.get('CORE_TM', '')
            for b in blocks:
                bs = b['bs']
                if core is not None and f"{b['t']}:{b['m']}" in core_tm.split(','):
                    cols = np.unique(b['M'][core].tocoo().col)
                else:
                    cols = np.unique(b['M'][active].tocoo().col)
                F = np.unique(np.concatenate([cols // bs, cols % bs])) if len(cols) else np.zeros(0, dtype=int)
                keep.append(F)
                if len(F) == 0:
                    continue
                # column map from full (F,G) index to pruned index
                pos = -np.ones(bs, dtype=np.int64)
                pos[F] = np.arange(len(F))
                Ma = b['M'][active].tocoo()
                r, c = Ma.row, Ma.col
                ok = (pos[c // bs] >= 0) & (pos[c % bs] >= 0)
                Ma = sp_coo((Ma.data[ok], (r[ok], c[ok])), shape=Ma.shape)
                r, c = Ma.row, Ma.col
                nb_ = len(F)
                import scipy.sparse as sp_
                Mp = sp_.csr_matrix((Ma.data, (np.asarray(active)[r], pos[c // bs] * nb_ + pos[c % bs])),
                                    shape=(b['M'].shape[0], nb_ * nb_))
                sblocks.append(dict(t=b['t'], m=b['m'], s=b['s'], bs=nb_, M=Mp, D=b['D'], full=b, F=F))
        else:
            sblocks = [dict(b, full=b, F=np.arange(b['bs'])) for b in blocks]
        print(f'  round {it}: pruned block sizes {[b["bs"] for b in sblocks]}', flush=True)
        write_sdpa(fn, sblocks, d, active)
        t1 = time.time()
        env = dict(os.environ)
        blas = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'blas')
        env['LD_LIBRARY_PATH'] = blas
        env.setdefault('OPENBLAS_NUM_THREADS', '16')
        with open(f'{out}_it{it}.csdp.log', 'w') as lf:
            subprocess.run(['nice', '-n', '10', CSDP, fn, sol], stdout=lf, stderr=subprocess.STDOUT, env=env)
        tail = '\n'.join(open(f'{out}_it{it}.csdp.log').read().strip().split('\n')[-8:])
        y, Qsp, lam = read_sol(sol, sblocks, len(active))
        Qs = []
        for b in blocks:
            Qs.append(np.zeros((b['bs'], b['bs'])))
        bidx = {id(b): i for i, b in enumerate(blocks)}
        for sb, Qp in zip(sblocks, Qsp):
            i = bidx[id(sb['full'])]
            Qs[i][np.ix_(sb['F'], sb['F'])] = Qp
        val = evaluate(blocks, d, Qs)
        mx = val.max()
        mins = [np.linalg.eigvalsh(Q).min() for Q in Qs]
        print(f'it {it}: active {len(active)}, csdp {time.time()-t1:.1f}s, lambda {lam:.6f}, max over all {mx:.6f}, '
              f'min eig {min(mins):.2e}', flush=True)
        if it == 1 or mx > lam + 1e-6:
            print(tail, flush=True)
        np.savez(f'{out}_Q.npz', *Qs, lam=lam, mx=mx, active=np.array(active))
        os.remove(fn)
        viol = np.nonzero(val > lam + 1e-7)[0]
        aset = set(active)
        new = [i for i in viol[np.argsort(-val[viol])] if i not in aset][:add]
        if not new:
            break
        active = sorted(active + new)
    print(f'final: bound (numerical) {mx:.6f}, total {time.time()-t0:.1f}s')


if __name__ == '__main__':
    main()
