#!/usr/bin/env python3
"""Generate the kernel shard modules of the check with 7 points (tables BeatAvg.Data.K7K, certificate BeatAvg.Data.K7).

usage: gen_k7_shards2.py NLFILE LCH RTARGET N6 FCHUNK NTOP QTARGET NB0,NB1,...
NLFILE: the numbers of leaves of the level-7 records; LCH: leaves per theorem; RTARGET: leaves per R shard;
QTARGET: unused (kept for the command line).
Writes BeatAvg/K/K7/{Defs,Pre,Top}.lean, BeatAvg/K/K7/F<i>.lean (f6 values), BeatAvg/K/K7/P<b>.lean (the matrix rows
of block b from packed term vectors, `qrowP`, imports Core.KPack), BeatAvg/K/K7/R<i>.lean (ranges of tree records: per record its tree, then its leaves LCH at a
time) and BeatAvg/K/K7.lean (assembly). Shards import only Defs and K.Split or Core.KPack (core Lean). Every item is its own
theorem, so the kernel's caches are freed between items; shard theorems are assembled by the lemmas of K.Split.
"""
import sys, os, math
nls = [int(v) for v in open(sys.argv[1]).read().split()]
lch, rtarget, n6, fch, ntop, qtarget = map(int, sys.argv[2:8])
nbs = [int(v) for v in sys.argv[8].split(',')]
assert len(nbs) == ntop
nrec, nf = len(nls), math.ceil(n6 / fch)
os.makedirs('BeatAvg/K/K7', exist_ok=True)
hdr = 'import BeatAvg.K.K7.Defs\nimport BeatAvg.K.Split\n\nset_option maxHeartbeats 0\nset_option maxRecDepth 100000\n\nnamespace BeatAvg.K.K7\nopen BeatAvg.Check\n\n'
ftr = 'end BeatAvg.K.K7\n'
open('BeatAvg/K/K7/Defs.lean', 'w').write('''import BeatAvg.Data.K7
import BeatAvg.Data.K7K

/-! Names for the kernel check with 7 points (core Lean only). -/

namespace BeatAvg.K.K7
open BeatAvg.Check

def l4 : List TreeRec := BeatAvg.Data.K8.recs4.map PRec.unpackR
def l5 : List TreeRec := BeatAvg.Data.K8.recs5.map PRec.unpackR
def l6 : List TreeRec := BeatAvg.Data.K8.recs6.map PRec.unpackR
def l7 : List TreeRec := BeatAvg.Data.K8.recs7.map PRec.unpackR
def low : List DBlock := BeatAvg.Data.K7.blocks.filter fun b => decide (2 * b.m - b.t ≤ 6)
def top : List DBlock := BeatAvg.Data.K7.blocks.filter fun b => b.t == 5 && b.m == 6
def b14 : DBlock := (BeatAvg.Data.K7.blocks.filter fun b => b.t == 1 && b.m == 4).headD dfltB
def T : K7Tab := BeatAvg.Data.K7K.tab
def qscale : Nat := BeatAvg.Data.K7.qscale
def den6 : Nat := BeatAvg.Data.K7K.den6
def d14 : Nat := BeatAvg.Data.K7K.d14
def lamN : Nat := BeatAvg.Data.K7.lamN
def lamD : Nat := BeatAvg.Data.K7.lamD

end BeatAvg.K.K7
''')
open('BeatAvg/K/K7/Pre.lean', 'w').write(hdr + f'''theorem chain3 : chainOK 3 [0] [l4, l5, l6] = true := by decide +kernel

theorem par : l7.map (·.1) = chainList [0] [l4, l5, l6] := by decide +kernel

theorem pre6 : directPre 6 low 1 den6 qscale = true := by decide +kernel

theorem lowOK : low.all (fun b => b.wf 7 && decide (2 * b.m - b.t ≤ 6)) = true := by decide +kernel

theorem topOK : top.all (fun b => b.wf 7 && enumOK b.m && b.t == 5 && b.m == 6) = true := by decide +kernel

theorem b14OK : (b14.wf 7 && enumOK b14.m && b14.t == 1 && b14.m == 4 && b14.D 7 == d14) = true := by decide +kernel

theorem sorted : s6Sorted T = true := by decide +kernel

theorem tab14 : tab14OK T b14 = true := by decide +kernel

theorem topLen : top.length = {ntop} := by decide +kernel

theorem nrecs : l7.length ≤ {nrec} := by decide +kernel

theorem n6le : T.n6 ≤ {nf} * {fch} := by decide +kernel

''' + ftr)
open('BeatAvg/K/K7/Top.lean', 'w').write(hdr + '''theorem topS : topSoundK T top 0 T.n6 = true := by decide +kernel

theorem topC : topCompleteK T top = true := by decide +kernel

''' + ftr)
def chain(lem, names_args, final):
    # names_args: list of (name, lo) for single items; returns the proof term of the chunk theorem
    t = names_args[-1][0]
    for name, lo in reversed(names_args[:-1]):
        t = f'{lem} {name} ({t})'
    return t
