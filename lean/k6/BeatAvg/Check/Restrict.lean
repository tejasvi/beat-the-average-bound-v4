import BeatAvg.Check.Masks

/-!
# Restrictions and flags computed on bits
-/

open Finset

namespace BeatAvg.Check

theorem testBit_gather (M : Nat) : ∀ (idx : List Nat) (i : Nat),
    (gather M idx).testBit i = if h : i < idx.length then M.testBit idx[i] else false
  | [], i => by simp [gather]
  | j :: rest, i => by
    have hb : (if M.testBit j then 1 else 0) < 2 ^ 1 := by split <;> norm_num
    have e : gather M (j :: rest) = 2 ^ 1 * gather M rest + (if M.testBit j then 1 else 0) := by
      simp only [gather]; ring
    rw [e, Nat.testBit_two_pow_mul_add _ hb]
    cases i with
    | zero => cases hj : M.testBit j <;> simp [hj]
    | succ i =>
      simp only [show ¬ (i + 1 < 1) by omega, if_false, Nat.add_sub_cancel, testBit_gather M rest i,
        List.length_cons, List.getElem_cons_succ]
      by_cases h : i < rest.length
      · simp [h]
      · simp [h, show ¬ (i + 1 < rest.length + 1) by omega]

theorem gather_lt (M : Nat) : ∀ idx : List Nat, gather M idx < 2 ^ idx.length
  | [] => by simp [gather]
  | j :: rest => by
    have := gather_lt M rest
    simp only [gather, List.length_cons, Nat.pow_succ]
    split <;> omega

theorem ptsOf_length (k W : Nat) : (ptsOf k W).length = popcount k W := rfl

theorem mem_ptsOf {k W x : Nat} : x ∈ ptsOf k W ↔ x < k ∧ W.testBit x = true := by
  simp [ptsOf, List.mem_filter, List.mem_range]

theorem ptsOf_pairwise (k W : Nat) : (ptsOf k W).Pairwise (· < ·) :=
  (List.pairwise_lt_range).filter _

/-- `orderEmbOfFin` of the point set of a mask enumerates `ptsOf`. -/
theorem orderEmbOfFin_ofMask {k W m : Nat} (U : Finset (Fin k)) (hU : U = ofMask k W) (h : U.card = m)
    (i : Fin m) : ((U.orderEmbOfFin h i : Fin k) : Nat) =
      (ptsOf k W)[(i : Nat)]'(by rw [ptsOf_length, ← card_ofMask, ← hU, h]; exact i.2) := by
  subst hU
  have hlen : (ptsOf k W).length = m := by rw [ptsOf_length, ← card_ofMask, h]
  let f : Fin m → Fin k := fun j => ⟨(ptsOf k W)[(j : Nat)]'(hlen ▸ j.2),
    (mem_ptsOf.1 (List.getElem_mem _)).1⟩
  have hf : f = (ofMask k W).orderEmbOfFin h := by
    apply Finset.orderEmbOfFin_unique h
    · intro x
      exact mem_ofMask.2 (mem_ptsOf.1 (List.getElem_mem _)).2
    · intro a b hab
      exact List.pairwise_iff_getElem.1 (ptsOf_pairwise k W) _ _ _ _ hab
  rw [← hf]

theorem decode_inj {k : Nat} (T : TupEnum k) {a b : Nat} (ha : a < 2 ^ T.l.length) (hb : b < 2 ^ T.l.length)
    (h : T.decode a = T.decode b) : a = b := by
  apply Nat.eq_of_testBit_eq
  intro i
  by_cases hi : i < T.l.length
  · have := congrFun h (T.tupAt i hi)
    simpa [TupEnum.decode, T.rank_tupAt] using this
  · rw [testBit_ge_of_lt ha (not_lt.1 hi), testBit_ge_of_lt hb (not_lt.1 hi)]

theorem restrIdx_length (lk lm : List (Nat × Nat × Nat × Nat)) (pts : List Nat) :
    (restrIdx lk lm pts).length = lm.length := by simp [restrIdx]

theorem restrBits_lt (lk lm : List (Nat × Nat × Nat × Nat)) (k W M : Nat) :
    restrBits lk lm k W M < 2 ^ lm.length := by
  have := gather_lt M (restrIdx lk lm (ptsOf k W))
  rwa [restrIdx_length] at this

theorem getD_ptsOf {k W m : Nat} (U : Finset (Fin k)) (hU : U = ofMask k W) (h : U.card = m) (i : Fin m) :
    (ptsOf k W).getD i 0 = ((U.orderEmbOfFin h i : Fin k) : Nat) := by
  have hlen : (ptsOf k W).length = m := by rw [ptsOf_length, ← card_ofMask, ← hU, h]
  rw [orderEmbOfFin_ofMask U hU h i, List.getD_eq_getElem?_getD, List.getElem?_eq_getElem (hlen ▸ i.2),
    Option.getD_some]

