import BeatAvg.Check.K9b
import BeatAvg.K.K7Lit

/-!
# Soundness of the kernel check with 7 points, part 1: tables
-/

open Finset

namespace BeatAvg.Check

theorem del7_get {u : Nat} (hu : u < 7) :
    del7.getD u [] = restrIdx (tupList 7) (tupList 6) (ptsOf 7 (maskExcept 7 u)) := by
  rw [del7_eq, List.getD_eq_getElem?_getD, List.getElem?_map, List.getElem?_range hu]
  simp only [Option.map_some, Option.getD_some]
  exact getD_delIdx hu

/-- The face deleting `u`. -/
theorem faceBits_dec (T7 : TupEnum 7) (hT7 : T7.l = tupList 7) (T6 : TupEnum 6) (hT6 : T6.l = tupList 6)
    (x : Nat) (u : Fin 7) : T6.decode (faceBits x u) = restrict (Fin.succAboveOrderEmb u) (T7.decode x) := by
  unfold faceBits
  rw [del7_get u.2]
  have := decode_del T7 T6 u x
  rw [hT7, hT6] at this
  exact this

theorem faceBits_lt (x u : Nat) (hu : u < 7) : faceBits x u < 2 ^ (tupList 6).length := by
  unfold faceBits
  rw [del7_get hu]
  have := gather_lt x (restrIdx (tupList 7) (tupList 6) (ptsOf 7 (maskExcept 7 u)))
  rwa [restrIdx_length] at this

/-! ### Rows of the matrices -/

theorem addScaled_length : ∀ (acc : List Int) (c : Int) (v : List Int), (addScaled acc c v).length = acc.length
  | _ :: as, c, _ :: xs => by simp [addScaled, addScaled_length as c xs]
  | _, _, [] => by simp [addScaled]
  | [], _, _ :: _ => by simp [addScaled]

theorem addScaled_getD : ∀ (acc : List Int) (c : Int) (v : List Int) (j : Nat), j < acc.length →
    (addScaled acc c v).getD j 0 = acc.getD j 0 + c * v.getD j 0
  | a :: as, c, x :: xs, j, hj => by
    cases j with
    | zero => simp [addScaled]
    | succ j =>
      simp only [addScaled, List.getD_cons_succ]
      exact addScaled_getD as c xs j (by simpa using hj)
  | as, c, [], j, _ => by simp [addScaled]
  | [], _, _ :: _, j, hj => by simp at hj

theorem foldl_addScaled (i j : Nat) : ∀ (terms : List (Nat × List Int)) (acc : List Int), j < acc.length →
    (terms.foldl (fun acc p => addScaled acc ((p.1 : Int) * p.2.getD i 0) p.2) acc).getD j 0 =
      acc.getD j 0 + (terms.map fun p => (p.1 : Int) * p.2.getD i 0 * p.2.getD j 0).sum
  | [], acc, _ => by simp
  | p :: terms, acc, hj => by
    rw [List.foldl_cons, foldl_addScaled i j terms _ (by rw [addScaled_length]; exact hj),
      addScaled_getD acc _ p.2 j hj, List.map_cons, List.sum_cons]
    ring

theorem qrowList_getD (b : DBlock) {i j : Nat} (hj : j < b.flags.length) :
    (qrowList b i).getD j 0 = b.qint i j := by
  unfold qrowList DBlock.qint
  rw [foldl_addScaled i j b.terms _ (by simpa using hj)]
  simp [hj]

/-! ### Sorted fields -/

theorem fld_strictMono {S w n : Nat} (h : (List.range (n - 1)).all (fun q => decide (fld S w q < fld S w (q + 1))) = true) :
    ∀ a b, a < b → b < n → fld S w a < fld S w b := by
  have step : ∀ q, q + 1 < n → fld S w q < fld S w (q + 1) := by
    intro q hq
    have := List.all_eq_true.1 h q (List.mem_range.2 (by omega))
    simpa using this
  intro a b hab hb
  induction b with
  | zero => omega
  | succ b ih =>
    rcases Nat.lt_succ_iff_lt_or_eq.1 hab with hlt | heq
    · exact lt_trans (ih hlt (by omega)) (step b hb)
    · subst heq; exact step a hb