for i in range(nf):
    body = ''
    items = []
    for k in range(fch):
        q = i * fch + k
        body += f'theorem f6_{i}_{k} : f6OK T low den6 qscale {q} 1 = true := by decide +kernel\n\n'
        items.append((f'f6_{i}_{k}', q))
    body += f'theorem f6_{i} : f6OK T low den6 qscale ({i} * {fch}) {fch} = true := {chain("f6OK_succ", items, None)}\n\n'
    open(f'BeatAvg/K/K7/F{i}.lean', 'w').write(hdr + body + ftr)
# P shards: the matrix rows of block b from packed term vectors (`qrowP`, fields of W bits, offset entries of W1 bits)
PW, PW1 = 160, 42
hdrP = hdr.replace('import BeatAvg.K.Split\n', 'import BeatAvg.Core.KPack\n')
for b in range(ntop):
    body = f'theorem qlen_{b} : (top.getD {b} dfltB).flags.length = {nbs[b]} := by decide +kernel\n\n'
    body += f'theorem p_{b} : qrowP T top {b} 0 {nbs[b]} {PW} {PW1} = true := by decide +kernel\n\n'
    open(f'BeatAvg/K/K7/P{b}.lean', 'w').write(hdrP + body + ftr)
# R shards: consecutive records, ~RTARGET leaves per shard
rshards = []  # (lo, n)
lo = 0
while lo < nrec:
    n, tot = 0, 0
    while lo + n < nrec and (n == 0 or tot + nls[lo + n] <= rtarget):
        tot += nls[lo + n]
        n += 1
    rshards.append((lo, n))
    lo += n
for i, (lo, n) in enumerate(rshards):
    body = ''
    for j in range(lo, lo + n):
        nc = max(1, math.ceil(nls[j] / lch))
        body += f'theorem t_{j} : treeK7OK l7 {j} = true := by decide +kernel\n\n'
        body += f'theorem n_{j} : (recAt l7 {j}).2.2.2.length ≤ {nc * lch} := by decide +kernel\n\n'
        for c in range(nc):
            body += f'theorem v_{j}_{c} : leavesK7OK T qscale den6 d14 lamN lamD l7 {j} {c * lch} {lch} = true := by decide +kernel\n\n'
        # explicit implicit arguments: otherwise the elaborator may unify `?n + ?m` with a literal by unfolding
        # leavesK7OK and evaluating leaf checks (slow); with them every step is first-order
        t = f'v_{j}_{nc - 1}'
        for c in reversed(range(nc - 1)):
            t = f'leavesK7OK_add (lo := {c * lch}) (n := {lch}) (m := {(nc - 1 - c) * lch}) v_{j}_{c} ({t})'
        body += f'theorem r_{j} : recsK7OK T qscale den6 d14 lamN lamD l7 {j} 1 = true := recK7_of (n := {nc * lch}) t_{j} n_{j} ({t})\n\n'
    t = f'r_{lo + n - 1}'
    for j in reversed(range(lo, lo + n - 1)):
        t = f'recsK7OK_succ (lo := {j}) (n := {lo + n - 1 - j}) r_{j} ({t})'
    body += f'theorem rs_{lo} : recsK7OK T qscale den6 d14 lamN lamD l7 {lo} {n} = true := {t}\n\n'
    open(f'BeatAvg/K/K7/R{i}.lean', 'w').write(hdr + body + ftr)
nr = len(rshards)
# estimated costs (s) for scheduling: tree + leaves ~0.75 s per leaf, the 283-flag block ~400 s, f6 ~12 s
with open('BeatAvg/K/K7/costs.txt', 'w') as fh:
    fh.write('BeatAvg.K.K7.Pre 600\nBeatAvg.K.K7.Top 600\n')
    for i in range(nf):
        fh.write(f'BeatAvg.K.K7.F{i} {12 * fch}\n')
    for b in range(ntop):
        fh.write(f'BeatAvg.K.K7.P{b} {int(400 * nbs[b] ** 2 / 283 ** 2) + 10}\n')
    for i, (lo, n) in enumerate(rshards):
        fh.write(f'BeatAvg.K.K7.R{i} {int(0.75 * sum(nls[lo:lo + n])) + 10}\n')
imports = '\n'.join(['import BeatAvg.K.Split', 'import BeatAvg.Check.KPack', 'import BeatAvg.K.K7.Pre', 'import BeatAvg.K.K7.Top'] + [f'import BeatAvg.K.K7.F{i}' for i in range(nf)]
                    + [f'import BeatAvg.K.K7.P{b}' for b in range(ntop)] + [f'import BeatAvg.K.K7.R{i}' for i in range(nr)])
