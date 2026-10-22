import BeatAvg.Core.Tree
import BeatAvg.Core.Tuples

/-!
# Direct evaluation of a certificate on a list of patterns (core Lean only)

For each pattern `M` (bits over `tupList k`), `valNum` is `val(M) · den` as an integer: the density term and, for
each block, the sum of `Q[i][j]` over the triples `(J, A, B)` (`blockSum`), scaled by `den / (D · qscale)`.
-/

namespace BeatAvg.Check

/-- Binomial coefficients (Pascal's rule). -/
def binom : Nat → Nat → Nat
  | _, 0 => 1
  | 0, _ + 1 => 0
  | n + 1, k + 1 => binom n k + binom n (k + 1)

/-- A block: `t`, `m`, flags as pairs (bits over `tupList m`, mask of marked positions), and the terms
`(w, v)` of `Qint = Σ w v vᵀ` (so `Q = Qint / qscale`). -/
structure DBlock where
  t : Nat
  m : Nat
  flags : List (Nat × Nat)
  terms : List (Nat × List Int)

/-- `Qint[i][j] = Σ w v_i v_j`. -/
def DBlock.qint (b : DBlock) (i j : Nat) : Int :=
  (b.terms.map fun p => (p.1 : Int) * p.2.getD i 0 * p.2.getD j 0).sum

/-- The number of triples `(J, A, B)` for `k` points. -/
def DBlock.D (k : Nat) (b : DBlock) : Nat :=
  binom k b.t * binom (k - b.t) (b.m - b.t) * binom (k - b.m) (b.m - b.t)

/-- `T_m` is enumerated by `tupList m` without repetitions. -/
def enumOK (m : Nat) : Bool :=
  (tupList m).all (validQ m) && decide (tupList m).Nodup &&
    (allQ m).all (fun q => !validQ m q || (tupList m).contains q)

/-- Well-formed block: `t ≤ m`, `2m - t ≤ k`, distinct canonical flags. -/
def DBlock.wf (k : Nat) (b : DBlock) : Bool :=
  decide (b.t ≤ b.m) && decide (2 * b.m - b.t ≤ k) && decide b.flags.Nodup &&
    b.flags.all (fun f => decide (f.1 < 2 ^ (tupList b.m).length) && decide (f.2 < 2 ^ b.m))

/-- `val(M) · den`. -/
def valNum (k : Nat) (lk : List (Nat × Nat × Nat × Nat)) (blocks : List DBlock) (den qscale : Nat) (M : Nat) :
    Int :=
  ((popcount lk.length M * (den / lk.length) : Nat) : Int) +
    (blocks.map fun b => blockSum lk (tupList b.m) k b.t b.m b.flags b.qint M *
      ((den / (b.D k * qscale) : Nat) : Int)).sum

/-- The direct check: well-formed data and `val(M) ≤ lamN / lamD` for every `M` in `P`. -/
def directOK (k : Nat) (blocks : List DBlock) (lamN lamD den qscale : Nat) (P : List Nat) : Bool :=
  decide (0 < lamD) && decide (0 < den) && decide (0 < (tupList k).length) && decide (0 < qscale) &&
    decide (den % (tupList k).length = 0) && enumOK k &&
    blocks.all (fun b => b.wf k && enumOK b.m && decide (0 < b.D k) && decide (den % (b.D k * qscale) = 0)) &&
    P.all fun M => decide (valNum k (tupList k) blocks den qscale M * lamD ≤ (lamN * den : Nat))

end BeatAvg.Check

namespace BeatAvg.Check

/-- Per triple: restriction indices and position mask of `(J, A)`, then of `(J, B)`. -/
abbrev TripRow := List Nat × Nat × List Nat × Nat

/-- The triples of `(t, m)` for `k` points with their restriction indices (independent of the pattern). -/
def tripleTable (lk lm : List (Nat × Nat × Nat × Nat)) (k t m : Nat) : List TripRow :=
  (genTriples k t m).map fun q =>
    (restrIdx lk lm (ptsOf k (q.1 ||| q.2.1)), gather q.1 (ptsOf k (q.1 ||| q.2.1)),
      restrIdx lk lm (ptsOf k (q.1 ||| q.2.2)), gather q.1 (ptsOf k (q.1 ||| q.2.2)))

/-- The matrix `Qint` as rows. -/
def DBlock.qtab (b : DBlock) : List (List Int) :=
  (List.range b.flags.length).map fun i => (List.range b.flags.length).map fun j => b.qint i j

/-- `blockSum` from a precomputed triple table and matrix. -/
def blockSumT (tab : List TripRow) (flags : List (Nat × Nat)) (qt : List (List Int)) (M : Nat) : Int :=
  (tab.map fun e =>
    match lookupIdx flags (gather M e.1, e.2.1), lookupIdx flags (gather M e.2.2.1, e.2.2.2) with
    | some i, some j => (qt.getD i []).getD j 0
    | _, _ => 0).sum

/-- `valNum` from precomputed tables `pre` (one `(triple table, matrix)` per block). -/
def valNumT (lk : List (Nat × Nat × Nat × Nat)) (blocks : List DBlock) (pre : List (List TripRow × List (List Int)))
    (den qscale k : Nat) (M : Nat) : Int :=
  ((popcount lk.length M * (den / lk.length) : Nat) : Int) +
    ((blocks.zip pre).map fun bp => blockSumT bp.2.1 bp.1.flags bp.2.2 M *
      ((den / (bp.1.D k * qscale) : Nat) : Int)).sum

/-- The direct check with tables computed once. -/
def directOKT (k : Nat) (blocks : List DBlock) (lamN lamD den qscale : Nat) (P : List Nat) : Bool :=
  decide (0 < lamD) && decide (0 < den) && decide (0 < (tupList k).length) && decide (0 < qscale) &&
    decide (den % (tupList k).length = 0) && enumOK k &&
    blocks.all (fun b => b.wf k && enumOK b.m && decide (0 < b.D k) && decide (den % (b.D k * qscale) = 0)) &&
    let lk := tupList k
    let pre := blocks.map fun b => (tripleTable lk (tupList b.m) k b.t b.m, b.qtab)
    P.all fun M => decide (valNumT lk blocks pre den qscale k M * lamD ≤ (lamN * den : Nat))

end BeatAvg.Check

namespace BeatAvg.Check

/-- The data checks of `directOKT` (everything but the patterns). -/
def directPre (k : Nat) (blocks : List DBlock) (lamD den qscale : Nat) : Bool :=
  decide (0 < lamD) && decide (0 < den) && decide (0 < (tupList k).length) && decide (0 < qscale) &&
    decide (den % (tupList k).length = 0) && enumOK k &&
    blocks.all (fun b => b.wf k && enumOK b.m && decide (0 < b.D k) && decide (den % (b.D k * qscale) = 0))

/-- The patterns `lo, …, lo + n - 1` of `P`. -/
def directChunk (k : Nat) (blocks : List DBlock) (lamN lamD den qscale : Nat) (P : List Nat) (lo n : Nat) : Bool :=
  let lk := tupList k
  let pre := blocks.map fun b => (tripleTable lk (tupList b.m) k b.t b.m, b.qtab)
  ((P.drop lo).take n).all fun M => decide (valNumT lk blocks pre den qscale k M * lamD ≤ (lamN * den : Nat))

end BeatAvg.Check
