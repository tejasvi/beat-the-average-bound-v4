import BeatAvg.Prob.Positivity

/-!
# Positivity from independence (Lemma 3.1 of the paper), second part

For a triple `(J, A, B)`, the flags of `(J, A)` and `(J, B)` are functions of the independent blocks of
coordinates `x|_J`, `x|_A`, `x|_B`, and the blocks `x|_A`, `x|_B` have the same law. So the expectation of
`Σ_{i,j} Q_ij [flag of (J, A) is F_i] [flag of (J, B) is F_j]` is `∫ φᵀ Q φ ≥ 0` (Fubini).
-/

open MeasureTheory ProbabilityTheory Set Finset
open scoped Classical

namespace BeatAvg

variable {k : ℕ}

theorem measurableSet_sort_eq {m : ℕ} (σ : Equiv.Perm (Fin m)) :
    MeasurableSet {z : Fin m → ℝ | Tuple.sort z = σ} := by
  have e : {z : Fin m → ℝ | Tuple.sort z = σ} =
      (⋂ i, ⋂ j, {z : Fin m → ℝ | i ≤ j → z (σ i) ≤ z (σ j)}) ∩
        (⋂ i, ⋂ j, {z : Fin m → ℝ | i < j → z (σ i) = z (σ j) → σ i < σ j}) := by
    ext z
    simp only [Set.mem_setOf_eq, Set.mem_inter_iff, Set.mem_iInter]
    rw [eq_comm, Tuple.eq_sort_iff]
    simp only [Monotone, Function.comp_apply]
  rw [e]
  refine MeasurableSet.inter (MeasurableSet.iInter fun i => MeasurableSet.iInter fun j => ?_)
    (MeasurableSet.iInter fun i => MeasurableSet.iInter fun j => ?_)
  · by_cases hij : i ≤ j
    · simp only [hij, true_implies]
      exact measurableSet_le (measurable_pi_apply (σ i)) (measurable_pi_apply (σ j))
    · simp [hij]
  · by_cases hij : i < j
    · by_cases hσ : σ i < σ j
      · simp [hij, hσ]
      · simp only [hij, hσ, true_implies, imp_false]
        exact (measurableSet_eq_fun (measurable_pi_apply (σ i)) (measurable_pi_apply (σ j))).compl
    · simp [hij]

/-- The flag of a whole sample `z`, with the points of `J0` marked. -/
noncomputable def vecFlag {m : ℕ} (z : Fin m → ℝ) (J0 : Finset (Fin m)) : Flag m :=
  (sortedPat z, Finset.univ.filter fun i => Tuple.sort z i ∈ J0)

theorem measurableSet_vecFlag_eq {m : ℕ} (J0 : Finset (Fin m)) (F : Flag m) :
    MeasurableSet {z : Fin m → ℝ | vecFlag z J0 = F} := by
  have e : {z : Fin m → ℝ | vecFlag z J0 = F} = ⋃ σ : Equiv.Perm (Fin m),
      ({z : Fin m → ℝ | Tuple.sort z = σ} ∩ {z | patOf (z ∘ σ) = F.1} ∩
        {_z | (Finset.univ.filter fun i => σ i ∈ J0) = F.2}) := by
    ext z
    simp only [Set.mem_setOf_eq, Set.mem_iUnion, Set.mem_inter_iff, vecFlag]
    constructor
    · intro h
      refine ⟨Tuple.sort z, ⟨rfl, ?_⟩, ?_⟩
      · rw [← h]; rfl
      · rw [← h]
    · rintro ⟨σ, ⟨hσ, h1⟩, h2⟩
      subst hσ
      exact Prod.ext h1 h2
  rw [e]
  refine MeasurableSet.iUnion fun σ => MeasurableSet.inter (MeasurableSet.inter (measurableSet_sort_eq σ)
    (measurableSet_patOf_comp σ F.1)) (MeasurableSet.const _)

/-- `subFlag` is `vecFlag` of the sub-sample, with the preimage of `J` marked. -/
theorem subFlag_eq_vecFlag {m : ℕ} (x : Fin k → ℝ) (J A : Finset (Fin k)) (h : (J ∪ A).card = m) :
    subFlag x J A h = vecFlag (x ∘ (J ∪ A).orderEmbOfFin h)
      (Finset.univ.filter fun i => (J ∪ A).orderEmbOfFin h i ∈ J) := by
  unfold subFlag vecFlag
  simp

