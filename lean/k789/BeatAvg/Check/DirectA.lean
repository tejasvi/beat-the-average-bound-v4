import BeatAvg.Check.K9a
import BeatAvg.Core.DirectA

/-!
# Soundness of the direct check with the faster evaluation
-/

namespace BeatAvg.Check

theorem directOKA_sound {k : Nat} {blocks : List DBlock} {lamN lamD den qscale : Nat} {P : List Nat}
    (h : directOKA k blocks lamN lamD den qscale P = true) (hP : ∀ M ∈ P, M < 2 ^ (tupList k).length) :
    directOKT k blocks lamN lamD den qscale P = true := by
  unfold directOKA at h
  simp only [Bool.and_eq_true, List.all_eq_true] at h
  obtain ⟨⟨hpre, hflag⟩, hall⟩ := h
  have hpre' := hpre
  unfold directPre at hpre'
  simp only [Bool.and_eq_true, List.all_eq_true] at hpre'
  obtain ⟨-, hbl⟩ := hpre'
  have hok : ∀ b ∈ blocks, flagIdxOK b.flags (flagIdx b.flags) = true ∧ b.flags.Nodup := by
    intro b hb
    refine ⟨hflag b hb, ?_⟩
    have hw := (hbl b hb).1.1.1
    simp only [DBlock.wf, Bool.and_eq_true, decide_eq_true_eq] at hw
    exact hw.1.2
  unfold directOKT
  unfold directPre at hpre
  simp only [Bool.and_eq_true] at hpre ⊢
  refine ⟨hpre, ?_⟩
  simp only [List.all_eq_true]
  intro M hM
  have := hall M hM
  rwa [valNumA_eq (tupList k) blocks den qscale k (hP M hM) hok, ← valNumT_eq] at this

/-- A checked direct certificate with the faster evaluation gives the bound (Theorem 3.3 for `k` points). -/
theorem upperBound_of_directA (k : Nat) (levels : List (List TreeRec)) (hlen : 3 + levels.length = k)
    (hne : levels ≠ []) (blocks : List DBlock) (lamN lamD den qscale : Nat)
    (h : (chainOK 3 [0] levels && directOKA k blocks lamN lamD den qscale (chainList [0] levels)) = true)
    (hflag : FlagMethodSound k) : UpperBound ((lamN : ℝ) / lamD) := by
  rw [Bool.and_eq_true] at h
  obtain ⟨hchain, hdir⟩ := h
  have hlt := chainList_lt levels 3 [0] hchain hne
  rw [hlen] at hlt
  have hT := directOKA_sound hdir hlt
  exact upperBound_of_direct k levels hlen blocks lamN lamD den qscale (by rw [Bool.and_eq_true]; exact ⟨hchain, hT⟩)
    hflag

end BeatAvg.Check
