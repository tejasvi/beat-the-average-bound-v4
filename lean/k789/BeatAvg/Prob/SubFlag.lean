import BeatAvg.Prob.Average

/-!
# Flags of sub-samples (proof of Lemma 3.1 of the paper, first part)

`subFlag x J A` is the flag formed by the values of `x` on `J ∪ A`, read in increasing order, with the values on
`J` marked. For a sample `x` with distinct values it depends only on the two value sets, so it is unchanged when
the points are renamed; and the flags of the sorted pattern are the flags of the sub-samples of `x`.
-/

open MeasureTheory Set Finset

namespace BeatAvg

variable {k : ℕ}

/-- Strictly increasing functions on `Fin m` with the same range are equal. -/
theorem strictMono_eq_of_range {m : ℕ} {f g : Fin m → ℝ} (hf : StrictMono f) (hg : StrictMono g)
    (h : Set.range f = Set.range g) : f = g :=
  (StrictMono.range_inj_of_wellFoundedLT hf hg).1 h

/-- The flag of the sub-sample on `J ∪ A` (of size `m`): its sorted pattern, and the positions of the values on `J`. -/
noncomputable def subFlag {m : ℕ} (x : Fin k → ℝ) (J A : Finset (Fin k)) (h : (J ∪ A).card = m) : Flag m :=
  (sortedPat (x ∘ (J ∪ A).orderEmbOfFin h),
    univ.filter fun i => (J ∪ A).orderEmbOfFin h (Tuple.sort (x ∘ (J ∪ A).orderEmbOfFin h) i) ∈ J)

/-- `(J, A)` gives the flag `F` in the sample `x`. -/
def GivesSub {m : ℕ} (x : Fin k → ℝ) (J A : Finset (Fin k)) (F : Flag m) : Prop :=
  ∃ h : (J ∪ A).card = m, subFlag x J A h = F

noncomputable instance {m : ℕ} (x : Fin k → ℝ) (J A : Finset (Fin k)) (F : Flag m) :
    Decidable (GivesSub x J A F) := Classical.dec _

theorem range_sub_sorted {m : ℕ} (U : Finset (Fin k)) (h : U.card = m) (x : Fin k → ℝ) :
    Set.range (x ∘ (U.orderEmbOfFin h ∘ Tuple.sort (x ∘ U.orderEmbOfFin h))) = x '' (U : Set (Fin k)) := by
  rw [Set.range_comp, Set.range_comp, Equiv.range_eq_univ, Set.image_univ, Finset.range_orderEmbOfFin]

theorem image_map_union {n : ℕ} (s : Fin n ↪ Fin k) (J A : Finset (Fin n)) :
    (s : Fin n → Fin k) '' ((J ∪ A : Finset (Fin n)) : Set (Fin n)) = ((J.map s ∪ A.map s : Finset (Fin k)) : Set (Fin k)) := by
  rw [Finset.coe_union, Finset.coe_union, Finset.coe_map, Finset.coe_map, Set.image_union]

/-- The sorted enumerations of two sub-samples with the same value set agree, as maps into the points. -/
theorem range_comp_perm {α : Type*} {m : ℕ} (e : Fin m → α) (σ : Equiv.Perm (Fin m)) :
    Set.range (e ∘ σ) = Set.range e := by
  rw [Set.range_comp, Equiv.range_eq_univ, Set.image_univ]

theorem sorted_maps_eq {m : ℕ} {x : Fin k → ℝ} (hx : Function.Injective x) (g1 : Fin m → Fin k)
    (g2 : Fin m → Fin k) (h1 : StrictMono (x ∘ g1)) (h2 : StrictMono (x ∘ g2))
    (h : Set.range (x ∘ g1) = Set.range (x ∘ g2)) : g1 = g2 := by
  have := strictMono_eq_of_range h1 h2 h
  funext i
  exact hx (congrFun this i)

