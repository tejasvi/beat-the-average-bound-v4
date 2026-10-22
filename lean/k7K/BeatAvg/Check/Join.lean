import BeatAvg.Check.K9a

/-!
# Soundness of the indexed joins
-/

namespace BeatAvg.Check

open Std

theorem mem_mkIdx_aux {α : Type} (key : α → Array Nat) :
    ∀ (l : List α) (m : HashMap (Array Nat) (Array α)) (c : α), (c ∈ l ∨ c ∈ m.getD (key c) #[]) →
      c ∈ (l.foldl (fun m c => m.insert (key c) ((m.getD (key c) #[]).push c)) m).getD (key c) #[]
  | [], m, c, h => by
    rcases h with h | h
    · simp at h
    · simpa using h
  | a :: l, m, c, h => by
    rw [List.foldl_cons]
    apply mem_mkIdx_aux key l
    rcases h with h | h
    · rcases List.mem_cons.1 h with rfl | h
      · right
        rw [HashMap.getD_insert_self]
        exact Array.mem_push_self
      · left; exact h
    · right
      rw [HashMap.getD_insert]
      split_ifs with hk
      · have hk' : key a = key c := by simpa using hk
        rw [hk']
        exact Array.mem_push_of_mem _ h
      · exact h

theorem mem_mkIdx {α : Type} (key : α → Array Nat) (C : Array α) {c : α} (hc : c ∈ C) :
    c ∈ (mkIdx key C).getD (key c) #[] := by
  unfold mkIdx
  rw [← Array.foldl_toList]
  exact mem_mkIdx_aux key C.toList {} c (Or.inl (Array.mem_toList_iff.2 hc))

/-- The key of a consistent candidate is the required key. -/
theorem keyAt_eq_reqAt {α : Type} (row : α → Array Nat) (f : Nat → α) (y : Nat) :
    ∀ (acc : List (Nat × α)), (∀ e ∈ acc, e.2 = f e.1) → (∀ e ∈ acc, e.1 ≠ y) →
      (∀ e ∈ acc, consR e.1 (row (f e.1)) y (row (f y)) = true) →
      keyAt y (acc.map (·.1)) (row (f y)) = reqAt y (acc.map fun e => (e.1, row e.2)) := by
  intro acc hg hne hc
  unfold keyAt reqAt
  congr 1
  rw [List.map_map, List.map_map]
  apply List.map_congr_left
  intro e he
  simp only [Function.comp]
  have h := hc e he
  have hz := hne e he
  rw [hg e he]
  unfold consR at h
  by_cases hlt : e.1 < y
  · rw [if_pos hlt] at h
    simp only [beq_iff_eq] at h
    rw [if_pos hlt, if_neg (by omega)]
    exact h.symm
  · rw [if_neg hlt] at h
    simp only [beq_iff_eq] at h
    rw [if_neg hlt, if_pos (by omega)]
    exact h

theorem ijoin_sound {α : Type} {row : α → Array Nat} {cand : Nat → Array α} {body : List (Nat × α) → Bool}
    (f : Nat → α) :
    ∀ (ys : List Nat) (acc : List (Nat × α)), ijoin row body (mkLevels row cand ys (acc.map (·.1))) acc = true →
      (∀ e ∈ acc, e.2 = f e.1) → (∀ y ∈ ys, f y ∈ cand y) → ys.Pairwise (· < ·) →
      (∀ e ∈ acc, ∀ y ∈ ys, e.1 ≠ y) →
      (∀ e ∈ acc, ∀ y ∈ ys, consR e.1 (row (f e.1)) y (row (f y)) = true) →
      ys.Pairwise (fun y y' => consR y (row (f y)) y' (row (f y')) = true) →
      body (ys.reverse.map (fun y => (y, f y)) ++ acc) = true
  | [], acc, h, _, _, _, _, _, _ => by simpa [mkLevels, ijoin] using h
  | y :: ys, acc, h, hg, hc, hlt, hne, hcons, hpw => by
    simp only [mkLevels, ijoin] at h
    have hkey := keyAt_eq_reqAt row f y acc hg (fun e he => hne e he y List.mem_cons_self)
      (fun e he => hcons e he y List.mem_cons_self)
    have hmem := mem_mkIdx (fun c => keyAt y (acc.map (·.1)) (row c)) (cand y) (hc y List.mem_cons_self)
    rw [hkey] at hmem
    have h1 := Array.all_eq_true'.1 h (f y) hmem
    have := ijoin_sound f ys ((y, f y) :: acc) (by simpa using h1)
      (fun e he => by
        rcases List.mem_cons.1 he with rfl | he
        · rfl
        · exact hg e he)
      (fun y' hy' => hc y' (List.mem_cons_of_mem _ hy'))
      (List.Pairwise.of_cons hlt)
      (fun e he y' hy' => by
        rcases List.mem_cons.1 he with rfl | he
        · exact Nat.ne_of_lt (List.rel_of_pairwise_cons hlt hy')
        · exact hne e he y' (List.mem_cons_of_mem _ hy'))
      (fun e he y' hy' => by
        rcases List.mem_cons.1 he with rfl | he
        · exact List.rel_of_pairwise_cons hpw hy'
        · exact hcons e he y' (List.mem_cons_of_mem _ hy'))
      (List.Pairwise.of_cons hpw)
    simpa [List.reverse_cons, List.map_append] using this

theorem icollect_complete {α : Type} {row : α → Array Nat} {cand : Nat → Array α} (f : Nat → α) :
    ∀ (ys : List Nat) (acc : List (Nat × α)),
      (∀ e ∈ acc, e.2 = f e.1) → (∀ y ∈ ys, f y ∈ cand y) → ys.Pairwise (· < ·) →
      (∀ e ∈ acc, ∀ y ∈ ys, e.1 ≠ y) →
      (∀ e ∈ acc, ∀ y ∈ ys, consR e.1 (row (f e.1)) y (row (f y)) = true) →
      ys.Pairwise (fun y y' => consR y (row (f y)) y' (row (f y')) = true) →
      ys.reverse.map (fun y => (y, f y)) ++ acc ∈ icollect row (mkLevels row cand ys (acc.map (·.1))) acc
  | [], acc, _, _, _, _, _, _ => by simp [mkLevels, icollect]
  | y :: ys, acc, hg, hc, hlt, hne, hcons, hpw => by
    simp only [mkLevels, icollect]
    have hkey := keyAt_eq_reqAt row f y acc hg (fun e he => hne e he y List.mem_cons_self)
      (fun e he => hcons e he y List.mem_cons_self)
    have hmem := mem_mkIdx (fun c => keyAt y (acc.map (·.1)) (row c)) (cand y) (hc y List.mem_cons_self)
    rw [hkey] at hmem
    rw [List.mem_flatMap]
    refine ⟨f y, Array.mem_toList_iff.2 hmem, ?_⟩
    have := icollect_complete f ys ((y, f y) :: acc)
      (fun e he => by
        rcases List.mem_cons.1 he with rfl | he
        · rfl
        · exact hg e he)
      (fun y' hy' => hc y' (List.mem_cons_of_mem _ hy'))
      (List.Pairwise.of_cons hlt)
      (fun e he y' hy' => by
        rcases List.mem_cons.1 he with rfl | he
        · exact Nat.ne_of_lt (List.rel_of_pairwise_cons hlt hy')
        · exact hne e he y' (List.mem_cons_of_mem _ hy'))
      (fun e he y' hy' => by
        rcases List.mem_cons.1 he with rfl | he
        · exact List.rel_of_pairwise_cons hpw hy'
        · exact hcons e he y' (List.mem_cons_of_mem _ hy'))
      (List.Pairwise.of_cons hpw)
    simpa [List.reverse_cons, List.map_append] using this

/-- Every 8-tuple of numbers with consistent deletions and `K r = v` is among `anch8I D bd r v`. -/
theorem anch8I_complete {D : Array (Array Nat)} {bd : Array (HashMap Nat (Array Nat))}
    (hbd : ∀ i < 7, byDelOK D (bd.getD i {}) i = true) {r : Nat} (hr : r < 8) (g : Nat → Nat)
    (hg : ∀ y < 8, g y < D.size)
    (hcons : ∀ z y, z < 8 → y < 8 → z ≠ y → consR z (D.getD (g z) #[]) y (D.getD (g y) #[]) = true) :
    ∃ T ∈ anch8I D bd r (g r), T.size = 8 ∧ ∀ y < 8, T.getD y 0 = g y := by
  set ys := (List.range 8).filter (· != r) with hys
  have hmem := icollect_complete (row := fun k => D.getD k #[]) (cand := candA D bd r (g r)) g ys [(r, g r)]
    (by intro e he; rw [List.mem_singleton] at he; subst he; rfl)
    ?_ (pairwise_filter_range 8 r)
    (by
      intro e he y hy
      rw [List.mem_singleton] at he
      subst he
      rw [hys, mem_filter_range] at hy
      exact Ne.symm hy.2)
    (by
      intro e he y hy
      rw [List.mem_singleton] at he
      subst he
      rw [hys, mem_filter_range] at hy
      exact hcons r y hr hy.1 (Ne.symm hy.2))
    (by
      apply List.Pairwise.imp_of_mem _ (pairwise_filter_range 8 r)
      intro y y' hy hy' hlt
      rw [mem_filter_range] at hy hy'
      exact hcons y y' hy.1 hy'.1 (Nat.ne_of_lt hlt))
  · refine ⟨toTuple 8 0 (ys.reverse.map (fun y => (y, g y)) ++ [(r, g r)]), ?_, toTuple_size _ _ _, ?_⟩
    · unfold anch8I
      simp only
      rw [← hys]
      exact List.mem_toArray.2 (List.mem_map.2 ⟨_, hmem, rfl⟩)
    · intro y hy
      exact toTuple_getD g 8 0 _ (graph_assign g ys r) hy (keys_assign g 8 r hr hy)
  · intro y hy
    rw [hys, mem_filter_range] at hy
    obtain ⟨hy8, hyr⟩ := hy
    unfold candA
    by_cases hyr' : y < r
    · rw [if_pos hyr']
      have hc := hcons y r hy8 hr hyr
      simp only [consR, hyr', if_true, beq_iff_eq] at hc
      rw [← hc]
      exact mem_byDel (hbd (r - 1) (by omega)) (hg y hy8)
    · rw [if_neg hyr']
      have hc := hcons r y hr hy8 (Ne.symm hyr)
      have hry : r < y := by omega
      simp only [consR, hry, if_true, beq_iff_eq] at hc
      rw [hc]
      exact mem_byDel (hbd r (by omega)) (hg y hy8)

end BeatAvg.Check
