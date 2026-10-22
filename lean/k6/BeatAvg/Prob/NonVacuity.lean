import BeatAvg.Prob.FlagMethod

/-!
# Non-vacuity: `P(μ) = 1/4` for `μ = (δ₀ + δ₁)/2`, so every valid bound is at least `1/4`; the supremum form
-/

open MeasureTheory Set
open scoped ENNReal

namespace BeatAvg

/-- The law with mass `1/2` at `0` and at `1`. -/
noncomputable def coin : Measure ℝ := (2 : ℝ≥0∞)⁻¹ • (Measure.dirac 0 + Measure.dirac 1)

instance : IsProbabilityMeasure coin :=
  ⟨by
    simp only [coin, Measure.smul_apply, Measure.add_apply, Measure.dirac_apply_of_mem (mem_univ _), smul_eq_mul]
    rw [one_add_one_eq_two, ENNReal.inv_mul_cancel (by norm_num) (by norm_num)]⟩

theorem coin_Iio : coin (Iio 0) = 0 := by
  simp [coin, Measure.dirac_apply' _ measurableSet_Iio]

theorem coin_real_singleton {a : ℝ} (ha : a = 0 ∨ a = 1) : coin.real {a} = 1 / 2 := by
  rw [measureReal_def]
  rcases ha with rfl | rfl
  · simp [coin, Measure.dirac_apply' _ (measurableSet_singleton _)]
  · simp [coin, Measure.dirac_apply' _ (measurableSet_singleton _)]

theorem pi_coin_real_singleton (v : Fin 4 → ℝ) (hv : ∀ i, v i = 0 ∨ v i = 1) :
    (Measure.pi fun _ : Fin 4 => coin).real {v} = 1 / 16 := by
  have hbox : ({v} : Set (Fin 4 → ℝ)) = Set.univ.pi fun i => {v i} := by
    ext x; simp [funext_iff]
  rw [hbox, measureReal_def, Measure.pi_pi, ENNReal.toReal_prod]
  simp_rw [← measureReal_def, coin_real_singleton (hv _)]
  norm_num

theorem beatSet_inter_cube : beatSet ∩ (Set.univ.pi fun _ : Fin 4 => ({0, 1} : Set ℝ)) =
    {![0, 0, 0, 1]} ∪ {![1, 0, 0, 1]} ∪ {![0, 1, 0, 1]} ∪ {![0, 0, 1, 1]} := by
  ext x
  simp only [Set.mem_inter_iff, beatSet, Set.mem_setOf_eq, Set.mem_univ_pi, Set.mem_insert_iff,
    Set.mem_singleton_iff, Set.mem_union]
  constructor
  · rintro ⟨hb, hc⟩
    have e : x = ![x 0, x 1, x 2, x 3] := by
      funext i; fin_cases i <;> rfl
    rw [e]
    rcases hc 0 with h0 | h0 <;> rcases hc 1 with h1 | h1 <;> rcases hc 2 with h2 | h2 <;>
      rcases hc 3 with h3 | h3 <;> simp only [h0, h1, h2, h3] at hb ⊢ <;> (try norm_num at hb) <;> (try simp)
  · rintro (((h | h) | h) | h) <;> subst h <;> refine ⟨by norm_num, fun i => ?_⟩ <;> fin_cases i <;> simp

/-- `P(μ) = 1/4` for `μ = (δ₀ + δ₁)/2`. -/
theorem beatProb_coin : (beatProb coin).toReal = 1 / 4 := by
  set C : Set (Fin 4 → ℝ) := Set.univ.pi fun _ : Fin 4 => ({0, 1} : Set ℝ)
  have hC : MeasurableSet C := MeasurableSet.univ_pi fun _ => (measurableSet_singleton _).insert _
  have hCc : Measure.pi (fun _ : Fin 4 => coin) Cᶜ = 0 := by
    rw [measure_compl hC (measure_ne_top _ _), Measure.pi_pi, measure_univ]
    have hc1 : coin ({0, 1} : Set ℝ) = 1 := by
      simp [coin, Measure.dirac_apply' _ ((measurableSet_singleton _).insert _), ENNReal.inv_two_add_inv_two]
    simp [hc1]
  have hsplit : beatProb coin = Measure.pi (fun _ : Fin 4 => coin) (beatSet ∩ C) := by
    unfold beatProb
    rw [← measure_inter_add_diff₀ beatSet hC.nullMeasurableSet]
    have : Measure.pi (fun _ : Fin 4 => coin) (beatSet \ C) = 0 :=
      measure_mono_null (fun x hx => hx.2) hCc
    rw [this, add_zero]
  rw [hsplit, ← measureReal_def, beatSet_inter_cube]
  have h01 : ∀ v : Fin 4 → ℝ, v ∈ ({![0, 0, 0, 1], ![1, 0, 0, 1], ![0, 1, 0, 1], ![0, 0, 1, 1]} : Set _) →
      ∀ i, v i = 0 ∨ v i = 1 := by
    intro v hv i
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hv
    rcases hv with rfl | rfl | rfl | rfl <;> fin_cases i <;> simp
  rw [measureReal_union _ (measurableSet_singleton _), measureReal_union _ (measurableSet_singleton _),
    measureReal_union _ (measurableSet_singleton _)]
  · rw [pi_coin_real_singleton _ (h01 _ (by simp)), pi_coin_real_singleton _ (h01 _ (by simp)),
      pi_coin_real_singleton _ (h01 _ (by simp)), pi_coin_real_singleton _ (h01 _ (by simp))]
    norm_num
  · rw [Set.disjoint_singleton_right]; simp [funext_iff, Fin.forall_fin_succ]
  · rw [Set.disjoint_singleton_right]; simp [funext_iff, Fin.forall_fin_succ]
  · rw [Set.disjoint_singleton_right]; simp [funext_iff, Fin.forall_fin_succ]

/-- Every valid upper bound is at least `1/4`. -/
theorem quarter_le_of_upperBound {lam : ℝ} (h : UpperBound lam) : 1 / 4 ≤ lam := by
  have hb := h coin inferInstance coin_Iio
  by_contra hlt
  push_neg at hlt
  by_cases h0 : 0 ≤ lam
  · have := ENNReal.toReal_le_of_le_ofReal h0 hb
    rw [beatProb_coin] at this
    linarith
  · push_neg at h0
    rw [ENNReal.ofReal_of_nonpos h0.le, nonpos_iff_eq_zero] at hb
    have := beatProb_coin
    rw [hb] at this
    norm_num at this

/-- The family defining `C639` is nonempty. -/
instance : Nonempty {μ : ProbabilityMeasure ℝ // (μ : Measure ℝ) (Iio 0) = 0} :=
  ⟨⟨⟨coin, inferInstance⟩, coin_Iio⟩⟩

theorem bddAbove_C639 : BddAbove (Set.range fun μ : {μ : ProbabilityMeasure ℝ // (μ : Measure ℝ) (Iio 0) = 0} =>
    (beatProb (μ.1 : Measure ℝ)).toReal) := by
  refine ⟨1, ?_⟩
  rintro _ ⟨μ, rfl⟩
  simp only
  have : beatProb (μ.1 : Measure ℝ) ≤ 1 := by unfold beatProb; exact prob_le_one
  exact ENNReal.toReal_le_of_le_ofReal zero_le_one (by simpa using this)

/-- `1/4 ≤ C`. -/
theorem quarter_le_C639 : 1 / 4 ≤ C639 := by
  rw [← beatProb_coin]
  exact le_ciSup bddAbove_C639 ⟨⟨coin, inferInstance⟩, coin_Iio⟩

/-- An upper bound for every `μ` bounds `C`. -/
theorem C639_le_of_upperBound {lam : ℝ} (h : UpperBound lam) : C639 ≤ lam := by
  have hlam : 0 ≤ lam := le_trans (by norm_num) (quarter_le_of_upperBound h)
  refine ciSup_le fun μ => ?_
  exact ENNReal.toReal_le_of_le_ofReal hlam (h μ.1 inferInstance μ.2)

end BeatAvg
