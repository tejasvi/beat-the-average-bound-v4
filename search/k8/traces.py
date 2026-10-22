import pickle, sys, numpy as np
for fn in sys.argv[1:]:
    d = pickle.load(open(fn, 'rb'))
    tl = sum(np.trace(Q) for b, Q in zip(d['blocks'], d['Q']) if b.get('kind') != '78')
    tt = sum(np.trace(Q) for b, Q in zip(d['blocks'], d['Q']) if b.get('kind') == '78')
    print(fn, 'lam9', d.get('lam9'), 'trace lower', round(tl, 2), 'trace top', round(tt, 3))
