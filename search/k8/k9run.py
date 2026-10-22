#!/usr/bin/env python3
"""Hierarchical k = 9 cutting planes (search side).  Usage: k9run.py OUT ACT8.npy VAL8.npy CORE_DELTA [rounds]
Env: DELTA8 (8-level offset: f8 <= lambda9 + DELTA8), TRACE_R, CSDP_BIN, LOWER.
Rows: 8-level f8(N) <= lambda + delta8 for N in A8; 9-level val9(M) <= lambda for M in A9 (Lemma 7 sets (b), (c)).
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
from enum_models import LPS
from k9 import Level9, top_keys, write_sdpa2, read_sol2, build_sdp


def eval_f8(P, blocks, Qs):
    ev, Qe = [], []
    for b, Q in zip(blocks, Qs):
        if b.get('kind') == 'low':
            full = [x for x in P.low if (x['t'], x['m'], x['s']) == (b['t'], b['m'], b['s'])][0]
            Qf = np.zeros((full['bs'], full['bs']))
            Qf[np.ix_(b['F'], b['F'])] = Q
            ev.append(dict(kind='low', full=full))
            Qe.append(Qf)
        elif b.get('kind') == '67':
            # pruned (6,7) block: keys restricted to F
            ev.append(dict(kind='67', keys=b['keys'][b['F']], bs=len(b['F'])))
            Qe.append(Q)
    return P.evaluate_all(ev, Qe)


class Top:
    def __init__(self, blocks, Qs):
        keys, blk, loc = [], [], []
        self.Q = []
        for b, Q in zip(blocks, Qs):
            if b.get('kind') != '78':
                continue
            bi = len(self.Q)
            self.Q.append(Q)
            for i, k in enumerate(b['keys']):
                keys.append(int(k))
                blk.append(bi)
                loc.append(i)
        o = np.argsort(keys)
        self.keys = np.array(keys, dtype=np.int64)[o]
        self.blk = np.array(blk, dtype=np.int64)[o]
        self.loc = np.array(loc, dtype=np.int64)[o]
        self.core = set(int(k) // 8 for k in self.keys)

    def find(self, K):
        if len(self.keys) == 0:
            return -np.ones(K.shape, dtype=np.int64), np.zeros(K.shape, dtype=np.int64)
        p = np.searchsorted(self.keys, K)
        p = np.minimum(p, len(self.keys) - 1)
        ok = self.keys[p] == K
        return np.where(ok, self.blk[p], -1), np.where(ok, self.loc[p], 0)

    def value(self, R):
        FA, FB = top_keys(R)
        ba, la = self.find(FA)
        bb, lb = self.find(FB)
        v = np.zeros(R.shape[0])
        ok = (ba >= 0) & (ba == bb)
        for i, j in zip(*np.nonzero(ok)):
            v[i] += self.Q[ba[i, j]][la[i, j], lb[i, j]]
        return v / 36.0


def main():
    out, act8fn, val8fn = sys.argv[1], sys.argv[2], sys.argv[3]
    core_delta = float(sys.argv[4])
    rounds = int(sys.argv[5]) if len(sys.argv) > 5 else 30
    delta8 = float(os.environ['DELTA8'])
    t0 = time.time()
    P = Problem()
    L9 = Level9(P)
    lps = LPS()
    val8 = np.load(val8fn)
    A8 = np.load(act8fn)
    lam8 = float(val8[A8].max())
    if os.environ.get('RESUME'):
        stt = pickle.load(open(os.environ['RESUME'], 'rb'))
        A8, A9, core = stt['A8'], stt['A9'], stt['core']
        unreal8, unreal9 = stt['unreal8'], stt['unreal9']
        if os.environ.get('RESUME_ADD'):
            add = pickle.load(open(os.environ['RESUME_ADD'], 'rb'))
            A8 = np.unique(np.concatenate([A8, add['add8']])) if len(add['add8']) else A8
            A9 = np.unique(np.concatenate([A9, add['add9']]), axis=0) if len(add['add9']) else A9
        print(f'resumed: core {len(core)}, A8 {len(A8)}, A9 {len(A9)}', flush=True)
        if os.environ.get('RESUME_EVAL'):
            add8, add9, stx = evaluate_and_add(P, L9, lps, stt['blocks'], stt['Q'], stt['lam9'], delta8, core, unreal8, unreal9)
            print(f'resume evaluation: lambda9 {stt["lam9"]:.10f}, {stx}, +{len(add8)} 8-models, +{len(add9)} 9-models', flush=True)
            if add8:
                A8 = np.unique(np.concatenate([A8, np.array(add8, dtype=np.int64)]))
            if add9:
                A9 = np.unique(np.concatenate([A9, np.array(add9)]), axis=0)
        main_loop(P, L9, lps, A8, A9, core, unreal8, unreal9, out, rounds, delta8, t0)
        return
    cand = np.nonzero(val8 >= lam8 - core_delta)[0]
    core = []
    unreal8 = {}
    for (i, w, g) in P.realizable(cand, lps):
        if w is not None:
            core.append(int(i))
        else:
            unreal8[int(i)] = g
    core = np.array(core, dtype=np.int64)
    cmask = np.zeros(P.T.shape[0], dtype=bool)
    cmask[core] = True
    R0 = np.concatenate([L9.anchored(8, int(N), cmask) for N in core])
    res = L9.realizable(R0, lps)
    A9 = R0[[i for i, (w, g) in enumerate(res) if w is not None]]
    unreal9 = {tuple(int(v) for v in R0[i]): g for i, (w, g) in enumerate(res) if w is None}
    A8 = np.unique(np.concatenate([A8, core]))
    print(f'core {len(core)} (unrealizable dropped {len(unreal8)}), A8 {len(A8)}, A9 {len(A9)}; {time.time()-t0:.0f}s',
          flush=True)
    main_loop(P, L9, lps, A8, A9, core, unreal8, unreal9, out, rounds, delta8, t0)


def evaluate_and_add(P, L9, lps, blocks, Qs, lam9, delta8, core, unreal8, unreal9):
    f8 = eval_f8(P, blocks, Qs)
    top = Top(blocks, Qs)
    cap = lam9 + delta8
    v8 = np.nonzero(f8 > cap + 1e-9)[0]
    v8 = np.array([i for i in v8[np.argsort(-f8[v8])] if int(i) not in unreal8], dtype=np.int64)
    add8 = []
    for (i, w, g) in (P.realizable(v8[:4000], lps) if len(v8) else []):
        if w is not None:
            add8.append(int(i))
        else:
            unreal8[int(i)] = g
    thr = lam9 - 8 * delta8
    Sidx = np.nonzero(f8 > thr)[0]
    Sidx = np.array([i for i in Sidx if int(i) not in unreal8], dtype=np.int64)
    smask = np.zeros(P.T.shape[0], dtype=bool)
    smask[Sidx] = True
    Rb = [L9.anchored(8, int(N), smask) for N in Sidx]
    Rc = [L9.anchored(x, int(N)) for N in core for x in range(9)]
    # the top part is nonzero only if at least two restrictions are core patterns (Lemma 7')
    cmask = np.zeros(P.T.shape[0], dtype=bool)
    cmask[core] = True
    Rc = [r[cmask[r].sum(axis=1) >= 2] for r in Rc if len(r)]
    parts = [r for r in Rb + Rc if len(r)]
    Rall = np.unique(np.concatenate(parts), axis=0) if parts else np.zeros((0, 9), dtype=np.int64)
    val9 = f8[Rall].mean(axis=1) + top.value(Rall)
    v9 = np.nonzero(val9 > lam9 + 1e-9)[0]
    v9 = v9[np.argsort(-val9[v9])]
    v9 = [i for i in v9 if tuple(int(v) for v in Rall[i]) not in unreal9]
    add9 = []
    if v9:
        sel = np.array(v9[:3000])
        for i, (w, g) in zip(sel, L9.realizable(Rall[sel], lps)):
            if w is not None:
                add9.append(Rall[i])
            else:
                unreal9[tuple(int(v) for v in Rall[i])] = g
    stats = dict(cap=cap, maxf8=float(f8.max()), n8viol=len(v8), nS=len(Sidx), nR=len(Rall),
                 maxval9=float(val9.max()) if len(val9) else float('nan'), n9viol=len(v9))
    return add8, add9, stats


def main_loop(P, L9, lps, A8, A9, core, unreal8, unreal9, out, rounds, delta8, t0):
    for it in range(1, rounds + 1):
        A8 = np.unique(np.concatenate([A8, A9.ravel()]))
        blocks, rhs, lamc = build_sdp(P, L9, A8, A9, core, None)
        tag = os.environ.get('TAG', '')
        fn, sol = f'{out}{tag}_it{it}.dat-s', f'{out}{tag}_it{it}.sol'
        write_sdpa2(fn, blocks, rhs, lamc, float(os.environ.get('TRACE_R', '1000')), float(os.environ.get('TRACE_TOP', '1000')))
        t1 = time.time()
        with open(f'{out}{tag}_it{it}.csdp.log', 'w') as lf:
            pr = subprocess.Popen([os.environ['CSDP_BIN'], fn, sol], stdout=lf, stderr=subprocess.STDOUT)
            open(f'{out}.csdp.pid', 'w').write(str(pr.pid))
            pr.wait()
        y, Qs, lam9 = read_sol2(sol, blocks)
        os.remove(fn)
        tcs = time.time() - t1
        add8, add9, stt = evaluate_and_add(P, L9, lps, blocks, Qs, lam9, delta8, core, unreal8, unreal9)
        print(f'it {it}: A8 {len(A8)}, A9 {len(A9)}, csdp {tcs:.0f}s, lambda9 {lam9:.10f}, cap {stt["cap"]:.10f}, '
              f'max f8 {stt["maxf8"]:.10f}, 8-viol {stt["n8viol"]} (+{len(add8)} realizable), |S| {stt["nS"]}, '
              f'(b)+(c) tuples {stt["nR"]}, max val9 {stt["maxval9"]:.10f}, 9-viol {stt["n9viol"]} (+{len(add9)} realizable); '
              f'{time.time()-t0:.0f}s', flush=True)
        pickle.dump(dict(blocks=[{k: v for k, v in b.items() if k != 'M'} for b in blocks], Q=Qs, lam9=lam9, delta8=delta8,
                         A8=A8, A9=A9, core=core, unreal8=unreal8, unreal9=unreal9), open(f'{out}_state.pkl', 'wb'))
        pickle.dump(dict(add8=np.array(add8, dtype=np.int64), add9=np.array(add9, dtype=np.int64).reshape(-1, 9)),
                    open(f'{out}_add.pkl', 'wb'))
        if not add8 and not add9:
            break
        if add8:
            A8 = np.unique(np.concatenate([A8, np.array(add8, dtype=np.int64)]))
        if add9:
            A9 = np.unique(np.concatenate([A9, np.array(add9)]), axis=0)
    print('done', flush=True)


if __name__ == '__main__':
    main()
