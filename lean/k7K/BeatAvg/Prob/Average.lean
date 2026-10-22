import BeatAvg.Prob.Sort

/-!
# The distribution of sorted patterns, and Lemma 2.3 of the paper

`pM μ k M` is the probability that a sample of `k` points is generic and has sorted pattern `M`. Every
expectation of a function of the sorted pattern is a finite sum over patterns (`sum_pM`).
-/

open MeasureTheory Set Finset
open scoped Classical

namespace BeatAvg

variable {k : ℕ}

theorem measurableSet_generic : MeasurableSet {x : Fin k → ℝ | Generic x} := by
  have e : {x : Fin k → ℝ | Generic x} = (⋂ i, {x | 0 < x i}) ∩ (⋂ i, ⋂ j, {x | i = j ∨ x i ≠ x j}) ∩
      (⋂ τ : Tup k, {x | L τ x ≠ 0}) := by
    ext x
    simp only [mem_setOf_eq, mem_inter_iff, mem_iInter, Generic]
    constructor
    · rintro ⟨h1, h2, h3⟩
      exact ⟨⟨h1, fun i j => by
        by_cases hij : i = j
        · exact Or.inl hij
        · exact Or.inr fun e => hij (h2 e)⟩, h3⟩
    · rintro ⟨⟨h1, h2⟩, h3⟩
      refine ⟨h1, fun i j e => ?_, h3⟩
      rcases h2 i j with h | h
      · exact h
      · exact absurd e h
  rw [e]
  refine MeasurableSet.inter (MeasurableSet.inter ?_ ?_) ?_
  · exact MeasurableSet.iInter fun i => measurableSet_lt measurable_const (measurable_pi_apply i)
  · refine MeasurableSet.iInter fun i => MeasurableSet.iInter fun j => ?_
    by_cases hij : i = j
    · simp [hij]
    · simp only [hij, false_or]
      exact (measurableSet_eq_fun (measurable_pi_apply i) (measurable_pi_apply j)).compl
  · refine MeasurableSet.iInter fun τ => ?_
    have : Measurable fun x : Fin k → ℝ => L τ x := by unfold L; fun_prop
    exact (measurableSet_eq_fun this measurable_const).compl

theorem measurable_L (τ : Tup k) : Measurable fun x : Fin k → ℝ => L τ x := by unfold L; fun_prop

theorem measurableSet_patOf_comp (σ : Equiv.Perm (Fin k)) (M : Pat k) :
    MeasurableSet {x : Fin k → ℝ | patOf (x ∘ σ) = M} := by
  have e : {x : Fin k → ℝ | patOf (x ∘ σ) = M} =
      ⋂ τ : Tup k, {x | (0 < L τ (x ∘ σ)) ↔ M τ = true} := by
    ext x
    simp only [mem_setOf_eq, mem_iInter, patOf, funext_iff]
    constructor
    · intro h τ; rw [← h τ]; simp
    · intro h τ; have := h τ; by_cases hL : 0 < L τ (x ∘ σ) <;> cases hM : M τ <;> simp_all
  rw [e]
  refine MeasurableSet.iInter fun τ => ?_
  have hm : Measurable fun x : Fin k → ℝ => L τ (x ∘ σ) :=
    (measurable_L τ).comp (Measurable.of_eval fun i => measurable_pi_apply _)
  cases hM : M τ
  · simp only [Bool.false_eq_true, iff_false]
    exact (measurableSet_lt measurable_const hm).compl
  · simp only [iff_true]
    exact measurableSet_lt measurable_const hm

theorem measurableSet_strictMono_comp (σ : Equiv.Perm (Fin k)) :
    MeasurableSet {x : Fin k → ℝ | StrictMono (x ∘ σ)} := by
  have e : {x : Fin k → ℝ | StrictMono (x ∘ σ)} = ⋂ i, ⋂ j, {x | i < j → x (σ i) < x (σ j)} := by
    ext x; simp [StrictMono]
  rw [e]
  refine MeasurableSet.iInter fun i => MeasurableSet.iInter fun j => ?_
  by_cases hij : i < j
  · simp only [hij, true_implies]
    exact measurableSet_lt (measurable_pi_apply _) (measurable_pi_apply _)
  · simp [hij]

/-- The set of generic samples with sorted pattern `M`. -/
def patSet (M : Pat k) : Set (Fin k → ℝ) := {x | Generic x ∧ sortedPat x = M}

