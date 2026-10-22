#!/usr/bin/env python3
"""k = 8 flag SDP over consistent 8-tuples, by cutting planes (search side).

Usage: sdp8.py OUT INIT_ACTIVE.npy [add_per_round] [max_rounds]
Types: lower (1,4),(2,4),(4,5),(5,6) [values = average over the eight 7-point restrictions] and (6,7)
[pairs a < b: Q_{M-a-b}[F_a, F_b], F_a = (M - b, pos a), F_b = (M - a, pos b - 1); D = 56].
Active set = indices into k8/tuples8.npz (only realizable tuples are kept; unrealizable violators get a Gordan
certificate and are remembered in OUT_unreal.npy).
"""
import os, sys, time, subprocess
import numpy as np
from scipy import sparse
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)
sys.path.insert(0, ROOT)
sys.path.insert(0, os.path.join(ROOT, 'k8'))
from flags import load_models
from sdp_csdp import build_blocks, write_sdpa, read_sol, CSDP
from bits8 import bits_of_tuples
from enum_models import LPS
from common import form_matrix, order_matrix

LOWER = [tuple(int(a) for a in s_.split(':')) for s_ in os.environ.get('LOWER', '1:4,2:4,4:5,5:6').split(',')]
PAIRS = [(a, b) for a in range(8) for b in range(a + 1, 8)]


def pair_flags(T):
    """For tuples T (n x 8: C_0..C_6, P): arrays (n, 28) of flag keys fa, fb (key = N*7 + pos)."""
    n = T.shape[0]
    FA = np.empty((n, 28), dtype=np.int64)
    FB = np.empty((n, 28), dtype=np.int64)
    for j, (a, b) in enumerate(PAIRS):
        Mb = T[:, 7] if b == 7 else T[:, b]
        FA[:, j] = Mb.astype(np.int64) * 7 + a
        FB[:, j] = T[:, a].astype(np.int64) * 7 + (b - 1)
    return FA, FB


