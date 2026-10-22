import BeatAvg.Core.K7K

/-!
# Matrix rows from packed term vectors (core Lean only)

`qrowP` checks rows of the matrix table of a block of the top kind against `Qint = Σ_p w_p v_p v_pᵀ` (as `qrowOK`)
with one multiplication of a packed number per term and row instead of one per term and entry. The offset vectors
`v_p + B` (`B = 2 ^ (W1 - 1)`, entries in `[0, 2 ^ W1)`) are packed into fields of width `W`; for row `i` the
coefficients `a_p = w_p v_p[i]` are split by sign into two packed sums, and the bounds on the sums of the
coefficients keep their fields from overflowing (`Check/KPack.lean`).
-/

namespace BeatAvg.Check

/-- Fields of width `w`, least significant first. -/
def pk (w : Nat) : List Nat → Nat
  | [] => 0
  | x :: l => x + 2 ^ w * pk w l

/-- The offset vector `v + B`, packed. -/
def pkV (W : Nat) (B : Int) (v : List Int) : Nat := pk W (v.map fun x => (x + B).toNat)

/-- For row `i`: the packed sums of the positive and of the negative parts of `a_p · (v_p + B)`, and the sums of
the positive and of the negative parts of `a_p`, where `a_p = w_p (field i of P_p - B)`. -/
def rowAcc (W : Nat) (B : Int) (i : Nat) : List (Nat × Nat) → Nat × Nat × Nat × Nat
  | [] => (0, 0, 0, 0)
  | (c, P) :: rest =>
    let a : Int := (c : Int) * ((fld P W i : Int) - B)
    let r := rowAcc W B i rest
    (r.1 + a.toNat * P, r.2.1 + (-a).toNat * P, r.2.2.1 + a.toNat, r.2.2.2 + (-a).toNat)

/-- Row `i` of the matrix of block `blk` from the weights and packed offset vectors `PT`. -/
def qrowPRow (T : K7Tab) (blk W W1 : Nat) (B : Int) (N : Nat) (PT : List (Nat × Nat)) (i : Nat) : Bool :=
  let r := rowAcc W B i PT
  decide (r.2.2.1 * (2 ^ W1 - 1) < 2 ^ W) && decide (r.2.2.2 * (2 ^ W1 - 1) < 2 ^ W) &&
    (List.range N).all fun j =>
      qfK T blk i j == (fld r.1 W j : Int) - (fld r.2.1 W j : Int) - B * ((r.2.2.1 : Int) - (r.2.2.2 : Int))

/-- The rows `lo, …, lo + n - 1` of the matrix of block `blk`, as `qrowOK` (`qrowP_sound`). -/
def qrowP (T : K7Tab) (top : List DBlock) (blk lo n W W1 : Nat) : Bool :=
  let b := top.getD blk dfltB
  let N := b.flags.length
  let B : Int := ((2 ^ (W1 - 1) : Nat) : Int)
  decide (1 ≤ W1) && decide (W1 ≤ W) &&
    b.terms.all (fun p => p.2.length == N && p.2.all fun x => decide (x.natAbs < 2 ^ (W1 - 1))) &&
    (((List.range N).drop lo).take n).all (qrowPRow T blk W W1 B N (b.terms.map fun p => (p.1, pkV W B p.2)))

end BeatAvg.Check
