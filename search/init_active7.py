"""Initial active set for k=7: top models by lifted k=6 value + support of sampled test measures."""
import sys
import numpy as np
from flags import load_models, Lookup
from mc_check import sample_fractal, sample_hier, sample_lognormal, models_of
M7 = load_models(7)
lift = np.load('runs/lift6_k7.npy')
thr = float(sys.argv[1]) if len(sys.argv) > 1 else 0.02
act = set(np.nonzero(lift >= lift.max() - thr)[0].tolist())
print('by lift', len(act))
look = Lookup(M7)
for fn, n in [(sample_fractal, 20000), (sample_hier, 100000), (sample_lognormal, 100000)]:
    X = fn(n, 7)
    bits, _ = models_of(X, 7)
    idx = np.unique(look(bits))
    act |= set(idx.tolist())
    print(fn.__name__, len(idx), 'total', len(act))
np.save(sys.argv[2] if len(sys.argv) > 2 else 'runs/init7.npy', np.array(sorted(act)))
