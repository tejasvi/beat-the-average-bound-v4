#!/usr/bin/env python3
"""Round a k = 8 SDP solution (sdp8.py OUT_sol.pkl) to an exact certificate for check639_k8.py (search side).

Usage: round_cert8.py OUT CERT.json [den_bits]
The claimed bound is the float maximum over consistent tuples not proven unrealizable, plus 1e-9, rounded up to 1e-7.
Unrealizable tuples above it are listed in "excluded" with Gordan certificates (rows: 0..7 order, 8 + tau signed forms).
"""
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


def main():
    out, certfn = sys.argv[1], sys.argv[2]
    den_bits = int(sys.argv[3]) if len(sys.argv) > 3 else 40
    t0 = time.time()
    sol = pickle.load(open(f'{out}_sol.pkl', 'rb'))
    st = np.load(f'{out}_state.npz')
    P = Problem()
    cert = {'K': 8, 'blocks': []}
    ev_blocks, Qeval = [], []
    fsets = {}
    for b, Q, lk in zip(sol['blocks'], sol['Q'], sol['low_keys']):
        sos, Qr = sos_round(Q, den_bits)
        if b['kind'] == 'low':
            t, m, s = lk
            if (t, m) not in fsets:
                fsets[(t, m)] = FlagSet(t, m)
            fs = fsets[(t, m)]
            Nm = load_models(m)
            loc = [None] * fs.blocksize[s]
            for gid in range(len(fs.ftype)):
                if fs.ftype[gid] == s:
                    loc[fs.flocal[gid]] = fs.flags[gid]
            flags = []
            for f in b['F']:
                n, jp = loc[int(f)]
                flags.append([''.join(str(int(x)) for x in Nm[n]), list(fs.jsubs[jp])])
            cert['blocks'].append({'t': t, 'm': m, 'flags': flags, 'sos': sos})
            full = [x for x in P.low if (x['t'], x['m'], x['s']) == (t, m, s)][0]
            Qf = np.zeros((full['bs'], full['bs']))
            Qf[np.ix_(b['F'], b['F'])] = Qr
            ev_blocks.append(dict(kind='low', full=full))
            Qeval.append(Qf)
        else:
            flags = []
            for key in b['keys']:
                N, p = int(key) // 7, int(key) % 7
                flags.append([''.join(str(int(x)) for x in P.M7[N]), [j for j in range(7) if j != p]])
            cert['blocks'].append({'t': 6, 'm': 7, 'flags': flags, 'sos': sos})
            ev_blocks.append(dict(kind='67', keys=b['keys'], bs=b['bs']))
            Qeval.append(Qr)
    val = P.evaluate_all(ev_blocks, Qeval)
    print(f'rounded: max over all tuples {val.max():.10f}; {time.time()-t0:.0f}s', flush=True)
    unreal = set(int(i) for i in st['unreal'])
    lps = LPS()
    order = np.argsort(-val)
    excluded = []
    claimed = None
    for i in order:
        i = int(i)
        res = P.realizable(np.array([i]), lps)[0]
        if res[1] is not None:
            vmax = val[i]
            claimed = Fraction(math.ceil((vmax + 1e-9) * 10 ** 7), 10 ** 7)
            break
        excluded.append(i)
    # every tuple with value above the claim must be excluded: include all unrealizable ones above claimed - 1e-8
    thr = float(claimed) - 1e-8
    above = np.nonzero(val > thr)[0]
    ex = []
    for i in above:
        res = P.realizable(np.array([int(i)]), lps)[0]
        if res[1] is None:
            bits = bits_of_tuples(P.T[[int(i)]], P.M7)[0]
            g = sorted((int(r), int(mu)) for r, mu in res[2].items())
            ex.append([''.join(str(int(x)) for x in bits), [[r, mu] for r, mu in g]])
    cert['claimed'] = [claimed.numerator, claimed.denominator]
    cert['excluded'] = ex
    json.dump(cert, open(certfn, 'w'))
    print(f'claimed {claimed} = {float(claimed):.9f} (realizable max {vmax:.10f}); tuples above claim-1e-8: {len(above)}, '
          f'excluded (unrealizable) {len(ex)}; blocks {len(cert["blocks"])}; {time.time()-t0:.0f}s', flush=True)


if __name__ == '__main__':
    main()
