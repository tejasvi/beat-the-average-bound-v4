import BeatAvg.Prob.Positivity2

/-!
# Lemma 3.1 of the paper
-/

open MeasureTheory ProbabilityTheory Set Finset
open scoped Classical

namespace BeatAvg

variable {k : ℕ}

theorem ne_of_disjoint_orderEmb {J A : Finset (Fin k)} (hd : Disjoint J A) {a b : ℕ} (hJ : J.card = a)
    (hA : A.card = b) : ∀ i j, (J.orderEmbOfFin hJ).toEmbedding i ≠ (A.orderEmbOfFin hA).toEmbedding j := by
  intro i j e
  have h1 := J.orderEmbOfFin_mem hJ i
  have h2 := A.orderEmbOfFin_mem hA j
  simp only [RelEmbedding.coe_toEmbedding] at e
  rw [e] at h1
  exact Finset.disjoint_left.1 hd h1 h2

/-- The integrand of one triple. -/
noncomputable def tripleFun {t m n : ℕ} (F : Fin n → Flag m) (Q : Matrix (Fin n) (Fin n) ℝ)
    (p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k)) (x : Fin k → ℝ) : ℝ :=
  if Generic x then ∑ i, ∑ j, Q i j * (if GivesSub x p.1 p.2.1 (F i) ∧ GivesSub x p.1 p.2.2 (F j) then 1 else 0)
  else 0

