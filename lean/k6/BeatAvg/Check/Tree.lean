import BeatAvg.Check.Realize
import BeatAvg.Core.Tree

/-!
# Extension trees (Proposition 4.1 of the paper)

A tree for a parent pattern `P` of `k - 1` points decides the `n` tuples of `T_k` that contain the last point, in the
order `perm`. Tokens, read from a stream with `next`: `2` = both signs (subtree for bit 1, then for bit 0);
`b ∈ {0, 1}` followed by a Gordan certificate `c, row₁, mult₁, …` refuting the other sign. The walk compares the
leaves, in order, with a given list of encoded `k`-patterns.
-/

open Finset

namespace BeatAvg.Check

variable {S : Type}

theorem walk_suffix (C : TreeCtx) (next : S → Nat × S) :
    ∀ (rem i amask aval : Nat) (s : S) (leaves : List Nat) (s' : S) (leaves' : List Nat),
      walk C next rem i amask aval s leaves = some (s', leaves') → ∃ pre, leaves = pre ++ leaves'
  | 0, i, amask, aval, s, leaves, s', leaves', h => by
    unfold walk at h
    split at h
    · rename_i x rest
      split at h
      · simp only [Option.some.injEq, Prod.mk.injEq] at h
        exact ⟨[x], by simp [h.2]⟩
      · simp at h
    · simp at h
  | rem + 1, i, amask, aval, s, leaves, s', leaves', h => by
    unfold walk at h
    split at h
    rename_i tok s1 _
    split at h
    · split at h
      · rename_i s2 l2 h2
        obtain ⟨pre1, rfl⟩ := walk_suffix C next rem _ _ _ _ _ _ _ h2
        obtain ⟨pre2, rfl⟩ := walk_suffix C next rem _ _ _ _ _ _ _ h
        exact ⟨pre1 ++ pre2, by simp⟩
      · simp at h
    · split at h
      · split at h
        rename_i c s2 _
        split at h
        rename_i cert s3 _
        split at h
        · exact walk_suffix C next rem _ _ _ _ _ _ _ h
        · simp at h
      · simp at h

/-- The sign of a pattern at the tuple with position `t` (`false` beyond the end). -/
def bitAt {k : Nat} (T : TupEnum k) (M : Pat k) (t : Nat) : Bool :=
  if h : t < T.l.length then M (T.tupAt t h) else false

theorem bitAt_rank {k : Nat} (T : TupEnum k) (M : Pat k) (τ : Tup k) : bitAt T M (T.rank τ) = M τ := by
  simp [bitAt, T.rank_lt τ, TupEnum.tupAt_rank]

