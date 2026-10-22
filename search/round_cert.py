#!/usr/bin/env python3
"""Round a numerical flag SDP solution to an exact certificate (search side).

Usage: round_cert.py K 't:m,...' QFILE OUT.json [den_bits]
Writes OUT.json: {"K", "blocks": [{"t","m","flags": [[Nbits_string, [J positions]], ...],
                  "sos": {"den": D, "terms": [[w_num, w_den, [v_1..v_n integers]], ...]}}], "claimed": [num, den]}
Q_block = sum_terms (w_num/w_den) * (v/D)(v/D)^T. Also writes trees_K.json (from tree_k.pkl) if missing.
"""
import sys, json, os, pickle
from fractions import Fraction
import numpy as np
from flags import load_models, FlagSet
from sdp_csdp import build_blocks, evaluate


def sos_round(Q, den_bits=30):
    Q = (Q + Q.T) / 2
    lam, V = np.linalg.eigh(Q)
    D = 2 ** den_bits
    terms = []
    Qr = np.zeros_like(Q)
    for i in range(len(lam)):
        if lam[i] <= 1e-13 * max(1.0, lam.max()):
            continue
        v = np.round(V[:, i] * D).astype(np.int64)
        if not np.any(v):
            continue
        wn = int(round(float(lam[i]) * 2 ** 50))
        if wn <= 0:
            continue
        w = Fraction(wn, 2 ** 50)
        terms.append([wn, 2 ** 50, [int(a) for a in v]])
        vf = v / D
        Qr += float(w) * np.outer(vf, vf)
    return {'den': D, 'terms': terms}, Qr


def main():
    K = int(sys.argv[1])
    pairs = [tuple(int(a) for a in s.split(':')) for s in sys.argv[2].split(',')]
    qf = np.load(sys.argv[3])
    out = sys.argv[4]
    den_bits = int(sys.argv[5]) if len(sys.argv) > 5 else 30
    Mk = load_models(K)
    d = Mk.sum(axis=1) / Mk.shape[1]
    blocks = build_blocks(Mk, K, pairs)
    Qs = [qf[f'arr_{i}'] for i in range(len(blocks))]
    fsets = {}
    cert = {'K': K, 'blocks': []}
    Qrs = []
    for b, Q in zip(blocks, Qs):
        key = (b['t'], b['m'])
        if key not in fsets:
            fsets[key] = FlagSet(*key)
        fs = fsets[key]
        Nm = load_models(b['m'])
        fl = [None] * b['bs']
        for gid in range(len(fs.ftype)):
            if fs.ftype[gid] == b['s']:
                n, jp = fs.flags[gid]
                fl[fs.flocal[gid]] = [''.join(str(int(x)) for x in Nm[n]), list(fs.jsubs[jp])]
        F = np.nonzero(np.any(Q != 0, axis=1))[0]
        if len(F) == 0:
            Qrs.append(np.zeros_like(Q))
            continue
        sos, Qr_sub = sos_round(Q[np.ix_(F, F)], den_bits)
        Qr = np.zeros_like(Q)
        Qr[np.ix_(F, F)] = Qr_sub
        Qrs.append(Qr)
        cert['blocks'].append({'t': b['t'], 'm': b['m'], 'flags': [fl[i] for i in F], 'sos': sos})
    val = evaluate(blocks, d, Qrs)
    mx = float(val.max())
    import math
    claimed = Fraction(math.ceil((mx + 1e-7) * 10 ** 6), 10 ** 6)
    cert['claimed'] = [claimed.numerator, claimed.denominator]
    print(f'float value of rounded certificate {mx:.9f}; claimed {claimed} = {float(claimed):.9f}')
    with open(out, 'w') as f:
        json.dump(cert, f)
    for k in range(4, K + 1):
        tj = f'trees_{k}.json'
        if os.path.exists(tj):
            continue
        with open(f'tree_{k}.pkl', 'rb') as f:
            trees = pickle.load(f)
        with open(tj, 'w') as f:
            json.dump([[list(map(int, perm)), list(map(int, tok))] for perm, tok in trees], f)


if __name__ == '__main__':
    main()
