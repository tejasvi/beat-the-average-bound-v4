"""Library of the second implementation of the k = 9 check (written independently of check639*.py).

Written from the definitions of the paper and the documented formats (cert/README.md, the check639.py docstring for the tree
token format). Standard library only, exact integer / Fraction arithmetic.

Conventions (the definitions):
  points 0..k-1 sorted increasingly; T_k = tuples (d; a < b < c), d not in {a,b,c}, listed by level j = max(d,a,b,c)
  (j = 3..k-1), then by d, then (a,b,c) lexicographically; form L = 2 x_d - x_a - x_b - x_c; a k-pattern is a 0/1 vector
  over T_k (here: a bytes object of 0/1 values); restriction to a sorted subset U reads the tuples of T_|U| through U.
"""
import json, itertools
from fractions import Fraction
from math import comb, gcd

if not __debug__:
    raise SystemExit("this program relies on assert statements; run it without -O")


def T(k):
    out = []
    for j in range(3, k):
        for d in range(j + 1):
            rest = [i for i in range(j + 1) if i != d]
            for abc in itertools.combinations(rest, 3):
                if j == d or j in abc:
                    out.append((d,) + abc)
    if k >= 4:
        assert len(out) == k * comb(k - 1, 3)
    return out


_TI = {}


def tindex(k):
    if k not in _TI:
        _TI[k] = {t: i for i, t in enumerate(T(k))}
    return _TI[k]


_RI = {}


def restr_idx(k, U):
    """indices into T_k of the tuples of T_|U| read through U (U sorted)."""
    key = (k, U)
    r = _RI.get(key)
    if r is None:
        ti = tindex(k)
        r = [ti[(U[d], U[a], U[b], U[c])] for (d, a, b, c) in T(len(U))] if len(U) >= 4 else []
        _RI[key] = r
    return r


def restrict(P, k, U):
    return bytes(P[i] for i in restr_idx(k, U))


def minus(P, k, x):
    """pattern with point x removed."""
    return restrict(P, k, tuple(q for q in range(k) if q != x))


# ---------------------------------------------------------------- Gordan certificates
def gordan_ok(P, k, cert):
    """positive integer combination of the strict rows of pattern P equal to 0  =>  P is not realizable."""
    Tk = T(k)
    if not cert:
        return False
    tot = [0] * k
    for rid, mult in cert:
        if type(rid) is not int or type(mult) is not int or mult <= 0 or not (0 <= rid < k + len(Tk)):
            return False
        if rid < k:                                  # x_rid - x_{rid-1} > 0  (x_0 > 0)
            tot[rid] += mult
            if rid > 0:
                tot[rid - 1] -= mult
        else:
            d, a, b, c = Tk[rid - k]
            s = 1 if P[rid - k] else -1               # bit 1: L > 0; bit 0: -L > 0
            tot[d] += 2 * s * mult
            tot[a] -= s * mult
            tot[b] -= s * mult
            tot[c] -= s * mult
    return all(z == 0 for z in tot)


# ---------------------------------------------------------------- extension trees -> complete k-lists
def walk_trees(K, treedir, log=print):
    """Patterns (bytes over T_k) listed by trees_4..K, verifying every Gordan certificate. Returns list for k = K."""
    pats = [b'']                                     # the single 3-model (T_3 is empty)
    for k in range(4, K + 1):
        Tk = T(k)
        nprev = len(T(k - 1))
        lev = Tk[nprev:]
        trees = json.load(open(f'{treedir}/trees_{k}.json'))
        assert len(trees) == len(pats)
        out = []
        ncert = 0
        for P, (perm, toks) in zip(pats, trees):
            assert sorted(perm) == list(range(len(lev)))
            assign = [None] * len(lev)
            pos = 0
            stack = [(0, None)]                          # iterative DFS: (depth, pending)

            def sign_row(rid, cur, bad):
                # returns (coefficient vector) of the row id
                v = [0] * k
                if rid < k:
                    v[rid] += 1
                    if rid > 0:
                        v[rid - 1] -= 1
                    return v
                tau = rid - k
                if tau < nprev:
                    s = 1 if P[tau] else -1
                    tup = Tk[tau]
                else:
                    u = tau - nprev
                    if u == cur:
                        s = bad
                    else:
                        assert assign[u] is not None, 'certificate uses an undecided tuple'
                        s = 1 if assign[u] else -1
                    tup = lev[u]
                d, a, b, c = tup
                v[d] += 2 * s; v[a] -= s; v[b] -= s; v[c] -= s
                return v

            def rec(depth):
                nonlocal pos, ncert
                if depth == len(lev):
                    out.append(P + bytes(assign))
                    return
                u = perm[depth]
                tok = toks[pos]; pos += 1
                if tok == 2:
                    for bit in (1, 0):
                        assign[u] = bit
                        rec(depth + 1)
                    assign[u] = None
                    return
                assert tok in (0, 1)
                n = toks[pos]; pos += 1
                assert n >= 1
                bad = -1 if tok == 1 else 1                  # the refuted sign
                tot = [0] * k
                for _ in range(n):
                    rid, mult = toks[pos], toks[pos + 1]; pos += 2
                    assert type(mult) is int and mult > 0
                    r = sign_row(rid, u, bad)
                    for z in range(k):
                        tot[z] += mult * r[z]
                assert all(z == 0 for z in tot), 'bad Gordan certificate in tree'
                ncert += 1
                assign[u] = tok
                rec(depth + 1)
                assign[u] = None

            import sys
            sys.setrecursionlimit(10000)
            rec(0)
            assert pos == len(toks)
        pats = out
        log(f'  trees k={k}: {len(pats)} patterns, {ncert} Gordan certificates verified')
    return pats


