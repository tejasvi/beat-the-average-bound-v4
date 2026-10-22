/-!
# The documented order of `T_k` (core Lean only)

`tupList k` lists the tuples `(d, a, b, c)` (as natural numbers) by level `j = max(d, a, b, c)` for
`j = 3, …, k-1`, inside a level by `d`, then `(a, b, c)` lexicographically (certificate README). Bit `i` of
an encoded pattern is the sign at the `i`-th tuple of this list. This module uses no Mathlib, so that the
computational shards have a core-only closure.
-/

namespace BeatAvg.Check

/-- Triples `a < b < c < n` avoiding `d`, in lexicographic order. -/
def triplesAvoid (n d : Nat) : List (Nat × Nat × Nat) :=
  (List.range n).flatMap fun a =>
    (List.range n).flatMap fun b =>
      (List.range n).filterMap fun c =>
        if a < b ∧ b < c ∧ a ≠ d ∧ b ≠ d ∧ c ≠ d then some (a, b, c) else none

/-- The tuples of level `j` (those with `max(d, a, b, c) = j`), in the documented order. -/
def levelList (j : Nat) : List (Nat × Nat × Nat × Nat) :=
  (List.range (j + 1)).flatMap fun d =>
    (triplesAvoid (j + 1) d).filterMap fun t =>
      if d = j ∨ t.2.2 = j then some (d, t.1, t.2.1, t.2.2) else none

/-- `T_k` in the documented order. -/
def tupList : Nat → List (Nat × Nat × Nat × Nat)
  | 0 => []
  | k + 1 => tupList k ++ (if 3 ≤ k then levelList k else [])

/-- The validity predicate of a tuple of points `< k`. -/
def validQ (k : Nat) (q : Nat × Nat × Nat × Nat) : Bool :=
  q.2.1 < q.2.2.1 && q.2.2.1 < q.2.2.2 && q.2.2.2 < k && q.1 < k &&
    q.1 != q.2.1 && q.1 != q.2.2.1 && q.1 != q.2.2.2

/-- All quadruples of points `< k` (for the completeness check of `tupList k`). -/
def allQ (k : Nat) : List (Nat × Nat × Nat × Nat) :=
  (List.range k).flatMap fun d => (List.range k).flatMap fun a => (List.range k).flatMap fun b =>
    (List.range k).map fun c => (d, a, b, c)

end BeatAvg.Check

namespace BeatAvg.Check

/-- Number of points `i < k` in the mask `n`. -/
def popcount (k n : Nat) : Nat := ((List.range k).filter fun i => n.testBit i).length

/-- Masks `< 2^k` with `r` points. -/
def cardMasks (k r : Nat) : List Nat := (List.range (2 ^ k)).filter fun n => popcount k n == r

/-- The triples `(J, A, B)` of pairwise disjoint masks with `|J| = t`, `|A| = |B| = m - t`. -/
def genTriples (k t m : Nat) : List (Nat × Nat × Nat) :=
  (cardMasks k t).flatMap fun J => (cardMasks k (m - t)).flatMap fun A =>
    (cardMasks k (m - t)).filterMap fun B =>
      if J &&& A == 0 && J &&& B == 0 && A &&& B == 0 then some (J, A, B) else none

end BeatAvg.Check

namespace BeatAvg.Check

/-- The points `i < k` of the mask `W`, in increasing order. -/
def ptsOf (k W : Nat) : List Nat := (List.range k).filter fun i => W.testBit i

/-- `Σ_i [bit idx[i] of M] 2^i`. -/
def gather (M : Nat) : List Nat → Nat
  | [] => 0
  | j :: rest => (if M.testBit j then 1 else 0) + 2 * gather M rest

/-- Positions in `lk` of the images of the tuples of `lm` under the points `pts`. -/
def restrIdx (lk lm : List (Nat × Nat × Nat × Nat)) (pts : List Nat) : List Nat :=
  lm.map fun q => lk.idxOf (pts.getD q.1 0, pts.getD q.2.1 0, pts.getD q.2.2.1 0, pts.getD q.2.2.2 0)

/-- Bits (over `lm`) of the restriction of the pattern with bits `M` (over `lk`) to the points of `W`. -/
def restrBits (lk lm : List (Nat × Nat × Nat × Nat)) (k W M : Nat) : Nat :=
  gather M (restrIdx lk lm (ptsOf k W))

/-- The flag of `(J, A)` in `M` as a pair: bits of `M` restricted to `J ∪ A`, and the positions of `J` in it. -/
def flagKey (lk lm : List (Nat × Nat × Nat × Nat)) (k M J A : Nat) : Nat × Nat :=
  (restrBits lk lm k (J ||| A) M, gather J (ptsOf k (J ||| A)))

end BeatAvg.Check

namespace BeatAvg.Check

/-- Position of `x` in `l`, if present. -/
def lookupIdx (l : List (Nat × Nat)) (x : Nat × Nat) : Option Nat :=
  if l.contains x then some (l.idxOf x) else none

/-- `Σ_{(J, A, B)} Q[i][j]` over the triples whose two flags `(J, A)`, `(J, B)` are flags `i`, `j` of the block. -/
def blockSum (lk lm : List (Nat × Nat × Nat × Nat)) (k t m : Nat) (flags : List (Nat × Nat))
    (Qint : Nat → Nat → Int) (M : Nat) : Int :=
  ((genTriples k t m).map fun q =>
    match lookupIdx flags (flagKey lk lm k M q.1 q.2.1), lookupIdx flags (flagKey lk lm k M q.1 q.2.2) with
    | some i, some j => Qint i j
    | _, _ => 0).sum

end BeatAvg.Check
