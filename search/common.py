"""Shared definitions for flag639 (search side).

Points are 0-indexed and sorted: 0 < x_0 < x_1 < ... < x_{k-1}.
A tuple (d, a, b, c) with a < b < c, d not in {a, b, c}, encodes the form L = 2 x_d - x_a - x_b - x_c;
the relation R holds iff L > 0.  T_k lists tuples by level j = max(d, a, b, c) for j = 3..k-1, so T_{k-1} is a
prefix of T_k; inside a level, by d, then (a, b, c) lexicographically.
"""
import itertools
from math import comb
import numpy as np


def level_tuples(j):
    out = []
    for d in range(j + 1):
        rest = [i for i in range(j + 1) if i != d]
        for S in itertools.combinations(rest, 3):
            if d == j or j in S:
                out.append((d,) + S)
    return out


def all_tuples(k):
    T = []
    for j in range(3, k):
        T += level_tuples(j)
    assert len(T) == k * comb(k - 1, 3)
    return T


def tuple_index(k):
    return {t: i for i, t in enumerate(all_tuples(k))}


def form_matrix(k):
    """Rows r with r.x = L(x), one per tuple of T_k (int8)."""
    T = all_tuples(k)
    A = np.zeros((len(T), k), dtype=np.int64)
    for i, (d, a, b, c) in enumerate(T):
        A[i, d] += 2
        A[i, a] -= 1
        A[i, b] -= 1
        A[i, c] -= 1
    return A


def order_matrix(k):
    """Rows: x_0 > 0, x_i - x_{i-1} > 0."""
    O = np.zeros((k, k), dtype=np.int64)
    O[0, 0] = 1
    for i in range(1, k):
        O[i, i] = 1
        O[i, i - 1] = -1
    return O


def restrict_index(k, U):
    """For a sorted subset U of range(k) of size m, the positions in T_k of the tuples of T_m mapped through U."""
    idx = tuple_index(k)
    out = []
    for (d, a, b, c) in all_tuples(len(U)):
        out.append(idx[(U[d], U[a], U[b], U[c])])
    return np.array(out, dtype=np.int64)


def model_of(x):
    """Sorted model bits of a generic configuration x (list of floats/Fractions)."""
    y = sorted(x)
    k = len(y)
    bits = []
    for (d, a, b, c) in all_tuples(k):
        v = 2 * y[d] - y[a] - y[b] - y[c]
        assert v != 0
        bits.append(1 if v > 0 else 0)
    return bits
