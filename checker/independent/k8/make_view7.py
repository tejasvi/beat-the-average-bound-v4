#!/usr/bin/env python3
"""K = 7 view of a k = 8 certificate: only the blocks with 2m - t <= 7 (their k = 8 contribution is the average of the
k = 7 functional over the eight 7-point restrictions, Lemma 5.1 of the paper).
Usage: make_view7.py CERT8.json OUT.json
Both arguments are required: the default paths below point to a directory that is not part of this repository.
The README runs it from an empty directory, with I and C the paths of checker/independent and cert, as
  python3 -I $I/k8/make_view7.py $C/cert_k8_04006983.json view7_lower.json"""
import os, sys, json
A = os.path.dirname(os.path.abspath(__file__))
src = sys.argv[1] if len(sys.argv) > 1 else f'{A}/snap8/cert_k8_04006983.json'
dst = sys.argv[2] if len(sys.argv) > 2 else f'{A}/view7_lower.json'
C = json.load(open(src))
low = [b for b in C['blocks'] if 2 * b['m'] - b['t'] <= 7]
json.dump({'K': 7, 'claimed': C['claimed'], 'blocks': low}, open(dst, 'w'))
print(len(low), 'lower blocks', sorted(set((b['t'], b['m']) for b in low)))
