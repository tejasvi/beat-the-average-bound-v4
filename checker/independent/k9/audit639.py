#!/usr/bin/env python3
"""Second implementation of the k = 9 check, written for the audit of the certificates (shares no code with
check639*.py). Standard library only, exact integers; parallel by subprocess fan-out (a639fan).
Run it in a new empty work directory for each certificate: intermediate files and caches go to ./tmp (created if
missing), and the f7 values are cached there per mode only.

  audit639.py k7 CERT7 TREEDIR NPROC        exact max over the complete 7-list (validation on the k = 7 certificate)
  audit639.py k8 CERT8 TREEDIR NPROC        all consistent 8-tuples, exact max, exclusions (validation, k = 8 certificate)
  audit639.py k9 CERT9 TREEDIR NPROC        hierarchical k = 9 certificate: hypotheses (1)-(3) of Lemma 5.2, exclusions

Mathematics: Lemmas 4.3, 5.1 and 5.2 of the paper.  Representation: a 7-pattern is an id into the complete 7-list; an
8-pattern is the consistent 8-tuple (M-0, ..., M-7) of 7-pattern ids; a 9-pattern is the consistent 9-tuple of 8-tuples.
Joins here fix position 0 first and then add positions in increasing order (stage 3 uses pairs of core positions),
which differs from the joins of check639_k9.py (fix the last position / one anchored position).
"""
import sys, os, json, pickle, time, itertools
from fractions import Fraction
from math import gcd

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import a639lib as A
from a639fan import fan

if not __debug__:
    raise SystemExit("this program relies on assert statements; run it without -O")

SCRIPT = os.path.abspath(__file__)


def lcm(a, b):
    return a * b // gcd(a, b)


def log(*a):
    print(time.strftime('%H:%M:%S'), *a, flush=True)


# ============================================================ shared structures
def build_level7(list7):
    """del7[p][i] = id of the 6-pattern p - i; ids assigned here."""
    ids6 = {}
    del7 = []
    for P in list7:
        del7.append(tuple(ids6.setdefault(A.minus(P, 7, i), len(ids6)) for i in range(7)))
    return del7


def flagmap(blocks, list7_id, m):
    """(t,m) = (m-1, m) blocks: flag (pattern bits, J) -> key (pattern id, missing position); returns map key -> [(b, i)]."""
    mp = {}
    skipped = 0
    for bi, b in enumerate(blocks):
        assert (b['t'], b['m']) == (m - 1, m)
        for i, (bits, J) in enumerate(A.flag_keys(b)):
            (miss,) = set(range(m)) - set(J)
            pid = list7_id(bits)
            if pid is None:
                skipped += 1
                continue
            mp.setdefault((pid, miss), []).append((bi, i))
    return mp, skipped


# ============================================================ consistent tuple joins
class Join8:
    """Consistent 8-tuples over the 7-list (Lemma 4.3): R_z - (y-1) = R_y - z for z < y, i.e. del7[R_z][y-1] == del7[R_y][z].
    Positions are assigned in increasing order; optional fixed components."""

    def __init__(self, del7):
        self.del7 = del7
        self.ix = {}

    def index(self, y, Z):
        """N indexed by (del7[N][j(z)] for z in Z), j(z) = z if z < y else z - 1."""
        key = (y, Z)
        d = self.ix.get(key)
        if d is None:
            d = {}
            js = [z if z < y else z - 1 for z in Z]
            for n, row in enumerate(self.del7):
                d.setdefault(tuple(row[j] for j in js), []).append(n)
            self.ix[key] = d
        return d

    def tuples(self, fixed=None, first_range=None):
        """yield consistent 8-tuples; fixed = {pos: id}; first_range restricts R_0 (when 0 is not fixed)."""
        del7 = self.del7
        fixed = fixed or {}
        for a in fixed:
            for b in fixed:
                if a < b and del7[fixed[a]][b - 1] != del7[fixed[b]][a]:
                    return
        free = [y for y in range(8) if y not in fixed]
        cur = dict(fixed)
        plans = []
        for i, y in enumerate(free):
            Z = tuple(sorted(list(fixed) + free[:i]))
            plans.append((y, Z, self.index(y, Z) if Z else None))

        def need(y, Z):
            return tuple(del7[cur[z]][y - 1] if z < y else del7[cur[z]][y] for z in Z)

        def rec(i):
            if i == len(plans):
                yield tuple(cur[y] for y in range(8))
                return
            y, Z, d = plans[i]
            if d is None:
                cands = first_range if (first_range is not None and y == 0) else range(len(del7))
            else:
                cands = d.get(need(y, Z), ())
            for c in cands:
                cur[y] = c
                yield from rec(i + 1)
            cur.pop(y, None)
        yield from rec(0)


