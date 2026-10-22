import BeatAvg.Defs

/-!
# Sign patterns, flags and the flag bound (Sections 2 and 3 of the paper)

Definitions only. Points of a `k`-sample are `0, …, k-1` (`Fin k`).
-/

open MeasureTheory Finset

namespace BeatAvg

/-- `T_k`: the tuples `(d; a, b, c)` of points of `Fin k` with `a < b < c` and `d ∉ {a, b, c}`,
as a subtype of `Fin k × Fin k × Fin k × Fin k` with components `(d, a, b, c)`. -/
def Tup (k : ℕ) := {τ : Fin k × Fin k × Fin k × Fin k //
  τ.2.1 < τ.2.2.1 ∧ τ.2.2.1 < τ.2.2.2 ∧ τ.1 ≠ τ.2.1 ∧ τ.1 ≠ τ.2.2.1 ∧ τ.1 ≠ τ.2.2.2}

instance (k : ℕ) : Fintype (Tup k) := by unfold Tup; infer_instance
instance (k : ℕ) : DecidableEq (Tup k) := by unfold Tup; infer_instance

namespace Tup
variable {k : ℕ}
/-- The point `d` of `(d; a, b, c)`. -/
def d (τ : Tup k) : Fin k := τ.1.1
/-- The point `a` of `(d; a, b, c)`. -/
def a (τ : Tup k) : Fin k := τ.1.2.1
/-- The point `b` of `(d; a, b, c)`. -/
def b (τ : Tup k) : Fin k := τ.1.2.2.1
/-- The point `c` of `(d; a, b, c)`. -/
def c (τ : Tup k) : Fin k := τ.1.2.2.2

/-- The image of a tuple under an order embedding `Fin m ↪o Fin k`. -/
def map {m : ℕ} (e : Fin m ↪o Fin k) (τ : Tup m) : Tup k :=
  ⟨(e τ.d, e τ.a, e τ.b, e τ.c),
    e.strictMono τ.2.1, e.strictMono τ.2.2.1,
    fun h => τ.2.2.2.1 (e.injective h), fun h => τ.2.2.2.2.1 (e.injective h),
    fun h => τ.2.2.2.2.2 (e.injective h)⟩
end Tup

/-- `L_τ(x) = 2 x_d - x_a - x_b - x_c`. -/
def L {k : ℕ} (τ : Tup k) (x : Fin k → ℝ) : ℝ := 2 * x τ.d - x τ.a - x τ.b - x τ.c

/-- A `k`-pattern: a sign vector on `T_k`; `true` at `τ` means `L_τ > 0`. -/
abbrev Pat (k : ℕ) := Tup k → Bool

/-- The pattern of `y`, read with the points in their given order (applied to increasing `y`). -/
noncomputable def patOf {k : ℕ} (y : Fin k → ℝ) : Pat k := fun τ => decide (0 < L τ y)

/-- A generic point: positive and pairwise distinct coordinates, and `L_τ ≠ 0` for every `τ`. -/
def Generic {k : ℕ} (x : Fin k → ℝ) : Prop :=
  (∀ i, 0 < x i) ∧ Function.Injective x ∧ ∀ τ : Tup k, L τ x ≠ 0

/-- `R_k`: the patterns of increasing generic points. -/
def Realizable {k : ℕ} (M : Pat k) : Prop :=
  ∃ y : Fin k → ℝ, StrictMono y ∧ Generic y ∧ patOf y = M

/-- The pattern `π(x)` of an arbitrary point: the pattern of its increasing rearrangement. -/
noncomputable def sortedPat {k : ℕ} (x : Fin k → ℝ) : Pat k := patOf (x ∘ Tuple.sort x)

/-- Restriction of a `k`-pattern to the points `e 0 < … < e (m-1)`. -/
def restrict {m k : ℕ} (e : Fin m ↪o Fin k) (M : Pat k) : Pat m := fun τ => M (τ.map e)