class Problem:
    def __init__(self):
        self.M7 = load_models(7)
        self.d7 = self.M7.sum(axis=1) / 140
        self.low = build_blocks(self.M7, 7, LOWER)
        Z = np.load('k8/maps7.npz')
        self.del7 = Z['del7']
        Z = np.load('k8/tuples8.npz')
        self.T = Z['T']
        self.F = form_matrix(8)
        self.O = order_matrix(8)

    def coeffs(self, act):
        """Blocks (dicts with bs, M (rows = act order), D, kind, keys) and d8 for the active tuples."""
        T = self.T[act]
        n = len(act)
        d8 = self.d7[T].mean(axis=1)
        blocks = []
        for b in self.low:
            M = b['M']
            rows = M[T[:, 0]]
            for c in range(1, 8):
                rows = rows + M[T[:, c]]
            rows = rows.tocsr()
            blocks.append(dict(kind='low', t=b['t'], m=b['m'], s=b['s'], bs=b['bs'], M=rows, D=8 * b['D']))
        FA, FB = pair_flags(T)
        keys = np.unique(np.concatenate([FA.ravel(), FB.ravel()]))
        ty = self.del7[keys // 7, keys % 7]
        for s in np.unique(ty):
            ks = keys[ty == s]
            loc = {int(k): i for i, k in enumerate(ks)}
            bs = len(ks)
            sel = np.nonzero(self.del7[FA // 7, FA % 7] == s)
            r = sel[0]
            fa = np.array([loc[int(k)] for k in FA[sel]], dtype=np.int64)
            fb = np.array([loc[int(k)] for k in FB[sel]], dtype=np.int64)
            rr = np.concatenate([r, r])
            cc = np.concatenate([fa * bs + fb, fb * bs + fa])
            M = sparse.csr_matrix((np.ones(len(rr)), (rr, cc)), shape=(n, bs * bs))
            M.sum_duplicates()
            blocks.append(dict(kind='67', s=int(s), bs=bs, M=M, D=56, keys=ks))
        return blocks, d8

    def evaluate_all(self, blocks, Qs, chunk=1_000_000):
        """val8 for all consistent tuples (float)."""
        # f7 from the lower blocks
        f7 = self.d7.copy()
        for b, Q in zip(blocks, Qs):
            if b['kind'] != 'low':
                continue
            full = b['full']
            f7 += (full['M'] @ Q.reshape(-1)) / full['D']
        # (6,7) lookup: key -> (block offset, local index)
        offs, locs, Qflat_parts, sizes = {}, {}, [], []
        nk = 7 * self.M7.shape[0]
        kblock = -np.ones(nk, dtype=np.int64)
        kloc = -np.ones(nk, dtype=np.int64)
        off = 0
        boff = []
        for bi, (b, Q) in enumerate(zip(blocks, Qs)):
            if b['kind'] != '67':
                continue
            kblock[b['keys']] = len(boff)
            kloc[b['keys']] = np.arange(b['bs'])
            boff.append(off)
            sizes.append(b['bs'])
            Qflat_parts.append(Q.reshape(-1))
            off += b['bs'] ** 2
        Qflat = np.concatenate(Qflat_parts) if Qflat_parts else np.zeros(1)
        boff = np.array(boff + [0], dtype=np.int64)
        sizes = np.array(sizes + [1], dtype=np.int64)
        N = self.T.shape[0]
        val = np.empty(N)
        for s0 in range(0, N, chunk):
            T = self.T[s0:s0 + chunk]
            v = f7[T].mean(axis=1)
            FA, FB = pair_flags(T)
            ba, bb = kblock[FA], kblock[FB]
            ok = (ba >= 0) & (ba == bb)
            la, lb = kloc[FA], kloc[FB]
            idx = boff[ba] + la * sizes[ba] + lb
            pv = np.where(ok, Qflat[np.where(ok, idx, 0)], 0.0)
            v += pv.sum(axis=1) / 28.0
            val[s0:s0 + chunk] = v
        return val

    def realizable(self, idx, lps):
        """LP test of tuples idx: returns list of (idx, witness or None, gordan or None)."""
        bits = bits_of_tuples(self.T[idx], self.M7)
        out = []
        for i, b in zip(idx, bits):
            s = 2 * b.astype(np.int64) - 1
            A = np.vstack([self.O, s[:, None] * self.F])
            x = lps.feasible(A)
            if x is not None:
                xi = np.round(x * 1000).astype(np.int64)
                assert np.all(A @ xi > 0)
                out.append((i, xi, None))
            else:
                cert = lps.gordan(A)
                out.append((i, None, cert))
        return out


def main():
    out = sys.argv[1]
    init = np.load(sys.argv[2])
    add = int(sys.argv[3]) if len(sys.argv) > 3 else 4000
    max_rounds = int(sys.argv[4]) if len(sys.argv) > 4 else 30
    t0 = time.time()
    P = Problem()
    lps = LPS()
    print(f'loaded: {P.T.shape[0]} tuples, {time.time()-t0:.1f}s', flush=True)
    res = P.realizable(init, lps)
    active = sorted(int(i) for i, w, c in res if w is not None)
    unreal = {int(i): c for i, w, c in res if w is None}
    print(f'init: {len(init)} candidates, {len(active)} realizable, {len(unreal)} unrealizable', flush=True)
    for it in range(1, max_rounds + 1):
        act = np.array(active)
        blocks, d8 = P.coeffs(act)
        # prune lower blocks to flags occurring in active models
        sblocks = []
        for b in blocks:
            if b['kind'] == 'low':
                bs = b['bs']
                cols = np.unique(b['M'].tocoo().col)
                Fk = np.unique(np.concatenate([cols // bs, cols % bs])) if len(cols) else np.zeros(0, dtype=int)
                if len(Fk) == 0:
                    continue
                pos = -np.ones(bs, dtype=np.int64)
                pos[Fk] = np.arange(len(Fk))
                Ma = b['M'].tocoo()
                nb = len(Fk)
                Mp = sparse.csr_matrix((Ma.data, (Ma.row, pos[Ma.col // bs] * nb + pos[Ma.col % bs])),
                                       shape=(Ma.shape[0], nb * nb))
                full = [x for x in P.low if x['t'] == b['t'] and x['m'] == b['m'] and x['s'] == b['s']][0]
                sblocks.append(dict(kind='low', bs=nb, M=Mp, D=b['D'], F=Fk, full=full))
            else:
                sblocks.append(b)
        fn = f'{out}_it{it}.dat-s'
        sol = f'{out}_it{it}.sol'
        write_sdpa(fn, sblocks, d8, np.arange(len(act)))
        env = dict(os.environ)
        t1 = time.time()
        # The run behind the certificate executed CSDP 6.2 built with OpenMP on a separate 32-thread server;
        # this copy calls a local binary ($CSDP_BIN, default as in sdp_csdp.py).
        with open(f'{out}_it{it}.csdp.log', 'w') as lf:
            pr = subprocess.Popen(['nice', '-n', '10', os.environ.get('CSDP_BIN', CSDP), fn, sol], stdout=lf, stderr=subprocess.STDOUT, env=env)
            with open(f'{out}.csdp.pid', 'w') as pf:
                pf.write(str(pr.pid))
            pr.wait()
        y, Qsp, lam = read_sol(sol, sblocks, len(act))
        # expand lower blocks to full size for evaluation
        Qeval = []
        for b, Qp in zip(sblocks, Qsp):
            if b['kind'] == 'low':
                Qf = np.zeros((b['full']['bs'], b['full']['bs']))
                Qf[np.ix_(b['F'], b['F'])] = Qp
                Qeval.append(Qf)
                b['full_Q'] = Qf
            else:
                Qeval.append(Qp)
        ev_blocks = [dict(b, full=b['full']) if b['kind'] == 'low' else b for b in sblocks]
        val = P.evaluate_all(ev_blocks, Qeval)
        mx = val.max()
        mine = min(np.linalg.eigvalsh(Q).min() for Q in Qsp)
        print(f'it {it}: active {len(act)}, csdp {time.time()-t1:.1f}s, lambda {lam:.7f}, max over all tuples '
              f'{mx:.7f}, min eig {mine:.1e}, blocks {len(sblocks)} (67: {sum(1 for b in sblocks if b["kind"]=="67")}, '
              f'max bs {max(b["bs"] for b in sblocks)})', flush=True)
        np.savez(f'{out}_state.npz', active=act, lam=lam, mx=mx, unreal=np.array(sorted(unreal)))
        import pickle
        with open(f'{out}_sol.pkl', 'wb') as f:
            pickle.dump(dict(blocks=[{k: v for k, v in b.items() if k not in ('M', 'full')} for b in sblocks],
                             low_keys=[(b['full']['t'], b['full']['m'], b['full']['s']) if b['kind'] == 'low' else None
                                       for b in sblocks],
                             Q=Qsp, lam=lam, active=act), f)
        os.remove(fn)
        viol = np.nonzero(val > lam + 1e-7)[0]
        aset = set(active)
        cand = [int(i) for i in viol[np.argsort(-val[viol])] if int(i) not in aset and int(i) not in unreal]
        newr = []
        for i, w, c in P.realizable(np.array(cand[: 4 * add], dtype=np.int64), lps):
            if w is not None:
                newr.append(i)
                if len(newr) >= add:
                    break
            else:
                unreal[i] = c
        print(f'   violators {len(viol)} (new candidates {len(cand)}), added realizable {len(newr)}, '
              f'unrealizable known {len(unreal)}; {time.time()-t0:.0f}s', flush=True)
        if not newr:
            break
        active = sorted(active + newr)
    print('done', flush=True)


if __name__ == '__main__':
    main()