theorem tripleFun_integral_nonneg (μ : Measure ℝ) [IsProbabilityMeasure μ]
    (hG : ∀ᵐ x ∂(Measure.pi fun _ : Fin k => μ), Generic x)
    {t m n : ℕ} (ht : t ≤ m) (F : Fin n → Flag m) (Q : Matrix (Fin n) (Fin n) ℝ) (hQ : Q.PosSemidef)
    (p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k)) (hp : IsTriple t m p) :
    Integrable (tripleFun (t := t) F Q p) (Measure.pi fun _ : Fin k => μ) ∧
      0 ≤ ∫ x, tripleFun (t := t) F Q p x ∂(Measure.pi fun _ : Fin k => μ) := by
  obtain ⟨hJ, hA, hB, dJA, dJB, dAB⟩ := hp
  set r := m - t
  let sJ := (p.1.orderEmbOfFin hJ).toEmbedding
  let sA := (p.2.1.orderEmbOfFin hA).toEmbedding
  let sB := (p.2.2.orderEmbOfFin hB).toEmbedding
  have hdJA : ∀ i j, sJ i ≠ sA j := ne_of_disjoint_orderEmb dJA hJ hA
  have hdJB : ∀ i j, sJ i ≠ sB j := ne_of_disjoint_orderEmb dJB hJ hB
  have hdAB : ∀ i j, sA i ≠ sB j := ne_of_disjoint_orderEmb dAB hA hB
  have h0 : (J0 t r ∪ A0 t r).card = m := (card_J0_union_A0 t r).trans (by omega)
  have hcA : (p.1 ∪ p.2.1).card = m := by
    rw [Finset.card_union_of_disjoint dJA, hJ, hA]; omega
  have hcB : (p.1 ∪ p.2.2).card = m := by
    rw [Finset.card_union_of_disjoint dJB, hJ, hB]; omega
  let E : Fin n → Set ((Fin t → ℝ) × (Fin r → ℝ)) := fun i => canonEv h0 (F i)
  have hE : ∀ i, MeasurableSet (E i) := fun i => measurableSet_canonEv h0 (F i)
  let Φ : ((Fin t → ℝ) × (Fin r → ℝ)) × (Fin r → ℝ) → ℝ := fun z =>
    ∑ i, ∑ j, Q i j * ((E i).indicator (fun _ => (1 : ℝ)) z.1 * (E j).indicator (fun _ => (1 : ℝ)) (z.1.1, z.2))
  let Z : (Fin k → ℝ) → ((Fin t → ℝ) × (Fin r → ℝ)) × (Fin r → ℝ) := fun x => ((x ∘ sJ, x ∘ sA), x ∘ sB)
  have hZ : Measurable Z := by
    refine ((Measurable.of_eval fun i => measurable_pi_apply _).prodMk
      (Measurable.of_eval fun i => measurable_pi_apply _)).prodMk (Measurable.of_eval fun i => measurable_pi_apply _)
  have hΦ : Measurable Φ := by
    refine Finset.measurable_sum _ fun i _ => Finset.measurable_sum _ fun j _ => ?_
    refine measurable_const.mul (((measurable_const.indicator (hE i)).comp measurable_fst).mul ?_)
    exact (measurable_const.indicator (hE j)).comp ((measurable_fst.comp measurable_fst).prodMk measurable_snd)
  -- the integrand is Φ ∘ Z almost everywhere
  have hae : tripleFun (t := t) F Q p =ᵐ[Measure.pi fun _ : Fin k => μ] Φ ∘ Z := by
    filter_upwards [hG] with x hx
    simp only [tripleFun, if_pos hx, Function.comp, Φ, Z]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    congr 1
    have h1 := givesSub_iff_canon hx.2.1 sJ sA hdJA p.1 p.2.1 (Finset.map_orderEmbOfFin_univ _ _)
      (Finset.map_orderEmbOfFin_univ _ _) h0 hcA (F i)
    have h2 := givesSub_iff_canon hx.2.1 sJ sB hdJB p.1 p.2.2 (Finset.map_orderEmbOfFin_univ _ _)
      (Finset.map_orderEmbOfFin_univ _ _) h0 hcB (F j)
    by_cases a : (x ∘ sJ, x ∘ sA) ∈ E i <;> by_cases b : (x ∘ sJ, x ∘ sB) ∈ E j <;>
      simp_all [E, Set.indicator]
  have hlaw := map_comp_triple μ sJ sA sB hdJA hdJB hdAB
  -- integrability
  have hbound : ∀ z, ‖Φ z‖ ≤ ∑ i, ∑ j, |Q i j| := by
    intro z
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => (norm_sum_le _ _).trans
      (Finset.sum_le_sum fun j _ => ?_))
    rw [norm_mul, Real.norm_eq_abs]
    refine mul_le_of_le_one_right (abs_nonneg _) ?_
    by_cases a : z.1 ∈ E i <;> by_cases b : (z.1.1, z.2) ∈ E j <;> simp [a, b]
  have hintΦZ : Integrable (Φ ∘ Z) (Measure.pi fun _ : Fin k => μ) :=
    Integrable.of_bound (hΦ.comp hZ).aestronglyMeasurable _ (Filter.Eventually.of_forall fun x => hbound (Z x))
  refine ⟨hintΦZ.congr hae.symm, ?_⟩
  rw [integral_congr_ae hae]
  have hmapint : ∫ x, (Φ ∘ Z) x ∂(Measure.pi fun _ : Fin k => μ) =
      ∫ z, Φ z ∂(((Measure.pi fun _ : Fin t => μ).prod (Measure.pi fun _ : Fin r => μ)).prod
        (Measure.pi fun _ : Fin r => μ)) := by
    rw [← hlaw, integral_map hZ.aemeasurable hΦ.aestronglyMeasurable]
    rfl
  rw [hmapint]
  -- linearity and Fubini for each pair of flags
  have hterm : ∀ i j, Integrable (fun z : ((Fin t → ℝ) × (Fin r → ℝ)) × (Fin r → ℝ) =>
      Q i j * ((E i).indicator (fun _ => (1 : ℝ)) z.1 * (E j).indicator (fun _ => (1 : ℝ)) (z.1.1, z.2)))
      (((Measure.pi fun _ : Fin t => μ).prod (Measure.pi fun _ : Fin r => μ)).prod (Measure.pi fun _ : Fin r => μ)) := by
    intro i j
    refine Integrable.of_bound ?_ |Q i j| (Filter.Eventually.of_forall fun z => ?_)
    · exact (measurable_const.mul (((measurable_const.indicator (hE i)).comp measurable_fst).mul
        ((measurable_const.indicator (hE j)).comp ((measurable_fst.comp measurable_fst).prodMk
          measurable_snd)))).aestronglyMeasurable
    · rw [norm_mul, Real.norm_eq_abs]
      refine mul_le_of_le_one_right (abs_nonneg _) ?_
      by_cases a : z.1 ∈ E i <;> by_cases b : (z.1.1, z.2) ∈ E j <;> simp [a, b]
  simp only [Φ]
  rw [integral_finset_sum _ fun i _ => integrable_finset_sum _ fun j _ => hterm i j]
  simp_rw [integral_finset_sum _ fun j _ => hterm _ j]
  simp_rw [integral_const_mul]
  simp_rw [integral_prod_indicators (Measure.pi fun _ : Fin t => μ) (Measure.pi fun _ : Fin r => μ) (hE _) (hE _)]
  -- Σ Q_ij ∫ φ_i φ_j = ∫ φᵀ Q φ ≥ 0
  let φ : (Fin t → ℝ) → Fin n → ℝ := fun w i => (Measure.pi fun _ : Fin r => μ).real (Prod.mk w ⁻¹' E i)
  have hφm : ∀ i, Measurable fun w => φ w i := fun i => (measurable_measure_prodMk_left (hE i)).ennreal_toReal
  have hint2 : ∀ i j, Integrable (fun w => φ w i * φ w j) (Measure.pi fun _ : Fin t => μ) := by
    intro i j
    refine Integrable.of_bound ((hφm i).mul (hφm j)).aestronglyMeasurable 1 (Filter.Eventually.of_forall fun w => ?_)
    have a0 : 0 ≤ φ w i := measureReal_nonneg
    have a1 : φ w i ≤ 1 := measureReal_le_one
    have b0 : 0 ≤ φ w j := measureReal_nonneg
    have b1 : φ w j ≤ 1 := measureReal_le_one
    rw [norm_mul, Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg a0, abs_of_nonneg b0]
    nlinarith
  have hsum : ∫ w, ∑ i, ∑ j, Q i j * (φ w i * φ w j) ∂(Measure.pi fun _ : Fin t => μ) =
      ∑ i, ∑ j, Q i j * ∫ w, φ w i * φ w j ∂(Measure.pi fun _ : Fin t => μ) := by
    rw [integral_finset_sum]
    · refine Finset.sum_congr rfl fun i _ => ?_
      rw [integral_finset_sum]
      · exact Finset.sum_congr rfl fun j _ => integral_const_mul _ _
      · intro j _; exact (hint2 i j).const_mul _
    · intro i _; exact integrable_finset_sum _ fun j _ => (hint2 i j).const_mul _
  show 0 ≤ ∑ i, ∑ j, Q i j * ∫ w, φ w i * φ w j ∂(Measure.pi fun _ : Fin t => μ)
  rw [← hsum]
  refine integral_nonneg fun w => ?_
  have e : ∑ i, ∑ j, Q i j * (φ w i * φ w j) = dotProduct (star (φ w)) (Matrix.mulVec Q (φ w)) := by
    simp only [star_trivial, dotProduct, Matrix.mulVec, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    ring
  show 0 ≤ ∑ i, ∑ j, Q i j * (φ w i * φ w j)
  rw [e]
  exact hQ.dotProduct_mulVec_nonneg _

end BeatAvg

namespace BeatAvg

variable {k : ℕ}

/-- Lemma 3.1: for a positive semidefinite `Q`, `Σ_M p_μ(M) Σ_{i,j} Q_ij c(F_i, F_j; M) ≥ 0`. -/
theorem flag_positivity (μ : Measure ℝ) [IsProbabilityMeasure μ]
    (hG : ∀ᵐ x ∂(Measure.pi fun _ : Fin k => μ), Generic x)
    {t m n : ℕ} (ht : t ≤ m) (F : Fin n → Flag m) (Q : Matrix (Fin n) (Fin n) ℝ) (hQ : Q.PosSemidef) :
    0 ≤ ∑ M : Pat k, pM μ k M * ∑ i, ∑ j, Q i j * cFlag t m (F i) (F j) M := by
  rw [sum_pM]
  set D : ℝ := ((k.choose t * (k - t).choose (m - t) * (k - m).choose (m - t) : ℕ) : ℝ)
  have hD : 0 ≤ D := Nat.cast_nonneg _
  set T := Finset.univ.filter fun p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k) => IsTriple t m p
  have hpt : ∀ x : Fin k → ℝ, (if Generic x then ∑ i, ∑ j, Q i j * cFlag t m (F i) (F j) (sortedPat x) else 0) =
      D⁻¹ * ∑ p ∈ T, tripleFun (t := t) F Q p x := by
    intro x
    by_cases hx : Generic x
    · rw [if_pos hx]
      have hc : ∀ i j, cFlag t m (F i) (F j) (sortedPat x) =
          D⁻¹ * ∑ p ∈ T, (if GivesSub x p.1 p.2.1 (F i) ∧ GivesSub x p.1 p.2.2 (F j) then (1 : ℝ) else 0) := by
        intro i j
        rw [cFlag, flagCount_sortedPat hx.2.1, Finset.sum_boole, Finset.filter_filter, div_eq_inv_mul]
      let g : Fin n → Fin n → (Finset (Fin k) × Finset (Fin k) × Finset (Fin k)) → ℝ := fun i j p =>
        if GivesSub x p.1 p.2.1 (F i) ∧ GivesSub x p.1 p.2.2 (F j) then (1 : ℝ) else 0
      have step : ∀ f : Fin n → Fin n → (Finset (Fin k) × Finset (Fin k) × Finset (Fin k)) → ℝ,
          ∑ i, ∑ j, ∑ p ∈ T, f i j p = ∑ p ∈ T, ∑ i, ∑ j, f i j p := by
        intro f
        calc ∑ i, ∑ j, ∑ p ∈ T, f i j p = ∑ i, ∑ p ∈ T, ∑ j, f i j p :=
              Finset.sum_congr rfl fun i _ => Finset.sum_comm
          _ = ∑ p ∈ T, ∑ i, ∑ j, f i j p := Finset.sum_comm
      simp only [hc, tripleFun, if_pos hx]
      calc ∑ i, ∑ j, Q i j * (D⁻¹ * ∑ p ∈ T, g i j p)
          = ∑ i, ∑ j, ∑ p ∈ T, D⁻¹ * (Q i j * g i j p) := by
            refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
            rw [Finset.mul_sum, Finset.mul_sum]
            exact Finset.sum_congr rfl fun p _ => by ring
        _ = ∑ p ∈ T, ∑ i, ∑ j, D⁻¹ * (Q i j * g i j p) := step _
        _ = D⁻¹ * ∑ p ∈ T, ∑ i, ∑ j, Q i j * g i j p := by
            rw [Finset.mul_sum]
            refine Finset.sum_congr rfl fun p _ => ?_
            rw [Finset.mul_sum]
            refine Finset.sum_congr rfl fun i _ => ?_
            rw [Finset.mul_sum]
    · rw [if_neg hx]
      simp [tripleFun, hx]
  simp_rw [hpt]
  rw [integral_const_mul, integral_finset_sum]
  · refine mul_nonneg (inv_nonneg.2 hD) (Finset.sum_nonneg fun p hp => ?_)
    exact (tripleFun_integral_nonneg μ hG ht F Q hQ p (Finset.mem_filter.1 hp).2).2
  · intro p hp
    exact (tripleFun_integral_nonneg μ hG ht F Q hQ p (Finset.mem_filter.1 hp).2).1

end BeatAvg
