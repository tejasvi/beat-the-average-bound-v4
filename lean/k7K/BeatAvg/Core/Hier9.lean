import BeatAvg.Core.Hier

/-!
# The check with 9 points (core Lean only)

8-patterns are tuples `R` of the numbers of their seven-point restrictions (as in the check with 8 points); 9-patterns
are tuples `T` of the tuples of their eight-point restrictions. Stage 1: every 8-tuple of the join has `f8 ≤ cap`, and
`f8 ≤ θ = 9 λ - 8 cap` unless it is in the list `S` (or excluded). Stage 2: every 9-tuple of members of `S` with
consistent restrictions has `val9 ≤ λ`. Stage 3: every 9-tuple with at least two restrictions among the patterns of
the top flags (`core`) has `val9 ≤ λ`; it is visited at its first core position, with the other restrictions taken
among all 8-tuples with the right deletion (`anch8`). Lemma 5.2 of the paper combines the three stages.
-/

namespace BeatAvg.Check

open Std

/-! ### A faster evaluation of the lower blocks -/

/-- The bits of `M` below `len`. -/
def bitsOf (M len : Nat) : Array Bool := (Array.range len).map M.testBit

/-- `gather` from an array of bits. -/
def gatherA (b : Array Bool) : List Nat → Nat
  | [] => 0
  | j :: rest => (if b.getD j false then 1 else 0) + 2 * gatherA b rest