theorem patSet_eq (M : Pat k) : patSet M =
    ⋃ σ : Equiv.Perm (Fin k), ({x | Generic x} ∩ {x | StrictMono (x ∘ σ)} ∩ {x | patOf (x ∘ σ) = M}) := by
  ext x
  simp only [patSet, mem_setOf_eq, mem_iUnion, mem_inter_iff]
  constructor
  · rintro ⟨hg, hM⟩
    exact ⟨Tuple.sort x, ⟨hg, strictMono_sort hg.2.1⟩, hM⟩
  · rintro ⟨σ, ⟨hg, hs⟩, hM⟩
    refine ⟨hg, ?_⟩
    rw [sortedPat, ← eq_sort_of_strictMono hg.2.1 hs]
    exact hM

theorem measurableSet_patSet (M : Pat k) : MeasurableSet (patSet M) := by
  rw [patSet_eq]
  exact MeasurableSet.iUnion fun σ =>
    (measurableSet_generic.inter (measurableSet_strictMono_comp σ)).inter (measurableSet_patOf_comp σ M)

/-- `p_μ(M)`. -/
noncomputable def pM (μ : Measure ℝ) (k : ℕ) (M : Pat k) : ℝ :=
  (Measure.pi (fun _ : Fin k => μ)).real (patSet M)

theorem pM_nonneg (μ : Measure ℝ) (M : Pat k) : 0 ≤ pM μ k M := measureReal_nonneg

theorem integral_indicator_one' {α : Type*} [MeasurableSpace α] (ν : Measure α) {s : Set α}
    (hs : MeasurableSet s) : ∫ x, s.indicator (fun _ => (1 : ℝ)) x ∂ν = ν.real s := by
  rw [integral_indicator hs, setIntegral_const, smul_eq_mul, mul_one]

theorem realizable_of_pM_ne_zero {μ : Measure ℝ} {M : Pat k} (h : pM μ k M ≠ 0) : Realizable M := by
  by_contra hM
  apply h
  have : patSet M = ∅ := by
    ext x
    simp only [patSet, mem_setOf_eq, mem_empty_iff_false, iff_false, not_and]
    intro hg hx
    exact hM (hx ▸ realizable_sortedPat hg)
  simp [pM, this]

/-- Expectations of functions of the sorted pattern are finite sums. -/
theorem sum_pM (μ : Measure ℝ) [IsProbabilityMeasure μ] (f : Pat k → ℝ) :
    ∑ M : Pat k, pM μ k M * f M =
      ∫ x, (if Generic x then f (sortedPat x) else 0) ∂(Measure.pi fun _ : Fin k => μ) := by
  have hpt : ∀ x : Fin k → ℝ, (if Generic x then f (sortedPat x) else 0) =
      ∑ M : Pat k, f M * (patSet M).indicator (fun _ => (1 : ℝ)) x := by
    intro x
    by_cases hg : Generic x
    · rw [if_pos hg, Finset.sum_eq_single (sortedPat x)]
      · simp [patSet, hg]
      · intro M _ hM
        have : x ∉ patSet M := fun h => hM h.2.symm
        simp [this]
      · simp
    · rw [if_neg hg]
      refine (Finset.sum_eq_zero fun M _ => ?_).symm
      have : x ∉ patSet M := fun h => hg h.1
      simp [this]
  simp_rw [hpt]
  rw [integral_finset_sum]
  · refine Finset.sum_congr rfl fun M _ => ?_
    rw [integral_const_mul, integral_indicator_one' _ (measurableSet_patSet M), mul_comm]
    rfl
  · intro M _
    exact (integrable_const (1 : ℝ)).indicator (measurableSet_patSet M) |>.const_mul _

theorem sum_pM_eq_one (μ : Measure ℝ) [IsProbabilityMeasure μ] (hG : ∀ᵐ x ∂(Measure.pi fun _ : Fin k => μ), Generic x) :
    ∑ M : Pat k, pM μ k M = 1 := by
  have := sum_pM (k := k) μ (fun _ => (1 : ℝ))
  simp only [mul_one] at this
  rw [this]
  rw [integral_congr_ae (g := fun _ => (1 : ℝ)) (by filter_upwards [hG] with x hx; simp [hx])]
  simp only [integral_const, smul_eq_mul, mul_one]
  simp [measureReal_def]

/-- `#{τ | M τ}` for the sorted pattern equals `#{τ | L_τ(x) > 0}`. -/
theorem card_sortedPat (x : Fin k → ℝ) :
    (univ.filter fun τ => sortedPat x τ = true).card = (univ.filter fun τ : Tup k => 0 < L τ x).card := by
  rw [← card_L_pos_comp_perm (Tuple.sort x) x]
  congr 1

theorem L_pos_eq_preimage (τ : Tup k) :
    {x : Fin k → ℝ | 0 < L τ x} = (fun x => x ∘ ![τ.a, τ.b, τ.c, τ.d]) ⁻¹' beatSet := by
  ext x
  simp only [Set.mem_setOf_eq, Set.mem_preimage, beatSet, L, Function.comp_apply]
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three,
    Matrix.head_cons, Matrix.vecHead, Matrix.vecTail, Function.comp_apply, Fin.succ_zero_eq_one,
    Fin.succ_one_eq_two]
  constructor <;> intro h <;> linarith

