import BeatAvg.Core.Chain
import Std.Data.HashMap

/-!
# Hierarchical checks (core Lean only): 8-patterns as tuples of 7-patterns

7-patterns are numbered by their position in the list `P` (the leaves of the extension trees of level 7). An 8-pattern
`M` is represented by the tuple `R` of the numbers of its restrictions `R u = M|_u` (`u < 8`, the restriction to the
points other than `u`). Indices (`HashMap`s, top-flag lists) carry checked completeness properties.
-/

namespace BeatAvg.Check

open Std

/-- All points `< k` except `i`, as a mask. -/
def maskExcept (k i : Nat) : Nat := (2 ^ k - 1) ^^^ (2 ^ i)

/-- Position of `a` among the points other than `b`. -/
def posIn (b a : Nat) : Nat := if a < b then a else a - 1

/-- The point at position `p` among the points other than `b` (inverse of `posIn b`). -/
def unpos (b p : Nat) : Nat := if p < b then p else p + 1

/-- Restriction index tables from `k` points to the points other than `i`, for `i < k`. -/
def delIdx (k : Nat) : Array (List Nat) :=
  (Array.range k).map fun i => restrIdx (tupList k) (tupList (k - 1)) (ptsOf k (maskExcept k i))

/-- `D[n][i]`: bits of the restriction of the `n`-th pattern (of `k` points) to the points other than `i`. -/
def mkDel (k : Nat) (P : Array Nat) : Array (Array Nat) :=
  let idx := delIdx k
  P.map fun M => idx.map fun l => gather M l