def join9(dom, fixed, forbid_core_before=None, coreset=None):
    """Consistent 9-tuples of 8-tuples: R_z[y-1] == R_y[z] for z < y. dom(y) = candidate list for free y;
    fixed = {pos: 8-tuple}. forbid_core_before: free positions y < this value must not be core."""
    for a in fixed:
        for b in fixed:
            if a < b and fixed[a][b - 1] != fixed[b][a]:
                return
    free = [y for y in range(9) if y not in fixed]
    cur = dict(fixed)
    plans = []
    for i, y in enumerate(free):
        Z = tuple(sorted(list(fixed) + free[:i]))
        d = {}
        for K in dom(y):
            if forbid_core_before is not None and y < forbid_core_before and K in coreset:
                continue
            d.setdefault(tuple(K[z] if z < y else K[z - 1] for z in Z), []).append(K)
        plans.append((y, Z, d))

    def rec(i):
        if i == len(plans):
            yield tuple(cur[y] for y in range(9))
            return
        y, Z, d = plans[i]
        key = tuple(cur[z][y - 1] if z < y else cur[z][y] for z in Z)
        for K in d.get(key, ()):
            cur[y] = K
            yield from rec(i + 1)
        cur.pop(y, None)
    yield from rec(0)


# ============================================================ values (Lemma 5.1, identity (5.2))
def f8_scaled(R, st):
    """f8(R) * S8, S8 = 224 * LL: f8 = (1/8) sum_y f7(R_y) + (1/28) sum_{a<b} Qmid[(R_b, miss a), (R_a, miss b-1)]."""
    f7i, mk, mq = st['f7int'], st['midkey'], st['midint']
    s = 0
    for y in range(8):
        s += f7i[R[y]]
    q = 0
    for a in range(8):
        for b in range(a + 1, 8):
            fa = mk.get((R[b], a))
            if fa is None:
                continue
            fb = mk.get((R[a], b - 1))
            if fb is None:
                continue
            for (ba, ia) in fa:
                for (bb, ib) in fb:
                    if ba == bb:
                        q += mq[ba][ia][ib]
    return 28 * s + 8 * q


def val9_scaled(R9, st, f8cache):
    """val9 * S9, S9 = 9 * S8 * 36 * LT: val9 = (1/9) sum_x f8(R_x) + (1/36) sum_{a<b} Qtop[(R_b, miss a), (R_a, miss b-1)]."""
    s = 0
    for K in R9:
        v = f8cache.get(K)
        if v is None:
            v = f8_scaled(K, st)
            f8cache[K] = v
        s += v
    tk, tq = st['topkey'], st['topint']
    q = 0
    for a in range(9):
        for b in range(a + 1, 9):
            fa = tk.get((R9[b], a))
            if fa is None:
                continue
            fb = tk.get((R9[a], b - 1))
            if fb is None:
                continue
            for (ba, ia) in fa:
                for (bb, ib) in fb:
                    if ba == bb:
                        q += tq[ba][ia][ib]
    return 36 * st['LT'] * s + 9 * st['S8'] * q


# ============================================================ pattern reconstruction (Lemma 4.3(b))
def bits8(R, list7):
    """bits over T_8 of the 8-tuple R: the bit of tau is read in R_x for the LARGEST x not in tau."""
    out = []
    ti7 = A.tindex(7)
    for tau in A.T(8):
        x = max(q for q in range(8) if q not in tau)
        rel = tuple(q if q < x else q - 1 for q in tau)
        out.append(list7[R[x]][ti7[rel]])
    return bytes(out)