theorem injective_tuple4 (τ : Tup k) : Function.Injective ![τ.a, τ.b, τ.c, τ.d] := by
  have hab : τ.a ≠ τ.b := ne_of_lt τ.2.1
  have hac : τ.a ≠ τ.c := ne_of_lt (τ.2.1.trans τ.2.2.1)
  have hbc : τ.b ≠ τ.c := ne_of_lt τ.2.2.1
  have hda : τ.d ≠ τ.a := τ.2.2.2.1
  have hdb : τ.d ≠ τ.b := τ.2.2.2.2.1
  have hdc : τ.d ≠ τ.c := τ.2.2.2.2.2
  intro i j h
  fin_cases i <;> fin_cases j <;> simp_all [eq_comm]

theorem measurableSet_beatSet : MeasurableSet beatSet := by
  unfold beatSet
  exact measurableSet_lt (by fun_prop) (by fun_prop)

theorem pi_L_pos (μ : Measure ℝ) [IsProbabilityMeasure μ] (τ : Tup k) :
    (Measure.pi fun _ : Fin k => μ) {x | 0 < L τ x} = beatProb μ := by
  rw [L_pos_eq_preimage, pi_preimage_comp_injective μ _ (injective_tuple4 τ) measurableSet_beatSet]
  rfl

theorem card_tup_pos (hk : 4 ≤ k) : 0 < Fintype.card (Tup k) := by
  have hlt : (3 : ℕ) < k := by omega
  let τ : Tup k := ⟨(⟨3, hlt⟩, ⟨0, by omega⟩, ⟨1, by omega⟩, ⟨2, by omega⟩), by simp [Fin.lt_def],
    by simp [Fin.lt_def], by simp [Fin.ext_iff], by simp [Fin.ext_iff], by simp [Fin.ext_iff]⟩
  exact Fintype.card_pos_iff.2 ⟨τ⟩

/-- Lemma 2.3: `P(μ) = Σ_M p_μ(M) d(M)`. -/
theorem beatProb_eq_sum (μ : Measure ℝ) [IsProbabilityMeasure μ] (hk : 4 ≤ k)
    (hG : ∀ᵐ x ∂(Measure.pi fun _ : Fin k => μ), Generic x) :
    (beatProb μ).toReal = ∑ M : Pat k, pM μ k M * dens M := by
  rw [sum_pM]
  have hT : (0 : ℝ) < Fintype.card (Tup k) := by exact_mod_cast card_tup_pos hk
  have hpt : ∀ᵐ x ∂(Measure.pi fun _ : Fin k => μ), (if Generic x then dens (sortedPat x) else 0) =
      (∑ τ : Tup k, {y : Fin k → ℝ | 0 < L τ y}.indicator (fun _ => (1 : ℝ)) x) / Fintype.card (Tup k) := by
    filter_upwards [hG] with x hx
    rw [if_pos hx, dens, card_sortedPat]
    congr 1
    rw [Finset.card_filter]
    push_cast
    refine Finset.sum_congr rfl fun τ _ => ?_
    by_cases h : 0 < L τ x <;> simp [h]
  rw [integral_congr_ae hpt, integral_div, integral_finset_sum]
  · simp_rw [integral_indicator_one' _ (measurableSet_lt measurable_const (measurable_L _))]
    simp only [measureReal_def, pi_L_pos]
    rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
    field_simp
  · intro τ _
    exact (integrable_const (1 : ℝ)).indicator (measurableSet_lt measurable_const (measurable_L _))

end BeatAvg
