#!/usr/bin/env python3
"""Round a hierarchical k = 9 solution (k9run.py OUT_state.pkl) to a certificate for check639_k9.py (search side).
Usage: round_cert9.py OUT CERT.json [den_bits]"""
import os, sys, json, math, pickle, time
from fractions import Fraction
import numpy as np
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(ROOT)
sys.path.insert(0, ROOT)
sys.path.insert(0, os.path.join(ROOT, 'k8'))
from flags import load_models, FlagSet
from round_cert import sos_round
from sdp8 import Problem
from bits8 import bits_of_tuples
from enum_models import LPS
from k9 import Level9
from k9run import eval_f8, Top


def bitstr(b):
    return ''.join(str(int(x)) for x in b)


def gordan_list(g):
    return [[int(r), int(mu)] for r, mu in sorted(g.items())]


def main():
    out, certfn = sys.argv[1], sys.argv[2]
    den_bits = int(sys.argv[3]) if len(sys.argv) > 3 else 40
    t0 = time.time()
    st = pickle.load(open(f'{out}_state.pkl', 'rb'))
    P = Problem()
    L9 = Level9(P)
    lps = LPS()
    cert = {'K': 9, 'blocks': []}
    rblocks, rQ = [], []
    fsets = {}
    for b, Q in zip(st['blocks'], st['Q']):
        sos, Qr = sos_round(Q, den_bits)
        kind = b.get('kind')
        if kind == 'low':
            t, m, s = b['t'], b['m'], b['s']
            if (t, m) not in fsets:
                fsets[(t, m)] = FlagSet(t, m)
            fs = fsets[(t, m)]
            Nm = load_models(m)
            loc = [None] * fs.blocksize[s]
            for gid in range(len(fs.ftype)):
                if fs.ftype[gid] == s:
                    loc[fs.flocal[gid]] = fs.flags[gid]
            flags = [[bitstr(Nm[loc[int(f)][0]]), list(fs.jsubs[loc[int(f)][1]])] for f in b['F']]
            cert['blocks'].append({'t': t, 'm': m, 'flags': flags, 'sos': sos})
        elif kind == '67':
            keys = b['keys'][b['F']]
            flags = [[bitstr(P.M7[int(k) // 7]), [j for j in range(7) if j != int(k) % 7]] for k in keys]
            cert['blocks'].append({'t': 6, 'm': 7, 'flags': flags, 'sos': sos})
        else:
            keys = b['keys']
            B8 = bits_of_tuples(P.T[keys // 8], P.M7)
            flags = [[bitstr(B8[i]), [j for j in range(8) if j != int(k) % 8]] for i, k in enumerate(keys)]
            cert['blocks'].append({'t': 7, 'm': 8, 'flags': flags, 'sos': sos})
        rblocks.append(b)
        rQ.append(Qr)
    f8 = eval_f8(P, rblocks, rQ)
    top = Top(rblocks, rQ)
    unreal8 = dict(st['unreal8'])
    unreal9 = dict(st['unreal9'])
    # cap: max over realizable 8-tuples
    order = np.argsort(-f8)
    ex8 = {}
    for i in order:
        i = int(i)
        if i in unreal8:
            ex8[i] = unreal8[i]
            continue
        r = P.realizable(np.array([i]), lps)[0]
        if r[1] is not None:
            f8max = float(f8[i])
            break
        unreal8[i] = r[2]
        ex8[i] = r[2]
    cap = Fraction(math.ceil((f8max + 1e-9) * 10 ** 8), 10 ** 8)
    claimed0 = Fraction(math.ceil((st['lam9'] + 1e-9) * 10 ** 8), 10 ** 8)
    thr = float(9 * claimed0 - 8 * cap)
    Sidx = np.array([i for i in np.nonzero(f8 > thr)[0] if not (int(i) in ex8 and f8[i] > float(cap))], dtype=np.int64)
    smask = np.zeros(P.T.shape[0], dtype=bool)
    smask[Sidx] = True
    core = np.array(sorted(top.core), dtype=np.int64)
    Rb = [L9.anchored(8, int(N), smask) for N in Sidx]
    cmask = np.zeros(P.T.shape[0], dtype=bool)
    cmask[core] = True
    Rc = []
    for N in core:
        for x in range(9):
            r = L9.anchored(x, int(N))
            if len(r):
                Rc.append(r[cmask[r].sum(axis=1) >= 2])
    Rall = np.unique(np.concatenate([r for r in Rb + Rc if len(r)]), axis=0)
    bad = np.zeros(P.T.shape[0], dtype=bool)
    for i in ex8:
        if f8[i] > float(cap):
            bad[i] = True
    Rall = Rall[~bad[Rall].any(axis=1)]
    val9 = f8[Rall].mean(axis=1) + top.value(Rall)
    o9 = np.argsort(-val9)
    vmax = None
    ex9 = {}
    for i in o9:
        key = tuple(int(v) for v in Rall[i])
        if key in unreal9:
            ex9[key] = unreal9[key]
            continue
        w, g = L9.realizable(Rall[[i]], lps)[0]
        if w is not None:
            vmax = float(val9[i])
            break
        unreal9[key] = g
        ex9[key] = g
    claimed = max(claimed0, Fraction(math.ceil((vmax + 1e-9) * 10 ** 8), 10 ** 8))
    if cap < claimed:
        cap = claimed
    # certificates for every unrealizable tuple above the final thresholds
    excluded8 = []
    for i, g in ex8.items():
        if f8[i] > float(cap) - 1e-9:
            excluded8.append([bitstr(bits_of_tuples(P.T[[i]], P.M7)[0]), gordan_list(g)])
    excluded9 = []
    for key, g in ex9.items():
        excluded9.append([bitstr(L9.bits9(np.array([key]))[0]), gordan_list(g)])
    cert['claimed'] = [claimed.numerator, claimed.denominator]
    cert['cap'] = [cap.numerator, cap.denominator]
    cert['excluded8'] = excluded8
    cert['excluded9'] = excluded9
    json.dump(cert, open(certfn, 'w'))
    print(f'f8 max (realizable) {f8max:.10f} -> cap {float(cap):.10f}; lam9 {st["lam9"]:.10f}; |S| {len(Sidx)}, core {len(core)}, '
          f'(b)+(c) {len(Rall)}, val9 max (realizable) {vmax:.10f} -> claimed {float(claimed):.10f}; excluded8 {len(excluded8)}, '
          f'excluded9 {len(excluded9)}; {time.time()-t0:.0f}s', flush=True)


if __name__ == '__main__':
    main()
