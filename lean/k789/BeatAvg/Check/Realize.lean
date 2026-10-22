import BeatAvg.Check.Gordan

/-!
# Realizability: restrictions, and Gordan exclusions of single patterns (the systems `S(M)`)
-/

open Finset

namespace BeatAvg

theorem L_comp {m k : Nat} (e : Fin m ↪o Fin k) (τ : Tup m) (y : Fin k → ℝ) :
    L τ (y ∘ e) = L (τ.map e) y := rfl

theorem patOf_comp {m k : Nat} (e : Fin m ↪o Fin k) (y : Fin k → ℝ) :
    patOf (y ∘ e) = restrict e (patOf y) := rfl

theorem Generic.comp {m k : Nat} {y : Fin k → ℝ} (hg : Generic y) (e : Fin m ↪o Fin k) :
    Generic (y ∘ e) :=
  ⟨fun i => hg.1 _, hg.2.1.comp e.injective, fun τ => by rw [L_comp]; exact hg.2.2 _⟩

theorem Realizable.restrict {m k : Nat} {M : Pat k} (h : Realizable M) (e : Fin m ↪o Fin k) :
    Realizable (BeatAvg.restrict e M) := by
  obtain ⟨y, hy, hg, rfl⟩ := h
  exact ⟨y ∘ e, hy.comp e.strictMono, hg.comp e, rfl⟩

end BeatAvg

namespace BeatAvg.Check

theorem certRows_mem {rowOf : Nat → Option (Nat → Int)} :
    ∀ {cert : List (Nat × Nat)} {rows : List ((Nat → Int) × Nat)}, certRows rowOf cert = some rows →
      ∀ p ∈ rows, ∃ rid, rowOf rid = some p.1
  | [], rows, h, p, hp => by
    simp only [certRows, Option.some.injEq] at h
    subst h; simp at hp
  | (rid, m) :: rest, rows, h, p, hp => by
    simp only [certRows] at h
    split at h
    · rename_i r rs hr hrs
      simp only [Option.some.injEq] at h
      subst h
      rcases List.mem_cons.1 hp with rfl | hp
      · exact ⟨rid, hr⟩
      · exact certRows_mem hrs p hp
    · simp at h

theorem certOK_sound {k : Nat} {rowOf : Nat → Option (Nat → Int)} {cert : List (Nat × Nat)}
    (h : certOK k rowOf cert = true) (y : Fin k → ℝ)
    (hy : ∀ rid r, rowOf rid = some r → 0 < dot r y) : False := by
  unfold certOK at h
  split at h
  · rename_i rows hrows
    exact gordanOK_sound h y fun p hp => by
      obtain ⟨rid, hr⟩ := certRows_mem hrows p hp
      exact hy rid p.1 hr
  · simp at h

/-- Every row of `S(M)` is positive at a point that realizes `M`. -/
theorem patRow_pos {k : Nat} (T : TupEnum k) {M : Nat} {y : Fin k → ℝ} (hy : StrictMono y)
    (hg : Generic y) (hM : patOf y = T.decode M) : ∀ rid r, patRow k T.l M rid = some r → 0 < dot r y := by
  intro rid r h
  unfold patRow at h
  split at h
  · rename_i hrid
    simp only [Option.some.injEq] at h
    subst h
    exact dot_orderRow_pos hy hg.1 hrid
  · split at h
    · rename_i q hq
      simp only [Option.some.injEq] at h
      subst h
      obtain ⟨hlt, hget⟩ := List.getElem?_eq_some_iff.1 hq
      set τ := T.tupAt (rid - k) hlt
      have hq' : ofTup τ = q := by simp [τ, TupEnum.tupAt, ofTup_toTup, hget]
      have hbit : M.testBit (rid - k) = patOf y τ := by
        rw [hM]
        simp [TupEnum.decode, τ, TupEnum.rank_tupAt]
      rw [← hq', hbit]
      exact dot_tupRow_pos hg τ
    · simp at h

theorem exclOK_sound {k : Nat} (T : TupEnum k) {M : Nat} {cert : List (Nat × Nat)}
    (h : exclOK k T.l M cert = true) : ¬ Realizable (T.decode M) := by
  rintro ⟨y, hy, hg, hM⟩
  exact certOK_sound h y (patRow_pos T hy hg hM)

end BeatAvg.Check