/-- Restriction on bits is restriction of patterns. -/
theorem decode_restrBits {k m : Nat} (Tk : TupEnum k) (Tm : TupEnum m) {W : Nat} (U : Finset (Fin k))
    (hU : U = ofMask k W) (h : U.card = m) (M : Nat) :
    Tm.decode (restrBits Tk.l Tm.l k W M) = restrict (U.orderEmbOfFin h) (Tk.decode M) := by
  funext τ
  have hr' : Tm.rank τ < (restrIdx Tk.l Tm.l (ptsOf k W)).length := by
    rw [restrIdx_length]; exact Tm.rank_lt τ
  show (gather M (restrIdx Tk.l Tm.l (ptsOf k W))).testBit (Tm.rank τ) = M.testBit (Tk.rank (τ.map _))
  rw [testBit_gather, dif_pos hr']
  have hq : Tm.l[Tm.rank τ]'(Tm.rank_lt τ) = ofTup τ := List.getElem_idxOf _
  simp only [restrIdx, List.getElem_map]
  simp only [hq]
  simp only [TupEnum.rank]
  congr 2
  simp only [ofTup, getD_ptsOf U hU h]
  rfl

/-- The positions of `J` in the point set of `W`, as a mask. -/
theorem ofMask_gather_ptsOf {k m J W : Nat} (U : Finset (Fin k)) (hU : U = ofMask k W) (h : U.card = m) :
    ofMask m (gather J (ptsOf k W)) = univ.filter fun i => U.orderEmbOfFin h i ∈ ofMask k J := by
  have hlen : (ptsOf k W).length = m := by rw [ptsOf_length, ← card_ofMask, ← hU, h]
  ext i
  simp only [mem_ofMask, mem_filter, mem_univ, true_and, testBit_gather, hlen, i.2, dif_pos]
  rw [orderEmbOfFin_ofMask U hU h i]

/-- The flag of `(J, A)` in a decoded pattern is the decoded flag key. -/
theorem flagOf_eq_key {k m : Nat} (Tk : TupEnum k) (Tm : TupEnum m) (M J A : Nat)
    (h : (ofMask k J ∪ ofMask k A).card = m) :
    flagOf (Tk.decode M) (ofMask k J) (ofMask k A) h =
      (Tm.decode (flagKey Tk.l Tm.l k M J A).1, ofMask m (flagKey Tk.l Tm.l k M J A).2) := by
  have hU : ofMask k J ∪ ofMask k A = ofMask k (J ||| A) := (ofMask_or k J A).symm
  simp only [flagOf, flagKey]
  rw [decode_restrBits Tk Tm _ hU h, ofMask_gather_ptsOf _ hU h]

theorem flagKey_lt {k m : Nat} (Tk : TupEnum k) (Tm : TupEnum m) (M J A : Nat)
    (h : (ofMask k J ∪ ofMask k A).card = m) :
    (flagKey Tk.l Tm.l k M J A).1 < 2 ^ Tm.l.length ∧ (flagKey Tk.l Tm.l k M J A).2 < 2 ^ m := by
  refine ⟨restrBits_lt _ _ _ _ _, ?_⟩
  have hlen : (ptsOf k (J ||| A)).length = m := by
    rw [ptsOf_length, ← card_ofMask, ofMask_or, h]
  have := gather_lt J (ptsOf k (J ||| A))
  rwa [hlen] at this

/-- The flag decoded from a canonical pair `(bits, positions)`. -/
def decFlag {m : Nat} (Tm : TupEnum m) (f : Nat × Nat) : Flag m := (Tm.decode f.1, ofMask m f.2)

/-- `(J, A)` gives the decoded flag `f` iff `|J ∪ A| = m` and the flag key equals `f`. -/
theorem givesFlag_iff {k m : Nat} (Tk : TupEnum k) (Tm : TupEnum m) (M J A : Nat) (f : Nat × Nat)
    (hf1 : f.1 < 2 ^ Tm.l.length) (hf2 : f.2 < 2 ^ m) :
    GivesFlag (Tk.decode M) (ofMask k J) (ofMask k A) (decFlag Tm f) ↔
      (ofMask k J ∪ ofMask k A).card = m ∧ flagKey Tk.l Tm.l k M J A = f := by
  constructor
  · rintro ⟨h, hfl⟩
    refine ⟨h, ?_⟩
    rw [flagOf_eq_key Tk Tm M J A h] at hfl
    simp only [decFlag, Prod.mk.injEq] at hfl
    obtain ⟨hk1, hk2⟩ := flagKey_lt Tk Tm M J A h
    have e1 := decode_inj Tm hk1 hf1 hfl.1
    have e2 := ofMask_inj hk2 hf2 hfl.2
    exact Prod.ext e1 e2
  · rintro ⟨h, hkey⟩
    refine ⟨h, ?_⟩
    rw [flagOf_eq_key Tk Tm M J A h, hkey]
    rfl

end BeatAvg.Check
