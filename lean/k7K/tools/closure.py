#!/usr/bin/env python3
"""Print the BeatAvg source files in the import closure of the given modules (run from the project root).

usage: closure.py MODULE...   (e.g. closure.py BeatAvg.K.K7)
"""
import os, re, sys

seen, todo = set(), list(sys.argv[1:])
while todo:
    m = todo.pop()
    if m in seen or not m.startswith('BeatAvg'):
        continue
    seen.add(m)
    path = m.replace('.', '/') + '.lean'
    if not os.path.exists(path):
        print('missing', path, file=sys.stderr)
        continue
    for line in open(path, encoding='utf-8'):
        line = line.strip()
        if line.startswith('import '):
            todo.extend(line.split()[1:])
        elif line and not line.startswith('--') and not line.startswith('/-') and not line.startswith('module'):
            if not line.startswith('import'):
                break
for m in sorted(seen):
    print(m.replace('.', '/') + '.lean')
