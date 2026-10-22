import BeatAvg.Pattern

/-!
# Marginals of product measures

For a probability measure `μ` on `ℝ` and an injective map `s : Fin n → Fin k`, the law of `x ∘ s` under `μ^k` is
`μ^n`.
-/

open MeasureTheory Set

namespace BeatAvg

theorem pi_map_comp_injective {k n : ℕ} (μ : Measure ℝ) [IsProbabilityMeasure μ] (s : Fin n → Fin k)
    (hs : Function.Injective s) :
    (Measure.pi (fun _ : Fin k => μ)).map (fun x => x ∘ s) = Measure.pi (fun _ : Fin n => μ) := by
  classical
  have hmeas : Measurable fun x : Fin k → ℝ => x ∘ s := Measurable.of_eval fun i => measurable_pi_apply _
  refine (Measure.pi_eq fun S hS => ?_).symm
  rw [Measure.map_apply hmeas (MeasurableSet.univ_pi hS)]
  -- the preimage is a box
  let S' : Fin k → Set ℝ := fun j => if h : ∃ i, s i = j then S h.choose else univ
  have hpre : (fun x : Fin k → ℝ => x ∘ s) ⁻¹' univ.pi S = univ.pi S' := by
    ext x
    simp only [mem_preimage, mem_univ_pi, Function.comp, S']
    constructor
    · intro hx j
      split
      · rename_i h
        have := hx h.choose
        rwa [h.choose_spec] at this
      · trivial
    · intro hx i
      have h : ∃ i', s i' = s i := ⟨i, rfl⟩
      have := hx (s i)
      rw [dif_pos h] at this
      rwa [hs h.choose_spec] at this
  rw [hpre, Measure.pi_pi]
  have hS' : ∀ j, μ (S' j) = if h : ∃ i, s i = j then μ (S h.choose) else 1 := by
    intro j
    simp only [S']
    split <;> simp
  simp only [hS']
  rw [← Finset.prod_subset (Finset.subset_univ (Finset.univ.image s))]
  · rw [Finset.prod_image (fun a _ b _ h => hs h)]
    refine Finset.prod_congr rfl fun i _ => ?_
    have h : ∃ i', s i' = s i := ⟨i, rfl⟩
    rw [dif_pos h, hs h.choose_spec]
  · intro j _ hj
    rw [dif_neg]
    rintro ⟨i, rfl⟩
    exact hj (Finset.mem_image_of_mem s (Finset.mem_univ i))

theorem pi_preimage_comp_injective {k n : ℕ} (μ : Measure ℝ) [IsProbabilityMeasure μ] (s : Fin n → Fin k)
    (hs : Function.Injective s) {A : Set (Fin n → ℝ)} (hA : MeasurableSet A) :
    Measure.pi (fun _ : Fin k => μ) ((fun x => x ∘ s) ⁻¹' A) = Measure.pi (fun _ : Fin n => μ) A := by
  rw [← pi_map_comp_injective μ s hs, Measure.map_apply _ hA]
  exact Measurable.of_eval fun i => measurable_pi_apply _

end BeatAvg
