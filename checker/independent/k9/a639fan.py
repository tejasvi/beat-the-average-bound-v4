"""Subprocess fan-out (no multiprocessing, nothing outside the work directory): run `python -I SCRIPT --worker STAGE i n
STATE` in n processes; each worker reads the pickled STATE, processes slice i of n and writes STATE.STAGE.i.out.pkl."""
import os, sys, subprocess, pickle

HERE = os.path.dirname(os.path.abspath(__file__))


def fan(script, stage, state_path, n, extra_env=None):
    env = dict(os.environ, TMPDIR=os.path.join(os.getcwd(), 'tmp'))
    if extra_env:
        env.update(extra_env)
    procs = []
    for i in range(n):
        out = f'{state_path}.{stage}.{i}.out.pkl'
        if os.path.exists(out):
            os.remove(out)
        procs.append(subprocess.Popen(['nice', '-n', '10', sys.executable, '-I', script, '--worker', stage, str(i), str(n),
                                       state_path], env=env))
    with open(f'{state_path}.{stage}.pids', 'w') as fh:
        fh.write(''.join(f'{p.pid}\n' for p in procs))
    rcs = [p.wait() for p in procs]
    if any(rcs):
        raise SystemExit(f'worker failure in stage {stage}: return codes {rcs}')
    res = []
    for i in range(n):
        with open(f'{state_path}.{stage}.{i}.out.pkl', 'rb') as fh:
            res.append(pickle.load(fh))
    return res
