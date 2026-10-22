import BeatAvg.Check.Direct
import BeatAvg.Core.Chain

/-!
# Soundness of chains of tree levels
-/

namespace BeatAvg.Check

theorem decode_congr {k : Nat} (T1 T2 : TupEnum k) (h : T1.l = T2.l) : T1.decode = T2.decode := by
  funext n τ
  simp [TupEnum.decode, TupEnum.rank, h]

theorem chain_sound : ∀ (levels : List (List TreeRec)) (k : Nat) (parents : List Nat) (Tk : TupEnum k),
    Tk.l = tupList k → (∀ M : Pat k, Realizable M → ∃ x ∈ parents, Tk.decode x = M) →
    chainOK k parents levels = true →
    ∀ (T' : TupEnum (k + levels.length)), T'.l = tupList (k + levels.length) →
      ∀ M : Pat (k + levels.length), Realizable M → ∃ x ∈ chainList parents levels, T'.decode x = M
  | [], k, parents, Tk, hTk, hpar, _, T', hT', M, hM => by
    obtain ⟨x, hx, hdx⟩ := hpar M hM
    refine ⟨x, hx, ?_⟩
    rw [decode_congr T' Tk (by rw [hT', hTk]; rfl)]
    exact hdx
  | recs :: rest, k, parents, Tk, hTk, hpar, h, T', hT', M, hM => by
    simp only [chainOK, Bool.and_eq_true, beq_iff_eq] at h
    obtain ⟨⟨⟨henum, hpareq⟩, hall⟩, hrest⟩ := h
    let T1 := TupEnum.ofCheck (k + 1) henum
    have hT1 : T1.l = tupList (k + 1) := rfl
    have hpre : ∃ lev, T1.l = Tk.l ++ lev := ⟨_, by rw [hT1, hTk]; rfl⟩
    have hpar1 : ∀ M : Pat k, Realizable M → ∃ r ∈ recs, Tk.decode r.1 = M := by
      intro M hM
      obtain ⟨x, hx, hdx⟩ := hpar M hM
      rw [← hpareq] at hx
      obtain ⟨r, hr, rfl⟩ := List.mem_map.1 hx
      exact ⟨r, hr, hdx⟩
    have hok : recs.all (treeOK nextTok (k + 1) Tk.l.length T1.l) = true := by
      rw [hTk, hT1]; exact hall
    have hlev := level_sound nextTok Tk T1 hpre recs hpar1 hok
    have hpar2 : ∀ M : Pat (k + 1), Realizable M → ∃ x ∈ recs.flatMap (·.2.2.2), T1.decode x = M := by
      intro M hM
      obtain ⟨r, hr, x, hx, hdx⟩ := hlev M hM
      exact ⟨x, List.mem_flatMap.2 ⟨r, hr, hx⟩, hdx⟩
    have e : k + (recs :: rest).length = k + 1 + rest.length := by simp; omega
    have := chain_sound rest (k + 1) _ T1 hT1 hpar2 hrest
    simp only [chainList]
    revert T' M
    rw [e]
    intro T' hT' M hM
    exact this T' hT' M hM

end BeatAvg.Check
