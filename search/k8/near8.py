"""Values of all consistent 8-tuples under a k=8 solution; count near-tight ones."""
import os, sys, pickle
import numpy as np
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT); sys.path.insert(0, ROOT); sys.path.insert(0, os.path.join(ROOT, 'k8'))
from sdp8 import Problem
out = sys.argv[1]
sol = pickle.load(open(f'{out}_sol.pkl', 'rb'))
P = Problem()
ev, Qe = [], []
for b, Q, lk in zip(sol['blocks'], sol['Q'], sol['low_keys']):
    if b['kind'] == 'low':
        full = [x for x in P.low if (x['t'], x['m'], x['s']) == lk][0]
        Qf = np.zeros((full['bs'], full['bs'])); Qf[np.ix_(b['F'], b['F'])] = Q
        ev.append(dict(kind='low', full=full)); Qe.append(Qf)
    else:
        ev.append(dict(kind='67', keys=b['keys'], bs=b['bs'])); Qe.append(Q)
val = P.evaluate_all(ev, Qe)
np.save(f'{out}_val8.npy', val)
st = np.load(f'{out}_state.npz')
unreal = set(int(i) for i in st['unreal'])
lam = float(sol['lam'])
print('lambda', lam, 'max', val.max())
for dl in [1e-8, 1e-7, 1e-6, 3e-6, 1e-5, 3e-5, 1e-4, 3e-4, 1e-3]:
    idx = np.nonzero(val >= lam - dl)[0]
    print(f'within {dl:g}: {len(idx)} (known unrealizable {sum(1 for i in idx if int(i) in unreal)})')
