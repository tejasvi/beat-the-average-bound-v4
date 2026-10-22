import BeatAvg.Core.Hier9
import BeatAvg.Core.Par

/-!
# The check with 9 points, evaluated with parallel tasks (core Lean only)

`checkK9P` is `checkK9` with the Q tables, the values `f7`, the trees of each level, the join of 8-tuples (by pieces of
parent numbers) and the stages 2 and 3 evaluated in parallel tasks; `checkK9P_eq` (BeatAvg.Check.Par) shows the two
functions are equal. `k9genP` is the parallel generator of the lists `S` and `core`.
-/

namespace BeatAvg.Check

open Std

/-- `checkK9` evaluated with parallel tasks (equal to it: `checkK9P_eq`). -/
def checkK9P (levels : List (List TreeRec)) (lower mid top : List DBlock) (excl8 excl9 : List (Nat × List (Nat × Nat)))
    (S : Array (Array Nat)) (core : Array (Nat × Array Nat)) (lamN lamD capN capD den7 qscale : Nat) : Bool :=
  chainOKP 3 3 [0] levels && directPre 7 lower 1 den7 qscale && decide (0 < lamD) && decide (0 < capD) &&
    mid.all (fun b => b.wf 8 && enumOK b.m && b.t == 6 && b.m == 7) &&
    top.all (fun b => b.wf 9 && enumOK b.m && b.t == 7 && b.m == 8) &&
  let P := (chainList [0] levels).toArray
  let lk := tupList 7
  let pre := parMapL 0 (preA lk 7) lower
  let f7 := parMapA 1023 (fun M => valNumA lk lower pre den7 qscale 7 M) P
  let D := mkDel 7 P
  let bd := (Array.range 7).map (mkByDel D)
  let id := mkId P
  let top8 := mkTop 7 P.size id mid
  let qt8 := (parMapL 0 DBlock.qarr mid).toArray
  let P9 := core.map (·.1)
  let id9 := mkId P9
  let topC := mkTop 8 P9.size id9 top
  let qt9 := (parMapL 0 DBlock.qarr top).toArray
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
    parAllL 255 (join8At D (bd.getD 6 {}) (fun R =>
      let v := f8num f7 top8 qt8 den7 qscale R
      (decide (v * capD ≤ (capN * S8 : Nat)) || exT8.contains R) &&
      (decide (v * thD ≤ thN * S8) ||
        (match Sid.get? R with | some s => S.getD s #[] == R | none => false) || exT8.contains R))) (List.range D.size) &&
  -- stage 2
    parAllL 3 (fun s =>
      bjoin (fun y => Sby.getD ((S.getD s #[]).getD y 0) #[]) consR (fun l => b9 (toTuple 9 #[] l))
        (List.range 8) [(8, S.getD s #[])]) (List.range S.size) &&
  -- stage 3 (indexed joins; the candidate lists are computed once per item)
    parAllL 0 (fun c => (List.range 9).all fun x =>
      let cs := (Array.range 9).map fun y => if y = x then #[] else anch8I D bd (if y < x then x - 1 else x)
          ((core.getD c (0, #[])).2.getD (if y < x then y else y - 1) 0)
      ijoin (fun R : Array Nat => R) (fun l => body3 isCore x b9 (toTuple 9 #[] l))
        (mkLevels (fun R : Array Nat => R) (fun y => cs.getD y #[]) ((List.range 9).filter (· != x)) [x])
        [(x, (core.getD c (0, #[])).2)]) (List.range core.size)


/-- The tuples of the join with `p ∈ [lo, hi)` accepted by `keep` (as in `collect8`). -/
def collect8R (D : Array (Array Nat)) (ch : HashMap Nat (Array Nat)) (keep : Array Nat → Bool) (lo hi : Nat) :
    Array (Array Nat) := Id.run do
  let mut out : Array (Array Nat) := #[]
  for p in [lo:hi] do
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

/-- `collect8` in parallel pieces of 256 parents. -/
def collect8P (D : Array (Array Nat)) (ch : HashMap Nat (Array Nat)) (keep : Array Nat → Bool) : Array (Array Nat) :=
  let ts := (List.range ((D.size + 255) / 256)).map fun c =>
    Task.spawn fun _ => collect8R D ch keep (c * 256) (min ((c + 1) * 256) D.size)
  ts.foldl (fun acc t => acc ++ t.get) #[]

/-- `k9gen` with parallel tasks: the 8-tuples above θ, the core patterns, the number above the cap. -/
def k9genP (levels : List (List TreeRec)) (lower mid top : List DBlock) (excl8 : List (Nat × List (Nat × Nat)))
    (lamN lamD capN capD den7 qscale : Nat) : Array (Array Nat) × Array (Nat × Array Nat) × Nat :=
  let P := (chainList [0] levels).toArray
  let lk := tupList 7
  let pre := parMapL 0 (preA lk 7) lower
  let f7 := parMapA 1023 (fun M => valNumA lk lower pre den7 qscale 7 M) P
  let D := mkDel 7 P
  let ch := mkByDel D 6
  let id := mkId P
  let top8 := mkTop 7 P.size id mid
  let qt8 := (parMapL 0 DBlock.qarr mid).toArray
  let exT8 := excl8.filterMap fun e => exclTuple P id e.1
  let S8 := 56 * den7 * qscale
  let thN : Int := 9 * (lamN : Int) * capD - 8 * (capN : Int) * lamD
  let thD := lamD * capD
  let T := collect8P D ch fun R =>
    let v := f8num f7 top8 qt8 den7 qscale R
    !exT8.contains R && (decide (v * thD > thN * S8) || decide (v * capD > (capN * S8 : Nat)))
  let S := T.filter fun R => decide (f8num f7 top8 qt8 den7 qscale R * thD > thN * S8)
  let bad := T.filter fun R => decide (f8num f7 top8 qt8 den7 qscale R * capD > (capN * S8 : Nat))
  let core := (List.range top.length).foldl (fun acc blk =>
    (List.range (top.getD blk dfltB).flags.length).foldl (fun acc i =>
      let f := flagAt top blk i
      match exclTuple P id f.1 with
      | none => acc
      | some R => if acc.any (fun e => e.1 == f.1) then acc else acc.push (f.1, R)) acc) #[]
  (S, core, bad.size)

end BeatAvg.Check
