import BeatAvg.Prob.FlagBound

/-!
# Reduction to atomless measures on `(0, ∞)` (Lemma 2.1 of the paper)

For `ε > 0` let `μ_ε` be the law of `X + ε (1 + U)`, with `U` uniform on `[0, 1]` and independent of `X ~ μ`. It has
no atoms, it lives on `[ε, ∞)`, and `P(μ_ε) ≥ ℙ[X₁ + X₂ + X₃ - 2X₄ < -4ε]`, which tends to `P(μ)` as `ε → 0`.
-/

open MeasureTheory Set Filter Topology
open scoped ENNReal

namespace BeatAvg

/-- The uniform law on `[0, 1]`. -/
noncomputable def unif01 : Measure ℝ := volume.restrict (Icc 0 1)

instance : IsProbabilityMeasure unif01 :=
  ⟨by simp [unif01, Measure.restrict_apply MeasurableSet.univ, Real.volume_Icc]⟩

instance : NullSingletonClass unif01 :=
  ⟨fun x => le_antisymm ((Measure.restrict_apply_le _ _).trans (measure_singleton x).le) zero_le⟩

/-- The map `(x, u) ↦ x + ε (1 + u)`. -/
def pertFun (ε : ℝ) (p : ℝ × ℝ) : ℝ := p.1 + ε * (1 + p.2)

theorem measurable_pertFun (ε : ℝ) : Measurable (pertFun ε) := by unfold pertFun; fun_prop

/-- The law `μ_ε` of `X + ε (1 + U)`. -/
noncomputable def perturb (μ : Measure ℝ) (ε : ℝ) : Measure ℝ := (μ.prod unif01).map (pertFun ε)

variable (μ : Measure ℝ) [IsProbabilityMeasure μ]

instance (ε : ℝ) : IsProbabilityMeasure (perturb μ ε) :=
  by unfold perturb; infer_instance

theorem perturb_singleton {ε : ℝ} (hε : 0 < ε) (a : ℝ) : perturb μ ε {a} = 0 := by
  rw [perturb, Measure.map_apply (measurable_pertFun ε) (measurableSet_singleton a),
    Measure.prod_apply (measurable_pertFun ε (measurableSet_singleton a))]
  have : ∀ x : ℝ, unif01 (Prod.mk x ⁻¹' (pertFun ε ⁻¹' {a})) = 0 := by
    intro x
    have hset : Prod.mk x ⁻¹' (pertFun ε ⁻¹' {a}) = {(a - x) / ε - 1} := by
      ext u
      simp only [Set.mem_preimage, Set.mem_singleton_iff, pertFun]
      constructor
      · intro h; field_simp; linarith
      · intro h; rw [h]; field_simp; ring
    rw [hset, measure_singleton]
  simp [this]

theorem perturb_nullSingleton {ε : ℝ} (hε : 0 < ε) : NullSingletonClass (perturb μ ε) :=
  ⟨perturb_singleton μ hε⟩

theorem perturb_Iic {ε : ℝ} (hε : 0 < ε) (h0 : μ (Iio 0) = 0) : perturb μ ε (Iic 0) = 0 := by
  rw [perturb, Measure.map_apply (measurable_pertFun ε) measurableSet_Iic]
  have hsub : pertFun ε ⁻¹' Iic 0 ⊆ (Iio 0 ×ˢ univ) ∪ (univ ×ˢ (Icc (0 : ℝ) 1)ᶜ) := by
    intro p hp
    simp only [Set.mem_preimage, Set.mem_Iic, pertFun] at hp
    by_contra hc
    simp only [Set.mem_union, Set.mem_prod, Set.mem_Iio, Set.mem_univ, and_true, true_and, Set.mem_compl_iff,
      not_or, not_lt, not_not, Set.mem_Icc] at hc
    obtain ⟨h1, h2, h3⟩ := hc
    nlinarith
  refine measure_mono_null hsub (measure_union_null ?_ ?_)
  · rw [Measure.prod_prod, h0, zero_mul]
  · rw [Measure.prod_prod]
    have : unif01 (Icc (0 : ℝ) 1)ᶜ = 0 := by
      rw [unif01, Measure.restrict_apply measurableSet_Icc.compl]; simp
    rw [this, mul_zero]

/-- `s(x) = x₀ + x₁ + x₂ - 2 x₃`. -/
def sFun (x : Fin 4 → ℝ) : ℝ := x 0 + x 1 + x 2 - 2 * x 3

theorem measurable_sFun : Measurable sFun := by unfold sFun; fun_prop