theorem fld_inj {S w n : Nat} (h : (List.range (n - 1)).all (fun q => decide (fld S w q < fld S w (q + 1))) = true)
    {a b : Nat} (ha : a < n) (hb : b < n) (hab : fld S w a = fld S w b) : a = b := by
  rcases Nat.lt_trichotomy a b with hlt | heq | hgt
  · exact absurd hab (ne_of_lt (fld_strictMono h a b hlt hb))
  · exact heq
  · exact absurd hab.symm (ne_of_lt (fld_strictMono h b a hgt ha))

theorem absentAt_sound {S w n key q : Nat}
    (h : (List.range (n - 1)).all (fun q => decide (fld S w q < fld S w (q + 1))) = true)
    (ha : absentAt S w n key q = true) : ∀ q' < n, fld S w q' ≠ key := by
  intro q' hq' heq
  unfold absentAt at ha
  simp only [Bool.or_eq_true, Bool.and_eq_true, decide_eq_true_eq] at ha
  rcases ha with (hn | hlt) | ⟨⟨hq, hlo⟩, hhi⟩
  · omega
  · rcases Nat.eq_zero_or_pos q' with h0 | hpos
    · subst h0
      exact absurd heq (ne_of_gt hlt)
    · have := fld_strictMono h 0 q' hpos hq'
      omega
  · rcases Nat.lt_or_ge q q' with hqq | hqq
    · rcases hhi with hhi | hhi
      · omega
      · rcases Nat.eq_or_lt_of_le (show q + 1 ≤ q' from hqq) with heq' | hlt'
        · subst heq'
          exact absurd heq (ne_of_gt hhi)
        · have := fld_strictMono h (q + 1) q' hlt' hq'
          omega
    · rcases Nat.eq_or_lt_of_le (show q' ≤ q from hqq) with heq' | hlt'
      · subst heq'
        exact absurd heq (ne_of_lt hlo)
      · have := fld_strictMono h q' q hlt' hq
        omega

/-! ### The block (1,4) -/

theorem fld_lt (x w i : Nat) : fld x w i < 2 ^ w := by
  unfold fld
  exact lt_of_le_of_lt Nat.and_le_right (Nat.sub_lt (Nat.two_pow_pos w) Nat.one_pos)

theorem blockSum14K_eq {T : K7Tab} {b : DBlock} (h : tab14OK T b = true) (x : Nat) :
    blockSum14K T x = blockSumT tab14 b.flags b.qtab x := by
  unfold tab14OK at h
  simp only [Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range, beq_iff_eq] at h
  obtain ⟨⟨⟨⟨hn, hn15⟩, hshape⟩, hft⟩, hq⟩ := h
  unfold blockSum14K blockSumT
  congr 1
  apply List.map_congr_left
  intro e he
  obtain ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩ := hshape e he
  have hA : gather x e.1 < 16 := by have := gather_lt x e.1; rwa [h1] at this
  have hB : gather x e.2.2.1 < 16 := by have := gather_lt x e.2.2.1; rwa [h3] at this
  have hkA := hft (gather x e.1 + 16 * e.2.1) (by omega)
  have hkB := hft (gather x e.2.2.1 + 16 * e.2.2.2) (by omega)
  have e1 : (gather x e.1 + 16 * e.2.1) % 16 = gather x e.1 := by omega
  have e2 : (gather x e.1 + 16 * e.2.1) / 16 = e.2.1 := by omega
  have e3 : (gather x e.2.2.1 + 16 * e.2.2.2) % 16 = gather x e.2.2.1 := by omega
  have e4 : (gather x e.2.2.1 + 16 * e.2.2.2) / 16 = e.2.2.2 := by omega
  rw [e1, e2] at hkA
  rw [e3, e4] at hkB
  simp only
  rw [hkA, hkB]
  cases hlA : lookupIdx b.flags (gather x e.1, e.2.1) with
  | none => simp
  | some i =>
    cases hlB : lookupIdx b.flags (gather x e.2.2.1, e.2.2.2) with
    | none => simp
    | some j =>
      have hi := lookupIdx_lt hlA
      have hj := lookupIdx_lt hlB
      simp only [Nat.add_sub_cancel, Nat.succ_pos, and_self, if_true]
      rw [hq i (by omega) j (by omega), qtab_get b hi hj]

end BeatAvg.Check
