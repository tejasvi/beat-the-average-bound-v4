import BeatAvg.Check.K9

/-!
# Soundness of the check with 9 points, part 4: values at 8 and 9 points
-/

open Finset

namespace BeatAvg.Check

open Std

theorem cnum_spec {core : Array (Nat × Array Nat)} {cid : HashMap (Array Nat) Nat} {R : Array Nat}
    (h : cnum core cid R < core.size) : (core.getD (cnum core cid R) (0, #[])).2 = R := by
  unfold cnum at h ⊢
  split at h
  · rename_i c hc
    split_ifs at h ⊢ with h2
    · exact h2
    · exact absurd h (lt_irrefl _)
  · exact absurd h (lt_irrefl _)

theorem getD_map_arr {α β : Type} (A : Array α) (f : α → β) (d : β) (d' : α) {n : ℕ} (hn : n < A.size) :
    (A.map f).getD n d = f (A.getD n d') := getD_map_lt A f d d' hn

/-- `f8` with the faster tables equals `56 · den7 · qscale` times the value at 8 points. -/
theorem f8A_eq {lower mid : List DBlock} {den7 qscale : Nat} (h7 : enumOK 7 = true)
    (hpre : directPre 7 lower 1 den7 qscale = true)
    (h1 : ∀ b ∈ lower, b.wf 8 = true ∧ enumOK b.m = true) (h2 : ∀ b ∈ mid, b.wf 8 = true ∧ enumOK b.m = true)
    (hmid : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (hflag : ∀ b ∈ lower, flagIdxOK b.flags (flagIdx b.flags) = true)
    {P : Array ℕ} (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ (tupList 7).length) {id : HashMap ℕ ℕ} {top8 : TopArr}
    (hts : topSound 7 P mid top8 = true) (htc : topComplete 7 id mid top8 = true) (hid : idOK P id = true)
    (htn : topNodup top8 = true) (htsz : top8.size = P.size) (N : Pat 8) (R : Array ℕ)
    (hR : IsTuple8 P (TupEnum.ofCheck 7 h7) N R) :
    (f8num (P.map fun M => valNumA (tupList 7) lower (lower.map (preA (tupList 7) 7)) den7 qscale 7 M) top8
      ((mid.map DBlock.qarr).toArray) den7 qscale R : ℝ) =
      56 * den7 * qscale * val (toBlocks 8 qscale lower h1 ++ toBlocks 8 qscale mid h2) N := by
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, _⟩, _⟩, _⟩, _⟩, _⟩, hbl⟩ := hpre'
  have hok : ∀ b ∈ lower, flagIdxOK b.flags (flagIdx b.flags) = true ∧ b.flags.Nodup := by
    intro b hb
    refine ⟨hflag b hb, ?_⟩
    have hw := (hbl b hb).1.1.1
    simp only [DBlock.wf, Bool.and_eq_true, decide_eq_true_eq] at hw
    exact hw.1.2
  rw [f8num_congr (f7' := P.map fun M => valNumT (tupList 7) lower
      (lower.map fun b => (tripleTable (tupList 7) (tupList b.m) 7 b.t b.m, b.qtab)) den7 qscale 7 M)
    (qt' := (mid.map fun b => (b.qtab.map List.toArray).toArray).toArray)]
  · exact f8num_eq lower mid h1 h2 den7 hpre hmid (TupEnum.ofCheck 7 h7) rfl N P R hts htc hid htn htsz hR.dec hR.lt
      (fun u hu => hPlt _ (hR.lt u hu))
  · intro u hu
    rw [getD_map_lt P _ 0 0 (hR.lt u hu), getD_map_lt P _ 0 0 (hR.lt u hu),
      valNumA_eq _ lower den7 qscale 7 (hPlt _ (hR.lt u hu)) hok, valNumT_eq]
  · exact congrArg List.toArray (List.map_congr_left fun b _ => qarr_eq_qtab b)

end BeatAvg.Check

namespace BeatAvg.Check

open Std

section core

variable {P : Array ℕ} {id : HashMap ℕ ℕ} {core : Array (Nat × Array Nat)} {cid : HashMap (Array Nat) Nat}
  {top : List DBlock} (T7 : TupEnum 7) (hT7 : T7.l = tupList 7) (T8 : TupEnum 8) (hT8 : T8.l = tupList 8)

include hT7 hT8 in
/-- A core number of the tuple of a realizable 8-pattern gives its bits. -/
theorem core_bits (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ T7.l.length)
    (hcore : ∀ c ∈ List.range core.size, ((core.getD c (0, #[])).1 < 2 ^ (tupList 8).length ∧
      exclTupleOK P (core.getD c (0, #[])).1 (core.getD c (0, #[])).2 = true) ∧
      ∀ j ∈ List.range 8, (core.getD c (0, #[])).2.getD j 0 < P.size)
    {N : Pat 8} {R : Array ℕ} (hR : IsTuple8 P T7 N R) {x : ℕ} (hx : x < 2 ^ T8.l.length) (hxN : T8.decode x = N)
    (hc : cnum core cid R < core.size) : (core.getD (cnum core cid R) (0, #[])).1 = x := by
  have hc2 := cnum_spec hc
  obtain ⟨⟨hb, hok⟩, -⟩ := hcore _ (List.mem_range.2 hc)
  rw [hc2] at hok
  simp only [exclTupleOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, List.mem_range, beq_iff_eq] at hok
  obtain ⟨-, hok⟩ := hok
  set bits := (core.getD (cnum core cid R) (0, #[])).1
  have hN : N = T8.decode bits := by
    apply eq_of_restrict_eq (n := 7) (by norm_num)
    intro u
    rw [← hR.dec u]
    have hd := decode_del T8 T7 u bits
    rw [hT8, hT7] at hd
    rw [← hd, hok u u.2, getD_delIdx8 u.2]
  apply decode_inj T8 (by rw [hT8]; exact hb) hx
  rw [hxN, hN]

include hT7 hT8 in
/-- A top flag whose pattern is a realizable 8-pattern makes its tuple a core tuple. -/
theorem core_of_flag {id : HashMap ℕ ℕ} (hid : idOK P id = true) (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ T7.l.length)
    (hcompl : ∀ blk ∈ List.range top.length, ∀ i ∈ List.range (top.getD blk dfltB).flags.length,
      (match exclTuple P id (flagAt top blk i).1 with
        | none => true
        | some R => decide (cnum core cid R < core.size) && (core.getD (cnum core cid R) (0, #[])).1 == (flagAt top blk i).1) = true)
    {N : Pat 8} {R : Array ℕ} (hR : IsTuple8 P T7 N R) {x : ℕ} (hxN : T8.decode x = N) {blk i m : ℕ}
    (hm : m ≠ 0) (hf : flagAt top blk i = (x, m)) : cnum core cid R < core.size := by
  have hr := flagAt_in_range (x := (x, m)) hm hf
  have h := hcompl blk (List.mem_range.2 hr.1) i (List.mem_range.2 hr.2.1)
  rw [hf, exclTuple_of_tuple hid T8 hT8 T7 hT7 hPlt hxN hR.size hR.lt hR.dec] at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  exact h.1

end core

end BeatAvg.Check

namespace BeatAvg.Check

open Std

section val9

variable {P : Array ℕ} {id : HashMap ℕ ℕ} {core : Array (Nat × Array Nat)} {cid : HashMap (Array Nat) Nat}
  {top : List DBlock} {topC : TopArr} (T7 : TupEnum 7) (hT7 : T7.l = tupList 7) (T8 : TupEnum 8)
  (hT8 : T8.l = tupList 8)

include hT7 hT8 in
/-- The lists of top flags of the nine restrictions (empty for the restrictions that are not core patterns). -/
theorem topLists9 (hid : idOK P id = true) (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ T7.l.length)
    (hid9 : idOK (core.map (·.1)) (mkId (core.map (·.1))) = true)
    (hts9 : topSound 8 (core.map (·.1)) top topC = true)
    (htc9 : topComplete 8 (mkId (core.map (·.1))) top topC = true) (htn9 : topNodup topC = true)
    (htsz9 : topC.size = (core.map (·.1)).size)
    (hcore : ∀ c ∈ List.range core.size, ((core.getD c (0, #[])).1 < 2 ^ (tupList 8).length ∧
      exclTupleOK P (core.getD c (0, #[])).1 (core.getD c (0, #[])).2 = true) ∧
      ∀ j ∈ List.range 8, (core.getD c (0, #[])).2.getD j 0 < P.size)
    (hcompl : ∀ blk ∈ List.range top.length, ∀ i ∈ List.range (top.getD blk dfltB).flags.length,
      (match exclTuple P id (flagAt top blk i).1 with
        | none => true
        | some R => decide (cnum core cid R < core.size) && (core.getD (cnum core cid R) (0, #[])).1 == (flagAt top blk i).1) = true)
    (M : Pat 9) (T : Array (Array ℕ)) (hTs : T.size = 9)
    (hT : ∀ u : Fin 9, IsTuple8 P T7 (restrict (Fin.succAboveOrderEmb u) M) (T.getD u #[]))
    (xb : ℕ → ℕ) (hxlt : ∀ u < 9, xb u < 2 ^ T8.l.length)
    (hxb : ∀ u : Fin 9, T8.decode (xb u) = restrict (Fin.succAboveOrderEmb u) M) :
    TopLists 8 top (fun b => topC.getD ((T.map (cnum core cid)).getD b 0) []) xb 9 := by
  intro b hb
  have hbT : b < T.size := by rw [hTs]; exact hb
  simp only [getD_map_lt T (cnum core cid) 0 #[] hbT]
  have hRb := hT ⟨b, hb⟩
  by_cases hc : cnum core cid (T.getD b #[]) < core.size
  · have hcs : cnum core cid (T.getD b #[]) < (core.map (·.1)).size := by simpa using hc
    refine ⟨?_, fun e => ?_⟩
    · have := List.all_eq_true.1 htn9 _ (List.mem_range.2 (htsz9 ▸ hcs))
      simpa using this
    · rw [mem_top_iff (by norm_num) hts9 htc9 hid9 htsz9 hcs e, topSet_eq_topSetX,
        getD_map_lt core (·.1) 0 (0, #[]) hc,
        core_bits T7 hT7 T8 hT8 hPlt hcore hRb (hxlt b hb) (hxb ⟨b, hb⟩) hc]
  · have hge : topC.size ≤ cnum core cid (T.getD b #[]) := by
      rw [htsz9, Array.size_map]; exact Nat.le_of_not_lt hc
    have hnil : ∀ n, topC.size ≤ n → topC.getD n [] = [] := by
      intro n hn; simp [Array.getD, Nat.not_lt.2 hn]
    rw [hnil _ hge]
    refine ⟨List.nodup_nil, fun e => ⟨fun h => absurd h (List.not_mem_nil), fun h => ?_⟩⟩
    exfalso
    simp only [topSetX, Finset.mem_filter, Finset.mem_product, Finset.mem_range] at h
    obtain ⟨⟨hp, -, -⟩, hf⟩ := h
    exact hc (core_of_flag T7 hT7 T8 hT8 hid hPlt hcompl hRb (hxb ⟨b, hb⟩)
      (maskExcept_ne_zero (by norm_num) hp) hf)

end val9

end BeatAvg.Check

namespace BeatAvg.Check

open Std

/-- `val9num = 72 · S8 · val` at 9 points, for the tuples of the restrictions of a realizable 9-pattern. -/
theorem val9_eq {lower mid top : List DBlock} {den7 qscale : Nat} (h7 : enumOK 7 = true) (h8 : enumOK 8 = true)
    (hpre : directPre 7 lower 1 den7 qscale = true)
    (h1 : ∀ b ∈ lower, b.wf 9 = true ∧ enumOK b.m = true) (h2 : ∀ b ∈ mid, b.wf 9 = true ∧ enumOK b.m = true)
    (h3 : ∀ b ∈ top, b.wf 9 = true ∧ enumOK b.m = true)
    (h1' : ∀ b ∈ lower, b.wf 8 = true ∧ enumOK b.m = true) (h2' : ∀ b ∈ mid, b.wf 8 = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ lower, 2 * b.m - b.t ≤ 7) (hm : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (ht : ∀ b ∈ top, b.t = 7 ∧ b.m = 8)
    (hflag : ∀ b ∈ lower, flagIdxOK b.flags (flagIdx b.flags) = true)
    {P : Array ℕ} (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ (tupList 7).length) {id : HashMap ℕ ℕ} {top8 : TopArr}
    (hts : topSound 7 P mid top8 = true) (htc : topComplete 7 id mid top8 = true) (hid : idOK P id = true)
    (htn : topNodup top8 = true) (htsz : top8.size = P.size)
    {core : Array (Nat × Array Nat)} {cid : HashMap (Array Nat) Nat} {topC : TopArr}
    (hid9 : idOK (core.map (·.1)) (mkId (core.map (·.1))) = true)
    (hts9 : topSound 8 (core.map (·.1)) top topC = true)
    (htc9 : topComplete 8 (mkId (core.map (·.1))) top topC = true) (htn9 : topNodup topC = true)
    (htsz9 : topC.size = (core.map (·.1)).size)
    (hcore : ∀ c ∈ List.range core.size, ((core.getD c (0, #[])).1 < 2 ^ (tupList 8).length ∧
      exclTupleOK P (core.getD c (0, #[])).1 (core.getD c (0, #[])).2 = true) ∧
      ∀ j ∈ List.range 8, (core.getD c (0, #[])).2.getD j 0 < P.size)
    (hcompl : ∀ blk ∈ List.range top.length, ∀ i ∈ List.range (top.getD blk dfltB).flags.length,
      (match exclTuple P id (flagAt top blk i).1 with
        | none => true
        | some R => decide (cnum core cid R < core.size) && (core.getD (cnum core cid R) (0, #[])).1 == (flagAt top blk i).1) = true)
    (M : Pat 9) (T : Array (Array ℕ)) (hTs : T.size = 9)
    (hT : ∀ u : Fin 9, IsTuple8 P (TupEnum.ofCheck 7 h7) (restrict (Fin.succAboveOrderEmb u) M) (T.getD u #[])) :
    (val9num (P.map fun M => valNumA (tupList 7) lower (lower.map (preA (tupList 7) 7)) den7 qscale 7 M) top8
      ((mid.map DBlock.qarr).toArray) topC ((top.map DBlock.qarr).toArray) core cid den7 qscale T : ℝ) =
      72 * (56 * den7 * qscale) *
        val (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) M := by
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, hden⟩, _⟩, hq⟩, _⟩, _⟩, _⟩ := hpre'
  -- bits of the restrictions
  have hx : ∀ u : Fin 9, ∃ x < 2 ^ (TupEnum.ofCheck 8 h8).l.length,
      (TupEnum.ofCheck 8 h8).decode x = restrict (Fin.succAboveOrderEmb u) M := fun u => exists_encode _ _
  choose xf hxlt hxdec using hx
  let xb : ℕ → ℕ := fun u => if h : u < 9 then xf ⟨u, h⟩ else 0
  have hxb : ∀ u : Fin 9, (TupEnum.ofCheck 8 h8).decode (xb u) = restrict (Fin.succAboveOrderEmb u) M := by
    intro u; simp only [xb, dif_pos u.2]; exact hxdec u
  have hxblt : ∀ u < 9, xb u < 2 ^ (TupEnum.ofCheck 8 h8).l.length := by
    intro u hu; simp only [xb, dif_pos hu]; exact hxlt _
  have hL := topLists9 (TupEnum.ofCheck 7 h7) rfl (TupEnum.ofCheck 8 h8) rfl hid hPlt hid9 hts9 htc9 htn9 htsz9
    hcore hcompl M T hTs hT xb hxblt hxb
  -- identity (5.2) at 9 points
  have hlow : ∀ B ∈ toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3,
      2 * B.m - B.t ≤ 8 → B.t ≤ B.m ∧ nTriples (8 + 1) B.t B.m * (8 + 1 - (2 * B.m - B.t)) =
        (8 + 1) * nTriples 8 B.t B.m ∧ 0 < nTriples 8 B.t B.m := by
    intro B hB hle
    rcases List.mem_append.1 hB with hB | hB
    · rcases List.mem_append.1 hB with hB | hB
      · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
        have hw := DBlock.wf_dims (h1 b hb).1
        have hd := hl b hb
        rw [hbt, hbm] at hle ⊢
        exact ⟨hw.1, nTriples_nine b.t (by omega) b.m (by omega) hw.1 hle⟩
      · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
        rw [hbt, hbm, (hm b hb).1, (hm b hb).2]
        exact ⟨by norm_num, nTriples_nine 6 (by norm_num) 7 (by norm_num) (by norm_num) (by norm_num)⟩
    · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
      rw [hbt, hbm, (ht b hb).1, (ht b hb).2] at hle
      norm_num at hle
  have hv := val_decomp (n := 8) (by norm_num)
    (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) hlow M
  rw [hv, List.filter_append, List.filter_append,
    filter_none' 8 lower h1 (fun b hb => Nat.le_trans (hl b hb) (by norm_num)),
    filter_none' 8 mid h2 (fun b hb => by rw [(hm b hb).1, (hm b hb).2]),
    filter_all' 8 top h3 (fun b hb => by rw [(ht b hb).1, (ht b hb).2]; norm_num), List.nil_append,
    List.nil_append]
  have etop : ((toBlocks 9 qscale top h3).map fun B => blockVal B M).sum =
      (topTermL 9 (fun b => topC.getD ((T.map (cnum core cid)).getD b 0) []) ((top.map DBlock.qarr).toArray) : ℝ) /
        ((((8 : ℕ) : ℝ) + 1) * ((8 : ℕ) : ℝ) * qscale) :=
    topk_eq_topTermL (k := 8) (by norm_num) qscale top h3 ht (TupEnum.ofCheck 8 h8) rfl M xb hxb hxblt hL
  rw [etop]
  have hf : ∀ u : Fin (8 + 1), fLower (n := 8)
      (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3)
      (restrict (Fin.succAboveOrderEmb u) M) =
        (f8num (P.map fun M => valNumA (tupList 7) lower (lower.map (preA (tupList 7) 7)) den7 qscale 7 M) top8
          ((mid.map DBlock.qarr).toArray) den7 qscale (T.getD u #[]) : ℝ) / (56 * den7 * qscale) := by
    intro u
    have hS : (56 * den7 * qscale : ℝ) ≠ 0 := by
      have : (0 : ℝ) < den7 := by exact_mod_cast hden
      have : (0 : ℝ) < qscale := by exact_mod_cast hq
      positivity
    rw [fLower9_eq lower mid top h1 h2 h3 h1' h2' hl hm ht,
      f8A_eq h7 hpre h1' h2' hm hflag hPlt hts htc hid htn htsz _ _ (hT u), mul_div_cancel_left₀ _ hS]
  simp only [hf]
  rw [← Finset.sum_div, Fin.sum_univ_eq_sum_range
    (fun x => (f8num (P.map fun M => valNumA (tupList 7) lower (lower.map (preA (tupList 7) 7)) den7 qscale 7 M)
      top8 ((mid.map DBlock.qarr).toArray) den7 qscale (T.getD x #[]) : ℝ)) (8 + 1)]
  unfold val9num
  rw [topTerm_eq_L]
  simp only [Int.cast_add, Int.cast_mul, Int.cast_natCast, Int.cast_ofNat, Int.cast_list_sum, List.map_map,
    Function.comp_def]
  rw [list_sum_range]
  have hden' : (den7 : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hden)
  have hq' : (qscale : ℝ) ≠ 0 := by exact_mod_cast (ne_of_gt hq)
  push_cast
  field_simp
  ring

end BeatAvg.Check