fcases = ', '.join(f'f6_{i}' for i in range(nf))
# chains with explicit implicit arguments: unifying `?n + ?m` with a literal makes the elaborator unfold the check
rchain = f'rs_{rshards[-1][0]}'
for (lo, n) in reversed(rshards[:-1]):
    rchain = f'recsK7OK_add (lo := {lo}) (n := {n}) (m := {nrec - lo - n}) rs_{lo} ({rchain})'
qblocks = ''
for b in range(ntop):
    qblocks += f'theorem q_{b} : qrowOK T top {b} 0 (top.getD {b} dfltB).flags.length = true := by\n  rw [qlen_{b}]\n  exact qrowP_sound p_{b}\n\n'
qcases = ', '.join(f'q_{b}' for b in range(ntop))
open('BeatAvg/K/K7.lean', 'w').write(f'''import BeatAvg.Check.K7K2
import BeatAvg.K.Enum
import BeatAvg.Prob.NonVacuity
{imports}

/-! `C ≤ 10019/25000` from the certificate with seven points, checked by the kernel only (shards in BeatAvg/K/K7/). -/

open BeatAvg.Check

set_option maxRecDepth 100000

namespace BeatAvg.K.K7

theorem all_f6 : f6OK T low den6 qscale 0 T.n6 = true := by
  have h : ∀ i < {nf}, ((((List.range T.n6).drop (i * {fch})).take {fch}).all fun q =>
      sfld T.f6 T.w6 q == valNum 6 (tupList 6) low den6 qscale (fld T.s6 60 q)) = true := by
    intro i hi
    interval_cases i
    exacts [{fcases}]
  unfold f6OK
  rw [List.drop_zero, List.take_of_length_le (by simp)]
  exact all_of_chunks _ (List.range T.n6) {fch} {nf} (by simpa using n6le) h

theorem all_recs_n : recsK7OK T qscale den6 d14 lamN lamD l7 0 {nrec} = true :=
  {rchain}

theorem all_recs : l7.all (fun r => treeOK nextTok 7 (tupList 6).length (tupList 7) r &&
    r.2.2.2.all (leafK7OK T qscale den6 d14 lamN lamD)) = true := by
  have h := all_recs_n
  unfold recsK7OK at h
  rwa [List.drop_zero, List.take_of_length_le nrecs] at h

{qblocks}
theorem all_q : ∀ blk < top.length, qrowOK T top blk 0 (top.getD blk dfltB).flags.length = true := by
  intro blk hblk
  rw [topLen] at hblk
  interval_cases blk
  exacts [{qcases}]

end BeatAvg.K.K7

namespace BeatAvg.K
open BeatAvg.K.K7

theorem upperBound_k7 : UpperBound (10019 / 25000) := by
  have hl : ∀ b ∈ low, b.wf 7 = true ∧ 2 * b.m - b.t ≤ 6 := by
    have := lowOK
    simp only [List.all_eq_true, Bool.and_eq_true, decide_eq_true_eq] at this
    exact this
  have ht : ∀ b ∈ top, b.wf 7 = true ∧ enumOK b.m = true ∧ b.t = 5 ∧ b.m = 6 := by
    have := topOK
    simp only [List.all_eq_true, Bool.and_eq_true, beq_iff_eq] at this
    intro b hb
    obtain ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩ := this b hb
    exact ⟨h1, h2, h3, h4⟩
  have hb : b14.wf 7 = true ∧ enumOK b14.m = true ∧ b14.t = 1 ∧ b14.m = 4 ∧ b14.D 7 = d14 := by
    have := b14OK
    simp only [Bool.and_eq_true, beq_iff_eq] at this
    obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := this
    exact ⟨h1, h2, h3, h4, h5⟩
  obtain ⟨bl, hpsd, hval⟩ := k7K_sound l4 l5 l6 l7 low top b14 T lamN lamD den6 qscale d14 enumOK_six
    enumOK_seven chain3 par all_recs (by decide) pre6 hl ht hb sorted all_f6 topS topC all_q tab14
  have h := flagMethodSound (k := 7) (by norm_num) bl hpsd _ hval
  simpa [lamN, lamD, BeatAvg.Data.K7.lamN, BeatAvg.Data.K7.lamD] using h

theorem upperBoundRV_k7 : UpperBoundRV (10019 / 25000) := upperBoundRV_of_upperBound upperBound_k7

theorem C639_le_k7 : C639 ≤ 10019 / 25000 := C639_le_of_upperBound upperBound_k7

end BeatAvg.K
''')
print(f'records {nrec} in {nr} shards; f6 {n6} in {nf} shards of {fch}; {ntop} matrix shards (packed rows)')
