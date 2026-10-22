"""Lifted k=7 value of every consistent 8-tuple: (1/8) sum over the 8 seven-point restrictions of val7."""
import os, sys
import numpy as np
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT); sys.path.insert(0, ROOT)
from flags import load_models
from sdp_csdp import build_blocks, evaluate
M7 = load_models(7)
d7 = M7.sum(axis=1) / 140
pairs = [(1, 4), (2, 4), (4, 5), (5, 6)]
blocks = build_blocks(M7, 7, pairs)
q = np.load('runs/k7noA_R200_Q_final.npz')
Qs = [q[f'arr_{i}'] for i in range(len(blocks))]
val7 = evaluate(blocks, d7, Qs)
np.save('k8/val7.npy', val7)
lam7 = val7.max()
Z = np.load('k8/tuples8.npz')
T = Z['T']
lift = np.zeros(T.shape[0])
for c in range(8):
    lift += val7[T[:, c]]
lift /= 8
np.save('k8/lift8.npy', lift.astype(np.float64))
print('lambda7', lam7, 'lift max', lift.max())
for dl in [1e-9, 1e-6, 1e-5, 1e-4, 3e-4, 1e-3, 3e-3, 1e-2]:
    print(f'within {dl:g}: {(lift >= lam7 - dl).sum()}')
