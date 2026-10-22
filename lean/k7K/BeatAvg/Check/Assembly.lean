import BeatAvg.Check.Chain

/-!
# From a checked direct certificate to the bound (given Theorem 3.3 for `k` points)
-/

namespace BeatAvg.Check

theorem level3_all (T3 : TupEnum 3) : ∀ M : Pat 3, Realizable M → ∃ x ∈ [0], T3.decode x = M := by
  intro M _
  refine ⟨0, List.mem_singleton_self _, ?_⟩
  funext τ
  exfalso
  obtain ⟨⟨d, a, b, c⟩, h1, h2, h3, h4, h5⟩ := τ
  have hd := d.2; have ha := a.2; have hb := b.2; have hc := c.2
  have h1' : a.val < b.val := h1
  have h2' : b.val < c.val := h2
  have h3' : d.val ≠ a.val := fun e => h3 (Fin.ext e)
  have h4' : d.val ≠ b.val := fun e => h4 (Fin.ext e)
  have h5' : d.val ≠ c.val := fun e => h5 (Fin.ext e)
  omega

theorem enumOK_three : enumOK 3 = true := by decide

/-- A checked direct certificate (trees of levels 4 to `k`, blocks evaluated from the definition) gives the bound,
for every `k` for which Theorem 3.3 holds. -/
theorem upperBound_of_direct (k : Nat) (levels : List (List TreeRec)) (hlen : 3 + levels.length = k)
    (blocks : List DBlock) (lamN lamD den qscale : Nat)
    (h : (chainOK 3 [0] levels && directOKT k blocks lamN lamD den qscale (chainList [0] levels)) = true)
    (hflag : FlagMethodSound k) : UpperBound ((lamN : ℝ) / lamD) := by
  rw [Bool.and_eq_true, directOKT_eq] at h
  obtain ⟨hchain, hdir⟩ := h
  have henum : enumOK k = true := by
    simp only [directOK, Bool.and_eq_true] at hdir
    exact hdir.1.1.2
  subst hlen
  have hP := chain_sound levels 3 [0] (TupEnum.ofCheck 3 enumOK_three) rfl
    (level3_all _) hchain (TupEnum.ofCheck _ henum) rfl
  obtain ⟨bl, hpsd, hval⟩ := directOK_sound (TupEnum.ofCheck _ henum) rfl blocks lamN lamD den qscale _ hdir hP
  exact hflag bl hpsd _ hval

end BeatAvg.Check