/-- `subFlag` depends only on the value sets: renaming points by an injection does not change it. -/
theorem subFlag_comp {n m : ℕ} {x : Fin k → ℝ} (hx : Function.Injective x) (s : Fin n ↪ Fin k)
    (J A : Finset (Fin n)) (h : (J ∪ A).card = m) (h' : (J.map s ∪ A.map s).card = m) :
    subFlag (x ∘ s) J A h = subFlag x (J.map s) (A.map s) h' := by
  have hxs : Function.Injective (x ∘ s) := hx.comp s.injective
  set e0 := (J ∪ A).orderEmbOfFin h
  set e1 := (J.map s ∪ A.map s).orderEmbOfFin h'
  set σ0 := Tuple.sort (x ∘ s ∘ e0)
  set σ1 := Tuple.sort (x ∘ e1)
  have hcomp : s ∘ (e0 ∘ σ0) = e1 ∘ σ1 := by
    apply sorted_maps_eq hx
    · exact strictMono_sort (hxs.comp e0.injective)
    · exact strictMono_sort (hx.comp e1.injective)
    · rw [Set.range_comp x, Set.range_comp x, Set.range_comp s, range_comp_perm, range_comp_perm,
        Finset.range_orderEmbOfFin, Finset.range_orderEmbOfFin, image_map_union]
  unfold subFlag
  simp only [Prod.mk.injEq]
  constructor
  · show patOf ((x ∘ s) ∘ e0 ∘ σ0) = patOf (x ∘ e1 ∘ σ1)
    exact congrArg (fun g => patOf (x ∘ g)) hcomp
  · ext i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    have hi := congrFun hcomp i
    simp only [Function.comp] at hi
    show e0 (σ0 i) ∈ J ↔ e1 (σ1 i) ∈ J.map s
    rw [← hi, Finset.mem_map' s]

/-- The flags of the sorted pattern are the flags of sub-samples: with `σ = sort x`,
`fl(π(x); J, A) = subFlag x (σ J) (σ A)`. -/
theorem flagOf_sortedPat {m : ℕ} {x : Fin k → ℝ} (hx : Function.Injective x) (J A : Finset (Fin k))
    (h : (J ∪ A).card = m)
    (h' : (J.map (Tuple.sort x).toEmbedding ∪ A.map (Tuple.sort x).toEmbedding).card = m) :
    flagOf (sortedPat x) J A h =
      subFlag x (J.map (Tuple.sort x).toEmbedding) (A.map (Tuple.sort x).toEmbedding) h' := by
  set σ := Tuple.sort x
  set e0 := (J ∪ A).orderEmbOfFin h
  set e1 := (J.map σ.toEmbedding ∪ A.map σ.toEmbedding).orderEmbOfFin h'
  set σ1 := Tuple.sort (x ∘ e1)
  have hy : StrictMono (x ∘ σ) := strictMono_sort hx
  have hcomp : σ ∘ e0 = e1 ∘ σ1 := by
    apply sorted_maps_eq hx
    · exact hy.comp e0.strictMono
    · exact strictMono_sort (hx.comp e1.injective)
    · rw [Set.range_comp x, Set.range_comp x, Set.range_comp σ, range_comp_perm,
        Finset.range_orderEmbOfFin, Finset.range_orderEmbOfFin, ← image_map_union σ.toEmbedding J A]
      rfl
  unfold flagOf subFlag
  simp only [Prod.mk.injEq]
  constructor
  · show patOf ((x ∘ σ) ∘ e0) = patOf (x ∘ e1 ∘ σ1)
    exact congrArg (fun g => patOf (x ∘ g)) hcomp
  · ext i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    have hi := congrFun hcomp i
    simp only [Function.comp] at hi
    show e0 i ∈ J ↔ e1 (σ1 i) ∈ J.map σ.toEmbedding
    rw [← hi, Finset.mem_map_equiv, Equiv.symm_apply_apply]

end BeatAvg
