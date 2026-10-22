#!/usr/bin/env python3
"""Compile Lean modules outside Lake with bounded parallelism and per-module time/memory logs.

usage: run_shards.py LOGDIR JOBS MODULE...   (run from the project root; LEAN_PATH from `lake env`)
Environment: SHARD_MEM_GB (default 32) caps each lean process's address space (RLIMIT_AS), so a runaway shard fails
alone instead of exhausting the machine.
Each module M is compiled with `lean -o .lake/build/lib/lean/M.olean -i ....ilean M.lean` under /usr/bin/time -v.
Writes LOGDIR/<M>.log and appends "M exit user_s wall_s maxrss_kb" lines to LOGDIR/summary.txt.
"""
import os, sys, subprocess, time, resource
from concurrent.futures import ThreadPoolExecutor, as_completed

logdir, jobs, mods = sys.argv[1], int(sys.argv[2]), sys.argv[3:]
os.makedirs(logdir, exist_ok=True)
lp = subprocess.run(['lake', 'env', 'printenv', 'LEAN_PATH'], capture_output=True, text=True).stdout.strip()
lean = subprocess.run(['lake', 'env', 'which', 'lean'], capture_output=True, text=True).stdout.strip() or 'lean'
env = dict(os.environ, LEAN_PATH=lp, LEAN_NUM_THREADS='1')
MEM = int(float(os.environ.get('SHARD_MEM_GB', '32')) * 2**30)


def cap():
    resource.setrlimit(resource.RLIMIT_AS, (MEM, MEM))


def run(m):
    rel = m.replace('.', '/')
    out = f'.lake/build/lib/lean/{rel}'
    os.makedirs(os.path.dirname(out), exist_ok=True)
    t0 = time.time()
    with open(f'{logdir}/{m}.log', 'w') as fh:
        p = subprocess.run(['/usr/bin/time', '-v', lean, '-o', out + '.olean', '-i', out + '.ilean', rel + '.lean'],
                           stdout=fh, stderr=subprocess.STDOUT, env=env, preexec_fn=cap)
    txt = open(f'{logdir}/{m}.log').read()
    def grab(key):
        for line in txt.splitlines():
            if key in line:
                return line.split(':')[-1].strip()
        return '?'
    line = f'{m} {p.returncode} {grab("User time")} {time.time() - t0:.1f} {grab("Maximum resident")}'
    with open(f'{logdir}/summary.txt', 'a') as fh:
        fh.write(line + '\n')
    return line


with ThreadPoolExecutor(jobs) as ex:
    for f in as_completed([ex.submit(run, m) for m in mods]):
        print(f.result(), flush=True)
