import BeatAvg.Prob.SubFlag

/-!
# Positivity from independence (Lemma 3.1 of the paper)

For an atomless probability measure `μ` on `(0, ∞)`, flags `F_i` of size `m` with `t` marked points (`2m - t ≤ k`),
and a positive semidefinite matrix `Q`, `Σ_M p_μ(M) Σ_{i,j} Q_ij c(F_i, F_j; M) ≥ 0`.
-/

open MeasureTheory ProbabilityTheory Set Finset

namespace BeatAvg

variable {k : ℕ}

/-- The counts of triples through sub-sample flags (the renaming `σ = sort x`). -/
theorem flagCount_sortedPat {t m : ℕ} {x : Fin k → ℝ} (hx : Function.Injective x) (F G : Flag m) :
    flagCount t m F G (sortedPat x) = (Finset.univ.filter fun p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k) =>
      IsTriple t m p ∧ GivesSub x p.1 p.2.1 F ∧ GivesSub x p.1 p.2.2 G).card := by
  classical
  set σ := Tuple.sort x
  let φ : Finset (Fin k) × Finset (Fin k) × Finset (Fin k) → Finset (Fin k) × Finset (Fin k) × Finset (Fin k) :=
    fun p => (p.1.map σ.toEmbedding, p.2.1.map σ.toEmbedding, p.2.2.map σ.toEmbedding)
  have hcard : ∀ J A : Finset (Fin k), (J.map σ.toEmbedding ∪ A.map σ.toEmbedding).card = (J ∪ A).card := by
    intro J A; rw [← Finset.map_union, Finset.card_map]
  have hgive : ∀ J A : Finset (Fin k), ∀ F : Flag m,
      GivesFlag (sortedPat x) J A F ↔ GivesSub x (J.map σ.toEmbedding) (A.map σ.toEmbedding) F := by
    intro J A F
    constructor
    · rintro ⟨h, hF⟩
      refine ⟨(hcard J A).trans h, ?_⟩
      rw [← flagOf_sortedPat hx J A h]; exact hF
    · rintro ⟨h', hF⟩
      refine ⟨(hcard J A).symm.trans h', ?_⟩
      rw [flagOf_sortedPat hx J A _ h']; exact hF
  have htrip : ∀ p, IsTriple t m (φ p) ↔ IsTriple t m p := by
    intro p
    simp only [IsTriple, φ, Finset.card_map, Finset.disjoint_map]
  unfold flagCount
  apply Finset.card_bij (fun p _ => φ p)
  · intro p hp
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hp ⊢
    exact ⟨(htrip p).2 hp.1, (hgive _ _ _).1 hp.2.1, (hgive _ _ _).1 hp.2.2⟩
  · intro p _ q _ h
    simp only [φ, Prod.mk.injEq] at h
    exact Prod.ext (Finset.map_injective _ h.1)
      (Prod.ext (Finset.map_injective _ h.2.1) (Finset.map_injective _ h.2.2))
  · intro q hq
    refine ⟨(q.1.map σ.symm.toEmbedding, q.2.1.map σ.symm.toEmbedding, q.2.2.map σ.symm.toEmbedding), ?_, ?_⟩
    · have hφ : φ (q.1.map σ.symm.toEmbedding, q.2.1.map σ.symm.toEmbedding, q.2.2.map σ.symm.toEmbedding) = q := by
        simp only [φ, Finset.map_map]
        ext <;> simp
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hq ⊢
      rw [← htrip, hφ]
      refine ⟨hq.1, ?_, ?_⟩
      · rw [hgive]; simp only [φ, Finset.map_map] at hφ ⊢
        convert hq.2.1 <;> ext <;> simp
      · rw [hgive]; simp only [Finset.map_map]
        convert hq.2.2 <;> ext <;> simp
    · simp only [φ, Finset.map_map]
      ext <;> simp

end BeatAvg
