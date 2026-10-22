#!/usr/bin/env python3
"""Compare the independent implementation with check639.py.

Usage:
  python3 compare.py models K TREEDIR MODELS_K.json
      The set of k-patterns that check639.py rebuilds from the trees in TREEDIR, against the set of patterns of the
      integer witnesses in MODELS_K.json (written by indep_models.py / indep_models7.py).
  python3 compare.py values CERT.json TREEDIR MODELS_K.json VALUES.json NPROC
      check639.value on the pattern of each witness, against the value written by
      indep_value7.py CERT.json MODELS_K.json NPROC --dump VALUES.json. The witnesses must cover exactly the
      patterns that check639.py rebuilds from TREEDIR, one witness per pattern.
Patterns are read in the documented order of T_k (check639.tuples_of); witnesses must be sorted, positive, generic.
Both modes reject empty inputs and duplicated patterns.
"""
import os, sys, json, io, contextlib
import multiprocessing as mp
from fractions import Fraction

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
import check639  # noqa: E402

if not __debug__:
    raise SystemExit("this checker relies on assert statements; run it without -O")


def pattern(w, T):
    assert all(isinstance(z, int) for z in w) and 0 < w[0] and all(a < b for a, b in zip(w, w[1:]))
    bits = []
    for (d, a, b, c) in T:
        v = 2 * w[d] - w[a] - w[b] - w[c]
        assert v != 0
        bits.append(1 if v > 0 else 0)
    return tuple(bits)


def checker_patterns(K, treedir):
    """The list rebuilt by check639.py from the trees, as a set; asserts that it has no duplicates."""
    with contextlib.redirect_stdout(io.StringIO()):
        L = check639.rebuild_models(K, treedir)
    S = set(tuple(m) for m in L)
    assert len(S) == len(L), 'duplicated pattern in the list rebuilt by check639.py'
    return S


def witness_patterns(K, mine):
    """Patterns of the witnesses, in order; asserts non-empty input, K points each, and no duplicated pattern."""
    assert len(mine) > 0, 'empty models file'
    T = check639.tuples_of(K)
    assert all(len(rec[0]) == K for rec in mine), 'witness with the wrong number of points'
    P = [pattern(rec[0], T) for rec in mine]
    assert len(set(P)) == len(P), 'duplicated witness pattern'
    return P


def compare_models(K, treedir, modfn):
    mine = json.load(open(modfn))
    P = witness_patterns(K, mine)
    S_chk = checker_patterns(K, treedir)
    S_ind = set(P)
    same = S_ind == S_chk
    print(f'k={K}: independent {len(mine)} witnesses, {len(S_ind)} distinct patterns; check639 {len(S_chk)} patterns; '
          f'{"EQUAL" if same else "DIFFERENT"} '
          f'({len(S_ind - S_chk)} only independent, {len(S_chk - S_ind)} only check639)')
    return same


def _work(chunk):
    return [(i, check639.value(M) == v) for i, M, v in chunk]


def compare_values(certfn, treedir, modfn, valfn, nproc):
    K, blocks, claimed = check639.load_cert(certfn)
    mine = json.load(open(modfn))
    P = witness_patterns(K, mine)
    S_chk = checker_patterns(K, treedir)
    assert set(P) == S_chk, 'the witnesses do not cover exactly the patterns rebuilt from the trees'
    V = json.load(open(valfn))
    Dn = int(V['D'])
    assert Dn > 0 and len(V['vals']) == len(mine), 'values file does not match the models file'
    items = [(i, P[i], Fraction(int(V['vals'][i]), Dn)) for i in range(len(mine))]
    n = max(1, len(items) // (nproc * 8))
    chunks = [items[i:i + n] for i in range(0, len(items), n)]
    with mp.get_context('fork').Pool(nproc, initializer=check639.init_worker, initargs=(K, blocks)) as pool:
        res = [r for out in pool.map(_work, chunks) for r in out]
    assert len(res) == len(mine) > 0
    bad = sum(1 for _, ok in res if not ok)
    print(f'K={K}: {len(res)} witnesses compared (all {len(S_chk)} patterns covered), {bad} value mismatches; '
          f'max independent value {float(max(v for _, _, v in items)):.12f}')
    return bad == 0


def main():
    mode = sys.argv[1]
    if mode == 'models':
        ok = compare_models(int(sys.argv[2]), sys.argv[3], sys.argv[4])
    elif mode == 'values':
        ok = compare_values(sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5], int(sys.argv[6]))
    else:
        raise SystemExit(__doc__)
    print('RESULT:', 'AGREE' if ok else 'DISAGREE')
    sys.exit(0 if ok else 1)


if __name__ == '__main__':
    main()
