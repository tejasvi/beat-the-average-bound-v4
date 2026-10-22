"""Build 8-pattern bits (over T_8) from a consistent tuple (C_0..C_6, P) (search side)."""
import os, sys
import numpy as np
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)
from common import all_tuples, tuple_index

T8 = all_tuples(8)
I7 = tuple_index(7)
# for each tuple of T_8: (source, index) with source 7 = P, or x = old point not in the tuple (use the smallest such x)
SRC = np.empty(len(T8), dtype=np.int64)
IDX = np.empty(len(T8), dtype=np.int64)
for i, t in enumerate(T8):
    if 7 not in t:
        SRC[i] = 7
        IDX[i] = I7[t]
    else:
        x = min(q for q in range(7) if q not in t)
        rel = tuple(q if q < x else q - 1 for q in t)
        SRC[i] = x
        IDX[i] = I7[rel]


def bits_of_tuples(T, M7):
    """T: (n, 8) array (C_0..C_6, P) of 7-model indices; M7: 7-model bit matrix. Returns (n, 280) uint8."""
    out = np.empty((T.shape[0], len(T8)), dtype=np.uint8)
    for s in range(8):
        sel = np.nonzero(SRC == s)[0]
        out[:, sel] = M7[T[:, s]][:, IDX[sel]]
    return out


def check_consistency(T, M7):
    """All four sources of each new tuple must agree (sanity check of the join)."""
    ok = np.ones(T.shape[0], dtype=bool)
    for i, t in enumerate(T8):
        if 7 not in t:
            continue
        vals = []
        for x in range(7):
            if x in t:
                continue
            rel = tuple(q if q < x else q - 1 for q in t)
            vals.append(M7[T[:, x], I7[rel]])
        for v in vals[1:]:
            ok &= (v == vals[0])
    return ok
