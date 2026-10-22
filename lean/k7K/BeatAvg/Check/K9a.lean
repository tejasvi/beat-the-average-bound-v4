import BeatAvg.Check.K8
import BeatAvg.Core.Hier9

/-!
# Soundness of the check with 9 points, part 1: the faster evaluation, backtracking joins, anchored 8-tuples
-/

open Finset

namespace BeatAvg.Check

open Std

/-! ### The faster evaluation of the lower blocks -/

theorem getD_bitsOf {M len j : Nat} (hM : M < 2 ^ len) : (bitsOf M len).getD j false = M.testBit j := by
  unfold bitsOf
  by_cases hj : j < len
  · rw [getD_range_map _ _ _ hj]
  · have : (Array.range len |>.map M.testBit).getD j false = false := by simp [Array.getD, hj]
    rw [this, testBit_ge_of_lt hM (Nat.le_of_not_lt hj)]

theorem gatherA_eq {M len : Nat} (hM : M < 2 ^ len) : ∀ idx, gatherA (bitsOf M len) idx = gather M idx
  | [] => rfl
  | j :: rest => by simp only [gatherA, gather, getD_bitsOf hM, gatherA_eq hM rest]

theorem lookupH_eq {flags : List (Nat × Nat)} {fi : HashMap (Nat × Nat) Nat} (hok : flagIdxOK flags fi = true)
    (hnd : flags.Nodup) (x : Nat × Nat) : lookupH flags fi x = lookupIdx flags x := by
  unfold lookupH lookupIdx
  by_cases hx : flags.contains x = true
  · rw [if_pos hx]
    obtain ⟨i, hi, hix⟩ := List.mem_iff_getElem.1 (List.contains_iff_mem.1 hx)
    have h1 := List.all_eq_true.1 hok i (List.mem_range.2 hi)
    rw [List.getD_eq_getElem _ _ hi, hix, beq_iff_eq] at h1
    have hidx : flags.idxOf x = i := by
      rw [← hix]; exact List.Nodup.idxOf_getElem hnd i hi
    rw [h1, hidx]
    have hc : i < flags.length ∧ flags.getD i (0, 0) = x := ⟨hi, by rw [List.getD_eq_getElem _ _ hi, hix]⟩
    dsimp only
    rw [if_pos hc]
  · rw [if_neg hx]
    split
    · rename_i i _
      split_ifs with h
      · exfalso
        obtain ⟨h1, h2⟩ := h
        rw [List.getD_eq_getElem _ _ h1] at h2
        exact hx (List.contains_iff_mem.2 (h2 ▸ List.getElem_mem h1))
      · rfl
    · rfl

theorem toArray_getD (l : List Int) (i : Nat) : l.toArray.getD i 0 = l.getD i 0 := by
  simp [Array.getD, List.getD_eq_getElem?_getD]
  split <;> simp_all

theorem foldl_add {α : Type} (f : α → Int) : ∀ (l : List α) (a : Int),
    l.foldl (fun acc x => acc + f x) a = a + (l.map f).sum
  | [], a => by simp
  | x :: l, a => by rw [List.foldl_cons, foldl_add f l, List.map_cons, List.sum_cons]; ring

theorem DBlock.qint_symm (b : DBlock) (i j : Nat) : b.qint i j = b.qint j i := by
  unfold DBlock.qint
  congr 1
  apply List.map_congr_left
  intro p _
  ring

theorem qarr_upper (b : DBlock) (i j : Nat) :
    ((b.terms.map fun p => ((p.1 : Int), p.2.toArray)).map fun p => (p.1 * p.2.getD i 0, p.2)).foldl
      (fun acc p => acc + p.1 * p.2.getD j 0) 0 = b.qint i j := by
  rw [foldl_add, zero_add, List.map_map, List.map_map]
  unfold DBlock.qint
  congr 1
  apply List.map_congr_left
  intro p _
  simp only [Function.comp_def, toArray_getD]

