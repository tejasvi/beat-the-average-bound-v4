#!/usr/bin/env python3
"""Print the numbers of leaves (field nl) of the level-7 tree records BeatAvg.Data.K8.recs7, one line, space-separated.

usage: python3 -I tools/k7_nl.py BeatAvg/Data/K8/Trees.lean > tools/k7_nl.txt
(the numbers only size the shards of BeatAvg/K/K7; each shard checks the actual leaves)
"""
import re, sys

s = open(sys.argv[1], encoding='utf-8').read()
i = s.index('def recs7 : List PRec :=')
j = s.find('\ndef ', i + 10)
recs = re.findall(r'⟨([^⟩]*)⟩', s[i:j if j > 0 else len(s)])
print(' '.join(r.split(',')[6].strip() for r in recs))  # PRec = ⟨P, perm, np, toks, wl, leaves, nl⟩
