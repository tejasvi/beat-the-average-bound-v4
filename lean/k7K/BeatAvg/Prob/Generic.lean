import BeatAvg.Prob.Marginal

/-!
# Generic samples (Lemma 2.2 of the paper)

For an atomless probability measure `μ` with `μ (-∞, 0] = 0`, a sample of `k` independent points is generic almost
surely.
-/

open MeasureTheory Set

namespace BeatAvg

theorem pi_null_coord_eq {n : ℕ} (μ : Measure ℝ) [IsProbabilityMeasure μ] [NullSingletonClass μ] (d : Fin (n + 1))
    (f : (Fin n → ℝ) → ℝ) (hf : Measurable f) :
    Measure.pi (fun _ : Fin (n + 1) => μ) {x | x d = f (fun j => x (d.succAbove j))} = 0 := by
  have hmp := measurePreserving_piFinSuccAbove (fun _ : Fin (n + 1) => μ) d
  have hs : MeasurableSet {p : ℝ × (Fin n → ℝ) | p.1 = f p.2} :=
    measurableSet_eq_fun measurable_fst (hf.comp measurable_snd)
  have hpre : {x : Fin (n + 1) → ℝ | x d = f (fun j => x (d.succAbove j))} =
      (MeasurableEquiv.piFinSuccAbove (fun _ => ℝ) d) ⁻¹' {p | p.1 = f p.2} := by
    ext x; simp only [Set.mem_preimage, MeasurableEquiv.piFinSuccAbove_apply]; exact Iff.rfl
  rw [hpre, hmp.measure_preimage hs.nullMeasurableSet, Measure.prod_apply_symm hs]
  have : ∀ y : Fin n → ℝ, μ ((fun a : ℝ => (a, y)) ⁻¹' {p : ℝ × (Fin n → ℝ) | p.1 = f p.2}) = 0 := by
    intro y
    have : (fun a : ℝ => (a, y)) ⁻¹' {p : ℝ × (Fin n → ℝ) | p.1 = f p.2} = {f y} := by ext a; simp
    rw [this, measure_singleton]
  simp [this]

variable {n : ℕ} (μ : Measure ℝ) [IsProbabilityMeasure μ] [NullSingletonClass μ]

theorem pi_null_eq_coord {i j : Fin (n + 1)} (hij : i ≠ j) :
    Measure.pi (fun _ : Fin (n + 1) => μ) {x | x i = x j} = 0 := by
  obtain ⟨j', hj'⟩ := Fin.exists_succAbove_eq hij.symm
  have := pi_null_coord_eq μ i (fun b => b j') (measurable_pi_apply j')
  convert this using 2
  ext x
  simp [hj']

theorem pi_null_L (τ : Tup (n + 1)) :
    Measure.pi (fun _ : Fin (n + 1) => μ) {x | L τ x = 0} = 0 := by
  obtain ⟨a', ha'⟩ := Fin.exists_succAbove_eq τ.2.2.2.1.symm
  obtain ⟨b', hb'⟩ := Fin.exists_succAbove_eq τ.2.2.2.2.1.symm
  obtain ⟨c', hc'⟩ := Fin.exists_succAbove_eq τ.2.2.2.2.2.symm
  have := pi_null_coord_eq μ τ.d (fun y => (y a' + y b' + y c') / 2)
    (by fun_prop)
  convert this using 2
  ext x
  simp only [mem_setOf_eq, L]
  rw [show τ.1.2.1 = τ.a from rfl, show τ.1.2.2.1 = τ.b from rfl, show τ.1.2.2.2 = τ.c from rfl] at *
  simp only [Tup.a, Tup.b, Tup.c, Tup.d] at ha' hb' hc' ⊢
  rw [ha', hb', hc']
  constructor <;> intro h <;> linarith

theorem pi_null_nonpos (h0 : μ (Iic 0) = 0) (i : Fin (n + 1)) :
    Measure.pi (fun _ : Fin (n + 1) => μ) {x | x i ≤ 0} = 0 := by
  classical
  have hbox : {x : Fin (n + 1) → ℝ | x i ≤ 0} = Set.univ.pi fun j => if j = i then Iic 0 else Set.univ := by
    ext x
    simp only [Set.mem_univ_pi]
    constructor
    · intro hx j
      split
      · rename_i h; subst h; exact hx
      · trivial
    · intro hx
      have := hx i
      simpa using this
  rw [hbox, Measure.pi_pi]
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  simpa using h0

/-- Lemma 2.2: a sample is generic almost surely. -/
theorem ae_generic (h0 : μ (Iic 0) = 0) : ∀ᵐ x ∂(Measure.pi fun _ : Fin (n + 1) => μ), Generic x := by
  have h1 : ∀ᵐ x ∂(Measure.pi fun _ : Fin (n + 1) => μ), ∀ i, 0 < x i := by
    rw [ae_all_iff]
    intro i
    rw [ae_iff]
    simpa [not_lt] using pi_null_nonpos μ h0 i
  have h2 : ∀ᵐ x ∂(Measure.pi fun _ : Fin (n + 1) => μ), ∀ i j, i ≠ j → x i ≠ x j := by
    rw [ae_all_iff]; intro i
    rw [ae_all_iff]; intro j
    by_cases hij : i = j
    · exact Filter.Eventually.of_forall fun x h => absurd hij h
    · rw [ae_iff]
      simpa [hij] using pi_null_eq_coord μ hij
  have h3 : ∀ᵐ x ∂(Measure.pi fun _ : Fin (n + 1) => μ), ∀ τ : Tup (n + 1), L τ x ≠ 0 := by
    rw [ae_all_iff]
    intro τ
    rw [ae_iff]
    simpa using pi_null_L μ τ
  filter_upwards [h1, h2, h3] with x hx1 hx2 hx3
  exact ⟨hx1, fun i j h => by_contra fun hne => hx2 i j hne h, hx3⟩

end BeatAvg