def bits9(R9, list7):
    b8 = {}
    out = []
    ti8 = A.tindex(8)
    for tau in A.T(9):
        x = max(q for q in range(9) if q not in tau)
        if x not in b8:
            b8[x] = bits8(R9[x], list7)
        rel = tuple(q if q < x else q - 1 for q in tau)
        out.append(b8[x][ti8[rel]])
    return bytes(out)


# ============================================================ worker stages
def worker(stage, i, n, state_path):
    st = pickle.load(open(state_path, 'rb'))
    if stage == 'f7':
        DV = A.DirectValue(7, st['lower'])
        out = {p: DV.value(st['list7'][p]) for p in range(i, len(st['list7']), n)}
    elif stage == 's1':
        J8 = Join8(st['del7'])
        capn, capd, thrn, thrd = st['cap_s']
        cnt, best, above, S = 0, None, [], []
        rng = range(i, len(st['del7']), n)
        for R in J8.tuples(first_range=rng):
            cnt += 1
            v = f8_scaled(R, st)
            if v * capd > capn:
                above.append((R, v))
            elif best is None or v > best:
                best = v
            if thrd is not None and v * thrd > thrn:
                S.append((R, v))
        out = (cnt, best, above, S)
    elif stage == 's3':
        out = stage3(i, n, st)
    else:
        raise SystemExit('unknown stage')
    with open(f'{state_path}.{stage}.{i}.out.pkl', 'wb') as fh:
        pickle.dump(out, fh)


def stage3(i, n, st):
    """9-tuples with at least two core restrictions, enumerated by their first two core positions x1 < x2."""
    core = st['core']
    coreset = set(core)
    excl8 = st['excluded8']
    J8 = Join8(st['del7'])
    del7 = st['del7']
    memo = {}

    def anchored2(r1, v1, r2, v2):
        key = (r1, v1, r2, v2)
        if key not in memo:
            memo[key] = list(J8.tuples(fixed={r1: v1, r2: v2}))
        return memo[key]
    claimed_s = st['claimed_s']
    f8c = {}
    cnt, best, high = 0, None, []
    combos = [(x1, x2) for x1 in range(9) for x2 in range(x1 + 1, 9)]
    work = [(x1, x2, a) for (x1, x2) in combos for a in range(len(core))]
    for (x1, x2, a) in work[i::n]:
        N1 = core[a]
        for N2 in core:
            if N1[x2 - 1] != N2[x1]:
                continue

            def dom(y, N1=N1, N2=N2, x1=x1, x2=x2):
                r1 = x1 if x1 < y else x1 - 1
                q1 = y if y < x1 else y - 1
                r2 = x2 if x2 < y else x2 - 1
                q2 = y if y < x2 else y - 1
                return anchored2(r1, N1[q1], r2, N2[q2])
            for R9 in join9(dom, {x1: N1, x2: N2}, forbid_core_before=x2, coreset=coreset):
                if any(K in excl8 for K in R9):
                    continue
                cnt += 1
                v = val9_scaled(R9, st, f8c)
                if v * claimed_s[1] > claimed_s[0]:
                    high.append((R9, v))
                elif best is None or v > best:
                    best = v
    return cnt, best, high, len(memo)


# ============================================================ drivers
def load_list7(treedir, tmpdir):
    path = os.path.join(tmpdir, 'list7.pkl')
    if os.path.exists(path):
        return pickle.load(open(path, 'rb'))
    pats = A.walk_trees(7, treedir, log)
    pickle.dump(pats, open(path, 'wb'))
    return pats


def f7_all(list7, lower, nproc, tag):
    cache = os.path.join(os.getcwd(), 'tmp', f'f7_{tag}.pkl')
    if os.path.exists(cache):
        return pickle.load(open(cache, 'rb'))
    stp = os.path.join(os.getcwd(), 'tmp', f'state_f7_{tag}.pkl')
    pickle.dump({'list7': list7, 'lower': lower}, open(stp, 'wb'))
    res = fan(SCRIPT, 'f7', stp, nproc)
    f7 = [None] * len(list7)
    for d in res:
        for p, v in d.items():
            f7[p] = v
    assert all(v is not None for v in f7)
    pickle.dump(f7, open(cache, 'wb'))
    return f7


