import BeatAvg.Check.K9d
import BeatAvg.Check.Join

/-!
# Soundness of the check with 9 points, part 6: the three stages and Lemma 5.2
-/

open Finset

namespace BeatAvg.Check

open Std

theorem k9_hlow {qscale : Nat} {lower mid top : List DBlock}
    (h1 : ∀ b ∈ lower, b.wf 9 = true ∧ enumOK b.m = true) (h2 : ∀ b ∈ mid, b.wf 9 = true ∧ enumOK b.m = true)
    (h3 : ∀ b ∈ top, b.wf 9 = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ lower, 2 * b.m - b.t ≤ 7) (hm : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (ht : ∀ b ∈ top, b.t = 7 ∧ b.m = 8) :
    ∀ B ∈ toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3,
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

theorem k9_htop {qscale : Nat} {lower mid top : List DBlock}
    (h1 : ∀ b ∈ lower, b.wf 9 = true ∧ enumOK b.m = true) (h2 : ∀ b ∈ mid, b.wf 9 = true ∧ enumOK b.m = true)
    (h3 : ∀ b ∈ top, b.wf 9 = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ lower, 2 * b.m - b.t ≤ 7) (hm : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (ht : ∀ b ∈ top, b.t = 7 ∧ b.m = 8) :
    ∀ B ∈ toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3,
      ¬ (2 * B.m - B.t ≤ 8) → B.t = 8 + 1 - 2 ∧ B.m = 8 + 1 - 1 := by
  intro B hB hle
  rcases List.mem_append.1 hB with hB | hB
  · rcases List.mem_append.1 hB with hB | hB
    · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
      have hd := hl b hb
      rw [hbt, hbm] at hle
      omega
    · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
      rw [hbt, hbm, (hm b hb).1, (hm b hb).2] at hle
      norm_num at hle
  · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
    rw [hbt, hbm, (ht b hb).1, (ht b hb).2]
    norm_num

/-- A top-kind block occupied at `u` makes the tuple of the restriction deleting `u` a core tuple. -/
theorem occ_core {P : Array ℕ} {id : HashMap ℕ ℕ} (hid : idOK P id = true) {core : Array (Nat × Array Nat)}
    {cid : HashMap (Array Nat) Nat} {qscale : Nat} {lower mid top : List DBlock} (h7 : enumOK 7 = true)
    (h8 : enumOK 8 = true)
    (h1 : ∀ b ∈ lower, b.wf 9 = true ∧ enumOK b.m = true) (h2 : ∀ b ∈ mid, b.wf 9 = true ∧ enumOK b.m = true)
    (h3 : ∀ b ∈ top, b.wf 9 = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ lower, 2 * b.m - b.t ≤ 7) (hm : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (ht : ∀ b ∈ top, b.t = 7 ∧ b.m = 8)
    (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ (tupList 7).length)
    (hcompl : ∀ blk ∈ List.range top.length, ∀ i ∈ List.range (top.getD blk dfltB).flags.length,
      (match exclTuple P id (flagAt top blk i).1 with
        | none => true
        | some R => decide (cnum core cid R < core.size) && (core.getD (cnum core cid R) (0, #[])).1 == (flagAt top blk i).1) = true)
    {M : Pat 9} {u : Fin 9} {R : Array ℕ}
    (hR : IsTuple8 P (TupEnum.ofCheck 7 h7) (restrict (Fin.succAboveOrderEmb u) M) R)
    (hocc : Occ (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) M u) :
    cnum core cid R < core.size := by
  obtain ⟨B, hB, hBtop, i, a, hau, hgp⟩ := hocc
  have hBt : B ∈ toBlocks 9 qscale top h3 := by
    rcases List.mem_append.1 hB with hB | hB
    · exfalso
      rcases List.mem_append.1 hB with hB | hB
      · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
        have hd := hl b hb
        rw [hbt, hbm] at hBtop
        omega
      · obtain ⟨b, hb, hbt, hbm⟩ := mem_toBlocks hB
        rw [hbt, hbm, (hm b hb).1, (hm b hb).2] at hBtop
        exact hBtop (by norm_num)
    · exact hB
  obtain ⟨b, hb, hw, he, rfl⟩ := mem_toBlocks' hBt
  obtain ⟨blk, hblk, hbget⟩ := List.mem_iff_getElem.1 hb
  obtain ⟨x, hxlt, hxdec⟩ := exists_encode (TupEnum.ofCheck 8 h8) (restrict (Fin.succAboveOrderEmb u) M)
  obtain ⟨t, m, flags, terms⟩ := b
  have htm := ht _ hb
  simp only at htm
  obtain ⟨rfl, rfl⟩ := htm
  have hw' := (h3 _ hb).1
  unfold DBlock.wf at hw'
  rw [Bool.and_eq_true] at hw'
  have hi : (i : ℕ) < flags.length := i.2
  have hf := List.all_eq_true.1 hw'.2 _ (List.getElem_mem hi)
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hf
  have hgp' : GivesPair M a u (decFlag (TupEnum.ofCheck 8 he) (flags[(i : ℕ)]'hi)) := hgp
  have hiff := givesPair_decFlag_iff (TupEnum.ofCheck 8 he) hau (x := x)
    (by rw [decode_congr (TupEnum.ofCheck 8 he) (TupEnum.ofCheck 8 h8) rfl]; exact hxdec) hxlt hf.1 hf.2 (by norm_num)
  have hflag : flags[(i : ℕ)]'hi = (x, maskExcept 8 (posIn u a)) := hiff.1 hgp'
  have hfa : flagAt top blk i = (x, maskExcept 8 (posIn u a)) := by
    unfold flagAt
    rw [List.getD_eq_getElem _ _ hblk, hbget]
    simp only
    rw [List.getD_eq_getElem _ _ hi, hflag]
  exact core_of_flag (TupEnum.ofCheck 7 h7) rfl (TupEnum.ofCheck 8 h8) rfl hid hPlt hcompl hR hxdec
    (maskExcept_ne_zero (by norm_num) (posIn_lt a u hau)) hfa

end BeatAvg.Check

namespace BeatAvg.Check

open Std

theorem two_le_length_of_mem {l : List ℕ} {a b : ℕ} (hab : a ≠ b) (ha : a ∈ l) (hb : b ∈ l) : 2 ≤ l.length := by
  have hsub : ({a, b} : Finset ℕ) ⊆ l.toFinset := by
    intro x hx
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl <;> simpa
  have h1 := Finset.card_le_card hsub
  rw [Finset.card_pair hab] at h1
  exact Nat.le_trans h1 (List.toFinset_card_le l)

theorem array_eq_of_getD {A B : Array ℕ} (hA : A.size = 8) (hB : B.size = 8) (h : ∀ j < 8, A.getD j 0 = B.getD j 0) :
    A = B := by
  apply Array.ext
  · rw [hA, hB]
  · intro i hi hi'
    have hi8 : i < 8 := by rw [hA] at hi; exact hi
    have := h i hi8
    simpa [Array.getD, hi, hi'] using this

/-- Soundness of the check with 9 points (Lemma 5.2 of the paper with the three stages). -/
theorem checkK9_sound (levels : List (List TreeRec)) (lower mid top : List DBlock)
    (excl8 excl9 : List (Nat × List (Nat × Nat))) (S : Array (Array Nat)) (core : Array (Nat × Array Nat))
    (lamN lamD capN capD den7 qscale : Nat) (hlen : levels.length = 4)
    (h6 : enumOK 6 = true) (h7 : enumOK 7 = true) (h8 : enumOK 8 = true) (h9 : enumOK 9 = true)
    (h : checkK9 levels lower mid top excl8 excl9 S core lamN lamD capN capD den7 qscale = true) :
    ∃ bl : List (Block 9), (∀ B ∈ bl, B.Q.PosSemidef) ∧
      ∀ M : Pat 9, Realizable M → val bl M ≤ (lamN : ℝ) / lamD := by
  unfold checkK9 at h
  simp only [Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true, beq_iff_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨hchain, hpre⟩, hlamD⟩, hcapD⟩, hmid⟩, htop⟩, h⟩ := h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨c1, c2⟩, c3⟩, c4⟩, c5⟩, c6⟩, c7⟩, c8⟩, c9⟩, c10⟩, c11⟩, c12⟩, c13⟩, c14⟩, c15⟩,
    c16⟩, c17⟩, c18⟩, c19⟩, c20⟩, c21⟩, c22⟩, c23⟩, c24⟩, c25⟩ := h
  obtain ⟨h1, h2, h3, h1', h2', -, hl, hm, ht⟩ := k9_blocks hpre hmid htop
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, hden⟩, _⟩, hq⟩, _⟩, _⟩, _⟩ := hpre'
  have hS8 : (0 : ℝ) < 56 * den7 * qscale := by
    have : (0 : ℝ) < den7 := by exact_mod_cast hden
    have : (0 : ℝ) < qscale := by exact_mod_cast hq
    positivity
  have hlamD' : (0 : ℝ) < lamD := by exact_mod_cast hlamD
  have hcapD' : (0 : ℝ) < capD := by exact_mod_cast hcapD
  have hPlt := num7_lt hlen hchain
  have c2' : ∀ i < 7, byDelOK (mkDel 7 (chainList [0] levels).toArray)
      (((Array.range 7).map (mkByDel (mkDel 7 (chainList [0] levels).toArray))).getD i ∅) i = true :=
    fun i hi => c2 i (List.mem_range.2 hi)
  refine ⟨toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3, ?_, ?_⟩
  · intro B hB
    rcases List.mem_append.1 hB with hB | hB
    · rcases List.mem_append.1 hB with hB | hB
      · exact toBlocks_psd 9 qscale lower h1 B hB
      · exact toBlocks_psd 9 qscale mid h2 B hB
    · exact toBlocks_psd 9 qscale top h3 B hB
  -- the value of an 8-pattern from its tuple
  have hval8 : ∀ (N : Pat 8) (R : Array ℕ), IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7) N R →
      fLower (n := 8) (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) N =
        (f8num (Array.map (fun M => valNumA (tupList 7) lower (List.map (preA (tupList 7) 7) lower) den7 qscale 7 M)
          (chainList [0] levels).toArray)
          (mkTop 7 (chainList [0] levels).toArray.size (mkId (chainList [0] levels).toArray) mid)
          (List.map DBlock.qarr mid).toArray den7 qscale R : ℝ) / (56 * den7 * qscale) := by
    intro N R hR
    rw [fLower9_eq lower mid top h1 h2 h3 h1' h2' hl hm ht,
      f8A_eq h7 hpre h1' h2' hm c1 hPlt c4 c5 c3 c6 c7 N R hR, mul_div_cancel_left₀ _ (ne_of_gt hS8)]
  -- the bound at 9 points from the check of a 9-tuple
  have V9 : ∀ (M : Pat 9), Realizable M → ∀ T : Array (Array ℕ), T.size = 9 →
      (∀ u : Fin 9, IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7)
        (restrict (Fin.succAboveOrderEmb u) M) (T.getD u #[])) →
      body9 (val9num
          (Array.map (fun M => valNumA (tupList 7) lower (List.map (preA (tupList 7) 7) lower) den7 qscale 7 M)
            (chainList [0] levels).toArray)
          (mkTop 7 (chainList [0] levels).toArray.size (mkId (chainList [0] levels).toArray) mid)
          (List.map DBlock.qarr mid).toArray
          (mkTop 8 (Array.map (fun x => x.1) core).size (mkId (Array.map (fun x => x.1) core)) top)
          (List.map DBlock.qarr top).toArray core (mkIdA (Array.map (fun x => x.2) core)) den7 qscale)
        lamN lamD (72 * (56 * den7 * qscale))
        (List.filterMap (fun e => tuple9 (chainList [0] levels).toArray (mkId (chainList [0] levels).toArray) e.1) excl9)
        (List.filterMap (fun e => exclTuple (chainList [0] levels).toArray (mkId (chainList [0] levels).toArray) e.1)
          excl8) T = true →
      val (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) M ≤ (lamN : ℝ) / lamD := by
    intro M hM T hTs hT hb
    simp only [body9, Bool.or_eq_true, decide_eq_true_eq, List.any_eq_true, List.mem_range] at hb
    rcases hb with (hv | h9') | ⟨u, hu, h8'⟩
    · have hv' : ((val9num
          (Array.map (fun M => valNumA (tupList 7) lower (List.map (preA (tupList 7) 7) lower) den7 qscale 7 M)
            (chainList [0] levels).toArray)
          (mkTop 7 (chainList [0] levels).toArray.size (mkId (chainList [0] levels).toArray) mid)
          (List.map DBlock.qarr mid).toArray
          (mkTop 8 (Array.map (fun x => x.1) core).size (mkId (Array.map (fun x => x.1) core)) top)
          (List.map DBlock.qarr top).toArray core (mkIdA (Array.map (fun x => x.2) core)) den7 qscale T : ℤ) : ℝ) *
            lamD ≤ (lamN : ℝ) * (72 * (56 * den7 * qscale)) := by exact_mod_cast hv
      rw [val9_eq h7 h8 hpre h1 h2 h3 h1' h2' hl hm ht c1 hPlt c4 c5 c3 c6 c7 c8 c9 c10 c11 c12 c13 c15 M T hTs hT]
        at hv'
      rw [le_div_iff₀ hlamD']
      have h72 : (0 : ℝ) < 72 * (56 * den7 * qscale) := by positivity
      have : (72 * (56 * den7 * qscale) : ℝ) * (val (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++
          toBlocks 9 qscale top h3) M * lamD) ≤ (72 * (56 * den7 * qscale) : ℝ) * lamN := by linarith
      exact le_of_mul_le_mul_left this h72
    · exact absurd (List.contains_iff_mem.1 h9')
        (not_mem_exT9 (TupEnum.ofCheck 7 h7) rfl (TupEnum.ofCheck 8 h8) rfl (TupEnum.ofCheck 9 h9) rfl c20 c21 c22
          hM hT)
    · exact absurd (List.contains_iff_mem.1 h8')
        (not_mem_exT8 (TupEnum.ofCheck 7 h7) rfl (TupEnum.ofCheck 8 h8) rfl c17 c18 c19 (hM.restrict _)
          (hT ⟨u, hu⟩))
  -- tuples of realizable 8-patterns
  have htup : ∀ N : Pat 8, Realizable N → ∃ R,
      IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7) N R ∧
      (∀ body, join8 (mkDel 7 (chainList [0] levels).toArray)
        (((Array.range 7).map (mkByDel (mkDel 7 (chainList [0] levels).toArray))).getD 6 ∅) body = true →
          body R = true) ∧
      (∀ z y, z < 8 → y < 8 → z ≠ y → consR z ((mkDel 7 (chainList [0] levels).toArray).getD (R.getD z 0) #[]) y
        ((mkDel 7 (chainList [0] levels).toArray).getD (R.getD y 0) #[]) = true) := by
    intro N hN
    obtain ⟨R, a, b, c, d, e⟩ := tuple8_exists hlen hchain h6 h7 c2' N hN
    exact ⟨R, ⟨a, b, c⟩, d, e⟩
  -- stage 1 at the tuple of a realizable 8-pattern
  have hst1 : ∀ N : Pat 8, Realizable N → ∀ R, IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7) N R →
      (∀ body, join8 (mkDel 7 (chainList [0] levels).toArray)
        (((Array.range 7).map (mkByDel (mkDel 7 (chainList [0] levels).toArray))).getD 6 ∅) body = true →
          body R = true) →
      fLower (n := 8) (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) N ≤
          (capN : ℝ) / capD ∧
        ((((8 : ℕ) : ℝ) + 1) * ((lamN : ℝ) / lamD) - ((8 : ℕ) : ℝ) * ((capN : ℝ) / capD) <
            fLower (n := 8) (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) N →
          ∃ s < S.size, S.getD s #[] = R) := by
    intro N hN R hR hjoin
    have hb := hjoin _ c23
    simp only [Bool.and_eq_true, Bool.or_eq_true, decide_eq_true_eq] at hb
    obtain ⟨hb1, hb2⟩ := hb
    have hnot := not_mem_exT8 (TupEnum.ofCheck 7 h7) rfl (TupEnum.ofCheck 8 h8) rfl c17 c18 c19 hN hR
    rw [hval8 N R hR]
    constructor
    · rcases hb1 with hle | hex
      · have hle' : ((f8num (Array.map (fun M => valNumA (tupList 7) lower (List.map (preA (tupList 7) 7) lower)
            den7 qscale 7 M) (chainList [0] levels).toArray)
            (mkTop 7 (chainList [0] levels).toArray.size (mkId (chainList [0] levels).toArray) mid)
            (List.map DBlock.qarr mid).toArray den7 qscale R : ℤ) : ℝ) * capD ≤
              (capN : ℝ) * (56 * den7 * qscale) := by exact_mod_cast hle
        rw [div_le_div_iff₀ hS8 hcapD']
        linarith
      · exact absurd (List.contains_iff_mem.1 hex) hnot
    · intro hθ
      rcases hb2 with (hle | hmatch) | hex
      · exfalso
        have hle' : ((f8num (Array.map (fun M => valNumA (tupList 7) lower (List.map (preA (tupList 7) 7) lower)
            den7 qscale 7 M) (chainList [0] levels).toArray)
            (mkTop 7 (chainList [0] levels).toArray.size (mkId (chainList [0] levels).toArray) mid)
            (List.map DBlock.qarr mid).toArray den7 qscale R : ℤ) : ℝ) * ((lamD : ℝ) * capD) ≤
              (9 * (lamN : ℝ) * capD - 8 * (capN : ℝ) * lamD) * (56 * den7 * qscale) := by exact_mod_cast hle
        have key : (((8 : ℕ) : ℝ) + 1) * ((lamN : ℝ) / lamD) - ((8 : ℕ) : ℝ) * ((capN : ℝ) / capD) =
            (9 * (lamN : ℝ) * capD - 8 * (capN : ℝ) * lamD) / ((lamD : ℝ) * capD) := by
          field_simp; push_cast; ring
        rw [key, div_lt_div_iff₀ (by positivity) hS8] at hθ
        linarith
      · revert hmatch
        cases hs : (mkIdA S).get? R with
        | none => simp
        | some s =>
          intro hmatch
          simp only [beq_iff_eq] at hmatch
          refine ⟨s, ?_, hmatch⟩
          by_contra hge
          have hnil : S.getD s #[] = #[] := by simp [Array.getD, Nat.not_lt.1 hge]
          have hsz := hR.size
          rw [← hmatch, hnil] at hsz
          simp at hsz
      · exact absurd (List.contains_iff_mem.1 hex) hnot
  intro M hM
  refine hier_bound (n := 8) (by norm_num) _ (k9_hlow h1 h2 h3 hl hm ht) (k9_htop h1 h2 h3 hl hm ht)
    ((lamN : ℝ) / lamD) ((capN : ℝ) / capD) ?_ ?_ ?_ M hM
  · intro N hN
    obtain ⟨R, hR, hj, -⟩ := htup N hN
    exact (hst1 N hN R hR hj).1
  · intro M hM hall
    have hex : ∀ u : Fin 9, ∃ R, IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7)
        (restrict (Fin.succAboveOrderEmb u) M) R ∧
        (∀ body, join8 (mkDel 7 (chainList [0] levels).toArray)
          (((Array.range 7).map (mkByDel (mkDel 7 (chainList [0] levels).toArray))).getD 6 ∅) body = true →
            body R = true) := fun u => by
      obtain ⟨R, a, b, -⟩ := htup _ (hM.restrict (Fin.succAboveOrderEmb u))
      exact ⟨R, a, b⟩
    choose Rf hRf hRj using hex
    let RF : ℕ → Array ℕ := fun y => if h : y < 9 then Rf ⟨y, h⟩ else #[]
    have hRF : ∀ u : Fin 9, RF u = Rf u := fun u => dif_pos u.2
    have hRF' : ∀ u : Fin 9, IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7)
        (restrict (Fin.succAboveOrderEmb u) M) (RF u) := fun u => by rw [hRF u]; exact hRf u
    have hcons9 := IsTuple8.cons9 c3 (T7 := TupEnum.ofCheck 7 h7) hPlt hRF'
    have hS : ∀ u : Fin 9, ∃ s < S.size, S.getD s #[] = Rf u :=
      fun u => (hst1 _ (hM.restrict _) (Rf u) (hRf u) (hRj u)).2 (hall u)
    choose sf hsf hsfeq using hS
    have h8eq : S.getD (sf 8) #[] = RF 8 := by rw [hsfeq 8]; exact (hRF 8).symm
    have hb := bjoin_sound RF (List.range 8) [(8, S.getD (sf 8) #[])] (c24 (sf 8) (List.mem_range.2 (hsf 8)))
      (by
        intro y hy
        have hy8 : y < 8 := List.mem_range.1 hy
        have hc := hcons9 y 8 (by omega) (by norm_num) (by omega)
        simp only [consR, hy8, if_true, beq_iff_eq] at hc
        have hmem := (c16 (sf ⟨y, by omega⟩) (List.mem_range.2 (hsf _))).2
        rw [hsfeq ⟨y, by omega⟩] at hmem
        have hRy : RF y = Rf ⟨y, by omega⟩ := hRF ⟨y, by omega⟩
        rw [h8eq, ← hc, hRy]
        exact Array.contains_iff_mem.1 hmem)
      (by
        intro e he y hy
        rw [List.mem_singleton] at he
        subst he
        rw [h8eq]
        exact hcons9 8 y (by norm_num) (by have := List.mem_range.1 hy; omega) (by have := List.mem_range.1 hy; omega))
      (by
        apply List.Pairwise.imp_of_mem _ List.pairwise_lt_range
        intro y y' hy hy' hlt
        exact hcons9 y y' (by have := List.mem_range.1 hy; omega) (by have := List.mem_range.1 hy'; omega)
          (Nat.ne_of_lt hlt))
    rw [h8eq] at hb
    have hTget : ∀ u < 9, (toTuple 9 #[] (((List.range 8).reverse.map fun y => (y, RF y)) ++ [(8, RF 8)])).getD u #[] =
        RF u := by
      intro u hu
      apply toTuple_getD RF 9 #[] _ (graph_assign RF (List.range 8) 8) hu
      by_cases hu8 : u = 8
      · subst hu8; simp
      · simp [List.mem_range]; omega
    exact V9 M hM _ (toTuple_size _ _ _) (fun u => by rw [hTget u u.2]; exact hRF' u) hb
  · intro M hM ⟨u, v, huv, hou, hov⟩
    have hex : ∀ u : Fin 9, ∃ R, IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7)
        (restrict (Fin.succAboveOrderEmb u) M) R ∧
        (∀ z y, z < 8 → y < 8 → z ≠ y → consR z ((mkDel 7 (chainList [0] levels).toArray).getD (R.getD z 0) #[]) y
          ((mkDel 7 (chainList [0] levels).toArray).getD (R.getD y 0) #[]) = true) := fun u => by
      obtain ⟨R, a, -, c⟩ := htup _ (hM.restrict (Fin.succAboveOrderEmb u))
      exact ⟨R, a, c⟩
    choose Rf hRf hRc using hex
    let RF : ℕ → Array ℕ := fun y => if h : y < 9 then Rf ⟨y, h⟩ else #[]
    have hRF : ∀ u : Fin 9, RF u = Rf u := fun u => dif_pos u.2
    have hRF' : ∀ u : Fin 9, IsTuple8 (chainList [0] levels).toArray (TupEnum.ofCheck 7 h7)
        (restrict (Fin.succAboveOrderEmb u) M) (RF u) := fun u => by rw [hRF u]; exact hRf u
    have hcons9 := IsTuple8.cons9 c3 (T7 := TupEnum.ofCheck 7 h7) hPlt hRF'
    have hcu := occ_core c3 h7 h8 h1 h2 h3 hl hm ht hPlt c15 (hRF' u) hou
    have hcv := occ_core c3 h7 h8 h1 h2 h3 hl hm ht hPlt c15 (hRF' v) hov
    set isC : Array ℕ → Bool := fun R => decide (cnum core (mkIdA (Array.map (fun x => x.2) core)) R < core.size)
      with hisC
    obtain ⟨x0, hx0⟩ : ∃ x0, (List.range 9).find? (fun w => isC (RF w)) = some x0 := by
      cases hfd : (List.range 9).find? (fun w => isC (RF w)) with
      | none =>
        exfalso
        have := List.find?_eq_none.1 hfd u (List.mem_range.2 u.2)
        simp [hisC, hcu] at this
      | some x0 => exact ⟨x0, rfl⟩
    have hx0lt : x0 < 9 := List.mem_range.1 (List.mem_of_find?_eq_some hx0)
    have hx0c := List.find?_some (p := fun w => isC (RF w)) hx0
    have hcx : cnum core (mkIdA (Array.map (fun x => x.2) core)) (RF x0) < core.size := by
      simpa [hisC] using hx0c
    have hcore2 := cnum_spec hcx
    have h3s := c25 _ (List.mem_range.2 hcx) x0 (List.mem_range.2 hx0lt)
    rw [hcore2] at h3s
    have hb := ijoin_sound (row := fun R : Array Nat => R) RF ((List.range 9).filter (· != x0)) [(x0, RF x0)] h3s
      (by intro e he; rw [List.mem_singleton] at he; subst he; rfl)
      (by
        intro y hy
        rw [mem_filter_range] at hy
        obtain ⟨hy9, hyx⟩ := hy
        rw [getD_range_map 9 _ #[] hy9, if_neg hyx]
        have hRy := hRF' ⟨y, hy9⟩
        obtain ⟨T', hT', hT's, hT'g⟩ := anch8I_complete c2' (r := if y < x0 then x0 - 1 else x0)
          (by split_ifs <;> omega) (fun j => (RF y).getD j 0)
          (fun j hj => by rw [mkDel_size]; exact hRy.lt j hj)
          (fun z y' hz hy' hzy' => by
            have := hRc ⟨y, hy9⟩ z y' hz hy' hzy'
            rw [← hRF ⟨y, hy9⟩] at this
            exact this)
        have hTeq : T' = RF y := array_eq_of_getD hT's hRy.size hT'g
        have hv : (RF y).getD (if y < x0 then x0 - 1 else x0) 0 = (RF x0).getD (if y < x0 then y else y - 1) 0 := by
          by_cases hyx0 : y < x0
          · have hc := hcons9 y x0 hy9 hx0lt hyx
            simp only [consR, hyx0, if_true, beq_iff_eq] at hc
            simp only [hyx0, if_true]
            exact hc
          · have hx0y : x0 < y := by omega
            have hc := hcons9 x0 y hx0lt hy9 (Ne.symm hyx)
            simp only [consR, hx0y, if_true, beq_iff_eq] at hc
            simp only [hyx0, if_false]
            exact hc.symm
        rw [← hv]
        rw [hTeq] at hT'
        exact hT')
      (pairwise_filter_range 9 x0)
      (by
        intro e he y hy
        rw [List.mem_singleton] at he
        subst he
        rw [mem_filter_range] at hy
        exact Ne.symm hy.2)
      (by
        intro e he y hy
        rw [List.mem_singleton] at he
        subst he
        rw [mem_filter_range] at hy
        exact hcons9 x0 y hx0lt hy.1 (Ne.symm hy.2))
      (by
        apply List.Pairwise.imp_of_mem _ (pairwise_filter_range 9 x0)
        intro y y' hy hy' hlt
        rw [mem_filter_range] at hy hy'
        exact hcons9 y y' hy.1 hy'.1 (Nat.ne_of_lt hlt))
    have hTget : ∀ w < 9, (toTuple 9 #[] ((((List.range 9).filter (· != x0)).reverse.map fun y => (y, RF y)) ++
        [(x0, RF x0)])).getD w #[] = RF w :=
      fun w hw => toTuple_getD RF 9 #[] _ (graph_assign RF _ x0) hw (keys_assign RF 9 x0 hx0lt hw)
    simp only [body3, Bool.or_eq_true, decide_eq_true_eq] at hb
    rcases hb with (hlt2 | hfind) | hb9
    · exfalso
      have hfl : (List.range 9).filter (fun w => isC ((toTuple 9 #[] ((((List.range 9).filter (· != x0)).reverse.map
          fun y => (y, RF y)) ++ [(x0, RF x0)])).getD w #[])) = (List.range 9).filter (fun w => isC (RF w)) := by
        apply List.filter_congr
        intro w hw
        rw [hTget w (List.mem_range.1 hw)]
      rw [hfl] at hlt2
      have hu' : (u : ℕ) ∈ (List.range 9).filter (fun w => isC (RF w)) := by
        simp only [List.mem_filter, List.mem_range, u.2, true_and]
        simpa [hisC] using hcu
      have hv' : (v : ℕ) ∈ (List.range 9).filter (fun w => isC (RF w)) := by
        simp only [List.mem_filter, List.mem_range, v.2, true_and]
        simpa [hisC] using hcv
      have := two_le_length_of_mem (fun e => huv (Fin.ext e)) hu' hv'
      omega
    · exfalso
      have hfd : (List.range 9).find? (fun w => isC ((toTuple 9 #[] ((((List.range 9).filter (· != x0)).reverse.map
          fun y => (y, RF y)) ++ [(x0, RF x0)])).getD w #[])) = (List.range 9).find? (fun w => isC (RF w)) := by
        apply List.find?_congr
        intro w hw
        rw [hTget w (List.mem_range.1 hw)]
      rw [hfd, hx0] at hfind
      simp at hfind
    · exact V9 M hM _ (toTuple_size _ _ _) (fun w => by rw [hTget w w.2]; exact hRF' w) hb9

end BeatAvg.Check