theorem measurableSet_subFlag_eq {m : ℕ} (J A : Finset (Fin k)) (h : (J ∪ A).card = m) (F : Flag m) :
    MeasurableSet {x : Fin k → ℝ | subFlag x J A h = F} := by
  simp_rw [subFlag_eq_vecFlag]
  exact measurableSet_vecFlag_eq _ F |>.preimage (Measurable.of_eval fun i => measurable_pi_apply _)

theorem measurable_append {a b : ℕ} :
    Measurable fun p : (Fin a → ℝ) × (Fin b → ℝ) => Fin.append p.1 p.2 := by
  refine Measurable.of_eval fun i => ?_
  refine Fin.addCases (fun j => ?_) (fun j => ?_) i
  · simp only [Fin.append_left]; exact (measurable_pi_apply j).comp measurable_fst
  · simp only [Fin.append_right]; exact (measurable_pi_apply j).comp measurable_snd

section Indep

variable (μ : Measure ℝ) [IsProbabilityMeasure μ]

theorem indepFun_restrict (S T : Finset (Fin k)) (hST : Disjoint S T) :
    IndepFun (fun x : Fin k → ℝ => fun i : S => x i) (fun x => fun i : T => x i)
      (Measure.pi fun _ : Fin k => μ) := by
  have h := iIndepFun_pi (μ := fun _ : Fin k => μ) (X := fun _ (r : ℝ) => r) (fun _ => aemeasurable_id)
  exact h.indepFun_finset S T hST (fun i => measurable_pi_apply i)

theorem map_pair_eq_prod {β γ : Type*} [MeasurableSpace β] [MeasurableSpace γ] (S T : Finset (Fin k))
    (hST : Disjoint S T) (f : (S → ℝ) → β) (g : (T → ℝ) → γ) (hf : Measurable f) (hg : Measurable g) :
    (Measure.pi fun _ : Fin k => μ).map (fun x => (f (fun i : S => x i), g (fun i : T => x i))) =
      ((Measure.pi fun _ : Fin k => μ).map (fun x => f (fun i : S => x i))).prod
        ((Measure.pi fun _ : Fin k => μ).map (fun x => g (fun i : T => x i))) := by
  have hind := (indepFun_restrict μ S T hST).comp hf hg
  have hmS : Measurable fun x : Fin k → ℝ => fun i : S => x i :=
    Measurable.of_eval fun i => measurable_pi_apply _
  have hmT : Measurable fun x : Fin k → ℝ => fun i : T => x i :=
    Measurable.of_eval fun i => measurable_pi_apply _
  exact (indepFun_iff_map_prod_eq_prod_map_map (hf.comp hmS).aemeasurable (hg.comp hmT).aemeasurable).1 hind

/-- Two blocks of coordinates on disjoint sets of points are independent copies of `μ^a`, `μ^b`. -/
theorem map_comp_pair {a b : ℕ} (s1 : Fin a ↪ Fin k) (s2 : Fin b ↪ Fin k) (hd : ∀ i j, s1 i ≠ s2 j) :
    (Measure.pi fun _ : Fin k => μ).map (fun x => (x ∘ s1, x ∘ s2)) =
      (Measure.pi fun _ : Fin a => μ).prod (Measure.pi fun _ : Fin b => μ) := by
  have hST : Disjoint (Finset.univ.map s1) (Finset.univ.map s2) := by
    rw [Finset.disjoint_left]
    intro i h1 h2
    obtain ⟨a1, -, rfl⟩ := Finset.mem_map.1 h1
    obtain ⟨b1, -, e⟩ := Finset.mem_map.1 h2
    exact hd a1 b1 e.symm
  let f : (Finset.univ.map s1 → ℝ) → (Fin a → ℝ) := fun v i => v ⟨s1 i, Finset.mem_map_of_mem _ (Finset.mem_univ i)⟩
  let g : (Finset.univ.map s2 → ℝ) → (Fin b → ℝ) := fun v i => v ⟨s2 i, Finset.mem_map_of_mem _ (Finset.mem_univ i)⟩
  have hf : Measurable f := Measurable.of_eval fun i => measurable_pi_apply _
  have hg : Measurable g := Measurable.of_eval fun i => measurable_pi_apply _
  have := map_pair_eq_prod μ _ _ hST f g hf hg
  simp only [f, g] at this
  rw [show (fun x : Fin k → ℝ => (x ∘ s1, x ∘ s2)) = fun x => ((fun i => x (s1 i)), (fun i => x (s2 i))) from rfl,
    this]
  congr 1
  · exact pi_map_comp_injective μ s1 s1.injective
  · exact pi_map_comp_injective μ s2 s2.injective

