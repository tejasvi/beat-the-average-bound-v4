"""Heuristic initial active sets for k=7: value of the k=6 solution lifted to 7-models (avg over 6-subsets)."""
import numpy as np
from flags import load_models, restrictions
from sdp_csdp import build_blocks, evaluate
M6 = load_models(6)
d6 = M6.sum(axis=1) / M6.shape[1]
b6 = build_blocks(M6, 6, [(1, 3), (2, 4), (3, 4), (4, 5)])
q = np.load('runs/k6all_Q.npz')
val6 = evaluate(b6, d6, [q[f'arr_{i}'] for i in range(len(b6))])
M7 = load_models(7)
subs, R = restrictions(M7, 7, 6)
lift = val6[R].mean(axis=1)
np.save('runs/lift6_k7.npy', lift)
print('lambda6', val6.max(), 'lift max', lift.max())
for dl in [1e-5, 1e-4, 3e-4, 1e-3, 2e-3, 5e-3, 1e-2]:
    print(dl, int((lift >= val6.max() - dl).sum()))
