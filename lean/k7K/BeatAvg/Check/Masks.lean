import BeatAvg.Check.Tuples

/-!
# Point sets as bit masks
-/

open Finset

namespace BeatAvg.Check

/-- The set of points `i < k` whose bit is set in `n`. -/
def ofMask (k : Nat) (n : Nat) : Finset (Fin k) := univ.filter fun i => n.testBit i = true

theorem mem_ofMask {k n : Nat} {i : Fin k} : i ∈ ofMask k n ↔ n.testBit i = true := by simp [ofMask]

theorem ofMask_or (k a b : Nat) : ofMask k (a ||| b) = ofMask k a ∪ ofMask k b := by
  ext i; simp [ofMask, Nat.testBit_or]

theorem testBit_ge_of_lt {k a i : Nat} (ha : a < 2 ^ k) (hi : k ≤ i) : a.testBit i = false :=
  Nat.testBit_lt_two_pow (lt_of_lt_of_le ha (Nat.pow_le_pow_right (by norm_num) hi))

theorem ofMask_inj {k a b : Nat} (ha : a < 2 ^ k) (hb : b < 2 ^ k) (h : ofMask k a = ofMask k b) : a = b := by
  apply Nat.eq_of_testBit_eq
  intro i
  by_cases hi : i < k
  · have := congrArg (fun S => (⟨i, hi⟩ : Fin k) ∈ S) h
    simp only [mem_ofMask, eq_iff_iff] at this
    cases ea : a.testBit i <;> cases eb : b.testBit i <;> simp_all
  · rw [testBit_ge_of_lt ha (not_lt.1 hi), testBit_ge_of_lt hb (not_lt.1 hi)]

theorem ofMask_surj (k : Nat) (S : Finset (Fin k)) : ∃ n < 2 ^ k, ofMask k n = S := by
  have hinj : Set.InjOn (ofMask k) (range (2 ^ k) : Set Nat) := fun a ha b hb h =>
    ofMask_inj (mem_range.1 ha) (mem_range.1 hb) h
  have hcard : ((range (2 ^ k)).image (ofMask k)).card = 2 ^ k := by
    rw [card_image_of_injOn hinj, card_range]
  have huniv : (range (2 ^ k)).image (ofMask k) = univ := by
    apply eq_univ_of_card
    rw [hcard, Fintype.card_finset, Fintype.card_fin]
  have : S ∈ (range (2 ^ k)).image (ofMask k) := huniv ▸ mem_univ S
  obtain ⟨n, hn, rfl⟩ := mem_image.1 this
  exact ⟨n, mem_range.1 hn, rfl⟩

theorem card_ofMask (k n : Nat) : (ofMask k n).card = popcount k n := by
  unfold ofMask popcount
  have h1 : ((univ : Finset (Fin k)).filter fun i : Fin k => n.testBit (i : Nat) = true).map Fin.valEmbedding =
      ((List.range k).filter fun i => n.testBit i).toFinset := by
    ext i
    simp only [mem_map, mem_filter, mem_univ, true_and, Fin.valEmbedding_apply, List.mem_toFinset,
      List.mem_filter, List.mem_range]
    constructor
    · rintro ⟨j, hj, rfl⟩; exact ⟨j.2, hj⟩
    · rintro ⟨hi, hb⟩; exact ⟨⟨i, hi⟩, hb, rfl⟩
  rw [← card_map, h1, List.toFinset_card_of_nodup ((List.nodup_range).filter _)]

theorem ofMask_disjoint {k a b : Nat} (ha : a < 2 ^ k) (hb : b < 2 ^ k) :
    Disjoint (ofMask k a) (ofMask k b) ↔ a &&& b = 0 := by
  constructor
  · intro h
    apply Nat.eq_of_testBit_eq
    intro i
    rw [Nat.testBit_and, Nat.zero_testBit]
    by_cases hi : i < k
    · cases ea : a.testBit i
      · rfl
      · cases eb : b.testBit i
        · rfl
        · exfalso
          exact Finset.disjoint_left.1 h (mem_ofMask.2 ea : (⟨i, hi⟩ : Fin k) ∈ _) (mem_ofMask.2 eb)
    · rw [testBit_ge_of_lt ha (not_lt.1 hi)]; rfl
  · intro h
    rw [Finset.disjoint_left]
    intro i hia hib
    have := congrArg (fun x => x.testBit i) h
    simp only [Nat.testBit_and, Nat.zero_testBit, mem_ofMask.1 hia, mem_ofMask.1 hib] at this
    exact absurd this (by decide)

theorem mem_cardMasks {k r n : Nat} : n ∈ cardMasks k r ↔ n < 2 ^ k ∧ popcount k n = r := by
  simp [cardMasks, List.mem_filter, List.mem_range]

theorem nodup_cardMasks (k r : Nat) : (cardMasks k r).Nodup := (List.nodup_range).filter _

/-- The triple of point sets of a triple of masks. -/
def ofMask3 (k : Nat) (q : Nat × Nat × Nat) : Finset (Fin k) × Finset (Fin k) × Finset (Fin k) :=
  (ofMask k q.1, ofMask k q.2.1, ofMask k q.2.2)