theorem qarr_get (b : DBlock) {i j : Nat} (hi : i < b.flags.length) (hj : j < b.flags.length) :
    (b.qarr.getD i #[]).getD j 0 = b.qint i j := by
  simp only [DBlock.qarr]
  rw [getD_range_map _ _ _ hi, getD_range_map _ _ _ hj]
  split_ifs with hji
  · rw [getD_range_map _ _ _ hj, getD_range_map _ _ _ hi, if_neg (by omega), qarr_upper, DBlock.qint_symm]
  · rw [getD_range_map _ _ _ hi, getD_range_map _ _ _ hj, if_neg hji, qarr_upper]

theorem blockSumA_eq (lk : List (Nat × Nat × Nat × Nat)) (k : Nat) (b : DBlock) {M : Nat} (hM : M < 2 ^ lk.length)
    (hok : flagIdxOK b.flags (flagIdx b.flags) = true) (hnd : b.flags.Nodup) :
    blockSumA (preA lk k b) b.flags (bitsOf M lk.length) =
      blockSumT (tripleTable lk (tupList b.m) k b.t b.m) b.flags b.qtab M := by
  unfold blockSumA blockSumT preA
  congr 1
  apply List.map_congr_left
  intro e _
  simp only [gatherA_eq hM, lookupH_eq hok hnd]
  cases h1 : lookupIdx b.flags (gather M e.1, e.2.1) with
  | none => rfl
  | some i =>
    cases h2 : lookupIdx b.flags (gather M e.2.2.1, e.2.2.2) with
    | none => rfl
    | some j =>
      simp only
      rw [qarr_get b (lookupIdx_lt h1) (lookupIdx_lt h2), qtab_get b (lookupIdx_lt h1) (lookupIdx_lt h2)]

theorem sumA_eq (lk : List (Nat × Nat × Nat × Nat)) (k den qscale : Nat) {M : Nat} (hM : M < 2 ^ lk.length) :
    ∀ blocks : List DBlock, (∀ b ∈ blocks, flagIdxOK b.flags (flagIdx b.flags) = true ∧ b.flags.Nodup) →
    ((blocks.zip (blocks.map (preA lk k))).map fun bp => blockSumA bp.2 bp.1.flags (bitsOf M lk.length) *
        ((den / (bp.1.D k * qscale) : Nat) : Int)).sum =
      ((blocks.zip (blocks.map fun b => (tripleTable lk (tupList b.m) k b.t b.m, b.qtab))).map fun bp =>
        blockSumT bp.2.1 bp.1.flags bp.2.2 M * ((den / (bp.1.D k * qscale) : Nat) : Int)).sum
  | [], _ => rfl
  | b :: l, h => by
    simp only [List.map_cons, List.zip_cons_cons, List.sum_cons]
    rw [blockSumA_eq lk k b hM (h b List.mem_cons_self).1 (h b List.mem_cons_self).2,
      sumA_eq lk k den qscale hM l (fun b' hb' => h b' (List.mem_cons_of_mem _ hb'))]

theorem valNumA_eq (lk : List (Nat × Nat × Nat × Nat)) (blocks : List DBlock) (den qscale k : Nat) {M : Nat}
    (hM : M < 2 ^ lk.length) (hok : ∀ b ∈ blocks, flagIdxOK b.flags (flagIdx b.flags) = true ∧ b.flags.Nodup) :
    valNumA lk blocks (blocks.map (preA lk k)) den qscale k M =
      valNum k lk blocks den qscale M := by
  rw [← valNumT_eq]
  unfold valNumA valNumT
  rw [sumA_eq lk k den qscale hM blocks hok]

end BeatAvg.Check

namespace BeatAvg.Check

/-! ### Backtracking joins -/

theorem bjoin_sound {α : Type} {cand : Nat → Array α} {ok : Nat → α → Nat → α → Bool}
    {body : List (Nat × α) → Bool} (f : Nat → α) :
    ∀ (ys : List Nat) (acc : List (Nat × α)), bjoin cand ok body ys acc = true →
      (∀ y ∈ ys, f y ∈ cand y) → (∀ e ∈ acc, ∀ y ∈ ys, ok e.1 e.2 y (f y) = true) →
      ys.Pairwise (fun y y' => ok y (f y) y' (f y') = true) →
      body (ys.reverse.map (fun y => (y, f y)) ++ acc) = true
  | [], acc, h, _, _, _ => by simpa [bjoin] using h
  | y :: ys, acc, h, hc, hacc, hpw => by
    unfold bjoin at h
    have h1 := Array.all_eq_true'.1 h (f y) (hc y List.mem_cons_self)
    have hall : (acc.all fun e => ok e.1 e.2 y (f y)) = true :=
      List.all_eq_true.2 fun e he => hacc e he y List.mem_cons_self
    rw [hall, Bool.not_true, Bool.false_or] at h1
    have := bjoin_sound f ys ((y, f y) :: acc) h1 (fun y' hy' => hc y' (List.mem_cons_of_mem _ hy'))
      (fun e he y' hy' => by
        rcases List.mem_cons.1 he with rfl | he
        · exact List.rel_of_pairwise_cons hpw hy'
        · exact hacc e he y' (List.mem_cons_of_mem _ hy'))
      (List.Pairwise.of_cons hpw)
    simpa [List.reverse_cons, List.map_append] using this

theorem bcollect_complete {α : Type} {cand : Nat → Array α} {ok : Nat → α → Nat → α → Bool} (f : Nat → α) :
    ∀ (ys : List Nat) (acc : List (Nat × α)), (∀ y ∈ ys, f y ∈ cand y) →
      (∀ e ∈ acc, ∀ y ∈ ys, ok e.1 e.2 y (f y) = true) →
      ys.Pairwise (fun y y' => ok y (f y) y' (f y') = true) →
      ys.reverse.map (fun y => (y, f y)) ++ acc ∈ bcollect cand ok ys acc
  | [], acc, _, _, _ => by simp [bcollect]
  | y :: ys, acc, hc, hacc, hpw => by
    unfold bcollect
    rw [List.mem_flatMap]
    refine ⟨f y, Array.mem_toList_iff.2 (hc y List.mem_cons_self), ?_⟩
    have hall : (acc.all fun e => ok e.1 e.2 y (f y)) = true :=
      List.all_eq_true.2 fun e he => hacc e he y List.mem_cons_self
    rw [if_pos hall]
    have := bcollect_complete f ys ((y, f y) :: acc) (fun y' hy' => hc y' (List.mem_cons_of_mem _ hy'))
      (fun e he y' hy' => by
        rcases List.mem_cons.1 he with rfl | he
        · exact List.rel_of_pairwise_cons hpw hy'
        · exact hacc e he y' (List.mem_cons_of_mem _ hy'))
      (List.Pairwise.of_cons hpw)
    simpa [List.reverse_cons, List.map_append] using this