/-- The density `d(M) = |T_k|⁻¹ · #{τ | M τ}` (`0` when `T_k` is empty). -/
noncomputable def dens {k : ℕ} (M : Pat k) : ℝ :=
  ((univ.filter fun τ => M τ = true).card : ℝ) / Fintype.card (Tup k)

/-- A flag of size `m`: an `m`-pattern and a set of marked positions. -/
abbrev Flag (m : ℕ) := Pat m × Finset (Fin m)

/-- `fl(M; J, A)`: the restriction of `M` to `J ∪ A` (of size `m`) with the positions of `J` marked. -/
def flagOf {k m : ℕ} (M : Pat k) (J A : Finset (Fin k)) (h : (J ∪ A).card = m) : Flag m :=
  (restrict ((J ∪ A).orderEmbOfFin h) M, univ.filter fun i => (J ∪ A).orderEmbOfFin h i ∈ J)

/-- `(J, A)` gives the flag `F` in `M`. -/
def GivesFlag {k m : ℕ} (M : Pat k) (J A : Finset (Fin k)) (F : Flag m) : Prop :=
  ∃ h : (J ∪ A).card = m, flagOf M J A h = F

noncomputable instance {k m : ℕ} (M : Pat k) (J A : Finset (Fin k)) (F : Flag m) :
    Decidable (GivesFlag M J A F) := Classical.dec _

/-- The triples `(J, A, B)` of pairwise disjoint sets of points with `|J| = t`, `|A| = |B| = m - t`. -/
def IsTriple {k : ℕ} (t m : ℕ) (p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k)) : Prop :=
  p.1.card = t ∧ p.2.1.card = m - t ∧ p.2.2.card = m - t ∧
    Disjoint p.1 p.2.1 ∧ Disjoint p.1 p.2.2 ∧ Disjoint p.2.1 p.2.2

noncomputable instance {k : ℕ} (t m : ℕ) (p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k)) :
    Decidable (IsTriple t m p) := Classical.dec _

/-- The number of triples `(J, A, B)` with `fl(M; J, A) = F` and `fl(M; J, B) = G`. -/
noncomputable def flagCount {k : ℕ} (t m : ℕ) (F G : Flag m) (M : Pat k) : ℕ :=
  (univ.filter fun p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k) =>
    IsTriple t m p ∧ GivesFlag M p.1 p.2.1 F ∧ GivesFlag M p.1 p.2.2 G).card

/-- `c(F, G; M)`: `flagCount` divided by the number `D = C(k,t) C(k-t,m-t) C(k-m,m-t)` of triples. -/
noncomputable def cFlag {k : ℕ} (t m : ℕ) (F G : Flag m) (M : Pat k) : ℝ :=
  (flagCount t m F G M : ℝ) / ((k.choose t * (k - t).choose (m - t) * (k - m).choose (m - t) : ℕ) : ℝ)

/-- A block of a certificate: `n` flags of size `m` with `t` marked points (`2m - t ≤ k`) and a matrix. -/
structure Block (k : ℕ) where
  t : ℕ
  m : ℕ
  n : ℕ
  flags : Fin n → Flag m
  Q : Matrix (Fin n) (Fin n) ℝ
  ht : t ≤ m
  hk : 2 * m - t ≤ k

/-- `val(M) = d(M) + Σ_b Σ_{F,G} (Q_b)_{FG} c(F, G; M)` (paper, (3.3)). -/
noncomputable def val {k : ℕ} (blocks : List (Block k)) (M : Pat k) : ℝ :=
  dens M + (blocks.map fun B => ∑ i, ∑ j, B.Q i j * cFlag B.t B.m (B.flags i) (B.flags j) M).sum

/-- Theorem 3.3 of the paper for `k` sample points, with `P = R_k`: positive semidefinite blocks and
`val ≤ lam` on the realizable `k`-patterns give `P(μ) ≤ lam` for every `μ`. -/
def FlagMethodSound (k : ℕ) : Prop :=
  ∀ blocks : List (Block k), (∀ B ∈ blocks, B.Q.PosSemidef) → ∀ lam : ℝ,
    (∀ M : Pat k, Realizable M → val blocks M ≤ lam) → UpperBound lam

end BeatAvg
