#!/usr/bin/env python3
"""Deletion maps and children lists for 6- and 7-models (search side, k = 8 work).

Writes k8/maps7.npz:
  del7[N, i] = index of the 6-model N - i (point i of the sorted 7-model removed), i = 0..6
  del6[S, i] = index of the 5-model S - i, i = 0..5
  ch_ptr, ch_idx: children of 6-model s (7-models N with N - 6 = s) = ch_idx[ch_ptr[s]:ch_ptr[s+1]]
"""
import itertools, sys, os
import numpy as np
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)
sys.path.insert(0, ROOT)
from flags import load_models, restrictions


def deletion_map(Mk, k):
    subs, R = restrictions(Mk, k, k - 1)
    D = np.empty((Mk.shape[0], k), dtype=np.int64)
    for j, U in enumerate(subs):
        (i,) = set(range(k)) - set(U)
        D[:, i] = R[:, j]
    return D


def main():
    M7 = load_models(7)
    M6 = load_models(6)
    del7 = deletion_map(M7, 7)
    del6 = deletion_map(M6, 6)
    par7 = np.load('models_7.npz')['parent']
    assert np.all(del7[:, 6] == par7), 'N - 6 must be the enumeration parent'
    order = np.argsort(del7[:, 6], kind='stable')
    counts = np.bincount(del7[:, 6], minlength=M6.shape[0])
    ch_ptr = np.concatenate([[0], np.cumsum(counts)])
    ch_idx = order
    np.savez('k8/maps7.npz', del7=del7, del6=del6, ch_ptr=ch_ptr, ch_idx=ch_idx)
    print('7-models', M7.shape[0], '6-models', M6.shape[0], 'children per 6-model: mean', counts.mean(),
          'max', counts.max(), 'min', counts.min())


if __name__ == '__main__':
    main()