theorem mem_genTriples {k t m : Nat} {q : Nat × Nat × Nat} :
    q ∈ genTriples k t m ↔ (q.1 < 2 ^ k ∧ q.2.1 < 2 ^ k ∧ q.2.2 < 2 ^ k) ∧ IsTriple t m (ofMask3 k q) := by
  obtain ⟨J, A, B⟩ := q
  simp only [genTriples, List.mem_flatMap, List.mem_filterMap, mem_cardMasks, Option.ite_none_right_eq_some,
    Option.some.injEq, Prod.mk.injEq, Bool.and_eq_true, beq_iff_eq, IsTriple, ofMask3, card_ofMask]
  constructor
  · rintro ⟨J', ⟨hJ, hJc⟩, A', ⟨hA, hAc⟩, B', ⟨hB, hBc⟩, ⟨⟨h1, h2⟩, h3⟩, rfl, rfl, rfl⟩
    exact ⟨⟨hJ, hA, hB⟩, hJc, hAc, hBc, (ofMask_disjoint hJ hA).2 h1, (ofMask_disjoint hJ hB).2 h2,
      (ofMask_disjoint hA hB).2 h3⟩
  · rintro ⟨⟨hJ, hA, hB⟩, hJc, hAc, hBc, h1, h2, h3⟩
    exact ⟨J, ⟨hJ, hJc⟩, A, ⟨hA, hAc⟩, B, ⟨hB, hBc⟩,
      ⟨⟨(ofMask_disjoint hJ hA).1 h1, (ofMask_disjoint hJ hB).1 h2⟩, (ofMask_disjoint hA hB).1 h3⟩, rfl, rfl, rfl⟩

theorem nodup_genTriples (k t m : Nat) : (genTriples k t m).Nodup := by
  unfold genTriples
  refine List.nodup_flatMap.2 ⟨fun J _ => List.nodup_flatMap.2 ⟨fun A _ => ?_, ?_⟩, ?_⟩
  · refine List.Nodup.filterMap ?_ (nodup_cardMasks _ _)
    intro a a' b h h'
    split at h <;> split at h'
    · rw [Option.mem_def, Option.some.injEq] at h h'
      subst h
      simp only [Prod.mk.injEq] at h'
      exact h'.2.2.symm
    all_goals simp at h h'
  · refine (nodup_cardMasks _ _).pairwise_of_forall_ne fun A1 _ A2 _ hne => ?_
    simp only [Function.onFun]
    rw [List.disjoint_left]
    intro x h1 h2
    simp only [List.mem_filterMap, Option.ite_none_right_eq_some, Option.some.injEq] at h1 h2
    obtain ⟨_, _, _, rfl⟩ := h1
    obtain ⟨_, _, _, e⟩ := h2
    simp only [Prod.mk.injEq] at e
    exact hne e.2.1.symm
  · refine (nodup_cardMasks _ _).pairwise_of_forall_ne fun J1 _ J2 _ hne => ?_
    simp only [Function.onFun]
    rw [List.disjoint_left]
    intro x h1 h2
    simp only [List.mem_flatMap, List.mem_filterMap, Option.ite_none_right_eq_some, Option.some.injEq] at h1 h2
    obtain ⟨_, _, _, _, _, rfl⟩ := h1
    obtain ⟨_, _, _, _, _, e⟩ := h2
    simp only [Prod.mk.injEq] at e
    exact hne e.1.symm

/-- Sums over the triples of point sets are sums over `genTriples`. -/
theorem sum_triples_eq {k t m : Nat} {β : Type*} [AddCommMonoid β]
    (g : Finset (Fin k) × Finset (Fin k) × Finset (Fin k) → β) :
    ∑ p ∈ univ.filter (fun p => IsTriple t m p), g p = ((genTriples k t m).map fun q => g (ofMask3 k q)).sum := by
  rw [← List.sum_toFinset _ (nodup_genTriples k t m)]
  symm
  apply Finset.sum_nbij (ofMask3 k)
  · intro q hq
    rw [List.mem_toFinset, mem_genTriples] at hq
    simpa using hq.2
  · intro q1 hq1 q2 hq2 h
    rw [Finset.mem_coe, List.mem_toFinset, mem_genTriples] at hq1 hq2
    obtain ⟨J1, A1, B1⟩ := q1
    obtain ⟨J2, A2, B2⟩ := q2
    simp only [ofMask3, Prod.mk.injEq] at h
    simp only [Prod.mk.injEq]
    exact ⟨ofMask_inj hq1.1.1 hq2.1.1 h.1, ofMask_inj hq1.1.2.1 hq2.1.2.1 h.2.1,
      ofMask_inj hq1.1.2.2 hq2.1.2.2 h.2.2⟩
  · intro p hp
    obtain ⟨J, hJ, eJ⟩ := ofMask_surj k p.1
    obtain ⟨A, hA, eA⟩ := ofMask_surj k p.2.1
    obtain ⟨B, hB, eB⟩ := ofMask_surj k p.2.2
    refine ⟨(J, A, B), ?_, by simp [ofMask3, eJ, eA, eB]⟩
    rw [Finset.mem_coe, List.mem_toFinset, mem_genTriples]
    refine ⟨⟨hJ, hA, hB⟩, ?_⟩
    have : ofMask3 k (J, A, B) = p := by simp [ofMask3, eJ, eA, eB]
    rw [this]
    simpa using hp
  · intro q _; rfl

end BeatAvg.Check