/-- Three blocks of coordinates on pairwise disjoint sets of points. -/
theorem map_comp_triple {a b c : ℕ} (s1 : Fin a ↪ Fin k) (s2 : Fin b ↪ Fin k) (s3 : Fin c ↪ Fin k)
    (h12 : ∀ i j, s1 i ≠ s2 j) (h13 : ∀ i j, s1 i ≠ s3 j) (h23 : ∀ i j, s2 i ≠ s3 j) :
    (Measure.pi fun _ : Fin k => μ).map (fun x => ((x ∘ s1, x ∘ s2), x ∘ s3)) =
      ((Measure.pi fun _ : Fin a => μ).prod (Measure.pi fun _ : Fin b => μ)).prod
        (Measure.pi fun _ : Fin c => μ) := by
  let S := Finset.univ.map s1 ∪ Finset.univ.map s2
  let T := Finset.univ.map s3
  have hST : Disjoint S T := by
    rw [Finset.disjoint_left]
    intro i h1 h2
    obtain ⟨c1, -, rfl⟩ := Finset.mem_map.1 h2
    rcases Finset.mem_union.1 h1 with h | h
    · obtain ⟨a1, -, e⟩ := Finset.mem_map.1 h; exact h13 a1 c1 e
    · obtain ⟨b1, -, e⟩ := Finset.mem_map.1 h; exact h23 b1 c1 e
  let f : (S → ℝ) → (Fin a → ℝ) × (Fin b → ℝ) := fun v =>
    (fun i => v ⟨s1 i, Finset.mem_union_left _ (Finset.mem_map_of_mem _ (Finset.mem_univ i))⟩,
     fun i => v ⟨s2 i, Finset.mem_union_right _ (Finset.mem_map_of_mem _ (Finset.mem_univ i))⟩)
  let g : (T → ℝ) → (Fin c → ℝ) := fun v i => v ⟨s3 i, Finset.mem_map_of_mem _ (Finset.mem_univ i)⟩
  have hf : Measurable f :=
    (Measurable.of_eval fun i => measurable_pi_apply _).prodMk (Measurable.of_eval fun i => measurable_pi_apply _)
  have hg : Measurable g := Measurable.of_eval fun i => measurable_pi_apply _
  have := map_pair_eq_prod μ S T hST f g hf hg
  rw [show (fun x : Fin k → ℝ => ((x ∘ s1, x ∘ s2), x ∘ s3)) =
      fun x => (f (fun i : S => x i), g (fun i : T => x i)) from rfl, this]
  congr 1
  · exact map_comp_pair μ s1 s2 h12
  · exact pi_map_comp_injective μ s3 s3.injective

end Indep

end BeatAvg

namespace BeatAvg

variable {k : ℕ}

/-- The canonical blocks: `t` marked points followed by `r` other points. -/
def J0 (t r : ℕ) : Finset (Fin (t + r)) := Finset.univ.map (Fin.castAddEmb r)
def A0 (t r : ℕ) : Finset (Fin (t + r)) := Finset.univ.map (Fin.natAddEmb t)

theorem card_J0_union_A0 (t r : ℕ) : (J0 t r ∪ A0 t r).card = t + r := by
  rw [Finset.card_union_of_disjoint]
  · simp [J0, A0]
  · rw [Finset.disjoint_left]
    intro i h1 h2
    obtain ⟨a, -, rfl⟩ := Finset.mem_map.1 h1
    obtain ⟨b, -, e⟩ := Finset.mem_map.1 h2
    have := congrArg Fin.val e
    simp [Fin.coe_castAdd, Fin.coe_natAdd] at this
    omega

/-- The event "the canonical blocks `(w, y)` give the flag `F`". -/
def canonEv {t r m : ℕ} (h0 : (J0 t r ∪ A0 t r).card = m) (F : Flag m) : Set ((Fin t → ℝ) × (Fin r → ℝ)) :=
  {p | subFlag (Fin.append p.1 p.2) (J0 t r) (A0 t r) h0 = F}

