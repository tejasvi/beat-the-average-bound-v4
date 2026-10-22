import BeatAvg.Check.Tree

/-!
# Levels of extension trees: completeness of the rebuilt lists of patterns (Proposition 4.1)
-/

open Finset

namespace BeatAvg.Check

theorem ofTup_map_castSucc {k : Nat} (τ : Tup k) : ofTup (τ.map Fin.castSuccOrderEmb) = ofTup τ := rfl

theorem rank_map_castSucc {k : Nat} (Tp : TupEnum k) (T : TupEnum (k + 1))
    (hpre : ∃ lev, T.l = Tp.l ++ lev) (τ : Tup k) : T.rank (τ.map Fin.castSuccOrderEmb) = Tp.rank τ := by
  obtain ⟨lev, hl⟩ := hpre
  simp only [TupEnum.rank, ofTup_map_castSucc, hl, List.idxOf_append, Tp.mem τ, if_true]

theorem decode_castSucc {k : Nat} (Tp : TupEnum k) (T : TupEnum (k + 1))
    (hpre : ∃ lev, T.l = Tp.l ++ lev) (N : Nat) :
    restrict Fin.castSuccOrderEmb (T.decode N) = Tp.decode N := by
  funext τ
  simp only [restrict, TupEnum.decode, rank_map_castSucc Tp T hpre]

theorem tupAt_castSucc {k : Nat} (Tp : TupEnum k) (T : TupEnum (k + 1))
    (hpre : ∃ lev, T.l = Tp.l ++ lev) (t : Nat) (ht : t < Tp.l.length) (ht' : t < T.l.length) :
    T.tupAt t ht' = (Tp.tupAt t ht).map Fin.castSuccOrderEmb := by
  apply T.rank_injective
  rw [T.rank_tupAt, rank_map_castSucc Tp T hpre, Tp.rank_tupAt]

theorem level_sound {S : Type} (next : S → Nat × S) {k : Nat} (Tp : TupEnum k) (T : TupEnum (k + 1))
    (hpre : ∃ lev, T.l = Tp.l ++ lev) (recs : List (Nat × List Nat × S × List Nat))
    (hpar : ∀ M : Pat k, Realizable M → ∃ r ∈ recs, Tp.decode r.1 = M)
    (hok : recs.all (treeOK next (k + 1) Tp.l.length T.l) = true) :
    ∀ M : Pat (k + 1), Realizable M → ∃ r ∈ recs, ∃ x ∈ r.2.2.2, T.decode x = M := by
  intro M hM
  obtain ⟨r, hr, hdec⟩ := hpar _ (hM.restrict Fin.castSuccOrderEmb)
  have htr := List.all_eq_true.1 hok r hr
  obtain ⟨y, hy, hg, rfl⟩ := hM
  have hlen : Tp.l.length ≤ T.l.length := by
    obtain ⟨lev, hl⟩ := hpre; rw [hl, List.length_append]; omega
  simp only [treeOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range,
    List.contains_iff_mem] at htr
  obtain ⟨⟨⟨⟨hPlt, hnd⟩, hplen⟩, hcov⟩, hw⟩ := htr
  split at hw
  · rename_i s' rest hwalk
    have hP : ∀ t < Tp.l.length, r.1.testBit t = bitAt T (patOf y) t := by
      intro t ht
      have ht' : t < T.l.length := by omega
      have e1 : r.1.testBit t = Tp.decode r.1 (Tp.tupAt t ht) := by
        simp [TupEnum.decode, Tp.rank_tupAt]
      rw [e1, hdec, bitAt, dif_pos ht', tupAt_castSucc Tp T hpre t ht ht']
      rfl
    obtain ⟨pre, x, hsplit, hx, hdx⟩ := walk_sound ⟨k + 1, Tp.l.length, T.l, r.1, r.2.1⟩ next T rfl rfl hPlt
      hnd (fun v hv => hcov v (by simp only at hv ⊢; omega)) hy hg hP _ 0 0 0 _ _ _ _
      (by simp [hplen]) (by simp [Nat.zero_testBit]) (by simp [Nat.zero_testBit])
      (by simp [Nat.zero_testBit]) hwalk
    exact ⟨r, hr, x, by rw [hsplit]; exact List.mem_append_left _ hx, hdx⟩
  · simp at hw

/-- Base case: the single pattern of three points. -/
theorem level3_complete (T3 : TupEnum 3) :
    ∀ M : Pat 3, Realizable M → ∃ r ∈ [((0 : Nat), ([] : List Nat), (0 : Nat), ([] : List Nat))],
      T3.decode r.1 = M := by
  intro M _
  refine ⟨_, List.mem_singleton_self _, ?_⟩
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

end BeatAvg.Check
