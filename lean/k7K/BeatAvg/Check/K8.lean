import BeatAvg.Check.HierTop

/-!
# Soundness of the check with 8 points, part 1: bounds on tree leaves, and the blocks of the lower kind
-/

open Finset

namespace BeatAvg.Check

variable {S : Type}

/-- The leaves matched by a walk are below `2 ^ (np + N)` when the decided positions are below `N`. -/
theorem walk_lt (C : TreeCtx) (next : S → Nat × S) (N : Nat) (hPlt : C.P < 2 ^ C.np)
    (hperm : ∀ v ∈ C.perm, v < N) :
    ∀ (rem i amask aval : Nat) (s : S) (leaves : List Nat) (s' : S) (leaves' : List Nat),
      rem + i ≤ C.perm.length → aval < 2 ^ N →
      walk C next rem i amask aval s leaves = some (s', leaves') →
      ∃ pre, leaves = pre ++ leaves' ∧ ∀ x ∈ pre, x < 2 ^ (C.np + N)
  | 0, i, amask, aval, s, leaves, s', leaves', _, hav, h => by
    unfold walk at h
    split at h
    · rename_i x rest
      split at h
      · rename_i hx
        simp only [Option.some.injEq, Prod.mk.injEq] at h
        refine ⟨[x], by simp [h.2], ?_⟩
        intro y hy
        rw [List.mem_singleton] at hy
        subst hy
        have hx' : y = 2 ^ C.np * aval + C.P := by simpa using hx
        rw [hx', pow_add]
        calc 2 ^ C.np * aval + C.P < 2 ^ C.np * aval + 2 ^ C.np := by omega
          _ = 2 ^ C.np * (aval + 1) := by ring
          _ ≤ 2 ^ C.np * 2 ^ N := Nat.mul_le_mul_left _ hav
      · simp at h
    · simp at h
  | rem + 1, i, amask, aval, s, leaves, s', leaves', hrem, hav, h => by
    have hi : i < C.perm.length := by omega
    have hu : C.perm.getD i 0 < N := by
      rw [List.getD_eq_getElem _ _ hi]; exact hperm _ (List.getElem_mem hi)
    have hpow : 2 ^ C.perm.getD i 0 < 2 ^ N := Nat.pow_lt_pow_right (by norm_num) hu
    have hav1 : aval ||| 2 ^ C.perm.getD i 0 < 2 ^ N := Nat.or_lt_two_pow hav hpow
    unfold walk at h
    split at h
    rename_i tok s1 _
    split at h
    · split at h
      · rename_i s2 l2 h2
        obtain ⟨pre1, rfl, hp1⟩ := walk_lt C next N hPlt hperm rem _ _ _ _ _ _ _ (by omega) hav1 h2
        obtain ⟨pre2, rfl, hp2⟩ := walk_lt C next N hPlt hperm rem _ _ _ _ _ _ _ (by omega) hav h
        refine ⟨pre1 ++ pre2, by simp, ?_⟩
        intro x hx
        rcases List.mem_append.1 hx with hx | hx
        · exact hp1 x hx
        · exact hp2 x hx
      · simp at h
    · split at h
      · split at h
        rename_i c s2 _
        split at h
        rename_i cert s3 _
        split at h
        · refine walk_lt C next N hPlt hperm rem _ _ _ _ _ _ _ (by omega) ?_ h
          split_ifs
          · exact hav1
          · exact hav
        · simp at h
      · simp at h

/-- The leaves of an accepted tree are bit vectors over `l`. -/
theorem treeOK_leaves_lt (next : S → Nat × S) (k np : Nat) (l : List (Nat × Nat × Nat × Nat))
    (r : Nat × List Nat × S × List Nat) (h : treeOK next k np l r = true) (hnp : np ≤ l.length) :
    ∀ x ∈ r.2.2.2, x < 2 ^ l.length := by
  simp only [treeOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range,
    List.contains_iff_mem] at h
  obtain ⟨⟨⟨⟨hPlt, hnd⟩, hplen⟩, hcov⟩, hw⟩ := h
  split at hw
  · rename_i s' rest hwalk
    have hperm : ∀ v ∈ r.2.1, v < l.length - np := by
      intro v hv
      have hsub : (List.range (l.length - np)).toFinset ⊆ r.2.1.toFinset := by
        intro w hw'
        rw [List.mem_toFinset] at hw' ⊢
        exact hcov w (List.mem_range.1 hw')
      have hcard : r.2.1.toFinset.card ≤ (List.range (l.length - np)).toFinset.card := by
        rw [List.toFinset_card_of_nodup hnd, List.toFinset_card_of_nodup List.nodup_range, List.length_range,
          hplen]
      have heq := Finset.eq_of_subset_of_card_le hsub hcard
      have : v ∈ (List.range (l.length - np)).toFinset := by rw [heq]; exact List.mem_toFinset.2 hv
      exact List.mem_range.1 (List.mem_toFinset.1 this)
    obtain ⟨pre, hpre, hlt⟩ := walk_lt ⟨k, np, l, r.1, r.2.1⟩ next (l.length - np) hPlt hperm _ 0 0 0 _ _ _ _
      (by simp [hplen]) (Nat.two_pow_pos _) hwalk
    have hrest : rest = [] := by simpa using hw
    intro x hx
    rw [hpre, hrest, List.append_nil] at hx
    have := hlt x hx
    simpa [Nat.add_sub_cancel' hnp] using this
  · simp at hw

/-- The patterns after the last level are bit vectors over `tupList`. -/
theorem chainList_lt : ∀ (levels : List (List TreeRec)) (k : Nat) (parents : List Nat),
    chainOK k parents levels = true → levels ≠ [] →
    ∀ x ∈ chainList parents levels, x < 2 ^ (tupList (k + levels.length)).length
  | [], _, _, _, hne, _, _ => absurd rfl hne
  | recs :: rest, k, parents, h, _, x, hx => by
    simp only [chainOK, Bool.and_eq_true, beq_iff_eq] at h
    obtain ⟨⟨⟨_, _⟩, hall⟩, hrest⟩ := h
    simp only [chainList] at hx
    by_cases hr : rest = []
    · subst hr
      simp only [chainList] at hx
      obtain ⟨r, hr, hxr⟩ := List.mem_flatMap.1 hx
      have htr := List.all_eq_true.1 hall r hr
      have hlen : (tupList k).length ≤ (tupList (k + 1)).length := by
        simp only [tupList, List.length_append]; omega
      have := treeOK_leaves_lt nextTok (k + 1) _ _ r htr hlen x hxr
      simpa using this
    · have := chainList_lt rest (k + 1) _ hrest hr x hx
      have e : k + 1 + rest.length = k + (recs :: rest).length := by simp; omega
      rw [e] at this
      exact this

end BeatAvg.Check

namespace BeatAvg.Check

theorem DBlock.wf_mono {k k' : Nat} {b : DBlock} (h : b.wf k = true) (hk : k ≤ k') : b.wf k' = true := by
  simp only [DBlock.wf, Bool.and_eq_true, decide_eq_true_eq] at h ⊢
  obtain ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩ := h
  exact ⟨⟨⟨h1, by omega⟩, h3⟩, h4⟩

theorem mem_toBlocks {k qscale : Nat} : ∀ {l : List DBlock} {h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true}
    {B : Block k}, B ∈ toBlocks k qscale l h → ∃ b ∈ l, B.t = b.t ∧ B.m = b.m
  | [], _, B, hB => by simp [toBlocks] at hB
  | b :: l, h, B, hB => by
    simp only [toBlocks, List.mem_cons] at hB
    rcases hB with rfl | hB
    · exact ⟨b, List.mem_cons_self, rfl, rfl⟩
    · obtain ⟨b', hb', h1, h2⟩ := mem_toBlocks hB
      exact ⟨b', List.mem_cons_of_mem _ hb', h1, h2⟩

/-- The blocks evaluated at `n` points (any `n` for which they are well formed). -/
theorem sum_blockVal_toBlocks {k n : Nat} (Tn : TupEnum n) (qscale x : Nat) :
    ∀ (l : List DBlock) (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true), (∀ b ∈ l, b.wf n = true) →
      ((toBlocks k qscale l h).map fun B => blockVal B (Tn.decode x)).sum =
        (l.map fun b => (blockSum Tn.l (tupList b.m) n b.t b.m b.flags b.qint x : ℝ) /
          ((b.D n : ℝ) * qscale)).sum
  | [], _, _ => by simp [toBlocks]
  | b :: l, h, hn => by
    simp only [toBlocks, List.map_cons, List.sum_cons]
    rw [sum_blockVal_toBlocks Tn qscale x l _ (fun b' hb' => hn b' (List.mem_cons_of_mem _ hb'))]
    congr 1
    exact contrib_eq Tn b (h b List.mem_cons_self).2 qscale (hn b List.mem_cons_self) x

/-- `valNum = den · val` for the blocks of a checked direct certificate. -/
theorem valNum_eq {k : Nat} (Tk : TupEnum k) (hTk : Tk.l = tupList k) (blocks : List DBlock)
    (lamD den qscale : Nat) (hpre : directPre k blocks lamD den qscale = true) (x : Nat) :
    (valNum k (tupList k) blocks den qscale x : ℝ) = den * (dens (Tk.decode x) +
      (blocks.map fun b => (blockSum (tupList k) (tupList b.m) k b.t b.m b.flags b.qint x : ℝ) /
        ((b.D k : ℝ) * qscale)).sum) := by
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre
  obtain ⟨⟨⟨⟨⟨⟨_, _⟩, hnT⟩, hq⟩, hdivT⟩, -⟩, hbl⟩ := hpre
  rw [dens_decode, hTk]
  have hnT' : (0 : ℝ) < (tupList k).length := by exact_mod_cast hnT
  simp only [valNum, Int.cast_add, Int.cast_natCast, Int.cast_list_sum, List.map_map]
  rw [mul_add, ← List.sum_map_mul_left]
  congr 1
  · rw [Nat.cast_mul, Nat.cast_div (Nat.dvd_of_mod_eq_zero hdivT) (ne_of_gt hnT')]
    field_simp
  · congr 1
    apply List.map_congr_left
    intro b hb
    have hDq : 0 < b.D k * qscale := Nat.mul_pos (hbl b hb).1.2 hq
    have hdiv : b.D k * qscale ∣ den := Nat.dvd_of_mod_eq_zero (hbl b hb).2
    simp only [Function.comp, Int.cast_mul, Int.cast_natCast]
    rw [Nat.cast_div hdiv (by exact_mod_cast (ne_of_gt hDq)), Nat.cast_mul]
    field_simp

end BeatAvg.Check

namespace BeatAvg.Check

theorem getD_map_lt {α β : Type} (a : Array α) (f : α → β) (d : β) (d' : α) {n : ℕ} (hn : n < a.size) :
    (a.map f).getD n d = f (a.getD n d') := by
  simp [Array.getD, hn]

theorem getD_range_map {β : Type} (k : ℕ) (f : ℕ → β) (d : β) {n : ℕ} (hn : n < k) :
    ((Array.range k).map f).getD n d = f n := by
  simp [Array.getD, hn]

theorem qget_mk (l : List DBlock) {blk i j : ℕ} (hblk : blk < l.length)
    (hi : i < (l.getD blk dfltB).flags.length) (hj : j < (l.getD blk dfltB).flags.length) :
    qget ((l.map fun b => (b.qtab.map List.toArray).toArray).toArray) blk i j = (l.getD blk dfltB).qint i j := by
  unfold qget
  rw [List.getD_eq_getElem _ _ hblk] at hi hj ⊢
  simp [Array.getD, hblk, DBlock.qtab, hi, hj]

theorem list_sum_getD {α : Type} (d : α) (f : α → ℝ) : ∀ l : List α,
    (l.map f).sum = ∑ i ∈ Finset.range l.length, f (l.getD i d)
  | [] => by simp
  | a :: l => by
    rw [List.map_cons, List.sum_cons, List.length_cons, Finset.sum_range_succ', list_sum_getD d f l]
    simp [add_comm]

/-- The combinatorial factor of a block of the lower kind, from 8 to 7 points. -/
theorem nTriples_eight : ∀ t < 8, ∀ m < 8, t ≤ m → 2 * m - t ≤ 7 →
    nTriples (7 + 1) t m * (7 + 1 - (2 * m - t)) = (7 + 1) * nTriples 7 t m ∧ 0 < nTriples 7 t m := by
  decide

section blocks8

variable {qscale : Nat} (lower mid : List DBlock) (h1 : ∀ b ∈ lower, b.wf 8 = true ∧ enumOK b.m = true)
  (h2 : ∀ b ∈ mid, b.wf 8 = true ∧ enumOK b.m = true)

theorem filter_lower (hlow : ∀ b ∈ lower, b.wf 7 = true) :
    (toBlocks 8 qscale lower h1).filter (fun B => decide (2 * B.m - B.t ≤ 7)) = toBlocks 8 qscale lower h1 := by
  apply List.filter_eq_self.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  have := (DBlock.wf_dims (hlow b hb)).2
  simp [ht, hm, this]

theorem filter_mid (hmid : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) :
    (toBlocks 8 qscale mid h2).filter (fun B => decide (2 * B.m - B.t ≤ 7)) = [] := by
  apply List.filter_eq_nil_iff.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  obtain ⟨h6, h7⟩ := hmid b hb
  simp [ht, hm, h6, h7]

theorem filter_lower' (hlow : ∀ b ∈ lower, b.wf 7 = true) :
    (toBlocks 8 qscale lower h1).filter (fun B => !decide (2 * B.m - B.t ≤ 7)) = [] := by
  apply List.filter_eq_nil_iff.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  have := (DBlock.wf_dims (hlow b hb)).2
  simp [ht, hm, this]

theorem filter_mid' (hmid : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) :
    (toBlocks 8 qscale mid h2).filter (fun B => !decide (2 * B.m - B.t ≤ 7)) = toBlocks 8 qscale mid h2 := by
  apply List.filter_eq_self.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  obtain ⟨h6, h7⟩ := hmid b hb
  simp [ht, hm, h6, h7]

/-- `f_7` of the paper on the pattern with bits `x`, from the direct evaluation of the lower blocks. -/
theorem fLower_eq (lamD den : Nat) (hpre : directPre 7 lower lamD den qscale = true)
    (hmid : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (T7 : TupEnum 7) (hT7 : T7.l = tupList 7) (x : Nat) :
    fLower (n := 7) (toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2) (T7.decode x) =
      (valNum 7 (tupList 7) lower den qscale x : ℝ) / den := by
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, hden⟩, _⟩, _⟩, _⟩, _⟩, hbl⟩ := hpre'
  have hw7 : ∀ b ∈ lower, b.wf 7 = true := fun b hb => (hbl b hb).1.1.1
  unfold fLower
  rw [List.filter_append, filter_lower lower h1 hw7, filter_mid mid h2 hmid, List.append_nil,
    sum_blockVal_toBlocks T7 qscale x lower h1 hw7, valNum_eq T7 hT7 lower lamD den qscale hpre x, hT7]
  have hden' : (den : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hden)
  rw [mul_div_cancel_left₀ _ hden']

/-- The blocks `(6, 7)` at 8 points, from the numbers of the restrictions. -/
theorem sum_blockVal_mid (T7 : TupEnum 7) (hT7 : T7.l = tupList 7) (M : Pat 8) (P R : Array ℕ)
    (hR : ∀ u : Fin 8, T7.decode (P.getD (R.getD u 0) 0) = restrict (Fin.succAboveOrderEmb u) M)
    (hPlt : ∀ u < 8, P.getD (R.getD u 0) 0 < 2 ^ T7.l.length) (W : ℕ) :
    ∀ (l : List DBlock) (h : ∀ b ∈ l, b.wf 8 = true ∧ enumOK b.m = true), (∀ b ∈ l, b.t = 6 ∧ b.m = 7) →
      (∀ b ∈ l, b.flags.length ≤ W) →
      ((toBlocks 8 qscale l h).map fun B => blockVal B M).sum =
        (l.map fun b => ∑ bb ∈ Finset.range 8, ∑ a ∈ (Finset.range 8).erase bb, ∑ i ∈ Finset.range W,
          if b.flags.getD i (0, 0) = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a)) then
            ∑ j ∈ Finset.range W, (if b.flags.getD j (0, 0) =
              (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a bb)) then (b.qint i j : ℝ) else 0)
          else 0).sum / (56 * qscale)
  | [], _, _, _ => by simp [toBlocks]
  | b :: l, h, hm, hW => by
    simp only [toBlocks, List.map_cons, List.sum_cons]
    rw [sum_blockVal_mid T7 hT7 M P R hR hPlt W l _ (fun b' hb' => hm b' (List.mem_cons_of_mem _ hb'))
      (fun b' hb' => hW b' (List.mem_cons_of_mem _ hb')), add_div]
    congr 1
    exact blockVal_mid b _ _ (h b List.mem_cons_self).1 (hm b List.mem_cons_self).1 (hm b List.mem_cons_self).2
      qscale T7 hT7 M P R hR hPlt (hW b List.mem_cons_self)

/-- The blocks `(6, 7)` at 8 points give the top term of the check. -/
theorem mid_eq_topTerm (hmid : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (T7 : TupEnum 7) (hT7 : T7.l = tupList 7)
    (M : Pat 8) (P R : Array ℕ) {id : Std.HashMap ℕ ℕ} {top : TopArr}
    (hsound : topSound 7 P mid top = true) (hcomp : topComplete 7 id mid top = true)
    (hid : idOK P id = true) (hnd : topNodup top = true) (hsize : top.size = P.size)
    (hR : ∀ u : Fin 8, T7.decode (P.getD (R.getD u 0) 0) = restrict (Fin.succAboveOrderEmb u) M)
    (hRlt : ∀ u < 8, R.getD u 0 < P.size)
    (hPlt : ∀ u < 8, P.getD (R.getD u 0) 0 < 2 ^ T7.l.length) :
    ((toBlocks 8 qscale mid h2).map fun B => blockVal B M).sum =
      (topTerm 8 top ((mid.map fun b => (b.qtab.map List.toArray).toArray).toArray) R : ℝ) / (56 * qscale) := by
  have hW : ∀ b ∈ mid, b.flags.length ≤ flagW mid := by
    intro b hb; unfold flagW; exact List.le_sum_of_mem (List.mem_map.2 ⟨b, hb, rfl⟩)
  rw [sum_blockVal_mid T7 hT7 M P R hR hPlt (flagW mid) mid h2 hmid hW,
    topTerm_eq hsound hcomp hid hnd hsize _ R hRlt]
  congr 1
  rw [list_sum_getD dfltB]
  conv_lhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun bb hbb => ?_
  conv_lhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun a ha => ?_
  refine Finset.sum_congr rfl fun blk hblk => ?_
  refine Finset.sum_congr rfl fun i _ => ?_
  have hab : a ≠ bb := (Finset.mem_erase.1 ha).1
  have ha8 : a < 8 := Finset.mem_range.1 (Finset.mem_erase.1 ha).2
  have hbb8 : bb < 8 := Finset.mem_range.1 hbb
  by_cases hi : (mid.getD blk dfltB).flags.getD i (0, 0) = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a))
  · have hi' : flagAt mid blk i = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a)) := hi
    rw [if_pos hi, if_pos hi']
    refine Finset.sum_congr rfl fun j _ => ?_
    by_cases hj : (mid.getD blk dfltB).flags.getD j (0, 0) = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a bb))
    · have hj' : flagAt mid blk j = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a bb)) := hj
      rw [if_pos hj, if_pos hj']
      have r1 := flagAt_in_range (maskExcept_ne_zero (by norm_num) (posIn_lt' ha8 hbb8 hab)) hi'
      have r2 := flagAt_in_range (maskExcept_ne_zero (by norm_num) (posIn_lt' hbb8 ha8 (Ne.symm hab))) hj'
      rw [qget_mk mid r1.1 r1.2.1 r2.2.1]
    · have hj' : ¬ flagAt mid blk j = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a bb)) := hj
      rw [if_neg hj, if_neg hj']
  · have hi' : ¬ flagAt mid blk i = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a)) := hi
    rw [if_neg hi, if_neg hi']

end blocks8

end BeatAvg.Check

namespace BeatAvg.Check

section f8

variable {qscale : Nat} (lower mid : List DBlock) (h1 : ∀ b ∈ lower, b.wf 8 = true ∧ enumOK b.m = true)
  (h2 : ∀ b ∈ mid, b.wf 8 = true ∧ enumOK b.m = true)

/-- The number checked for an 8-tuple is `56 · den7 · qscale` times the value of the pattern. -/
theorem f8num_eq (den7 : Nat) (hpre : directPre 7 lower 1 den7 qscale = true)
    (hmid : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (T7 : TupEnum 7) (hT7 : T7.l = tupList 7)
    (M : Pat 8) (P R : Array ℕ) {id : Std.HashMap ℕ ℕ} {top : TopArr}
    (hsound : topSound 7 P mid top = true) (hcomp : topComplete 7 id mid top = true)
    (hid : idOK P id = true) (hnd : topNodup top = true) (hsize : top.size = P.size)
    (hR : ∀ u : Fin 8, T7.decode (P.getD (R.getD u 0) 0) = restrict (Fin.succAboveOrderEmb u) M)
    (hRlt : ∀ u < 8, R.getD u 0 < P.size)
    (hPlt : ∀ u < 8, P.getD (R.getD u 0) 0 < 2 ^ T7.l.length) :
    (f8num (P.map fun x => valNumT (tupList 7) lower
        (lower.map fun b => (tripleTable (tupList 7) (tupList b.m) 7 b.t b.m, b.qtab)) den7 qscale 7 x)
      top ((mid.map fun b => (b.qtab.map List.toArray).toArray).toArray) den7 qscale R : ℝ) =
      56 * den7 * qscale * val (toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2) M := by
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, hden⟩, _⟩, hq⟩, _⟩, _⟩, hbl⟩ := hpre'
  have hw7 : ∀ b ∈ lower, b.wf 7 = true := fun b hb => (hbl b hb).1.1.1
  have hlow : ∀ B ∈ toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2, 2 * B.m - B.t ≤ 7 →
      B.t ≤ B.m ∧ nTriples (7 + 1) B.t B.m * (7 + 1 - (2 * B.m - B.t)) = (7 + 1) * nTriples 7 B.t B.m ∧
        0 < nTriples 7 B.t B.m := by
    intro B hB hle
    rcases List.mem_append.1 hB with hB | hB
    · obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
      have hd := DBlock.wf_dims (hw7 b hb)
      rw [ht, hm] at hle ⊢
      exact ⟨hd.1, nTriples_eight b.t (by omega) b.m (by omega) hd.1 hle⟩
    · obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
      obtain ⟨h6, h7⟩ := hmid b hb
      rw [ht, hm, h6, h7] at hle
      norm_num at hle
  have hv := val_decomp (n := 7) (by norm_num) (toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2) hlow M
  rw [hv, List.filter_append, filter_lower' lower h1 hw7, filter_mid' mid h2 hmid, List.nil_append,
    mid_eq_topTerm mid h2 hmid T7 hT7 M P R hsound hcomp hid hnd hsize hR hRlt hPlt]
  have hf : ∀ u : Fin (7 + 1), fLower (toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2)
      (restrict (Fin.succAboveOrderEmb u) M) =
        (valNum 7 (tupList 7) lower den7 qscale (P.getD (R.getD u 0) 0) : ℝ) / den7 := by
    intro u
    rw [← hR u]
    exact fLower_eq lower mid h1 h2 1 den7 hpre hmid T7 hT7 _
  simp only [hf]
  have hsumF : (∑ u : Fin (7 + 1), (valNum 7 (tupList 7) lower den7 qscale (P.getD (R.getD u 0) 0) : ℝ) / den7) =
      (∑ x ∈ Finset.range 8, (valNum 7 (tupList 7) lower den7 qscale (P.getD (R.getD x 0) 0) : ℝ)) / den7 := by
    rw [Finset.sum_div]
    exact Fin.sum_univ_eq_sum_range
      (fun x => (valNum 7 (tupList 7) lower den7 qscale (P.getD (R.getD x 0) 0) : ℝ) / den7) 8
  rw [hsumF]
  have hf7 : ∀ x ∈ List.range 8, (P.map fun x => valNumT (tupList 7) lower
        (lower.map fun b => (tripleTable (tupList 7) (tupList b.m) 7 b.t b.m, b.qtab)) den7 qscale 7 x).getD
        (R.getD x 0) 0 = valNum 7 (tupList 7) lower den7 qscale (P.getD (R.getD x 0) 0) := by
    intro x hx
    rw [getD_map_lt P _ 0 0 (hRlt x (List.mem_range.1 hx)), valNumT_eq]
  have hs : ((((List.range 8).map fun x => valNum 7 (tupList 7) lower den7 qscale (P.getD (R.getD x 0) 0)).sum :
      ℤ) : ℝ) = ∑ x ∈ Finset.range 8, (valNum 7 (tupList 7) lower den7 qscale (P.getD (R.getD x 0) 0) : ℝ) := by
    rw [Int.cast_list_sum, List.map_map, list_sum_range]; rfl
  unfold f8num
  rw [List.map_congr_left hf7]
  simp only [Int.cast_add, Int.cast_mul, Int.cast_natCast, Int.cast_ofNat, hs]
  have hden' : (den7 : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hden)
  have hq' : (qscale : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hq)
  field_simp
  ring

end f8

end BeatAvg.Check

namespace BeatAvg.Check

/-- Soundness of the check with 8 points: PSD blocks whose value is at most `lamN / lamD` on every realizable
pattern of 8 points. -/
theorem checkK8_sound (levels : List (List TreeRec)) (lower mid : List DBlock)
    (excl : List (Nat × List (Nat × Nat))) (lamN lamD den7 qscale : Nat) (hlen : levels.length = 4)
    (h6 : enumOK 6 = true) (h7 : enumOK 7 = true) (h8 : enumOK 8 = true)
    (h : checkK8 levels lower mid excl lamN lamD den7 qscale = true) :
    ∃ bl : List (Block 8), (∀ B ∈ bl, B.Q.PosSemidef) ∧
      ∀ M : Pat 8, Realizable M → val bl M ≤ (lamN : ℝ) / lamD := by
  unfold checkK8 at h
  simp only [Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, beq_iff_eq] at h
  obtain ⟨⟨⟨⟨hchain, hpre⟩, hlamD⟩, hmid⟩, ⟨⟨⟨⟨⟨⟨⟨⟨⟨hbd, hid⟩, hts⟩, htc⟩, htn⟩, htsz⟩, hexl⟩, hexok⟩, hexT⟩,
    hjoin⟩⟩ := h
  let T6 := TupEnum.ofCheck 6 h6
  let T7 := TupEnum.ofCheck 7 h7
  let T8 := TupEnum.ofCheck 8 h8
  have hT7 : T7.l = tupList 7 := rfl
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, hden⟩, _⟩, hq⟩, _⟩, _⟩, hbl⟩ := hpre'
  have h1 : ∀ b ∈ lower, b.wf 8 = true ∧ enumOK b.m = true := fun b hb =>
    ⟨DBlock.wf_mono (hbl b hb).1.1.1 (by norm_num), (hbl b hb).1.1.2⟩
  have h2 : ∀ b ∈ mid, b.wf 8 = true ∧ enumOK b.m = true := fun b hb => ⟨(hmid b hb).1.1.1, (hmid b hb).1.1.2⟩
  have hmid' : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7 := fun b hb => ⟨(hmid b hb).1.2, (hmid b hb).2⟩
  refine ⟨toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2, ?_, ?_⟩
  · intro B hB
    rcases List.mem_append.1 hB with hB | hB
    · exact toBlocks_psd 8 qscale lower h1 B hB
    · exact toBlocks_psd 8 qscale mid h2 B hB
  intro M hM
  -- the patterns of 7 points: realizable ones are numbered, and all are bit vectors
  have hchain7 := chain_sound levels 3 [0] (TupEnum.ofCheck 3 enumOK_three) rfl (level3_all _) hchain
  rw [hlen] at hchain7
  have hP7 : ∀ N : Pat 7, Realizable N → ∃ n < (chainList [0] levels).toArray.size,
      T7.decode ((chainList [0] levels).toArray.getD n 0) = N := by
    intro N hN
    obtain ⟨x, hx, hdx⟩ := hchain7 T7 rfl N hN
    obtain ⟨n, hn, rfl⟩ := List.mem_iff_getElem.1 hx
    exact ⟨n, by simpa using hn, by simpa [Array.getD, hn] using hdx⟩
  have hlt := chainList_lt levels 3 [0] hchain (by intro he; rw [he] at hlen; simp at hlen)
  rw [hlen] at hlt
  have hPlt' : ∀ n < (chainList [0] levels).toArray.size,
      (chainList [0] levels).toArray.getD n 0 < 2 ^ (tupList 7).length := by
    intro n hn
    have hn' : n < (chainList [0] levels).length := by simpa using hn
    have := hlt _ (List.getElem_mem hn')
    simpa [Array.getD, hn'] using this
  -- the numbers of the restrictions of `M`
  have hex : ∀ u : Fin 8, ∃ n < (chainList [0] levels).toArray.size,
      T7.decode ((chainList [0] levels).toArray.getD n 0) = restrict (Fin.succAboveOrderEmb u) M :=
    fun u => hP7 _ (hM.restrict _)
  choose nf hnf hdec using hex
  let nN : ℕ → ℕ := fun u => if h : u < 8 then nf ⟨u, h⟩ else 0
  have hnN : ∀ u (h : u < 8), nN u = nf ⟨u, h⟩ := fun u h => dif_pos h
  -- deletions of points on bits
  have hDsize : (mkDel 7 (chainList [0] levels).toArray).size = (chainList [0] levels).toArray.size := by
    simp [mkDel]
  have hDget : ∀ n < (chainList [0] levels).toArray.size, ∀ i < 7,
      ((mkDel 7 (chainList [0] levels).toArray).getD n #[]).getD i 0 =
        gather ((chainList [0] levels).toArray.getD n 0)
          (restrIdx (tupList 7) (tupList 6) (ptsOf 7 (maskExcept 7 i))) := by
    intro n hn i hi
    simp only [mkDel]
    rw [getD_map_lt _ _ #[] 0 hn]
    rw [getD_map_lt _ _ 0 [] (by simp [delIdx, hi]), delIdx, getD_range_map 7 _ [] hi]
  have hDdec : ∀ (u : Fin 8) (i : Fin 7),
      T6.decode (((mkDel 7 (chainList [0] levels).toArray).getD (nf u) #[]).getD i 0) =
        restrict (Fin.succAboveOrderEmb i) (restrict (Fin.succAboveOrderEmb u) M) := by
    intro u i
    rw [hDget _ (hnf u) _ i.2, ← hdec u]
    exact decode_del T7 T6 i _
  have hDlt : ∀ n < (chainList [0] levels).toArray.size, ∀ i < 7,
      ((mkDel 7 (chainList [0] levels).toArray).getD n #[]).getD i 0 < 2 ^ T6.l.length := by
    intro n hn i hi
    rw [hDget n hn i hi]
    have := gather_lt ((chainList [0] levels).toArray.getD n 0)
      (restrIdx (tupList 7) (tupList 6) (ptsOf 7 (maskExcept 7 i)))
    rwa [restrIdx_length] at this
  have hcons : ∀ a b : ℕ, a < b → b < 8 →
      ((mkDel 7 (chainList [0] levels).toArray).getD (nN a) #[]).getD (b - 1) 0 =
        ((mkDel 7 (chainList [0] levels).toArray).getD (nN b) #[]).getD a 0 := by
    intro a b hab hb
    have ha : a < 8 := by omega
    rw [hnN a ha, hnN b hb]
    apply decode_inj T6 (hDlt _ (hnf _) _ (by omega)) (hDlt _ (hnf _) _ (by omega))
    have e1 := hDdec ⟨a, ha⟩ ⟨b - 1, by omega⟩
    have e2 := hDdec ⟨b, hb⟩ ⟨a, by omega⟩
    dsimp only at e1 e2
    rw [e1, e2]
    exact (restrict_del_comm a b hab hb M).symm
  have hsz : ∀ u, u < 8 → nN u < (mkDel 7 (chainList [0] levels).toArray).size := by
    intro u hu
    rw [hDsize, hnN u hu]
    exact hnf _
  have hbody := join8_sound hbd hjoin (nN 0) (nN 1) (nN 2) (nN 3) (nN 4) (nN 5) (nN 6) (nN 7)
    (hsz 0 (by norm_num)) (hsz 1 (by norm_num)) (hsz 2 (by norm_num)) (hsz 3 (by norm_num))
    (hsz 4 (by norm_num)) (hsz 5 (by norm_num)) (hsz 6 (by norm_num)) (hsz 7 (by norm_num))
    (hcons 0 7 (by norm_num) (by norm_num)) (hcons 1 7 (by norm_num) (by norm_num))
    (hcons 2 7 (by norm_num) (by norm_num)) (hcons 3 7 (by norm_num) (by norm_num))
    (hcons 4 7 (by norm_num) (by norm_num)) (hcons 5 7 (by norm_num) (by norm_num))
    (hcons 6 7 (by norm_num) (by norm_num))
    (hcons 0 1 (by norm_num) (by norm_num))
    (hcons 0 2 (by norm_num) (by norm_num)) (hcons 1 2 (by norm_num) (by norm_num))
    (hcons 0 3 (by norm_num) (by norm_num)) (hcons 1 3 (by norm_num) (by norm_num))
    (hcons 2 3 (by norm_num) (by norm_num))
    (hcons 0 4 (by norm_num) (by norm_num)) (hcons 1 4 (by norm_num) (by norm_num))
    (hcons 2 4 (by norm_num) (by norm_num)) (hcons 3 4 (by norm_num) (by norm_num))
    (hcons 0 5 (by norm_num) (by norm_num)) (hcons 1 5 (by norm_num) (by norm_num))
    (hcons 2 5 (by norm_num) (by norm_num)) (hcons 3 5 (by norm_num) (by norm_num))
    (hcons 4 5 (by norm_num) (by norm_num))
    (hcons 0 6 (by norm_num) (by norm_num)) (hcons 1 6 (by norm_num) (by norm_num))
    (hcons 2 6 (by norm_num) (by norm_num)) (hcons 3 6 (by norm_num) (by norm_num))
    (hcons 4 6 (by norm_num) (by norm_num)) (hcons 5 6 (by norm_num) (by norm_num))
  simp only [Bool.or_eq_true, decide_eq_true_eq] at hbody
  -- the tuple `R` of numbers
  have hRu : ∀ u (hu : u < 8), (#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : Array ℕ).getD u 0 =
      nf ⟨u, hu⟩ := by
    intro u hu
    interval_cases u <;> rfl
  have hR : ∀ u : Fin 8, T7.decode ((chainList [0] levels).toArray.getD
      ((#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : Array ℕ).getD u 0) 0) =
        restrict (Fin.succAboveOrderEmb u) M := by
    intro u
    rw [hRu u u.2]
    exact hdec u
  have hRlt : ∀ u < 8, (#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : Array ℕ).getD u 0 <
      (chainList [0] levels).toArray.size := by
    intro u hu
    rw [hRu u hu]
    exact hnf _
  have hPlt : ∀ u < 8, (chainList [0] levels).toArray.getD
      ((#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : Array ℕ).getD u 0) 0 < 2 ^ T7.l.length :=
    fun u hu => hPlt' _ (hRlt u hu)
  rcases hbody with hb | hb
  · -- the bound for the tuple
    have key := f8num_eq lower mid h1 h2 den7 hpre hmid' T7 hT7 M _ _ hts htc hid htn htsz hR hRlt hPlt
    have hlamD' : (0 : ℝ) < lamD := by exact_mod_cast hlamD
    have hpos : (0 : ℝ) < 56 * den7 * qscale := by
      have : (0 : ℝ) < den7 := by exact_mod_cast hden
      have : (0 : ℝ) < qscale := by exact_mod_cast hq
      positivity
    have h0 : (f8num ((chainList [0] levels).toArray.map fun x => valNumT (tupList 7) lower
        (lower.map fun b => (tripleTable (tupList 7) (tupList b.m) 7 b.t b.m, b.qtab)) den7 qscale 7 x)
        (mkTop 7 (chainList [0] levels).toArray.size (mkId (chainList [0] levels).toArray) mid)
        ((mid.map fun b => (b.qtab.map List.toArray).toArray).toArray) den7 qscale
        #[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : ℝ) * lamD ≤ (lamN : ℝ) * (56 * den7 * qscale) := by
      exact_mod_cast hb
    rw [key] at h0
    rw [le_div_iff₀ hlamD']
    have h3 : (56 * den7 * qscale : ℝ) * (val (toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2) M * lamD) ≤
        (56 * den7 * qscale : ℝ) * lamN := by linarith
    exact le_of_mul_le_mul_left h3 hpos
  · -- an excluded pattern: impossible
    exfalso
    have hmem := List.contains_iff_mem.1 hb
    obtain ⟨i, hi, hRi⟩ := List.mem_iff_getElem.1 hmem
    have hi' : i < excl.length := hexl ▸ hi
    have hz : (excl[i], (excl.filterMap fun e => exclTuple (chainList [0] levels).toArray
        (mkId (chainList [0] levels).toArray) e.1)[i]) ∈
        excl.zip (excl.filterMap fun e => exclTuple (chainList [0] levels).toArray
          (mkId (chainList [0] levels).toArray) e.1) := by
      have hl : i < (excl.zip (excl.filterMap fun e => exclTuple (chainList [0] levels).toArray
          (mkId (chainList [0] levels).toArray) e.1)).length := by
        simp only [List.length_zip]; omega
      have := List.getElem_mem hl
      rwa [List.getElem_zip] at this
    have hok := hexT _ hz
    simp only [exclTupleOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range,
      beq_iff_eq] at hok
    obtain ⟨-, hok⟩ := hok
    rw [hRi] at hok
    have hexc := hexok _ (List.getElem_mem hi')
    apply exclOK_sound T8 hexc
    have hMeq : M = T8.decode (excl[i]).1 := by
      apply eq_of_restrict_eq (n := 7) (by norm_num)
      intro u
      refine (hR u).symm.trans (Eq.trans ?_ (decode_del T8 T7 u (excl[i]).1))
      have e : (chainList [0] levels).toArray.getD
          ((#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : Array ℕ).getD u 0) 0 =
            gather (excl[i]).1 (restrIdx T8.l T7.l (ptsOf (7 + 1) (maskExcept (7 + 1) u))) := by
        rw [hok u u.2, delIdx, getD_range_map 8 _ [] u.2]
        rfl
      rw [e]
    rw [← hMeq]
    exact hM

end BeatAvg.Check
