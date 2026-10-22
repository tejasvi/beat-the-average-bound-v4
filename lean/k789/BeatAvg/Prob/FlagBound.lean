import BeatAvg.Prob.Positivity3

/-!
# Theorem 3.3 of the paper for atomless measures on `(0, ∞)`
-/

open MeasureTheory Set Finset

namespace BeatAvg

variable {k : ℕ}

theorem sum_pM_list (μ : Measure ℝ) (g : Block k → Pat k → ℝ) :
    ∀ l : List (Block k), ∑ M : Pat k, pM μ k M * (l.map fun B => g B M).sum =
      (l.map fun B => ∑ M : Pat k, pM μ k M * g B M).sum
  | [] => by simp
  | B :: l => by
    simp only [List.map_cons, List.sum_cons, mul_add, Finset.sum_add_distrib]
    rw [sum_pM_list μ g l]

/-- Theorem 3.3 for a measure under which samples are generic almost surely. -/
theorem bound_of_generic (hk : 4 ≤ k) (blocks : List (Block k)) (hpsd : ∀ B ∈ blocks, B.Q.PosSemidef)
    (lam : ℝ) (hval : ∀ M : Pat k, Realizable M → val blocks M ≤ lam) (μ : Measure ℝ) [IsProbabilityMeasure μ]
    (hG : ∀ᵐ x ∂(Measure.pi fun _ : Fin k => μ), Generic x) : (beatProb μ).toReal ≤ lam := by
  rw [beatProb_eq_sum μ hk hG]
  have hpos : 0 ≤ ∑ M : Pat k, pM μ k M *
      (blocks.map fun B => ∑ i, ∑ j, B.Q i j * cFlag B.t B.m (B.flags i) (B.flags j) M).sum := by
    rw [sum_pM_list]
    refine List.sum_nonneg fun z hz => ?_
    obtain ⟨B, hB, rfl⟩ := List.mem_map.1 hz
    exact flag_positivity μ hG B.ht B.flags B.Q (hpsd B hB)
  have h1 : ∑ M : Pat k, pM μ k M * dens M ≤ ∑ M : Pat k, pM μ k M * val blocks M := by
    have : ∑ M : Pat k, pM μ k M * val blocks M = ∑ M : Pat k, pM μ k M * dens M + ∑ M : Pat k, pM μ k M *
        (blocks.map fun B => ∑ i, ∑ j, B.Q i j * cFlag B.t B.m (B.flags i) (B.flags j) M).sum := by
      rw [← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun M _ => ?_
      rw [val, mul_add]
    linarith
  have h2 : ∑ M : Pat k, pM μ k M * val blocks M ≤ ∑ M : Pat k, pM μ k M * lam := by
    refine Finset.sum_le_sum fun M _ => ?_
    by_cases hM : pM μ k M = 0
    · simp [hM]
    · exact mul_le_mul_of_nonneg_left (hval M (realizable_of_pM_ne_zero hM)) (pM_nonneg μ M)
  have h3 : ∑ M : Pat k, pM μ k M * lam = lam := by
    rw [← Finset.sum_mul, sum_pM_eq_one μ hG, one_mul]
  linarith

end BeatAvg