theorem measurableSet_canonEv {t r m : ℕ} (h0 : (J0 t r ∪ A0 t r).card = m) (F : Flag m) :
    MeasurableSet (canonEv h0 F) :=
  (measurableSet_subFlag_eq _ _ h0 F).preimage measurable_append

theorem subFlag_comp' {n m : ℕ} {x : Fin k → ℝ} (hx : Function.Injective x) (s : Fin n ↪ Fin k)
    (J0' A0' : Finset (Fin n)) (h0 : (J0' ∪ A0').card = m) (J A : Finset (Fin k))
    (hJ : J0'.map s = J) (hA : A0'.map s = A) (h : (J ∪ A).card = m) :
    subFlag (x ∘ s) J0' A0' h0 = subFlag x J A h := by
  subst hJ hA
  exact subFlag_comp hx s J0' A0' h0 h

/-- The embedding `Fin (t + r) ↪ Fin k` that enumerates `J`, then `A`. -/
def appendEmb {t r : ℕ} (sJ : Fin t ↪ Fin k) (sA : Fin r ↪ Fin k) (hd : ∀ i j, sJ i ≠ sA j) : Fin (t + r) ↪ Fin k :=
  ⟨Fin.append sJ sA, Fin.append_injective_iff.2 ⟨sJ.injective, sA.injective, hd⟩⟩

theorem comp_appendEmb {t r : ℕ} (x : Fin k → ℝ) (sJ : Fin t ↪ Fin k) (sA : Fin r ↪ Fin k)
    (hd : ∀ i j, sJ i ≠ sA j) : x ∘ appendEmb sJ sA hd = Fin.append (x ∘ sJ) (x ∘ sA) := by
  funext i
  refine Fin.addCases (fun j => ?_) (fun j => ?_) i
  · simp [appendEmb, Fin.append_left]
  · simp [appendEmb, Fin.append_right]