theorem lookup_eq_of_graph {α : Type} (f : Nat → α) :
    ∀ (l : List (Nat × α)), (∀ e ∈ l, e.2 = f e.1) → ∀ y, y ∈ l.map Prod.fst → l.lookup y = some (f y)
  | [], _, y, hy => by simp at hy
  | e :: l, h, y, hy => by
    rw [List.lookup_cons]
    by_cases hey : y = e.1
    · subst hey
      simp only [beq_self_eq_true]
      rw [h e List.mem_cons_self]
    · have hb : (y == e.1) = false := by simpa using hey
      rw [hb]
      simp only [List.map_cons, List.mem_cons, hey, false_or] at hy
      exact lookup_eq_of_graph f l (fun e' he' => h e' (List.mem_cons_of_mem _ he')) y hy

theorem toTuple_getD {α : Type} (f : Nat → α) (n : Nat) (d : α) (l : List (Nat × α))
    (hl : ∀ e ∈ l, e.2 = f e.1) {y : Nat} (hy : y < n) (hyl : y ∈ l.map Prod.fst) :
    (toTuple n d l).getD y d = f y := by
  unfold toTuple
  simp [Array.getD, hy, lookup_eq_of_graph f l hl y hyl]

theorem toTuple_size {α : Type} (n : Nat) (d : α) (l : List (Nat × α)) : (toTuple n d l).size = n := by
  simp [toTuple]

/-- The positions other than `r`, in increasing order. -/
theorem pairwise_filter_range (n r : Nat) : ((List.range n).filter (· != r)).Pairwise (· < ·) :=
  (List.pairwise_lt_range).filter _

theorem mem_filter_range {n r y : Nat} : y ∈ (List.range n).filter (· != r) ↔ y < n ∧ y ≠ r := by
  simp [List.mem_filter, List.mem_range]

/-- The assignment list of a backtracking over the positions other than `r`, anchored at `r`. -/
theorem keys_assign {α : Type} (f : Nat → α) (n r : Nat) (hr : r < n) {y : Nat} (hy : y < n) :
    y ∈ ((((List.range n).filter (· != r)).reverse.map fun y => (y, f y)) ++ [(r, f r)]).map Prod.fst := by
  by_cases hyr : y = r
  · subst hyr; simp
  · simp [List.mem_filter, hy, hyr]

theorem graph_assign {α : Type} (f : Nat → α) (ys : List Nat) (r : Nat) :
    ∀ e ∈ (ys.reverse.map fun y => (y, f y)) ++ [(r, f r)], e.2 = f e.1 := by
  intro e he
  simp only [List.mem_append, List.mem_map, List.mem_singleton] at he
  rcases he with ⟨y, _, rfl⟩ | rfl <;> rfl

end BeatAvg.Check

namespace BeatAvg.Check

open Std

/-! ### Anchored 8-tuples -/

/-- Every 8-tuple of numbers with consistent deletions and `K r = v` is among `anch8 D bd r v`. -/
theorem anch8_complete {D : Array (Array Nat)} {bd : Array (HashMap Nat (Array Nat))}
    (hbd : ∀ i < 7, byDelOK D (bd.getD i {}) i = true) {r : Nat} (hr : r < 8) (g : Nat → Nat)
    (hg : ∀ y < 8, g y < D.size)
    (hcons : ∀ z y, z < 8 → y < 8 → z ≠ y → consR z (D.getD (g z) #[]) y (D.getD (g y) #[]) = true) :
    ∃ T ∈ anch8 D bd r (g r), T.size = 8 ∧ ∀ y < 8, T.getD y 0 = g y := by
  set ys := (List.range 8).filter (· != r) with hys
  have hmem := bcollect_complete (cand := candA D bd r (g r))
    (ok := fun z kz y ky => consR z (D.getD kz #[]) y (D.getD ky #[])) g ys [(r, g r)] ?_ ?_ ?_
  · refine ⟨toTuple 8 0 (ys.reverse.map (fun y => (y, g y)) ++ [(r, g r)]), ?_, toTuple_size _ _ _, ?_⟩
    · unfold anch8
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
  · intro e he y hy
    rw [List.mem_singleton] at he
    subst he
    rw [hys, mem_filter_range] at hy
    exact hcons r y hr hy.1 (Ne.symm hy.2)
  · apply List.Pairwise.imp_of_mem _ (pairwise_filter_range 8 r)
    intro y y' hy hy' hlt
    rw [← hys, hys, mem_filter_range] at hy hy'
    exact hcons y y' hy.1 hy'.1 (Nat.ne_of_lt hlt)

end BeatAvg.Check