# ---------------------------------------------------------------- certificate blocks
def Q_of(block):
    """exact Q = Qint / Qden from the SOS terms; integer data only."""
    flags = block['flags']
    n = len(flags)
    den = block['sos']['den']
    assert type(den) is int and den > 0
    L = 1
    for wn, wd, v in block['sos']['terms']:
        assert type(wn) is int and type(wd) is int and wn >= 0 and wd > 0
        assert len(v) == n and all(type(z) is int for z in v)
        L = L * wd // gcd(L, wd)
    Q = [[0] * n for _ in range(n)]
    for wn, wd, v in block['sos']['terms']:
        w = wn * (L // wd)
        nz = [(i, z) for i, z in enumerate(v) if z]
        for i, zi in nz:
            row = Q[i]
            wzi = w * zi
            for j, zj in nz:
                row[j] += wzi * zj
    return Q, L * den * den


def flag_keys(block):
    keys = []
    m, t = block['m'], block['t']
    nT = len(T(m)) if m >= 4 else 0
    for bits, J in block['flags']:
        assert type(bits) is str and len(bits) == nT and set(bits) <= {'0', '1'}
        J = tuple(J)
        assert len(J) == t and list(J) == sorted(set(J)) and all(0 <= j < m for j in J)
        keys.append((bytes(int(ch) for ch in bits), J))
    assert len(set(keys)) == len(keys), 'repeated flag'
    return keys


def triples(K, t, m):
    """all (J, A, B): pairwise disjoint subsets of [K] of sizes t, m-t, m-t; returns (U1, J1, U2, J2) with U = sorted J u A,
    J1 = positions of J in U1, etc."""
    out = []
    for J in itertools.combinations(range(K), t):
        rest = [i for i in range(K) if i not in J]
        for A in itertools.combinations(rest, m - t):
            rest2 = [i for i in rest if i not in A]
            for B in itertools.combinations(rest2, m - t):
                U1 = tuple(sorted(J + A)); U2 = tuple(sorted(J + B))
                out.append((U1, tuple(U1.index(j) for j in J), U2, tuple(U2.index(j) for j in J)))
    assert len(out) == comb(K, t) * comb(K - t, m - t) * comb(K - m, m - t)
    return out


class DirectValue:
    """val_K(M) = d(M) + sum_b <Q_b, c_b(M)> computed directly from the definition (3.1) of c(F, G; M).
    Blocks of the same type (t, m) share one pass over the triples; a flag may occur in several blocks."""

    def __init__(self, K, blocks):
        self.K = K
        self.nT = len(T(K))
        self.Qs = []
        self.bytype = {}
        for bi, b in enumerate(blocks):
            t, m = b['t'], b['m']
            assert 2 * m - t <= K
            Q, Qden = Q_of(b)
            self.Qs.append((Q, Qden, t, m))
            g = self.bytype.setdefault((t, m), {})
            for i, key in enumerate(flag_keys(b)):
                g.setdefault(key, []).append((bi, i))
        self.trip = {tm: triples(K, *tm) for tm in self.bytype}

    def value(self, M):
        K = self.K
        cache = {}

        def r(U):
            s = cache.get(U)
            if s is None:
                s = restrict(M, K, U)
                cache[U] = s
            return s
        S = [0] * len(self.Qs)
        for tm, g in self.bytype.items():
            for (U1, J1, U2, J2) in self.trip[tm]:
                fl = g.get((r(U1), J1))
                if fl is None:
                    continue
                gl = g.get((r(U2), J2))
                if gl is None:
                    continue
                for (b1, i1) in fl:
                    for (b2, i2) in gl:
                        if b1 == b2:
                            S[b1] += self.Qs[b1][0][i1][i2]
        tot = Fraction(sum(M), self.nT)
        for bi, (Q, Qden, t, m) in enumerate(self.Qs):
            if S[bi]:
                tot += Fraction(S[bi], len(self.trip[(t, m)]) * Qden)
        return tot
