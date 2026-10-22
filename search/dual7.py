"""Compare the k=7 SDP dual (pseudo-distribution on active models) with the fractal construction's 7-model law."""
import numpy as np
from flags import load_models, Lookup
from common import form_matrix
M7 = load_models(7)
d7 = M7.sum(axis=1) / 140
q = np.load('runs/k7noA_R200_Q_final.npz')
act = q['active']
y_all = np.array([float(v) for v in open('runs/k7noA_R200_it4.sol').readline().split()])
y = np.zeros(len(M7))
y[act] = y_all[:len(act)]
print('sum y', y.sum(), 'y.d', y @ d7, 'support(>1e-6)', (y > 1e-6).sum(), 'trace mult', y_all[len(act)])
rng = np.random.default_rng(11)
p, N, L, n = 0.474346, 50, 9, 300000
A = form_matrix(7).astype(float)
look = Lookup(M7)
cnt = np.zeros(len(M7))
B = 20000
for s0 in range(0, n, B):
    Z = rng.random((B, 7, L)) < p
    I = rng.integers(1, N + 1, size=(B, 7, L))
    dig = np.where(Z, 0.0, 1.0 - 2.0 ** (-I.astype(float)))
    dig = np.concatenate([dig, rng.random((B, 7, 1))], axis=2)
    bits = np.zeros((B, 140), dtype=np.uint8)
    for s in range(B):
        D = dig[s]
        perm = sorted(range(7), key=lambda i: tuple(D[i]))
        V = A @ D[perm]
        nz = V != 0
        first = np.argmax(nz, axis=1)
        sg = V[np.arange(140), first]
        bits[s] = sg > 0
    for i in look(bits):
        cnt[i] += 1
qd = cnt / n
print('fractal: sum q d', qd @ d7, 'support', (qd > 0).sum())
print('y mass on fractal support', y[qd > 0].sum(), 'q mass on y support', qd[y > 1e-6].sum())
print('L1 distance', np.abs(y - qd).sum())
top = np.argsort(-y)[:12]
for i in top:
    print(i, f'y={y[i]:.4f} q={qd[i]:.4f} d={d7[i]:.4f}')
