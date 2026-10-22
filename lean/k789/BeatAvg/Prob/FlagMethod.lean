import BeatAvg.Prob.Perturb

/-!
# Theorem 3.3 of the paper: `FlagMethodSound k` for `k ≥ 4`; the random-variable and supremum forms
-/

open MeasureTheory ProbabilityTheory Set
open scoped ENNReal

universe u

namespace BeatAvg

/-- Theorem 3.3 of the paper (with `P = R_k`). -/
theorem flagMethodSound {k : ℕ} (hk : 4 ≤ k) : FlagMethodSound k := by
  intro blocks hpsd lam hval
  apply upperBound_of_atomless
  intro ν hν hns h0
  obtain ⟨n, rfl⟩ : ∃ n, k = n + 1 := ⟨k - 1, by omega⟩
  exact bound_of_generic hk blocks hpsd lam hval ν (ae_generic ν h0)

/-- The random-variable form follows from the measure form. -/
theorem upperBoundRV_of_upperBound {lam : ℝ} (h : UpperBound lam) : UpperBoundRV.{u} lam := by
  intro Ω _ P _ X hX hind hid hnn
  set μ := P.map (X 0)
  have hpi : P.map (fun ω i => X i ω) = Measure.pi fun _ : Fin 4 => μ := by
    rw [(iIndepFun_iff_map_fun_eq_pi_map fun i => (hX i).aemeasurable).1 hind]
    congr 1
    funext i
    exact hid i
  have hμ0 : μ (Iio 0) = 0 := by
    rw [Measure.map_apply (hX 0) measurableSet_Iio]
    have := hnn 0
    rw [ae_iff] at this
    have e : X 0 ⁻¹' Iio 0 = {a | ¬ 0 ≤ X 0 a} := by ext a; simp
    rw [e]; exact this
  have hb := h μ inferInstance hμ0
  have hset : {ω | X 0 ω + X 1 ω + X 2 ω < 2 * X 3 ω} = (fun ω i => X i ω) ⁻¹' beatSet := by
    ext ω; simp [beatSet]
  rw [hset, ← Measure.map_apply (Measurable.of_eval fun i => hX i) measurableSet_beatSet, hpi]
  exact hb

end BeatAvg