/-- `Qint` as an array of rows, from the term vectors as arrays: for each row `i` the products `w v_i` are formed once,
the entries `j ≥ i` are accumulated with `foldl`, and the lower triangle is copied from the upper one. -/
def DBlock.qarr (b : DBlock) : Array (Array Int) :=
  let n := b.flags.length
  let ta : List (Int × Array Int) := b.terms.map fun p => ((p.1 : Int), p.2.toArray)
  let upper : Array (Array Int) := (Array.range n).map fun i =>
    let us : List (Int × Array Int) := ta.map fun p => (p.1 * p.2.getD i 0, p.2)
    (Array.range n).map fun j => if j < i then 0 else us.foldl (fun acc p => acc + p.1 * p.2.getD j 0) 0
  (Array.range n).map fun i => (Array.range n).map fun j =>
    if j < i then (upper.getD j #[]).getD i 0 else (upper.getD i #[]).getD j 0

/-- Index of the flags of a block. -/
def flagIdx (flags : List (Nat × Nat)) : HashMap (Nat × Nat) Nat :=
  (List.range flags.length).foldl (fun m i => m.insert (flags.getD i (0, 0)) i) {}

def flagIdxOK (flags : List (Nat × Nat)) (fi : HashMap (Nat × Nat) Nat) : Bool :=
  (List.range flags.length).all fun i => fi.get? (flags.getD i (0, 0)) == some i

/-- The position of a flag (checked against the list). -/
def lookupH (flags : List (Nat × Nat)) (fi : HashMap (Nat × Nat) Nat) (x : Nat × Nat) : Option Nat :=
  match fi.get? x with
  | some i => if i < flags.length ∧ flags.getD i (0, 0) = x then some i else none
  | none => none

/-- Per block: the triple table, the matrix and the flag index. -/
abbrev PreA := List TripRow × Array (Array Int) × HashMap (Nat × Nat) Nat

def preA (lk : List (Nat × Nat × Nat × Nat)) (k : Nat) (b : DBlock) : PreA :=
  (tripleTable lk (tupList b.m) k b.t b.m, b.qarr, flagIdx b.flags)

def blockSumA (pa : PreA) (flags : List (Nat × Nat)) (bM : Array Bool) : Int :=
  (pa.1.map fun e =>
    match lookupH flags pa.2.2 (gatherA bM e.1, e.2.1), lookupH flags pa.2.2 (gatherA bM e.2.2.1, e.2.2.2) with
    | some i, some j => (pa.2.1.getD i #[]).getD j 0
    | _, _ => 0).sum

/-- `valNum` with the faster tables. -/
def valNumA (lk : List (Nat × Nat × Nat × Nat)) (blocks : List DBlock) (pre : List PreA) (den qscale k : Nat)
    (M : Nat) : Int :=
  ((popcount lk.length M * (den / lk.length) : Nat) : Int) +
    ((blocks.zip pre).map fun bp => blockSumA bp.2 bp.1.flags (bitsOf M lk.length) *
      ((den / (bp.1.D k * qscale) : Nat) : Int)).sum

/-! ### Backtracking joins -/

/-- Choose `c ∈ cand y` for the positions `y` of `ys` in order, keeping only choices consistent (`ok`) with all the
earlier ones; `body` receives the chosen `(position, value)` pairs, the latest first. -/
def bjoin {α : Type} (cand : Nat → Array α) (ok : Nat → α → Nat → α → Bool) (body : List (Nat × α) → Bool) :
    List Nat → List (Nat × α) → Bool
  | [], acc => body acc
  | y :: ys, acc => (cand y).all fun c => !(acc.all fun e => ok e.1 e.2 y c) || bjoin cand ok body ys ((y, c) :: acc)

/-- All the results of the same backtracking. -/
def bcollect {α : Type} (cand : Nat → Array α) (ok : Nat → α → Nat → α → Bool) :
    List Nat → List (Nat × α) → List (List (Nat × α))
  | [], acc => [acc]
  | y :: ys, acc => (cand y).toList.flatMap fun c =>
      if acc.all (fun e => ok e.1 e.2 y c) then bcollect cand ok ys ((y, c) :: acc) else []

/-- The values at the positions `0, …, n - 1`. -/
def toTuple {α : Type} (n : Nat) (d : α) (l : List (Nat × α)) : Array α :=
  (Array.range n).map fun y => (l.lookup y).getD d

/-- Consistency of two tuples at the positions `z ≠ y`: deleting `y` from the first and `z` from the second gives
the same entry (positions renumbered). -/
def consR (z : Nat) (Kz : Array Nat) (y : Nat) (Ky : Array Nat) : Bool :=
  if z < y then Kz.getD (y - 1) 0 == Ky.getD z 0 else Ky.getD (z - 1) 0 == Kz.getD y 0

/-- The candidates for position `y` of an 8-tuple with `K r = v`. -/
def candA (D : Array (Array Nat)) (bd : Array (HashMap Nat (Array Nat))) (r v y : Nat) : Array Nat :=
  if y < r then (bd.getD (r - 1) {}).getD ((D.getD v #[]).getD y 0) #[]
  else (bd.getD r {}).getD ((D.getD v #[]).getD (y - 1) 0) #[]

/-- All 8-tuples of numbers of 7-patterns with consistent deletions and `K r = v`. -/
def anch8 (D : Array (Array Nat)) (bd : Array (HashMap Nat (Array Nat))) (r v : Nat) : Array (Array Nat) :=
  ((bcollect (candA D bd r v) (fun z kz y ky => consR z (D.getD kz #[]) y (D.getD ky #[]))
    ((List.range 8).filter (· != r)) [(r, v)]).map (toTuple 8 0)).toArray

/-! ### Indexed joins

At each level the candidates are indexed by their entries at the earlier positions (`keyAt`); the earlier choices
determine the required key (`reqAt`), so every visited partial tuple is consistent. -/

/-- The entries of `K` (the tuple at position `y`) that must match the earlier positions `zs`. -/
def keyAt (y : Nat) (zs : List Nat) (K : Array Nat) : Array Nat :=
  (zs.map fun z => K.getD (if z < y then z else z - 1) 0).toArray

/-- The key required at position `y` by the earlier choices (positions and tuples). -/
def reqAt (y : Nat) (acc : List (Nat × Array Nat)) : Array Nat :=
  (acc.map fun e => e.2.getD (if y < e.1 then y else y - 1) 0).toArray

/-- The candidates indexed by a key. -/
def mkIdx {α : Type} (key : α → Array Nat) (C : Array α) : HashMap (Array Nat) (Array α) :=
  C.foldl (fun m c => m.insert (key c) ((m.getD (key c) #[]).push c)) {}

/-- The levels for the positions `ys` in order, after the earlier positions `zs` (latest first). -/
def mkLevels {α : Type} (row : α → Array Nat) (cand : Nat → Array α) :
    List Nat → List Nat → List (Nat × HashMap (Array Nat) (Array α))
  | [], _ => []
  | y :: ys, zs => (y, mkIdx (fun c => keyAt y zs (row c)) (cand y)) :: mkLevels row cand ys (y :: zs)

/-- The indexed join: `body` receives every consistent choice, the latest first. -/
def ijoin {α : Type} (row : α → Array Nat) (body : List (Nat × α) → Bool) :
    List (Nat × HashMap (Array Nat) (Array α)) → List (Nat × α) → Bool
  | [], acc => body acc
  | (y, ix) :: rest, acc =>
    (ix.getD (reqAt y (acc.map fun e => (e.1, row e.2))) #[]).all fun c => ijoin row body rest ((y, c) :: acc)

/-- All the results of the indexed join. -/
def icollect {α : Type} (row : α → Array Nat) :
    List (Nat × HashMap (Array Nat) (Array α)) → List (Nat × α) → List (List (Nat × α))
  | [], acc => [acc]
  | (y, ix) :: rest, acc =>
    (ix.getD (reqAt y (acc.map fun e => (e.1, row e.2))) #[]).toList.flatMap fun c =>
      icollect row rest ((y, c) :: acc)

/-- `anch8` with indexed levels. -/
def anch8I (D : Array (Array Nat)) (bd : Array (HashMap Nat (Array Nat))) (r v : Nat) : Array (Array Nat) :=
  let row := fun k => D.getD k #[]
  ((icollect row (mkLevels row (candA D bd r v) ((List.range 8).filter (· != r)) [r]) [(r, v)]).map
    (toTuple 8 0)).toArray


/-! ### Values at 9 points -/

/-- The number of an 8-tuple among the core patterns (`core.size` if it is not one). -/
def cnum (core : Array (Nat × Array Nat)) (cid : HashMap (Array Nat) Nat) (R : Array Nat) : Nat :=
  match cid.get? R with
  | some c => if (core.getD c (0, #[])).2 = R then c else core.size
  | none => core.size

/-- `val9 · 72 · S8` (`S8 = 56 · den7 · qscale`) for nine 8-tuples `T`. -/
def val9num (f7 : Array Int) (top8 : TopArr) (qt8 : Array (Array (Array Int))) (topC : TopArr)
    (qt9 : Array (Array (Array Int))) (core : Array (Nat × Array Nat)) (cid : HashMap (Array Nat) Nat)
    (den7 qscale : Nat) (T : Array (Array Nat)) : Int :=
  8 * ((List.range 9).map fun u => f8num f7 top8 qt8 den7 qscale (T.getD u #[])).sum +
    56 * (den7 : Int) * topTerm 9 topC qt9 (T.map (cnum core cid))

/-- The tuples of the restrictions of a 9-pattern (bits over `tupList 9`), if all are numbered. -/
def tuple9 (P : Array Nat) (id : HashMap Nat Nat) (bits : Nat) : Option (Array (Array Nat)) :=
  let r := (List.range 9).map fun u => exclTuple P id (gather bits ((delIdx 9).getD u []))
  if r.all Option.isSome then some (r.map fun o => o.getD #[]).toArray else none

def tuple9OK (P : Array Nat) (bits : Nat) (T : Array (Array Nat)) : Bool :=
  decide (T.size = 9) && (List.range 9).all fun u => exclTupleOK P (gather bits ((delIdx 9).getD u [])) (T.getD u #[])

/-- The bound at 9 points, or an excluded pattern, or an excluded restriction. -/
def body9 (v9 : Array (Array Nat) → Int) (lamN lamD S9 : Nat) (ex9 : List (Array (Array Nat)))
    (ex8 : List (Array Nat)) (T : Array (Array Nat)) : Bool :=
  decide (v9 T * lamD ≤ (lamN * S9 : Nat)) || ex9.contains T || (List.range 9).any fun u => ex8.contains (T.getD u #[])

/-- Stage 3 at the item `(c, x)`: 9-tuples with `T x = core[c]` and their first core position at `x`. -/
def body3 (isCore : Array Nat → Bool) (x : Nat) (b9 : Array (Array Nat) → Bool) (T : Array (Array Nat)) : Bool :=
  decide (((List.range 9).filter fun u => isCore (T.getD u #[])).length < 2) ||
    (List.range 9).find? (fun u => isCore (T.getD u #[])) != some x || b9 T

/-- The numbering of the 8-tuples of `S` by their last entry. -/
def mkSby (S : Array (Array Nat)) : HashMap Nat (Array (Array Nat)) :=
  S.foldl (fun m R => m.insert (R.getD 7 0) ((m.getD (R.getD 7 0) #[]).push R)) {}

def mkIdA (A : Array (Array Nat)) : HashMap (Array Nat) Nat :=
  (List.range A.size).foldl (fun m n => m.insert (A.getD n #[]) n) {}

end BeatAvg.Check

namespace BeatAvg.Check

open Std

/-- The check of a certificate with 9 points. -/
def checkK9 (levels : List (List TreeRec)) (lower mid top : List DBlock) (excl8 excl9 : List (Nat × List (Nat × Nat)))
    (S : Array (Array Nat)) (core : Array (Nat × Array Nat)) (lamN lamD capN capD den7 qscale : Nat) : Bool :=
  chainOK 3 [0] levels && directPre 7 lower 1 den7 qscale && decide (0 < lamD) && decide (0 < capD) &&
    mid.all (fun b => b.wf 8 && enumOK b.m && b.t == 6 && b.m == 7) &&
    top.all (fun b => b.wf 9 && enumOK b.m && b.t == 7 && b.m == 8) &&
  let P := (chainList [0] levels).toArray
  let lk := tupList 7
  let f7 := P.map fun M => valNumA lk lower (lower.map (preA lk 7)) den7 qscale 7 M
  let D := mkDel 7 P
  let bd := (Array.range 7).map (mkByDel D)
  let id := mkId P
  let top8 := mkTop 7 P.size id mid
  let qt8 := (mid.map DBlock.qarr).toArray
  let P9 := core.map (·.1)
  let id9 := mkId P9
  let topC := mkTop 8 P9.size id9 top
  let qt9 := (top.map DBlock.qarr).toArray
  let cid := mkIdA (core.map (·.2))
  let Sid := mkIdA S
  let Sby := mkSby S
  let exT8 := excl8.filterMap fun e => exclTuple P id e.1
  let exT9 := excl9.filterMap fun e => tuple9 P id e.1
  let S8 := 56 * den7 * qscale
  let thN : Int := 9 * (lamN : Int) * capD - 8 * (capN : Int) * lamD
  let thD := lamD * capD
  let isCore := fun R => decide (cnum core cid R < core.size)
  let b9 := body9 (val9num f7 top8 qt8 topC qt9 core cid den7 qscale) lamN lamD (72 * S8) exT9 exT8
  -- tables
  lower.all (fun b => flagIdxOK b.flags (flagIdx b.flags)) &&
    (List.range 7).all (fun i => byDelOK D (bd.getD i {}) i) && idOK P id &&
    topSound 7 P mid top8 && topComplete 7 id mid top8 && topNodup top8 && decide (top8.size = P.size) &&
    idOK P9 id9 && topSound 8 P9 top topC && topComplete 8 id9 top topC && topNodup topC &&
    decide (topC.size = P9.size) &&
  -- core: tuples of the core patterns, and every top flag with numbered restrictions is a core pattern
    (List.range core.size).all (fun c => decide ((core.getD c (0, #[])).1 < 2 ^ (tupList 8).length) &&
      exclTupleOK P (core.getD c (0, #[])).1 (core.getD c (0, #[])).2 &&
      (List.range 8).all fun j => decide (((core.getD c (0, #[])).2.getD j 0) < P.size)) &&
    (List.range core.size).all (fun c => cid.get? (core.getD c (0, #[])).2 == some c) &&
    (List.range top.length).all (fun blk => (List.range (top.getD blk dfltB).flags.length).all fun i =>
      match exclTuple P id (flagAt top blk i).1 with
      | none => true
      | some R => decide (cnum core cid R < core.size) && (core.getD (cnum core cid R) (0, #[])).1 == (flagAt top blk i).1) &&
  -- S
    (List.range S.size).all (fun s => Sid.get? (S.getD s #[]) == some s &&
      (Sby.getD ((S.getD s #[]).getD 7 0) #[]).contains (S.getD s #[])) &&
  -- exclusions
    decide (exT8.length = excl8.length) && excl8.all (fun e => exclOK 8 (tupList 8) e.1 e.2) &&
    (excl8.zip exT8).all (fun ez => exclTupleOK P ez.1.1 ez.2) &&
    decide (exT9.length = excl9.length) && excl9.all (fun e => exclOK 9 (tupList 9) e.1 e.2) &&
    (excl9.zip exT9).all (fun ez => tuple9OK P ez.1.1 ez.2) &&
  -- stage 1
    join8 D (bd.getD 6 {}) (fun R =>
      let v := f8num f7 top8 qt8 den7 qscale R
      (decide (v * capD ≤ (capN * S8 : Nat)) || exT8.contains R) &&
      (decide (v * thD ≤ thN * S8) ||
        (match Sid.get? R with | some s => S.getD s #[] == R | none => false) || exT8.contains R)) &&
  -- stage 2
    (List.range S.size).all (fun s =>
      bjoin (fun y => Sby.getD ((S.getD s #[]).getD y 0) #[]) consR (fun l => b9 (toTuple 9 #[] l))
        (List.range 8) [(8, S.getD s #[])]) &&
  -- stage 3 (indexed joins; the candidate lists are computed once per item)
    (List.range core.size).all (fun c => (List.range 9).all fun x =>
      let cs := (Array.range 9).map fun y => if y = x then #[] else anch8I D bd (if y < x then x - 1 else x)
          ((core.getD c (0, #[])).2.getD (if y < x then y else y - 1) 0)
      ijoin (fun R : Array Nat => R) (fun l => body3 isCore x b9 (toTuple 9 #[] l))
        (mkLevels (fun R : Array Nat => R) (fun y => cs.getD y #[]) ((List.range 9).filter (· != x)) [x])
        [(x, (core.getD c (0, #[])).2)])

end BeatAvg.Check

namespace BeatAvg.Check

open Std

/-! ### Helpers for generating the lists `S` and `core` (not used by the check) -/

/-- The tuples of the join (as in `join8`) accepted by `keep`. -/
def collect8 (D : Array (Array Nat)) (ch : HashMap Nat (Array Nat)) (keep : Array Nat → Bool) :
    Array (Array Nat) := Id.run do
  let mut out : Array (Array Nat) := #[]
  for p in [0:D.size] do
    let d := D.getD p #[]
    for c0 in ch.getD (d.getD 0 0) #[] do
      let e0 := D.getD c0 #[]
      for c1 in ch.getD (d.getD 1 0) #[] do
        let e1 := D.getD c1 #[]
        if !(e0.getD 0 0 == e1.getD 0 0) then continue
        for c2 in ch.getD (d.getD 2 0) #[] do
          let e2 := D.getD c2 #[]
          if !(e0.getD 1 0 == e2.getD 0 0 && e1.getD 1 0 == e2.getD 1 0) then continue
          for c3 in ch.getD (d.getD 3 0) #[] do
            let e3 := D.getD c3 #[]
            if !(e0.getD 2 0 == e3.getD 0 0 && e1.getD 2 0 == e3.getD 1 0 && e2.getD 2 0 == e3.getD 2 0) then continue
            for c4 in ch.getD (d.getD 4 0) #[] do
              let e4 := D.getD c4 #[]
              if !(e0.getD 3 0 == e4.getD 0 0 && e1.getD 3 0 == e4.getD 1 0 && e2.getD 3 0 == e4.getD 2 0 &&
                e3.getD 3 0 == e4.getD 3 0) then continue
              for c5 in ch.getD (d.getD 5 0) #[] do
                let e5 := D.getD c5 #[]
                if !(e0.getD 4 0 == e5.getD 0 0 && e1.getD 4 0 == e5.getD 1 0 && e2.getD 4 0 == e5.getD 2 0 &&
                  e3.getD 4 0 == e5.getD 3 0 && e4.getD 4 0 == e5.getD 4 0) then continue
                for c6 in ch.getD (d.getD 6 0) #[] do
                  let e6 := D.getD c6 #[]
                  if !(e0.getD 5 0 == e6.getD 0 0 && e1.getD 5 0 == e6.getD 1 0 && e2.getD 5 0 == e6.getD 2 0 &&
                    e3.getD 5 0 == e6.getD 3 0 && e4.getD 5 0 == e6.getD 4 0 && e5.getD 5 0 == e6.getD 5 0) then
                    continue
                  let R := #[c0, c1, c2, c3, c4, c5, c6, p]
                  if keep R then out := out.push R
  return out

/-- Statistics of the k = 9 data: the lists `S` and `core` and the stage results, for the generator. -/
def k9gen (levels : List (List TreeRec)) (lower mid top : List DBlock) (excl8 : List (Nat × List (Nat × Nat)))
    (lamN lamD capN capD den7 qscale : Nat) : Array (Array Nat) × Array (Nat × Array Nat) × Nat :=
  let P := (chainList [0] levels).toArray
  let lk := tupList 7
  let f7 := P.map fun M => valNumA lk lower (lower.map (preA lk 7)) den7 qscale 7 M
  let D := mkDel 7 P
  let ch := mkByDel D 6
  let id := mkId P
  let top8 := mkTop 7 P.size id mid
  let qt8 := (mid.map DBlock.qarr).toArray
  let exT8 := excl8.filterMap fun e => exclTuple P id e.1
  let S8 := 56 * den7 * qscale
  let thN : Int := 9 * (lamN : Int) * capD - 8 * (capN : Int) * lamD
  let thD := lamD * capD
  let S := collect8 D ch fun R =>
    decide (f8num f7 top8 qt8 den7 qscale R * thD > thN * S8) && !exT8.contains R
  let bad := collect8 D ch fun R =>
    decide (f8num f7 top8 qt8 den7 qscale R * capD > (capN * S8 : Nat)) && !exT8.contains R
  let core := (List.range top.length).foldl (fun acc blk =>
    (List.range (top.getD blk dfltB).flags.length).foldl (fun acc i =>
      let f := flagAt top blk i
      match exclTuple P id f.1 with
      | none => acc
      | some R => if acc.any (fun e => e.1 == f.1) then acc else acc.push (f.1, R)) acc) #[]
  (S, core, bad.size)

end BeatAvg.Check
