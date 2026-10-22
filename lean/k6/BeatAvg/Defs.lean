import Mathlib

/-!
# The beat the average constant (Problem 6.39 of Georgiev, Gomez-Serrano, Tao and Wagner)

For a probability measure `μ` on `[0, ∞)` let `X₁, …, X₄` be independent with law `μ`, and put
`P(μ) = ℙ[X₁ + X₂ + X₃ < 2 X₄]` and `C = sup_μ P(μ)`.

The four sample values are indexed `0, 1, 2, 3` here, and their joint law is the product measure
`Measure.pi (fun _ : Fin 4 => μ)`.
-/

open MeasureTheory ProbabilityTheory Set
open scoped ENNReal

namespace BeatAvg

/-- The event `X₁ + X₂ + X₃ < 2 X₄`, for the values `x 0, x 1, x 2, x 3`. -/
def beatSet : Set (Fin 4 → ℝ) := {x | x 0 + x 1 + x 2 < 2 * x 3}

/-- `P(μ) = ℙ[X₁ + X₂ + X₃ < 2 X₄]` for independent `X₁, …, X₄` with law `μ`. -/
noncomputable def beatProb (μ : Measure ℝ) : ℝ≥0∞ :=
  Measure.pi (fun _ : Fin 4 => μ) beatSet

/-- `C = sup P(μ)` over the probability measures `μ` on `[0, ∞)`, that is, with `μ (-∞, 0) = 0`. -/
noncomputable def C639 : ℝ :=
  ⨆ μ : {μ : ProbabilityMeasure ℝ // (μ : Measure ℝ) (Iio 0) = 0}, (beatProb (μ.1 : Measure ℝ)).toReal

/-- `UpperBound lam`: every probability measure `μ` on `[0, ∞)` has `P(μ) ≤ lam`. -/
def UpperBound (lam : ℝ) : Prop :=
  ∀ μ : Measure ℝ, IsProbabilityMeasure μ → μ (Iio 0) = 0 → beatProb μ ≤ ENNReal.ofReal lam

/-- The same bound for random variables: if `X 0, …, X 3` are independent, identically distributed and
nonnegative almost surely, then `ℙ[X 0 + X 1 + X 2 < 2 X 3] ≤ lam`. -/
def UpperBoundRV (lam : ℝ) : Prop :=
  ∀ (Ω : Type*) [MeasurableSpace Ω] (P : Measure Ω) [IsProbabilityMeasure P] (X : Fin 4 → Ω → ℝ),
    (∀ i, Measurable (X i)) → iIndepFun X P → (∀ i, P.map (X i) = P.map (X 0)) →
    (∀ i, ∀ᵐ ω ∂P, 0 ≤ X i ω) →
    P {ω | X 0 ω + X 1 ω + X 2 ω < 2 * X 3 ω} ≤ ENNReal.ofReal lam

end BeatAvg