theorem perturb_lower {ε : ℝ} (hε : 0 < ε) :
    Measure.pi (fun _ : Fin 4 => μ) {x | sFun x < -4 * ε} ≤ beatProb (perturb μ ε) := by
  have hpi : Measure.pi (fun _ : Fin 4 => perturb μ ε) =
      (Measure.pi fun _ : Fin 4 => μ.prod unif01).map (fun z i => pertFun ε (z i)) := by
    rw [perturb, Measure.pi_map_pi (fun i => (measurable_pertFun ε).aemeasurable)]
  have hmz : Measurable fun z : Fin 4 → ℝ × ℝ => fun i => pertFun ε (z i) :=
    Measurable.of_eval fun i => (measurable_pertFun ε).comp (measurable_pi_apply i)
  have hbs : MeasurableSet beatSet := measurableSet_beatSet
  unfold beatProb
  rw [hpi, Measure.map_apply hmz hbs]
  have hmp := measurePreserving_arrowProdEquivProdArrow ℝ ℝ (Fin 4) (fun _ => μ) (fun _ => unif01)
  let A : Set (Fin 4 → ℝ) := {x | sFun x < -4 * ε}
  let B : Set (Fin 4 → ℝ) := Set.univ.pi fun _ => Icc 0 1
  have hA : MeasurableSet A := measurableSet_lt measurable_sFun measurable_const
  have hB : MeasurableSet B := MeasurableSet.univ_pi fun _ => measurableSet_Icc
  have hsub : (MeasurableEquiv.arrowProdEquivProdArrow ℝ ℝ (Fin 4)) ⁻¹' (A ×ˢ B) ⊆
      (fun z : Fin 4 → ℝ × ℝ => fun i => pertFun ε (z i)) ⁻¹' beatSet := by
    intro z hz
    simp only [Set.mem_preimage, Set.mem_prod, MeasurableEquiv.arrowProdEquivProdArrow,
      MeasurableEquiv.coe_mk, Equiv.arrowProdEquivProdArrow, Equiv.coe_fn_mk, A, B, Set.mem_setOf_eq,
      Set.mem_univ_pi, Set.mem_Icc, sFun] at hz
    obtain ⟨hs, hu⟩ := hz
    simp only [Set.mem_preimage, beatSet, Set.mem_setOf_eq, pertFun]
    have h0 := hu 0; have h1 := hu 1; have h2 := hu 2; have h3 := hu 3
    nlinarith [h0.1, h0.2, h1.1, h1.2, h2.1, h2.2, h3.1, h3.2]
  calc Measure.pi (fun _ : Fin 4 => μ) A
      = Measure.pi (fun _ : Fin 4 => μ) A * Measure.pi (fun _ : Fin 4 => unif01) B := by
        rw [Measure.pi_pi]; simp [unif01, Measure.restrict_apply measurableSet_Icc, Real.volume_Icc]
    _ = ((Measure.pi fun _ : Fin 4 => μ).prod (Measure.pi fun _ : Fin 4 => unif01)) (A ×ˢ B) :=
        (Measure.prod_prod _ _).symm
    _ = (Measure.pi fun _ : Fin 4 => μ.prod unif01) ((MeasurableEquiv.arrowProdEquivProdArrow ℝ ℝ (Fin 4)) ⁻¹' (A ×ˢ B)) :=
        (hmp.measure_preimage (hA.prod hB).nullMeasurableSet).symm
    _ ≤ _ := measure_mono hsub

/-- Lemma 2.1: a bound for every atomless probability measure on `(0, ∞)` holds for every probability measure on
`[0, ∞)`. -/
theorem upperBound_of_atomless (lam : ℝ)
    (h : ∀ ν : Measure ℝ, IsProbabilityMeasure ν → NullSingletonClass ν → ν (Iic 0) = 0 →
      (beatProb ν).toReal ≤ lam) : UpperBound lam := by
  intro μ hμ h0
  have hlam : 0 ≤ lam := by
    have := h (perturb μ 1) inferInstance (perturb_nullSingleton μ one_pos) (perturb_Iic μ one_pos h0)
    exact le_trans ENNReal.toReal_nonneg this
  let A : ℕ → Set (Fin 4 → ℝ) := fun n => {x | sFun x < -4 * (1 / ((n : ℝ) + 1))}
  have hmono : Monotone A := by
    intro n n' hnn' x hx
    simp only [A, Set.mem_setOf_eq] at hx ⊢
    have h1 : (1 : ℝ) / ((n' : ℝ) + 1) ≤ 1 / ((n : ℝ) + 1) :=
      one_div_le_one_div_of_le (by positivity) (by exact_mod_cast Nat.add_le_add_right hnn' 1)
    linarith
  have hunion : (⋃ n, A n) = beatSet := by
    ext x
    simp only [Set.mem_iUnion, A, Set.mem_setOf_eq, beatSet, sFun]
    constructor
    · rintro ⟨n, hn⟩
      have : (0 : ℝ) < 1 / ((n : ℝ) + 1) := by positivity
      linarith
    · intro hx
      have hpos : 0 < -(x 0 + x 1 + x 2 - 2 * x 3) / 4 := by linarith
      obtain ⟨n, hn⟩ := exists_nat_one_div_lt hpos
      exact ⟨n, by linarith⟩
  have hle : ∀ n, Measure.pi (fun _ : Fin 4 => μ) (A n) ≤ ENNReal.ofReal lam := by
    intro n
    have hε : (0 : ℝ) < 1 / ((n : ℝ) + 1) := by positivity
    refine (perturb_lower μ hε).trans ?_
    have hb := h (perturb μ _) inferInstance (perturb_nullSingleton μ hε) (perturb_Iic μ hε h0)
    exact (ENNReal.le_ofReal_iff_toReal_le (by unfold beatProb; exact measure_ne_top _ _) hlam).2 hb
  unfold beatProb
  rw [← hunion, hmono.measure_iUnion]
  exact iSup_le hle

end BeatAvg