/-- Index of the numbers `n` by the key `D[n][i]`. -/
def mkByDel (D : Array (Array Nat)) (i : Nat) : HashMap Nat (Array Nat) :=
  (List.range D.size).foldl (fun m n =>
    let key := (D.getD n #[]).getD i 0
    m.insert key ((m.getD key #[]).push n)) {}

def byDelOK (D : Array (Array Nat)) (bd : HashMap Nat (Array Nat)) (i : Nat) : Bool :=
  (List.range D.size).all fun n => (bd.getD ((D.getD n #[]).getD i 0) #[]).contains n

/-- The numbering of patterns by their bits. -/
def mkId (P : Array Nat) : HashMap Nat Nat :=
  (List.range P.size).foldl (fun m n => m.insert (P.getD n 0) n) {}

def idOK (P : Array Nat) (id : HashMap Nat Nat) : Bool :=
  (List.range P.size).all fun n => id.get? (P.getD n 0) == some n

/-- The join of 8-tuples: every tuple `R` of numbers of 7-patterns with consistent restrictions, `R 7 = p` and
`R b` among the children of `D[p][b]`, is passed to `body`. -/
def join8 (D : Array (Array Nat)) (ch : HashMap Nat (Array Nat)) (body : Array Nat → Bool) : Bool :=
  (List.range D.size).all fun p =>
    let d := D.getD p #[]
    (ch.getD (d.getD 0 0) #[]).all fun c0 =>
    let e0 := D.getD c0 #[]
    (ch.getD (d.getD 1 0) #[]).all fun c1 =>
    let e1 := D.getD c1 #[]
    !(e0.getD 0 0 == e1.getD 0 0) ||
    (ch.getD (d.getD 2 0) #[]).all fun c2 =>
    let e2 := D.getD c2 #[]
    !(e0.getD 1 0 == e2.getD 0 0 && e1.getD 1 0 == e2.getD 1 0) ||
    (ch.getD (d.getD 3 0) #[]).all fun c3 =>
    let e3 := D.getD c3 #[]
    !(e0.getD 2 0 == e3.getD 0 0 && e1.getD 2 0 == e3.getD 1 0 && e2.getD 2 0 == e3.getD 2 0) ||
    (ch.getD (d.getD 4 0) #[]).all fun c4 =>
    let e4 := D.getD c4 #[]
    !(e0.getD 3 0 == e4.getD 0 0 && e1.getD 3 0 == e4.getD 1 0 && e2.getD 3 0 == e4.getD 2 0 &&
      e3.getD 3 0 == e4.getD 3 0) ||
    (ch.getD (d.getD 5 0) #[]).all fun c5 =>
    let e5 := D.getD c5 #[]
    !(e0.getD 4 0 == e5.getD 0 0 && e1.getD 4 0 == e5.getD 1 0 && e2.getD 4 0 == e5.getD 2 0 &&
      e3.getD 4 0 == e5.getD 3 0 && e4.getD 4 0 == e5.getD 4 0) ||
    (ch.getD (d.getD 6 0) #[]).all fun c6 =>
    let e6 := D.getD c6 #[]
    !(e0.getD 5 0 == e6.getD 0 0 && e1.getD 5 0 == e6.getD 1 0 && e2.getD 5 0 == e6.getD 2 0 &&
      e3.getD 5 0 == e6.getD 3 0 && e4.getD 5 0 == e6.getD 4 0 && e5.getD 5 0 == e6.getD 5 0) ||
    body #[c0, c1, c2, c3, c4, c5, c6, p]

/-- The default block (out-of-range positions). -/
def dfltB : DBlock := ⟨0, 0, [], []⟩

/-- The flag at position `i` of block `blk` (`(0, 0)` out of range). -/
def flagAt (blocks : List DBlock) (blk i : Nat) : Nat × Nat := (blocks.getD blk dfltB).flags.getD i (0, 0)

/-- Top flags indexed by the number of their pattern: entries `(p, block, index)` with unmarked position `p`. -/
abbrev TopArr := Array (List (Nat × Nat × Nat))

/-- Entries are flags of the blocks: pattern `P[n]`, all positions but `p` marked (`k` = flag size). -/
def topSound (k : Nat) (P : Array Nat) (blocks : List DBlock) (top : TopArr) : Bool :=
  (List.range top.size).all fun n => (top.getD n []).all fun e =>
    decide (e.1 < k) && (flagAt blocks e.2.1 e.2.2 == (P.getD n 0, maskExcept k e.1))

/-- Every flag whose pattern is numbered and whose marked set misses one position is listed. -/
def topComplete (k : Nat) (id : HashMap Nat Nat) (blocks : List DBlock) (top : TopArr) : Bool :=
  (List.range blocks.length).all fun blk => (List.range (blocks.getD blk dfltB).flags.length).all fun i =>
    match id.get? (flagAt blocks blk i).1 with
    | none => true
    | some n => (List.range k).all fun p =>
      (flagAt blocks blk i).2 != maskExcept k p || (top.getD n []).contains (p, blk, i)

def topNodup (top : TopArr) : Bool := (List.range top.size).all fun n => decide (top.getD n []).Nodup

/-- The contribution of the top-kind blocks for the tuple `R` (ordered pairs of points, matched through `top`). -/
def topTerm (np : Nat) (top : TopArr) (qt : Array (Array (Array Int))) (R : Array Nat) : Int :=
  ((List.range np).map fun b => ((top.getD (R.getD b 0) []).map fun e =>
    ((top.getD (R.getD (unpos b e.1) 0) []).map fun e' =>
      if e'.1 = posIn (unpos b e.1) b ∧ e'.2.1 = e.2.1 then ((qt.getD e.2.1 #[]).getD e.2.2 #[]).getD e'.2.2 0
      else 0).sum).sum).sum

end BeatAvg.Check

namespace BeatAvg.Check

open Std

/-- The top-flag lists, built from the blocks (correctness is checked by `topSound`, `topComplete`, `topNodup`). -/
def mkTop (k : Nat) (size : Nat) (id : HashMap Nat Nat) (blocks : List DBlock) : TopArr :=
  (List.range blocks.length).foldl (fun top blk =>
    let fl := (blocks.getD blk dfltB).flags
    (List.range fl.length).foldl (fun top i =>
      let f := fl.getD i (0, 0)
      match id.get? f.1 with
      | none => top
      | some n =>
        (List.range k).foldl (fun top p =>
          if f.2 == maskExcept k p then top.modify n (fun l => (p, blk, i) :: l) else top) top) top)
    (Array.replicate size [])

/-- The numbers of the restrictions of an 8-pattern (bits over `tupList 8`), if all are numbered. -/
def exclTuple (P : Array Nat) (id : HashMap Nat Nat) (bits : Nat) : Option (Array Nat) :=
  let idx := delIdx 8
  let r := (List.range 8).map fun u => id.get? (gather bits (idx.getD u []))
  if r.all Option.isSome then some (r.map fun o => o.getD 0).toArray else none

/-- The restriction numbers of an excluded pattern are correct. -/
def exclTupleOK (P : Array Nat) (bits : Nat) (R : Array Nat) : Bool :=
  let idx := delIdx 8
  decide (R.size = 8) && (List.range 8).all fun u => P.getD (R.getD u 0) 0 == gather bits (idx.getD u [])

/-- `f8 · S8` for the tuple `R`, `S8 = 56 · den7 · qscale`. -/
def f8num (f7 : Array Int) (top : TopArr) (qt : Array (Array (Array Int))) (den7 qscale : Nat) (R : Array Nat) : Int :=
  7 * (qscale : Int) * ((List.range 8).map fun x => f7.getD (R.getD x 0) 0).sum + (den7 : Int) * topTerm 8 top qt R

/-- The check of a certificate with 8 points (blocks with `2m - t ≤ 7`, and blocks `(6, 7)`). -/
def checkK8 (levels : List (List TreeRec)) (lower mid : List DBlock) (excl : List (Nat × List (Nat × Nat)))
    (lamN lamD den7 qscale : Nat) : Bool :=
  chainOK 3 [0] levels && directPre 7 lower 1 den7 qscale && decide (0 < lamD) &&
    mid.all (fun b => b.wf 8 && enumOK b.m && b.t == 6 && b.m == 7) &&
  let P := (chainList [0] levels).toArray
  let lk := tupList 7
  let pre := lower.map fun b => (tripleTable lk (tupList b.m) 7 b.t b.m, b.qtab)
  let f7 := P.map fun M => valNumT lk lower pre den7 qscale 7 M
  let D := mkDel 7 P
  let ch := mkByDel D 6
  let id := mkId P
  let top := mkTop 7 P.size id mid
  let qt := (mid.map fun b => (b.qtab.map List.toArray).toArray).toArray
  let exT := excl.filterMap fun e => exclTuple P id e.1
  byDelOK D ch 6 && idOK P id && topSound 7 P mid top && topComplete 7 id mid top && topNodup top &&
    decide (top.size = P.size) && decide (exT.length = excl.length) &&
    excl.all (fun e => exclOK 8 (tupList 8) e.1 e.2) &&
    (excl.zip exT).all (fun ez => exclTupleOK P ez.1.1 ez.2) &&
    join8 D ch fun R =>
      decide (f8num f7 top qt den7 qscale R * lamD ≤ (lamN * (56 * den7 * qscale) : Nat)) || exT.contains R

end BeatAvg.Check
