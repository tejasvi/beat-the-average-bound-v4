"""Flag data (search side): restrictions, flags, and the sparse matrices c_sigma(F,G;M) of Lemma 4."""
import itertools
from math import comb
import numpy as np
from scipy import sparse
from common import all_tuples, restrict_index

_models = {}


def load_models(m):
    if m not in _models:
        if m <= 3:
            _models[m] = np.zeros((1, 0), dtype=np.uint8)
        else:
            _models[m] = np.load(f'models_{m}.npz')['bits']
    return _models[m]


def pack(bits):
    """Pack 0/1 rows (length <= 63) into uint64 keys."""
    n = bits.shape[1]
    assert n <= 63
    w = (np.uint64(1) << np.arange(n, dtype=np.uint64))
    return (bits.astype(np.uint64) * w[None, :]).sum(axis=1, dtype=np.uint64)


class Lookup:
    def __init__(self, models):
        if models.shape[1] == 0:
            self.trivial = True
            return
        self.trivial = False
        self.big = models.shape[1] > 63
        if self.big:
            self.d = {r.tobytes(): i for i, r in enumerate(np.packbits(models, axis=1))}
            return
        keys = pack(models)
        self.order = np.argsort(keys)
        self.skeys = keys[self.order]
        assert np.all(np.diff(self.skeys.astype(np.float64)) != 0) or len(set(keys.tolist())) == len(keys)

    def __call__(self, bits):
        if self.trivial:
            return np.zeros(bits.shape[0], dtype=np.int64)
        if self.big:
            return np.array([self.d[r.tobytes()] for r in np.packbits(bits, axis=1)], dtype=np.int64)
        keys = pack(bits)
        pos = np.searchsorted(self.skeys, keys)
        pos = np.minimum(pos, len(self.skeys) - 1)
        assert np.all(self.skeys[pos] == keys), 'restriction not in model list'
        return self.order[pos]


def restrictions(Mk, k, m):
    """R[i, j] = index (in the m-model list) of model i restricted to the j-th m-subset of range(k)."""
    subs = list(itertools.combinations(range(k), m))
    look = Lookup(load_models(m))
    R = np.empty((Mk.shape[0], len(subs)), dtype=np.int64)
    for j, U in enumerate(subs):
        idx = restrict_index(k, U)
        R[:, j] = look(Mk[:, idx]) if len(idx) else 0
    return subs, R


class FlagSet:
    """sigma-flags of size m for all t-models sigma."""

    def __init__(self, t, m):
        self.t, self.m = t, m
        Nm = load_models(m)
        self.jsubs = list(itertools.combinations(range(m), t))
        _, Rt = restrictions(Nm, m, t)  # Rt[n, jp] = type of flag (n, jp)
        ntypes = load_models(t).shape[0]
        self.ntypes = ntypes
        self.flagid = np.empty((Nm.shape[0], len(self.jsubs)), dtype=np.int64)
        self.ftype = []
        self.flocal = []
        self.blocksize = [0] * ntypes
        self.flags = []
        for n in range(Nm.shape[0]):
            for jp in range(len(self.jsubs)):
                s = int(Rt[n, jp])
                self.flagid[n, jp] = len(self.ftype)
                self.ftype.append(s)
                self.flocal.append(self.blocksize[s])
                self.blocksize[s] += 1
                self.flags.append((n, jp))
        self.ftype = np.array(self.ftype)
        self.flocal = np.array(self.flocal)


def triples(k, t, m):
    out = []
    for J in itertools.combinations(range(k), t):
        rest = [i for i in range(k) if i not in J]
        for A in itertools.combinations(rest, m - t):
            rest2 = [i for i in rest if i not in A]
            for B in itertools.combinations(rest2, m - t):
                out.append((J, A, B))
    assert len(out) == comb(k, t) * comb(k - t, m - t) * comb(k - m, m - t)
    return out


def flag_matrices(Mk, k, t, m, R=None, subs=None):
    """For each type sigma: sparse matrix (models x blocksize^2) of counts #{(J,A,B)} with
    fl(M,J,A) = F, fl(M,J,B) = G (entry F*bs+G); plus the denominator D."""
    fs = FlagSet(t, m)
    if R is None:
        subs, R = restrictions(Mk, k, m)
    sidx = {U: i for i, U in enumerate(subs)}
    jidx = {J: i for i, J in enumerate(fs.jsubs)}
    trs = triples(k, t, m)
    D = len(trs)
    nM = Mk.shape[0]
    rows = [[] for _ in range(fs.ntypes)]
    cols = [[] for _ in range(fs.ntypes)]
    for (J, A, B) in trs:
        U1 = tuple(sorted(J + A))
        U2 = tuple(sorted(J + B))
        jp1 = tuple(U1.index(j) for j in J)
        jp2 = tuple(U2.index(j) for j in J)
        f1 = fs.flagid[R[:, sidx[U1]], jidx[jp1]]
        f2 = fs.flagid[R[:, sidx[U2]], jidx[jp2]]
        ty = fs.ftype[f1]
        assert np.all(ty == fs.ftype[f2])
        for s in np.unique(ty):
            sel = np.nonzero(ty == s)[0]
            bs = fs.blocksize[s]
            rows[s].append(sel)
            cols[s].append(fs.flocal[f1[sel]] * bs + fs.flocal[f2[sel]])
    mats = []
    for s in range(fs.ntypes):
        bs = fs.blocksize[s]
        if rows[s]:
            r = np.concatenate(rows[s])
            c = np.concatenate(cols[s])
            M = sparse.csr_matrix((np.ones(len(r), dtype=np.float64), (r, c)), shape=(nM, bs * bs))
            M.sum_duplicates()
        else:
            M = sparse.csr_matrix((nM, bs * bs))
        mats.append(M)
    return fs, mats, D
