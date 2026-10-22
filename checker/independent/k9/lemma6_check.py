#!/usr/bin/env python3
"""Numerical check of Lemma 5.1 of the paper and of the hierarchical evaluation of audit639.py: for sample consistent
8-tuples (random) and 9-tuples (the tuples above the claim plus samples from stage 2), compare
  f8 (hierarchical: (1/8) sum f7 + (1/28) mid pair terms)  with  the direct K = 8 value (lower + mid blocks), and
  val9 (hierarchical)                                      with  the direct K = 9 value (all blocks),
the direct values computed from the reconstructed patterns by enumerating every triple (J, A, B) (definition (3.1)).
Usage: python -I lemma6_check.py CERT9 TREEDIR N8   (in the work directory of a finished `audit639.py k9` run)"""
import sys, os, json, pickle, random
from fractions import Fraction
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import a639lib as A
import audit639 as AU


def main():
    certfn, treedir, n8 = sys.argv[1], sys.argv[2], int(sys.argv[3])
    cert = json.load(open(certfn))
    st = pickle.load(open(os.path.join(os.getcwd(), 'tmp', 'state_s3_k9.pkl'), 'rb'))
    list7 = pickle.load(open(os.path.join(os.getcwd(), 'tmp', 'list7.pkl'), 'rb'))
    lower = [b for b in cert['blocks'] if 2 * b['m'] - b['t'] <= 7]
    mid = [b for b in cert['blocks'] if (b['t'], b['m']) == (6, 7)]
    S8 = st['S8']; S9 = 9 * S8 * 36 * st['LT']
    D8 = A.DirectValue(8, lower + mid)
    random.seed(639)
    J8 = AU.Join8(st['del7'])
    worst8 = 0; cnt = 0
    starts = random.sample(range(len(list7)), n8)
    for p in starts:
        for R in J8.tuples(first_range=[p]):
            hv = Fraction(AU.f8_scaled(R, st), S8)
            dv = D8.value(AU.bits8(R, list7))
            worst8 = max(worst8, abs(hv - dv)); cnt += 1
            break                                   # first tuple for this R_0
    print(f'8-level: {cnt} random consistent 8-tuples, max |hierarchical f8 - direct K=8 value| = {worst8}', flush=True)
    summ = pickle.load(open(os.path.join(os.getcwd(), 'tmp', 'k9_summary.pkl'), 'rb'))
    S = summ['S']
    samples = list(summ['high'])
    for R9 in AU.join9(lambda y: S, {}):
        samples.append(R9)
        if len(samples) >= len(summ['high']) + 8:
            break
    D9 = A.DirectValue(9, cert['blocks'])
    f8c = {}
    worst9 = 0
    for R9 in samples:
        hv = Fraction(AU.val9_scaled(R9, st, f8c), S9)
        dv = D9.value(AU.bits9(R9, list7))
        worst9 = max(worst9, abs(hv - dv))
    print(f'9-level: {len(samples)} 9-tuples ({len(summ["high"])} high + samples over S), max |hierarchical val9 - direct K=9 value| = {worst9}')


if __name__ == '__main__':
    main()