def main():
    mode, certfn, treedir, nproc = sys.argv[1], sys.argv[2], sys.argv[3], int(sys.argv[4])
    tmpdir = os.path.join(os.getcwd(), 'tmp')
    os.makedirs(tmpdir, exist_ok=True)
    t0 = time.time()
    cert = json.load(open(certfn))
    list7 = load_list7(treedir, tmpdir)
    look7 = {P: n for n, P in enumerate(list7)}
    log(f'mode {mode}: 7-list {len(list7)} patterns')
    if mode == 'k7':
        f7 = f7_all(list7, cert['blocks'], nproc, 'k7')
        mx = max(f7)
        claimed = Fraction(*cert['claimed'])
        log(f'k7: exact max {mx} = {float(mx):.12f}; claimed {float(claimed):.9f}; {"PASS" if mx <= claimed else "FAIL"}')
        return
    K = cert['K']
    lower = [b for b in cert['blocks'] if 2 * b['m'] - b['t'] <= 7]
    mid = [b for b in cert['blocks'] if (b['t'], b['m']) == (6, 7)]
    top = [b for b in cert['blocks'] if (b['t'], b['m']) == (7, 8)]
    assert len(lower) + len(mid) + len(top) == len(cert['blocks'])
    if K == 8:
        assert not top
    log(f'K={K}: lower {len(lower)}, mid {len(mid)}, top {len(top)} blocks')
    f7 = f7_all(list7, lower, nproc, f'k{K}')
    log(f'f7 done: max {float(max(f7)):.12f}')
    del7 = build_level7(list7)
    midkey, skm = flagmap(mid, lambda bits: look7.get(bits), 7)
    mids = [A.Q_of(b) for b in mid]
    LL = 1
    for v in f7:
        LL = lcm(LL, v.denominator)
    for _, Qd in mids:
        LL = lcm(LL, Qd)
    st = {'del7': del7, 'f7int': [v.numerator * (LL // v.denominator) for v in f7], 'midkey': midkey,
          'midint': [[[e * (LL // Qd) for e in row] for row in Q] for Q, Qd in mids], 'S8': 224 * LL}
    S8 = st['S8']
    if K == 8:
        claimed = Fraction(*cert['claimed'])
        st['cap_s'] = (claimed.numerator * S8, claimed.denominator, None, None)
    else:
        claimed, cap = Fraction(*cert['claimed']), Fraction(*cert['cap'])
        assert cap >= claimed
        thr = 9 * claimed - 8 * cap
        st['cap_s'] = (cap.numerator * S8, cap.denominator, thr.numerator * S8, thr.denominator)
    stp = os.path.join(tmpdir, f'state_s1_k{K}.pkl')
    pickle.dump(st, open(stp, 'wb'))
    log(f'mid flags skipped (pattern not in the 7-list): {skm}; LL has {LL.bit_length()} bits')
    res = fan(SCRIPT, 's1', stp, nproc)
    n8 = sum(r[0] for r in res)
    best8 = max((r[1] for r in res if r[1] is not None), default=None)
    above = [a for r in res for a in r[2]]
    Scand = [a for r in res for a in r[3]]
    exkey = 'excluded' if K == 8 else 'excluded8'
    ex8 = {e[0]: e[1] for e in cert.get(exkey, [])}
    excluded8, bad8 = set(), 0
    for R, v in above:
        b = bits8(R, list7)
        g = ex8.get(''.join(str(z) for z in b))
        if g is not None and A.gordan_ok(b, 8, g):
            excluded8.add(R)
        else:
            bad8 += 1
    lim = 'claim' if K == 8 else 'cap'
    log(f'stage 1: {n8} consistent 8-tuples; max f8 among those not above the {lim} {float(Fraction(best8, S8)):.13f}; '
        f'above the {lim}: {len(above)}, of which without a valid exclusion: {bad8}')
    if K == 8:
        log('RESULT k8:', 'PASS' if bad8 == 0 else 'FAIL')
        return
    if bad8:
        log('RESULT k9: FAIL (8-level: tuples above the cap without a valid exclusion)')
        return
    S = sorted(R for R, v in Scand if R not in excluded8)
    # top flags -> 8-tuples (Lemma 4.3(b)); flags whose restrictions are not all listed or are inconsistent never occur
    topkey, skt = {}, 0
    tops = [A.Q_of(b) for b in top]
    for bi, b in enumerate(top):
        for i, (bits, J) in enumerate(A.flag_keys(b)):
            (miss,) = set(range(8)) - set(J)
            R = tuple(look7.get(A.minus(bits, 8, y)) for y in range(8))
            if None in R or any(del7[R[a]][bb - 1] != del7[R[bb]][a] for a in range(8) for bb in range(a + 1, 8)):
                skt += 1
                continue
            topkey.setdefault((R, miss), []).append((bi, i))
    LT = 1
    for _, Qd in tops:
        LT = lcm(LT, Qd)
    core = sorted(set(R for (R, miss) in topkey))
    st.update(topkey=topkey, topint=[[[e * (LT // Qd) for e in row] for row in Q] for Q, Qd in tops], LT=LT, core=core,
              excluded8=excluded8)
    S9 = 9 * S8 * 36 * LT
    st['claimed_s'] = (claimed.numerator * S9, claimed.denominator)
    log(f'|S| = {len(S)}; top flags skipped {skt}; core {len(core)}')
    # stage 2: consistent 9-tuples with all nine restrictions in S
    Sset = set(S)
    f8c = {}
    cnt2, best2, high2 = 0, None, []
    for R9 in join9(lambda y: S, {}):
        if any(K_ in excluded8 for K_ in R9):
            continue
        cnt2 += 1
        v = val9_scaled(R9, st, f8c)
        if v * st['claimed_s'][1] > st['claimed_s'][0]:
            high2.append((R9, v))
        elif best2 is None or v > best2:
            best2 = v
    log(f'stage 2: {cnt2} 9-tuples over S; max not above claim {float(Fraction(best2, S9)) if best2 else None}; '
        f'above the claim {len(high2)}')
    stp3 = os.path.join(tmpdir, 'state_s3_k9.pkl')
    pickle.dump(st, open(stp3, 'wb'))
    res3 = fan(SCRIPT, 's3', stp3, nproc)
    cnt3 = sum(r[0] for r in res3)
    best3 = max((r[1] for r in res3 if r[1] is not None), default=None)
    high3 = [h for r in res3 for h in r[2]]
    log(f'stage 3: {cnt3} 9-tuples with >= 2 core restrictions; max not above claim '
        f'{float(Fraction(best3, S9)) if best3 else None}; above the claim {len(high3)}; doubly anchored sets '
        f'{sum(r[3] for r in res3)}')
    ex9 = {e[0]: e[1] for e in cert['excluded9']}
    high = {}
    for R9, v in high2 + high3:
        high[R9] = v
    bad9 = 0
    for R9 in high:
        b = bits9(R9, list7)
        g = ex9.get(''.join(str(z) for z in b))
        if g is None or not A.gordan_ok(b, 9, g):
            bad9 += 1
    best = max(x for x in (best2, best3) if x is not None)
    log(f'9-level: {cnt2 + cnt3} evaluated (stage 2 {cnt2} + stage 3 {cnt3}); max not above claim '
        f'{Fraction(best, S9)} = {float(Fraction(best, S9)):.16f}; distinct above claim {len(high)}, '
        f'without valid exclusion {bad9}')
    ok = bad8 == 0 and bad9 == 0
    log('RESULT k9:', 'PASS' if ok else 'FAIL', f'C_6.39 <= {claimed} = {float(claimed):.10f}', f'({time.time() - t0:.0f} s)')
    pickle.dump({'S': S, 'core': core, 'excluded8': sorted(excluded8), 'high': sorted(high), 'n8': n8, 'cnt2': cnt2,
                 'cnt3': cnt3}, open(os.path.join(tmpdir, 'k9_summary.pkl'), 'wb'))


if __name__ == '__main__':
    if sys.argv[1] == '--worker':
        worker(sys.argv[2], int(sys.argv[3]), int(sys.argv[4]), sys.argv[5])
    else:
        main()