theorem J0_map_appendEmb {t r : ℕ} (sJ : Fin t ↪ Fin k) (sA : Fin r ↪ Fin k) (hd : ∀ i j, sJ i ≠ sA j) :
    (J0 t r).map (appendEmb sJ sA hd) = Finset.univ.map sJ := by
  ext i
  simp only [J0, Finset.map_map, Finset.mem_map, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨a, rfl⟩; exact ⟨a, by simp [appendEmb, Fin.append_left]⟩
  · rintro ⟨a, rfl⟩; exact ⟨a, by simp [appendEmb, Fin.append_left]⟩

theorem A0_map_appendEmb {t r : ℕ} (sJ : Fin t ↪ Fin k) (sA : Fin r ↪ Fin k) (hd : ∀ i j, sJ i ≠ sA j) :
    (A0 t r).map (appendEmb sJ sA hd) = Finset.univ.map sA := by
  ext i
  simp only [A0, Finset.map_map, Finset.mem_map, Finset.mem_univ, true_and]
  constructor
  · rintro ⟨a, rfl⟩; exact ⟨a, by simp [appendEmb, Fin.append_right]⟩
  · rintro ⟨a, rfl⟩; exact ⟨a, by simp [appendEmb, Fin.append_right]⟩

/-- For a sample with distinct values, `(J, A)` gives `F` iff the canonical blocks do. -/
theorem givesSub_iff_canon {t r m : ℕ} {x : Fin k → ℝ} (hx : Function.Injective x) (sJ : Fin t ↪ Fin k)
    (sA : Fin r ↪ Fin k) (hd : ∀ i j, sJ i ≠ sA j) (J A : Finset (Fin k)) (hJ : Finset.univ.map sJ = J)
    (hA : Finset.univ.map sA = A) (h0 : (J0 t r ∪ A0 t r).card = m) (h : (J ∪ A).card = m) (F : Flag m) :
    GivesSub x J A F ↔ (x ∘ sJ, x ∘ sA) ∈ canonEv h0 F := by
  have e := subFlag_comp' hx (appendEmb sJ sA hd) (J0 t r) (A0 t r) h0 J A
    ((J0_map_appendEmb sJ sA hd).trans hJ) ((A0_map_appendEmb sJ sA hd).trans hA) h
  rw [comp_appendEmb] at e
  simp only [canonEv, Set.mem_setOf_eq]
  rw [e]
  exact ⟨fun ⟨_, hF⟩ => hF, fun hF => ⟨h, hF⟩⟩

/-- Fubini for two flags sharing the marked block. -/
theorem integral_prod_indicators {α β : Type*} [MeasurableSpace α] [MeasurableSpace β] (ν1 : Measure α)
    (ν2 : Measure β) [IsProbabilityMeasure ν1] [IsProbabilityMeasure ν2] {E1 E2 : Set (α × β)}
    (h1 : MeasurableSet E1) (h2 : MeasurableSet E2) :
    ∫ z, E1.indicator (fun _ => (1 : ℝ)) z.1 * E2.indicator (fun _ => (1 : ℝ)) (z.1.1, z.2) ∂((ν1.prod ν2).prod ν2) =
      ∫ w, ν2.real (Prod.mk w ⁻¹' E1) * ν2.real (Prod.mk w ⁻¹' E2) ∂ν1 := by
  have hm1 : Measurable fun z : (α × β) × β => E1.indicator (fun _ => (1 : ℝ)) z.1 :=
    (measurable_const.indicator h1).comp measurable_fst
  have hm2 : Measurable fun z : (α × β) × β => E2.indicator (fun _ => (1 : ℝ)) (z.1.1, z.2) :=
    (measurable_const.indicator h2).comp ((measurable_fst.comp measurable_fst).prodMk measurable_snd)
  have hbound : ∀ z : (α × β) × β,
      ‖E1.indicator (fun _ => (1 : ℝ)) z.1 * E2.indicator (fun _ => (1 : ℝ)) (z.1.1, z.2)‖ ≤ 1 := by
    intro z
    by_cases a : z.1 ∈ E1 <;> by_cases b : (z.1.1, z.2) ∈ E2 <;> simp [a, b]
  have hint : Integrable (fun z : (α × β) × β =>
      E1.indicator (fun _ => (1 : ℝ)) z.1 * E2.indicator (fun _ => (1 : ℝ)) (z.1.1, z.2)) ((ν1.prod ν2).prod ν2) :=
    Integrable.of_bound (hm1.mul hm2).aestronglyMeasurable 1 (Filter.Eventually.of_forall hbound)
  rw [integral_prod _ hint]
  have hsec : ∀ p : α × β, ∫ y', E1.indicator (fun _ => (1 : ℝ)) p * E2.indicator (fun _ => (1 : ℝ)) (p.1, y') ∂ν2 =
      E1.indicator (fun _ => (1 : ℝ)) p * ν2.real (Prod.mk p.1 ⁻¹' E2) := by
    intro p
    rw [integral_const_mul]
    congr 1
    have : (fun y' => E2.indicator (fun _ => (1 : ℝ)) (p.1, y')) = (Prod.mk p.1 ⁻¹' E2).indicator (fun _ => 1) := by
      funext y'; simp [Set.indicator, Set.mem_preimage]
    rw [this, integral_indicator_one' _ (measurable_prodMk_left h2)]
  simp_rw [hsec]
  have hm3 : Measurable fun p : α × β => E1.indicator (fun _ => (1 : ℝ)) p * ν2.real (Prod.mk p.1 ⁻¹' E2) := by
    refine (measurable_const.indicator h1).mul ?_
    have hmm : Measurable fun w : α => ν2.real (Prod.mk w ⁻¹' E2) :=
      (measurable_measure_prodMk_left h2).ennreal_toReal
    exact hmm.comp measurable_fst
  have hint2 : Integrable (fun p : α × β => E1.indicator (fun _ => (1 : ℝ)) p * ν2.real (Prod.mk p.1 ⁻¹' E2))
      (ν1.prod ν2) := by
    refine Integrable.of_bound hm3.aestronglyMeasurable 1 (Filter.Eventually.of_forall fun p => ?_)
    have h0 : 0 ≤ ν2.real (Prod.mk p.1 ⁻¹' E2) := measureReal_nonneg
    have h1' : ν2.real (Prod.mk p.1 ⁻¹' E2) ≤ 1 := measureReal_le_one
    by_cases a : p ∈ E1 <;> simp [a, abs_of_nonneg h0, h1']
  rw [integral_prod _ hint2]
  congr 1
  funext w
  simp only
  rw [integral_mul_const]
  congr 1
  have : (fun y => E1.indicator (fun _ => (1 : ℝ)) (w, y)) = (Prod.mk w ⁻¹' E1).indicator (fun _ => 1) := by
    funext y; simp [Set.indicator, Set.mem_preimage]
  rw [this, integral_indicator_one' _ (measurable_prodMk_left h1)]

end BeatAvg
