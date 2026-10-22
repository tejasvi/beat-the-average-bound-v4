#!/usr/bin/env python3
"""Monte Carlo sanity checks of the k-model list and flag matrices (search side).
Usage: mc_check.py K 't:m,...' QFILE"""
import sys
import numpy as np
from common import all_tuples, form_matrix
from flags import load_models, Lookup
from sdp_csdp import build_blocks, evaluate

rng = np.random.default_rng(12345)


def sample_lognormal(n, k):
    return np.exp(3.0 * rng.standard_normal((n, k)))


def sample_fractal(n, k, p=0.474346, N=24, L=5):
    # Y = sum_l Z_l B^(L-1-l), Z_l = 2^N * digit, digit in {0} u {1 - 2^-i}; integer arithmetic via float-free ints
    B = 2 ** (N + 6)
    out = np.empty((n, k), dtype=object)
    Z = rng.random((n, k, L)) < p
    I = rng.integers(1, N + 1, size=(n, k, L))
    noise = rng.integers(0, 2 ** 40, size=(n, k))
    for a in range(n):
        for b in range(k):
            v = 0
            for l in range(L):
                dig = 0 if Z[a, b, l] else (2 ** N - 2 ** (N - int(I[a, b, l])))
                v = v * B + dig
            out[a, b] = v * 2 ** 40 + int(noise[a, b])
    return out


def sample_hier(n, k):
    Y = rng.random((n, k, 4))
    eta = 0.05
    X = Y[:, :, 0] + eta * Y[:, :, 1] + eta ** 2 * Y[:, :, 2] + eta ** 3 * Y[:, :, 3]
    Z = rng.random((n, k)) < 0.4
    X[Z] *= 1e-4
    return X


def models_of(X, k):
    A = form_matrix(k)
    Xs = np.sort(X, axis=1)
    V = Xs.dot(A.T) if X.dtype != object else np.array([[sum(int(A[j, i]) * r[i] for i in range(k)) for j in range(A.shape[0])] for r in Xs], dtype=object)
    assert not np.any(V == 0)
    bits = (V > 0).astype(np.uint8)
    # direct target: fraction of tuples true = d(model); also P[X1+X2+X3<2X4] directly on unsorted first 4 coords
    direct = np.mean(X[:, 0] + X[:, 1] + X[:, 2] < 2 * X[:, 3])
    return bits, direct


def main():
    K = int(sys.argv[1])
    pairs = [tuple(int(a) for a in s.split(':')) for s in sys.argv[2].split(',')]
    qf = np.load(sys.argv[3])
    Mk = load_models(K)
    d = Mk.sum(axis=1) / Mk.shape[1]
    blocks = build_blocks(Mk, K, pairs)
    Qs = [qf[f'arr_{i}'] for i in range(len(blocks))]
    val = evaluate(blocks, d, Qs)
    look = Lookup(Mk)
    for name, fn, n in [('lognormal', sample_lognormal, 400000), ('hier', sample_hier, 400000),
                        ('fractal', sample_fractal, 60000)]:
        X = fn(n, K)
        bits, direct = models_of(X, K)
        idx = look(bits)
        p = np.bincount(idx, minlength=len(Mk)) / n
        mins = []
        for b in blocks:
            S = (p @ b['M']).reshape(b['bs'], b['bs']) / b['D']
            mins.append(np.linalg.eigvalsh((S + S.T) / 2).min())
        print(f'{name}: distinct models {np.count_nonzero(p)}, sum p d = {p @ d:.5f}, direct {direct:.5f}, '
              f'sum p val = {p @ val:.5f} (lambda {val.max():.5f}), min eig of moment blocks {min(mins):.2e}')


if __name__ == '__main__':
    main()
