import BeatAvg.Check.K7K
import BeatAvg.Check.K9e

/-!
# Soundness of the kernel check with 7 points, part 2: the value of a 7-pattern and the bound
-/

open Finset

namespace BeatAvg.Check

theorem topTermL_eq_F (np : ℕ) (L : ℕ → List (ℕ × ℕ × ℕ)) (qt : Array (Array (Array Int))) :
    topTermL np L qt = topTermF np L (qget qt) := rfl

theorem topTermF_congr {np : ℕ} {L : ℕ → List (ℕ × ℕ × ℕ)} {qf qf' : ℕ → ℕ → ℕ → Int}
    (h : ∀ b < np, ∀ e ∈ L b, ∀ e' ∈ L (unpos b e.1), e'.2.1 = e.2.1 →
      qf e.2.1 e.2.2 e'.2.2 = qf' e.2.1 e.2.2 e'.2.2) :
    topTermF np L qf = topTermF np L qf' := by
  unfold topTermF
  congr 1
  apply List.map_congr_left
  intro b hb
  congr 1
  apply List.map_congr_left
  intro e he
  congr 1
  apply List.map_congr_left
  intro e' he'
  split_ifs with hc
  · exact h b (List.mem_range.1 hb) e he e' he' hc.2
  · rfl

theorem mem_take_range {n lo m q : ℕ} (hq : lo ≤ q) (hq' : q < lo + m) (hn : q < n) :
    q ∈ ((List.range n).drop lo).take m := by
  rw [List.mem_iff_getElem]
  refine ⟨q - lo, ?_, ?_⟩
  · simp only [List.length_take, List.length_drop, List.length_range]; omega
  · simp [List.getElem_take, List.getElem_drop]; omega

/-- The top lists of the kernel check are lists of top flags (`TopLists`). -/
theorem topLists_K7 {T : K7Tab} {top : List DBlock} (hs : s6Sorted T = true)
    (hts : topSoundK T top 0 T.n6 = true) (htc : topCompleteK T top = true)
    (qs : List ℕ) (hqs : ∀ b < 7, qs.getD b 0 < T.n6) :
    TopLists 6 top (fun b => ((List.range 7).map (topL T qs)).getD b [])
      (fun b => fld T.s6 60 (qs.getD b 0)) 7 := by
  intro b hb
  have hL : ((List.range 7).map (topL T qs)).getD b [] = decTop (KT.get 11 T.top (qs.getD b 0)) := by
    rw [List.getD_eq_getElem?_getD, List.getElem?_map, List.getElem?_range hb]; rfl
  simp only [hL]
  set q := qs.getD b 0 with hqdef
  have hq := hqs b hb
  have hsq := List.all_eq_true.1 hts q (mem_take_range (Nat.zero_le q) (by omega) hq)
  simp only [Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, beq_iff_eq] at hsq
  obtain ⟨hnd, hsnd⟩ := hsq
  refine ⟨hnd, fun e => ⟨fun he => ?_, fun he => ?_⟩⟩
  · obtain ⟨hp, hf⟩ := hsnd e he
    have hr := flagAt_in_range (maskExcept_ne_zero (by norm_num) hp) hf
    simp only [topSetX, Finset.mem_filter, Finset.mem_product, Finset.mem_range]
    exact ⟨⟨hp, hr.1, hr.2.2⟩, hf⟩
  · simp only [topSetX, Finset.mem_filter, Finset.mem_product, Finset.mem_range] at he
    obtain ⟨⟨hp, hblk, -⟩, hf⟩ := he
    have hr := flagAt_in_range (maskExcept_ne_zero (by norm_num) hp) hf
    have hc := List.all_eq_true.1 (List.all_eq_true.1 htc e.2.1 (List.mem_range.2 hblk)) e.2.2
      (List.mem_range.2 hr.2.1)
    have hfa : (top.getD e.2.1 dfltB).flags.getD e.2.2 (0, 0) = (fld T.s6 60 q, maskExcept 6 e.1) := hf
    simp only [hfa] at hc
    split_ifs at hc with hfound
    · simp only [Bool.and_eq_true, decide_eq_true_eq, beq_iff_eq] at hfound
      have hqq := fld_inj hs hfound.1 hq hfound.2
      have := List.all_eq_true.1 hc e.1 (List.mem_range.2 hp)
      simp only [bne_self_eq_false, Bool.false_or, List.contains_iff_mem] at this
      rw [hqq] at this
      exact this
    · exact absurd rfl (absentAt_sound hs hc q hq)

/-- The matrix entries of the kernel check. -/
theorem qfK_eq {T : K7Tab} {top : List DBlock}
    (hq : ∀ blk < top.length, qrowOK T top blk 0 (top.getD blk dfltB).flags.length = true)
    {blk i j : ℕ} (hblk : blk < top.length) (hi : i < (top.getD blk dfltB).flags.length)
    (hj : j < (top.getD blk dfltB).flags.length) :
    qfK T blk i j = (top.getD blk dfltB).qint i j := by
  have h := hq blk hblk
  unfold qrowOK at h
  have h1 := List.all_eq_true.1 h i (mem_take_range (Nat.zero_le i) (by omega) hi)
  have h2 := List.all_eq_true.1 h1 j (List.mem_range.2 hj)
  simp only [beq_iff_eq] at h2
  rw [h2, qrowList_getD _ hj]

/-- The combinatorial factor of a block of the lower kind, from 7 to 6 points. -/
theorem nTriples_seven : ∀ t < 7, ∀ m < 7, t ≤ m → 2 * m - t ≤ 6 →
    nTriples (6 + 1) t m * (6 + 1 - (2 * m - t)) = (6 + 1) * nTriples 6 t m ∧ 0 < nTriples 6 t m := by
  decide

end BeatAvg.Check

namespace BeatAvg.Check

theorem tupList6_length : (tupList 6).length = 60 := by decide

/-- `valK7 = S7 · val` for a 7-pattern with numbered faces. -/
theorem valK7_eq {low top : List DBlock} {b14 : DBlock} {T : K7Tab} {qscale den6 d14 : ℕ}
    (h6 : enumOK 6 = true) (h7 : enumOK 7 = true)
    (hpre : directPre 6 low 1 den6 qscale = true)
    (h1 : ∀ b ∈ low, b.wf 7 = true ∧ enumOK b.m = true) (h2 : ∀ b ∈ top, b.wf 7 = true ∧ enumOK b.m = true)
    (h3 : ∀ b ∈ [b14], b.wf 7 = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ low, 2 * b.m - b.t ≤ 6) (htm : ∀ b ∈ top, b.t = 5 ∧ b.m = 6) (h14 : b14.t = 1 ∧ b14.m = 4)
    (hd14 : b14.D 7 = d14)
    (hs : s6Sorted T = true) (hf6 : f6OK T low den6 qscale 0 T.n6 = true)
    (hts : topSoundK T top 0 T.n6 = true) (htc : topCompleteK T top = true)
    (hq : ∀ blk < top.length, qrowOK T top blk 0 (top.getD blk dfltB).flags.length = true)
    (htab : tab14OK T b14 = true)
    (M : Pat 7) (x : ℕ) (hx : (TupEnum.ofCheck 7 h7).decode x = M) (qs : List ℕ)
    (hqs : ∀ u < 7, qs.getD u 0 < T.n6) (hface : ∀ u < 7, fld T.s6 60 (qs.getD u 0) = faceBits x u) :
    (valK7 T qscale den6 d14 x qs : ℝ) = (42 * den6 * qscale * d14) *
      val (toBlocks 7 qscale low h1 ++ toBlocks 7 qscale top h2 ++ toBlocks 7 qscale [b14] h3) M := by
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, hden⟩, _⟩, hqpos⟩, _⟩, _⟩, hbl⟩ := hpre'
  have hw6 : ∀ b ∈ low, b.wf 6 = true := fun b hb => (hbl b hb).1.1.1
  set T6 := TupEnum.ofCheck 6 h6
  set T7 := TupEnum.ofCheck 7 h7
  have hdec : ∀ u : Fin 7, T6.decode (fld T.s6 60 (qs.getD u 0)) = restrict (Fin.succAboveOrderEmb u) M := by
    intro u
    rw [hface u u.2, faceBits_dec T7 rfl T6 rfl x u, hx]
  -- identity (5.2) at 7 points
  have hlow : ∀ B ∈ toBlocks 7 qscale low h1 ++ toBlocks 7 qscale top h2 ++ toBlocks 7 qscale [b14] h3,
      2 * B.m - B.t ≤ 6 → B.t ≤ B.m ∧ nTriples (6 + 1) B.t B.m * (6 + 1 - (2 * B.m - B.t)) =
        (6 + 1) * nTriples 6 B.t B.m ∧ 0 < nTriples 6 B.t B.m := by
    intro B hB hle
    rcases List.mem_append.1 hB with hB | hB
    · rcases List.mem_append.1 hB with hB | hB
      · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
        have hw := DBlock.wf_dims (h1 b hb).1
        rw [hbt, hbm] at hle ⊢
        exact ⟨hw.1, nTriples_seven b.t (by omega) b.m (by omega) hw.1 hle⟩
      · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
        rw [hbt, hbm, (htm b hb).1, (htm b hb).2] at hle
        norm_num at hle
    · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
      rw [List.mem_singleton] at hb
      subst hb
      rw [hbt, hbm, h14.1, h14.2] at hle
      norm_num at hle
  have hv := val_decomp (n := 6) (by norm_num)
    (toBlocks 7 qscale low h1 ++ toBlocks 7 qscale top h2 ++ toBlocks 7 qscale [b14] h3) hlow M
  have htop7 : ∀ b ∈ top, ¬ 2 * b.m - b.t ≤ 6 := fun b hb => by rw [(htm b hb).1, (htm b hb).2]; norm_num
  have hone7 : ∀ b ∈ [b14], ¬ 2 * b.m - b.t ≤ 6 := fun b hb => by
    rw [List.mem_singleton] at hb; subst hb; rw [h14.1, h14.2]; norm_num
  rw [hv, List.filter_append, List.filter_append, filter_none' 6 low h1 hl, filter_all' 6 top h2 htop7,
    filter_all' 6 [b14] h3 hone7, List.nil_append, List.map_append, List.sum_append]
  -- the faces
  have hf : ∀ u : Fin (6 + 1), fLower (n := 6)
      (toBlocks 7 qscale low h1 ++ toBlocks 7 qscale top h2 ++ toBlocks 7 qscale [b14] h3)
      (restrict (Fin.succAboveOrderEmb u) M) = (sfld T.f6 T.w6 (qs.getD u 0) : ℝ) / den6 := by
    intro u
    have hden' : (den6 : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hden)
    unfold fLower
    rw [List.filter_append, List.filter_append, filter_all 6 low h1 hl, filter_none 6 top h2 htop7,
      filter_none 6 [b14] h3 hone7, List.append_nil, List.append_nil, ← hdec u,
      sum_blockVal_toBlocks T6 qscale _ low h1 hw6]
    have hval := valNum_eq T6 rfl low 1 den6 qscale hpre (fld T.s6 60 (qs.getD u 0))
    have hf6q := List.all_eq_true.1 hf6 (qs.getD u 0) (mem_take_range (Nat.zero_le _) (by have := hqs u u.2; omega) (hqs u u.2))
    simp only [beq_iff_eq] at hf6q
    rw [hf6q, hval, mul_div_cancel_left₀ _ hden']
    rfl
  simp only [hf]
  -- the blocks (5,6): pairs of points
  have hL := topLists_K7 hs hts htc qs hqs
  have hPlt : ∀ u < 6 + 1, fld T.s6 60 (qs.getD u 0) < 2 ^ T6.l.length := by
    intro u _
    change fld T.s6 60 (qs.getD u 0) < 2 ^ (tupList 6).length
    rw [tupList6_length]; exact fld_lt _ _ _
  have etop : ((toBlocks 7 qscale top h2).map fun B => blockVal B M).sum =
      (topTermL 7 (fun b => ((List.range 7).map (topL T qs)).getD b []) ((top.map DBlock.qarr).toArray) : ℝ) /
        ((((6 : ℕ) : ℝ) + 1) * ((6 : ℕ) : ℝ) * qscale) :=
    topk_eq_topTermL (k := 6) (by norm_num) qscale top h2 (fun b hb => ⟨by rw [(htm b hb).1], (htm b hb).2⟩)
      T6 rfl M (fun u => fld T.s6 60 (qs.getD u 0)) hdec hPlt hL
  have hqf : topTermL 7 (fun b => ((List.range 7).map (topL T qs)).getD b []) ((top.map DBlock.qarr).toArray) =
      topTermF 7 (fun b => ((List.range 7).map (topL T qs)).getD b []) (qfK T) := by
    rw [topTermL_eq_F]
    apply topTermF_congr
    intro b hb e he e' he' hblk
    have hu : unpos b e.1 < 7 := by
      have he1 : e.1 < 6 := by
        have := ((hL b hb).2 e).1 he
        simp only [topSetX, Finset.mem_filter, Finset.mem_product, Finset.mem_range] at this
        exact this.1.1
      unfold unpos; split_ifs <;> omega
    have hm1 := ((hL b hb).2 e).1 he
    have hm2 := ((hL (unpos b e.1) hu).2 e').1 he'
    simp only [topSetX, Finset.mem_filter, Finset.mem_product, Finset.mem_range] at hm1 hm2
    have r1 := flagAt_in_range (maskExcept_ne_zero (by norm_num) hm1.1.1) hm1.2
    have r2 := flagAt_in_range (maskExcept_ne_zero (by norm_num) hm2.1.1) hm2.2
    rw [hblk] at r2
    rw [qget_arr top r1.1 r1.2.1 r2.2.1, qfK_eq hq r1.1 r1.2.1 r2.2.1]
  -- the block (1,4)
  have hb14 := h3 b14 (List.mem_singleton_self _)
  have eone : ((toBlocks 7 qscale [b14] h3).map fun B => blockVal B M).sum =
      (blockSum14K T x : ℝ) / ((d14 : ℝ) * qscale) := by
    simp only [toBlocks, List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, add_zero]
    have hc := contrib_eq T7 b14 hb14.2 qscale hb14.1 x
    rw [hx] at hc
    change (∑ i : Fin b14.flags.length, ∑ j : Fin b14.flags.length, ((b14.qint i j : ℝ) / qscale) *
      cFlag b14.t b14.m (decFlag (TupEnum.ofCheck b14.m hb14.2) b14.flags[(i : Nat)])
        (decFlag (TupEnum.ofCheck b14.m hb14.2) b14.flags[(j : Nat)]) M) = _
    rw [hc, blockSum14K_eq htab, hd14]
    have hT7l : T7.l = tupList 7 := rfl
    rw [hT7l, ← blockSumT_eq, h14.1, h14.2, ← tab14_eq]
  rw [etop, hqf, eone]
  rw [← Finset.sum_div, Fin.sum_univ_eq_sum_range (fun u => (sfld T.f6 T.w6 (qs.getD u 0) : ℝ)) (6 + 1)]
  unfold valK7
  simp only [Int.cast_add, Int.cast_mul, Int.cast_natCast, Int.cast_ofNat, Int.cast_list_sum, List.map_map,
    Function.comp_def]
  rw [list_sum_range]
  have hden' : (den6 : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hden)
  have hq' : (qscale : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hqpos)
  have hd' : (d14 : ℝ) ≠ 0 := by
    have : 0 < b14.D 7 := by
      unfold DBlock.D; rw [h14.1, h14.2]; decide
    rw [← hd14]; exact_mod_cast (ne_of_gt this)
  push_cast
  field_simp
  ring

end BeatAvg.Check

namespace BeatAvg.Check

/-- Soundness of the kernel check with 7 points: PSD blocks whose value is at most `lamN / lamD` on every realizable
7-pattern. -/
theorem k7K_sound (l4 l5 l6 l7 : List TreeRec) (low top : List DBlock) (b14 : DBlock) (T : K7Tab)
    (lamN lamD den6 qscale d14 : ℕ) (h6 : enumOK 6 = true) (h7 : enumOK 7 = true)
    (hchain : chainOK 3 [0] [l4, l5, l6] = true) (hpar : l7.map (·.1) = chainList [0] [l4, l5, l6])
    (hrecs : l7.all (fun r => treeOK nextTok 7 (tupList 6).length (tupList 7) r &&
      r.2.2.2.all (leafK7OK T qscale den6 d14 lamN lamD)) = true)
    (hlamD : 0 < lamD) (hpre : directPre 6 low 1 den6 qscale = true)
    (hlow : ∀ b ∈ low, b.wf 7 = true ∧ 2 * b.m - b.t ≤ 6)
    (htop : ∀ b ∈ top, b.wf 7 = true ∧ enumOK b.m = true ∧ b.t = 5 ∧ b.m = 6)
    (hb14 : b14.wf 7 = true ∧ enumOK b14.m = true ∧ b14.t = 1 ∧ b14.m = 4 ∧ b14.D 7 = d14)
    (hs : s6Sorted T = true) (hf6 : f6OK T low den6 qscale 0 T.n6 = true)
    (hts : topSoundK T top 0 T.n6 = true) (htc : topCompleteK T top = true)
    (hq : ∀ blk < top.length, qrowOK T top blk 0 (top.getD blk dfltB).flags.length = true)
    (htab : tab14OK T b14 = true) :
    ∃ bl : List (Block 7), (∀ B ∈ bl, B.Q.PosSemidef) ∧
      ∀ M : Pat 7, Realizable M → val bl M ≤ (lamN : ℝ) / lamD := by
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, hden⟩, _⟩, hqpos⟩, _⟩, _⟩, hbl⟩ := hpre'
  have h1 : ∀ b ∈ low, b.wf 7 = true ∧ enumOK b.m = true := fun b hb => ⟨(hlow b hb).1, (hbl b hb).1.1.2⟩
  have h2 : ∀ b ∈ top, b.wf 7 = true ∧ enumOK b.m = true := fun b hb => ⟨(htop b hb).1, (htop b hb).2.1⟩
  have h3 : ∀ b ∈ [b14], b.wf 7 = true ∧ enumOK b.m = true := by
    intro b hb; rw [List.mem_singleton] at hb; subst hb; exact ⟨hb14.1, hb14.2.1⟩
  refine ⟨toBlocks 7 qscale low h1 ++ toBlocks 7 qscale top h2 ++ toBlocks 7 qscale [b14] h3, ?_, ?_⟩
  · intro B hB
    rcases List.mem_append.1 hB with hB | hB
    · rcases List.mem_append.1 hB with hB | hB
      · exact toBlocks_psd 7 qscale low h1 B hB
      · exact toBlocks_psd 7 qscale top h2 B hB
    · exact toBlocks_psd 7 qscale [b14] h3 B hB
  intro M hM
  set T6 := TupEnum.ofCheck 6 h6
  set T7 := TupEnum.ofCheck 7 h7
  -- realizable 7-patterns are leaves of the level-7 trees
  have hc6 := chain_sound [l4, l5, l6] 3 [0] (TupEnum.ofCheck 3 enumOK_three) rfl (level3_all _) hchain T6 rfl
  have hpar6 : ∀ N : Pat 6, Realizable N → ∃ r ∈ l7, T6.decode r.1 = N := by
    intro N hN
    obtain ⟨y, hy, hdy⟩ := hc6 N hN
    rw [← hpar] at hy
    obtain ⟨r, hr, rfl⟩ := List.mem_map.1 hy
    exact ⟨r, hr, hdy⟩
  have hok : l7.all (treeOK nextTok (6 + 1) T6.l.length T7.l) = true := by
    apply List.all_eq_true.2
    intro r hr
    have := List.all_eq_true.1 hrecs r hr
    simp only [Bool.and_eq_true] at this
    exact this.1
  obtain ⟨r, hr, x, hx, hdx⟩ := level_sound nextTok T6 T7 ⟨_, rfl⟩ l7 hpar6 hok M hM
  have hleaf : leafK7OK T qscale den6 d14 lamN lamD x = true := by
    have := List.all_eq_true.1 hrecs r hr
    simp only [Bool.and_eq_true, List.all_eq_true] at this
    exact this.2 x hx
  unfold leafK7OK at hleaf
  simp only [Bool.and_eq_true, List.all_eq_true, List.mem_range, decide_eq_true_eq, beq_iff_eq] at hleaf
  obtain ⟨hfaces, hbound⟩ := hleaf
  set qs := (List.range 7).map (faceNum T x) with hqs
  have hv := valK7_eq h6 h7 hpre h1 h2 h3 (fun b hb => (hlow b hb).2) (fun b hb => (htop b hb).2.2)
    ⟨hb14.2.2.1, hb14.2.2.2.1⟩ hb14.2.2.2.2 hs hf6 hts htc hq htab M x hdx qs
    (fun u hu => (hfaces u hu).1) (fun u hu => (hfaces u hu).2)
  have hlamD' : (0 : ℝ) < lamD := by exact_mod_cast hlamD
  have hS : (0 : ℝ) < 42 * den6 * qscale * d14 := by
    have : (0 : ℝ) < den6 := by exact_mod_cast hden
    have : (0 : ℝ) < qscale := by exact_mod_cast hqpos
    have : (0 : ℝ) < d14 := by
      have : 0 < b14.D 7 := by unfold DBlock.D; rw [hb14.2.2.1, hb14.2.2.2.1]; decide
      rw [← hb14.2.2.2.2]; exact_mod_cast this
    positivity
  have h0 : (valK7 T qscale den6 d14 x qs : ℝ) * lamD ≤ (lamN : ℝ) * (42 * den6 * qscale * d14) := by
    exact_mod_cast hbound
  rw [hv] at h0
  rw [le_div_iff₀ hlamD']
  have h3' : (42 * den6 * qscale * d14 : ℝ) * (val (toBlocks 7 qscale low h1 ++ toBlocks 7 qscale top h2 ++
      toBlocks 7 qscale [b14] h3) M * lamD) ≤ (42 * den6 * qscale * d14 : ℝ) * lamN := by linarith
  exact le_of_mul_le_mul_left h3' hS

end BeatAvg.Check
