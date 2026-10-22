#!/usr/bin/env python3
"""Consistent tuples (P, C_0..C_6) = candidate 8-patterns (Lemma 5), for every 7-model P (search side).

Usage: join8.py NPROC [SAMPLE]
Writes k8/tuples8.npz: T (n x 8 int32: C_0..C_6, P), ptr (per-P offsets).
C_x in children(P - x); for a < b: del7[C_a, b-1] == del7[C_b, a].
"""
import sys, os, time
import numpy as np
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)
Z = np.load('k8/maps7.npz')
del7, ch_ptr, ch_idx = Z['del7'], Z['ch_ptr'], Z['ch_idx']
B = 1290  # number of 6-models; keys in base B fit in int64 for up to 6 digits


def join_one(p):
    dom = [ch_idx[ch_ptr[s]:ch_ptr[s + 1]] for s in del7[p, :7]]
    part = dom[0][:, None]
    for x in range(1, 7):
        cand = dom[x]
        if part.shape[0] == 0 or len(cand) == 0:
            return np.zeros((0, 7), dtype=np.int32)
        w = B ** np.arange(x, dtype=np.int64)
        ck = (del7[cand][:, :x] * w).sum(axis=1)
        rk = (del7[part, x - 1] * w).sum(axis=1)
        o = np.argsort(ck, kind='stable')
        cks = ck[o]
        lo = np.searchsorted(cks, rk, 'left')
        hi = np.searchsorted(cks, rk, 'right')
        cnt = hi - lo
        rows = np.repeat(np.arange(part.shape[0]), cnt)
        if len(rows) == 0:
            return np.zeros((0, 7), dtype=np.int32)
        starts = np.repeat(lo - np.concatenate([[0], np.cumsum(cnt)[:-1]]), cnt)
        pos = np.arange(len(rows)) + starts
        part = np.column_stack([part[rows], cand[o[pos]]])
    return part.astype(np.int32)


def work(ps):
    out = []
    for p in ps:
        T = join_one(p)
        out.append((p, T))
    return out


def main():
    nproc = int(sys.argv[1]) if len(sys.argv) > 1 else 1
    sample = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    N7 = del7.shape[0]
    if sample:
        ps = np.random.default_rng(3).choice(N7, size=sample, replace=False)
    else:
        ps = np.arange(N7)
    t0 = time.time()
    chunks = np.array_split(ps, max(1, nproc * 16))
    if nproc > 1:
        from multiprocessing import Pool
        with Pool(nproc) as pool:
            res = pool.map(work, chunks)
    else:
        res = [work(c) for c in chunks]
    res = [r for rr in res for r in rr]
    res.sort(key=lambda z: z[0])
    sizes = np.array([len(T) for _, T in res])
    print(f'parents {len(res)}: consistent tuples total {sizes.sum()}, mean {sizes.mean():.1f}, max {sizes.max()}, '
          f'time {time.time()-t0:.1f}s', flush=True)
    if not sample:
        T = np.concatenate([np.column_stack([t, np.full(len(t), p, dtype=np.int32)]) for p, t in res])
        ptr = np.concatenate([[0], np.cumsum(sizes)])
        np.savez('k8/tuples8.npz', T=T, ptr=ptr)


if __name__ == '__main__':
    main()