theorem tupRow_pos_of_bitAt {k : Nat} (T : TupEnum k) {y : Fin k → ℝ} (hg : Generic y) {t : Nat}
    {q : Nat × Nat × Nat × Nat} (hq : T.l[t]? = some q) :
    0 < dot (tupRow q (bitAt T (patOf y) t)) y := by
  obtain ⟨hlt, hget⟩ := List.getElem?_eq_some_iff.1 hq
  have hq' : ofTup (T.tupAt t hlt) = q := by simp [TupEnum.tupAt, ofTup_toTup, hget]
  have hb : bitAt T (patOf y) t = patOf y (T.tupAt t hlt) := by simp [bitAt, hlt]
  rw [← hq', hb]
  exact dot_tupRow_pos hg _

/-- Every row offered at a node is positive at a point realizing a pattern that agrees with the parent, with the
decided tuples, and with the sign `bad` at the tuple `u`. -/
theorem nodeRow_pos {C : TreeCtx} {k : Nat} (T : TupEnum k) (hk : C.k = k) (hl : C.l = T.l) {y : Fin k → ℝ}
    (hy : StrictMono y) (hg : Generic y) {amask aval u : Nat} {bad : Bool}
    (hP : ∀ t < C.np, C.P.testBit t = bitAt T (patOf y) t)
    (hpath : ∀ v, amask.testBit v = true → aval.testBit v = bitAt T (patOf y) (C.np + v))
    (hbad : bad = bitAt T (patOf y) (C.np + u)) :
    ∀ rid r, nodeRow C amask aval u bad rid = some r → 0 < dot r y := by
  subst hk
  intro rid r h
  unfold nodeRow at h
  split at h
  · rename_i hrid
    simp only [Option.some.injEq] at h
    subst h
    exact dot_orderRow_pos hy hg.1 hrid
  · split at h
    · simp at h
    · rename_i q hq
      rw [hl] at hq
      have hrk : C.k ≤ rid := by omega
      split at h
      · rename_i ht
        simp only [Option.some.injEq] at h
        subst h
        rw [hP _ ht]
        exact tupRow_pos_of_bitAt T hg hq
      · rename_i ht
        have e : C.np + (rid - C.k - C.np) = rid - C.k := by omega
        split at h
        · rename_i hv
          simp only [Option.some.injEq] at h
          subst h
          rw [hbad, ← hv, e]
          exact tupRow_pos_of_bitAt T hg hq
        · split at h
          · rename_i hm
            simp only [Option.some.injEq] at h
            subst h
            rw [hpath _ hm, e]
            exact tupRow_pos_of_bitAt T hg hq
          · simp at h

end BeatAvg.Check

namespace BeatAvg.Check

variable {S : Type}

theorem take_succ_mem {l : List Nat} {i : Nat} (hi : i < l.length) (v : Nat) :
    v ∈ l.take (i + 1) ↔ v ∈ l.take i ∨ v = l[i] := by
  have : l.take (i + 1) = l.take i ++ [l[i]] := by
    rw [List.take_add_one, List.getElem?_eq_getElem hi]; rfl
  rw [this, List.mem_append, List.mem_singleton]

theorem testBit_or_two_pow (a u v : Nat) : (a ||| 2 ^ u).testBit v = true ↔ a.testBit v = true ∨ v = u := by
  simp only [Nat.testBit_or, Nat.testBit_two_pow, Bool.or_eq_true, decide_eq_true_eq]
  constructor <;> rintro (h | h) <;> first | exact Or.inl h | exact Or.inr h.symm

theorem testBit_or_two_pow_ne (a u v : Nat) (h : v ≠ u) : (a ||| 2 ^ u).testBit v = a.testBit v := by
  simp only [Nat.testBit_or, Nat.testBit_two_pow]
  have : ¬ u = v := fun e => h e.symm
  simp [this]

theorem testBit_or_two_pow_self (a u : Nat) : (a ||| 2 ^ u).testBit u = true := by
  simp [Nat.testBit_or, Nat.testBit_two_pow]

theorem getElem_not_mem_take {l : List Nat} (hnd : l.Nodup) {i : Nat} (hi : i < l.length) :
    l[i] ∉ l.take i := by
  have h1 : (l.take (i + 1)).Nodup := hnd.sublist (List.take_sublist _ _)
  rw [List.take_add_one, List.getElem?_eq_getElem hi, List.nodup_append] at h1
  intro hm
  exact h1.2.2 _ hm _ (by simp) rfl

theorem walk_sound (C : TreeCtx) (next : S → Nat × S) {k : Nat} (T : TupEnum k) (hk : C.k = k)
    (hl : C.l = T.l) (hPlt : C.P < 2 ^ C.np) (hnodup : C.perm.Nodup)
    (hcover : ∀ v, C.np + v < T.l.length → v ∈ C.perm)
    {y : Fin k → ℝ} (hy : StrictMono y) (hg : Generic y)
    (hP : ∀ t < C.np, C.P.testBit t = bitAt T (patOf y) t) :
    ∀ (rem i amask aval : Nat) (s : S) (leaves : List Nat) (s' : S) (leaves' : List Nat),
      rem + i = C.perm.length →
      (∀ v, amask.testBit v = true ↔ v ∈ C.perm.take i) →
      (∀ v, aval.testBit v = true → amask.testBit v = true) →
      (∀ v, amask.testBit v = true → aval.testBit v = bitAt T (patOf y) (C.np + v)) →
      walk C next rem i amask aval s leaves = some (s', leaves') →
      ∃ pre x, leaves = pre ++ leaves' ∧ x ∈ pre ∧ T.decode x = patOf y
  | 0, i, amask, aval, s, leaves, s', leaves', hrem, hinv, hsub, hpath, h => by
    unfold walk at h
    split at h
    · rename_i x rest
      split at h
      · rename_i hx
        simp only [Option.some.injEq, Prod.mk.injEq] at h
        obtain ⟨-, rfl⟩ := h
        refine ⟨[x], x, rfl, by simp, ?_⟩
        have hx' : x = 2 ^ C.np * aval + C.P := by simpa using hx
        funext τ
        simp only [TupEnum.decode, hx', Nat.testBit_two_pow_mul_add aval hPlt]
        have ht := T.rank_lt τ
        split
        · rename_i hlt
          rw [hP _ hlt, bitAt_rank]
        · rename_i hge
          have hv : C.np + (T.rank τ - C.np) = T.rank τ := by omega
          have hmem : T.rank τ - C.np ∈ C.perm.take i := by
            rw [show i = C.perm.length by omega, List.take_length]
            exact hcover _ (by omega)
          rw [hpath _ ((hinv _).2 hmem), hv, bitAt_rank]
      · simp at h
    · simp at h
  | rem + 1, i, amask, aval, s, leaves, s', leaves', hrem, hinv, hsub, hpath, h => by
    have hi : i < C.perm.length := by omega
    have hu : C.perm.getD i 0 = C.perm[i] := by simp [List.getD_eq_getElem?_getD, hi]
    have hnot : ¬ amask.testBit (C.perm.getD i 0) = true := fun hm =>
      getElem_not_mem_take hnodup hi (hu ▸ (hinv _).1 hm)
    have hav0 : aval.testBit (C.perm.getD i 0) = false := by
      cases e : aval.testBit (C.perm.getD i 0)
      · rfl
      · exact absurd (hsub _ e) hnot
    have hinv1 : ∀ v, (amask ||| 2 ^ C.perm.getD i 0).testBit v = true ↔ v ∈ C.perm.take (i + 1) := by
      intro v
      rw [testBit_or_two_pow, take_succ_mem hi, hinv v, hu]
    -- the decided set grows by `u`; values outside `u` are unchanged
    have hsub1 : ∀ v, aval.testBit v = true → (amask ||| 2 ^ C.perm.getD i 0).testBit v = true :=
      fun v hv => (testBit_or_two_pow _ _ _).2 (Or.inl (hsub v hv))
    have hsub1' : ∀ v, (aval ||| 2 ^ C.perm.getD i 0).testBit v = true →
        (amask ||| 2 ^ C.perm.getD i 0).testBit v = true := by
      intro v hv
      rcases (testBit_or_two_pow _ _ _).1 hv with hv | hv
      · exact hsub1 v hv
      · exact (testBit_or_two_pow _ _ _).2 (Or.inr hv)
    have hold : ∀ v, (amask ||| 2 ^ C.perm.getD i 0).testBit v = true → v ≠ C.perm.getD i 0 →
        amask.testBit v = true := fun v hv hne => by
      rcases (testBit_or_two_pow _ _ _).1 hv with hv | hv
      · exact hv
      · exact absurd hv hne
    -- path condition with value `b` at `u`
    have hpath1 : ∀ (b : Bool), bitAt T (patOf y) (C.np + C.perm.getD i 0) = b →
        ∀ av : Nat, av.testBit (C.perm.getD i 0) = b → (∀ v, v ≠ C.perm.getD i 0 → av.testBit v = aval.testBit v) →
        ∀ v, (amask ||| 2 ^ C.perm.getD i 0).testBit v = true → av.testBit v = bitAt T (patOf y) (C.np + v) := by
      intro b hb av hav hoth v hv
      by_cases e : v = C.perm.getD i 0
      · subst e; rw [hav, hb]
      · rw [hoth v e]; exact hpath v (hold v hv e)
    unfold walk at h
    split at h
    rename_i tok s1 _
    by_cases h2 : tok = 2
    · rw [if_pos (by simp [h2])] at h
      split at h
      · rename_i s2 l2 h2'
        cases hb : bitAt T (patOf y) (C.np + C.perm.getD i 0)
        · obtain ⟨pre1, rfl⟩ := walk_suffix C next rem _ _ _ _ _ _ _ h2'
          obtain ⟨pre2, x, rfl, hx, hdx⟩ := walk_sound C next T hk hl hPlt hnodup hcover hy hg hP rem (i + 1)
            _ aval s2 l2 s' leaves' (by omega) hinv1 hsub1
            (hpath1 false hb aval hav0 (fun _ _ => rfl)) h
          exact ⟨pre1 ++ pre2, x, by simp, by simp [hx], hdx⟩
        · obtain ⟨pre1, x, rfl, hx, hdx⟩ := walk_sound C next T hk hl hPlt hnodup hcover hy hg hP rem (i + 1)
            _ _ s1 leaves s2 l2 (by omega) hinv1 hsub1'
            (hpath1 true hb _ (testBit_or_two_pow_self _ _) (fun v e => testBit_or_two_pow_ne _ _ _ e)) h2'
          obtain ⟨pre2, rfl⟩ := walk_suffix C next rem _ _ _ _ _ _ _ h
          exact ⟨pre1 ++ pre2, x, by simp, by simp [hx], hdx⟩
      · exact absurd h (by simp)
    · rw [if_neg (by simp [h2])] at h
      by_cases h1 : tok ≤ 1
      · rw [if_pos h1] at h
        split at h
        rename_i c s2 _
        split at h
        rename_i cert s3 _
        by_cases hc : certOK C.k (nodeRow C amask aval (C.perm.getD i 0) (tok == 0)) cert = true
        · rw [if_pos hc] at h
          have htok01 : tok = 0 ∨ tok = 1 := by omega
          have hb : bitAt T (patOf y) (C.np + C.perm.getD i 0) = (tok == 1) := by
            by_contra hne
            have hbad : (tok == 0) = bitAt T (patOf y) (C.np + C.perm.getD i 0) := by
              rcases htok01 with rfl | rfl <;>
                cases e : bitAt T (patOf y) (C.np + C.perm.getD i 0) <;> simp_all
            have hc' : certOK k (nodeRow C amask aval (C.perm.getD i 0) (tok == 0)) cert = true := hk ▸ hc
            exact certOK_sound hc' y (nodeRow_pos T hk hl hy hg hP hpath hbad)
          rcases htok01 with rfl | rfl
          · exact walk_sound C next T hk hl hPlt hnodup hcover hy hg hP rem (i + 1) _ _ s3 leaves s' leaves'
              (by omega) hinv1 hsub1 (hpath1 false (by simpa using hb) aval hav0 (fun _ _ => rfl)) h
          · exact walk_sound C next T hk hl hPlt hnodup hcover hy hg hP rem (i + 1) _ _ s3 leaves s' leaves'
              (by omega) hinv1 hsub1'
              (hpath1 true (by simpa using hb) _ (testBit_or_two_pow_self _ _)
                (fun v e => testBit_or_two_pow_ne _ _ _ e)) h
        · rw [if_neg hc] at h; exact absurd h (by simp)
      · rw [if_neg h1] at h; exact absurd h (by simp)

end BeatAvg.Check
