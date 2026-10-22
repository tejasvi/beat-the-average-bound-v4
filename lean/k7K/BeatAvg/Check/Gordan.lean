import BeatAvg.Check.Tuples
import BeatAvg.Core.Rows

/-!
# Gordan certificates

A system of strict inequalities `r · x > 0` with integer rows `r` has no solution if positive integer multipliers
combine its rows to zero. Rows are functions `Nat → Int` (coordinate `j ↦ r_j`), read on `Fin k`.
-/

open Finset

namespace BeatAvg.Check

/-- `r · y` for a row `r : Nat → Int` and `y : Fin k → ℝ`. -/
noncomputable def dot {k : Nat} (r : Nat → Int) (y : Fin k → ℝ) : ℝ := ∑ j : Fin k, (r j : ℝ) * y j

theorem gordanOK_sound {k : Nat} {cert : List ((Nat → Int) × Nat)} (h : gordanOK k cert = true)
    (y : Fin k → ℝ) (hy : ∀ p ∈ cert, 0 < dot p.1 y) : False := by
  simp only [gordanOK, Bool.and_eq_true, Bool.not_eq_true', List.isEmpty_eq_false_iff, List.all_eq_true,
    decide_eq_true_eq, List.mem_range, beq_iff_eq] at h
  obtain ⟨⟨hne, hpos⟩, hsum⟩ := h
  have hlt : 0 < (cert.map fun p => (p.2 : ℝ) * dot p.1 y).sum := by
    apply List.sum_pos
    · intro x hx
      obtain ⟨p, hp, rfl⟩ := List.mem_map.1 hx
      exact mul_pos (by exact_mod_cast hpos p hp) (hy p hp)
    · simpa using hne
  have heq : (cert.map fun p => (p.2 : ℝ) * dot p.1 y).sum = 0 := by
    have : ∀ l : List ((Nat → Int) × Nat), (l.map fun p => (p.2 : ℝ) * dot p.1 y).sum =
        ∑ j : Fin k, (((l.map fun p => (p.2 : Int) * p.1 j).sum : Int) : ℝ) * y j := by
      intro l
      induction l with
      | nil => simp
      | cons p l ih =>
        rw [List.map_cons, List.sum_cons, ih, dot, Finset.mul_sum, ← Finset.sum_add_distrib]
        refine Finset.sum_congr rfl fun j _ => ?_
        simp only [List.map_cons, List.sum_cons]
        push_cast
        ring
    rw [this]
    refine Finset.sum_eq_zero fun j _ => ?_
    rw [hsum j j.2]
    simp
  linarith

theorem dot_ind {k : Nat} (y : Fin k → ℝ) {i : Nat} (hi : i < k) : dot (ind i) y = y ⟨i, hi⟩ := by
  unfold dot ind
  rw [Finset.sum_eq_single ⟨i, hi⟩]
  · simp
  · intro j _ hj
    have : (j : Nat) ≠ i := fun h => hj (Fin.ext h)
    simp [this]
  · simp

theorem dot_sub {k : Nat} (r s : Nat → Int) (y : Fin k → ℝ) :
    dot (fun j => r j - s j) y = dot r y - dot s y := by
  simp [dot, sub_mul, Finset.sum_sub_distrib]

theorem dot_neg {k : Nat} (r : Nat → Int) (y : Fin k → ℝ) : dot (fun j => -r j) y = -dot r y := by
  simp [dot, neg_mul, Finset.sum_neg_distrib]

theorem dot_smul {k : Nat} (c : Int) (r : Nat → Int) (y : Fin k → ℝ) :
    dot (fun j => c * r j) y = c * dot r y := by
  simp [dot, mul_assoc, Finset.mul_sum]

theorem dot_zero {k : Nat} (y : Fin k → ℝ) : dot (fun _ => (0 : Int)) y = 0 := by simp [dot]

theorem dot_orderRow_pos {k : Nat} {y : Fin k → ℝ} (hy : StrictMono y) (hpos : ∀ i, 0 < y i) {i : Nat}
    (hi : i < k) : 0 < dot (orderRow i) y := by
  unfold orderRow
  rw [dot_sub]
  by_cases h0 : i = 0
  · simp only [h0, ite_true]
    rw [dot_zero, dot_ind y (h0 ▸ hi)]
    simpa using hpos _
  · simp only [h0, ite_false]
    rw [dot_ind y hi, dot_ind y (by omega : i - 1 < k)]
    have : y ⟨i - 1, by omega⟩ < y ⟨i, hi⟩ := hy (Fin.mk_lt_mk.2 (by omega))
    linarith

theorem dot_four {k : Nat} (y : Fin k → ℝ) {d a b c : Nat} (hd : d < k) (ha : a < k) (hb : b < k)
    (hc : c < k) : dot (fun j => 2 * ind d j - ind a j - ind b j - ind c j) y =
      2 * y ⟨d, hd⟩ - y ⟨a, ha⟩ - y ⟨b, hb⟩ - y ⟨c, hc⟩ := by
  have e := fun (i : Nat) (hi : i < k) => dot_ind y hi
  simp only [dot] at e ⊢
  rw [← e d hd, ← e a ha, ← e b hb, ← e c hc]
  simp only [Int.cast_sub, Int.cast_mul, Int.cast_ofNat, sub_mul, Finset.sum_sub_distrib, mul_assoc,
    Finset.mul_sum]

theorem dot_tupRow {k : Nat} (y : Fin k → ℝ) (τ : Tup k) (pos : Bool) :
    dot (tupRow (ofTup τ) pos) y = if pos then L τ y else -L τ y := by
  have hv : dot (fun j => 2 * ind (ofTup τ).1 j - ind (ofTup τ).2.1 j - ind (ofTup τ).2.2.1 j -
      ind (ofTup τ).2.2.2 j) y = L τ y := by
    exact (dot_four y τ.d.2 τ.a.2 τ.b.2 τ.c.2).trans rfl
  unfold tupRow
  cases pos
  · simp only [Bool.false_eq_true, ite_false]
    rw [dot_neg, hv]
  · simp only [ite_true]
    exact hv

/-- If `y` is generic and `pos` is the sign of `L_τ` at `y`, the signed row is positive at `y`. -/
theorem dot_tupRow_pos {k : Nat} {y : Fin k → ℝ} (hg : Generic y) (τ : Tup k) :
    0 < dot (tupRow (ofTup τ) (patOf y τ)) y := by
  rw [dot_tupRow]
  have hne := hg.2.2 τ
  by_cases hL : 0 < L τ y
  · have : patOf y τ = true := by simp [patOf, hL]
    simp [this, hL]
  · have : patOf y τ = false := by simp [patOf, hL]
    simp only [this, Bool.false_eq_true, ite_false]
    have : L τ y < 0 := lt_of_le_of_ne (not_lt.1 hL) hne
    linarith

end BeatAvg.Check
