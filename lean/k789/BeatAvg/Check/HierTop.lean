import BeatAvg.Check.Hier

/-!
# Soundness of the hierarchical checks, part 2: the contribution of the top-kind blocks, on numbers of patterns
-/

open Finset

namespace BeatAvg.Check

theorem list_sum_range {n : ℕ} (f : ℕ → ℝ) : ((List.range n).map f).sum = ∑ b ∈ Finset.range n, f b := by
  rw [← List.sum_toFinset f List.nodup_range, List.toFinset_range]

theorem sum_topSet {k : ℕ} (P : Array ℕ) (blocks : List DBlock) (n : ℕ) (F : ℕ × ℕ × ℕ → ℝ) :
    ∑ e ∈ topSet k P blocks n, F e = ∑ p ∈ Finset.range k, ∑ blk ∈ Finset.range blocks.length,
      ∑ i ∈ Finset.range (flagW blocks), if flagAt blocks blk i = (P.getD n 0, maskExcept k p) then F (p, blk, i)
        else 0 := by
  rw [topSet, Finset.sum_filter, Finset.sum_product]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [Finset.sum_product]

theorem posIn_unpos {b p : ℕ} : posIn b (unpos b p) = p := by
  unfold posIn unpos; split_ifs <;> omega

theorem unpos_posIn {b a : ℕ} (hab : a ≠ b) : unpos b (posIn b a) = a := by
  unfold posIn unpos; split_ifs <;> omega

/-- Sums over positions `p < k` are sums over the points `a ≠ b` (`p = posIn b a`), for `b ≤ k`. -/
theorem sum_range_pos {k b : ℕ} (hb : b ≤ k) (G : ℕ → ℝ) :
    ∑ p ∈ Finset.range k, G p = ∑ a ∈ (Finset.range (k + 1)).erase b, G (posIn b a) := by
  apply Finset.sum_nbij' (unpos b) (posIn b)
  · intro p hp
    simp only [Finset.mem_coe, Finset.mem_range] at hp
    simp only [Finset.mem_coe, Finset.mem_erase, Finset.mem_range, unpos]
    split_ifs <;> omega
  · intro a ha
    simp only [Finset.mem_coe, Finset.mem_erase, Finset.mem_range] at ha
    simp only [Finset.mem_coe, Finset.mem_range, posIn]
    split_ifs <;> omega
  · intro p _; exact posIn_unpos
  · intro a ha
    simp only [Finset.mem_coe, Finset.mem_erase] at ha
    exact unpos_posIn ha.1
  · intro p _; rw [posIn_unpos]

theorem posIn_lt' {a b k : ℕ} (ha : a < k + 1) (hb : b < k + 1) (hab : a ≠ b) : posIn b a < k := by
  unfold posIn; split_ifs <;> omega

/-- The value of the top flags at given positions. -/
def qget (qt : Array (Array (Array Int))) (blk i j : ℕ) : Int := ((qt.getD blk #[]).getD i #[]).getD j 0

/-- The inner sum of `topTerm` (over the flags of the restriction deleting `a`). -/
theorem topTerm_inner {P : Array ℕ} {id : Std.HashMap ℕ ℕ} {blocks : List DBlock} {top : TopArr}
    (hsound : topSound 7 P blocks top = true) (hcomp : topComplete 7 id blocks top = true)
    (hid : idOK P id = true) (hnd : topNodup top = true) (hsize : top.size = P.size)
    (qt : Array (Array (Array Int))) (R : Array ℕ) (hR : ∀ u < 8, R.getD u 0 < P.size)
    {a b blk i : ℕ} (ha : a < 8) (hb : b < 8) (hab : a ≠ b) (hblk : blk < blocks.length) :
    ((top.getD (R.getD a 0) []).map fun e' =>
      if e'.1 = posIn a b ∧ e'.2.1 = blk then (qget qt blk i e'.2.2 : ℝ) else 0).sum =
      ∑ j ∈ Finset.range (flagW blocks),
        if flagAt blocks blk j = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a b)) then (qget qt blk i j : ℝ)
        else 0 := by
  rw [sum_top_eq (by norm_num) hsound hcomp hid hnd hsize (hR a ha), sum_topSet]
  have hpa : posIn a b < 7 := posIn_lt' (by omega) (by omega) (Ne.symm hab)
  rw [Finset.sum_eq_single (posIn a b)]
  · rw [Finset.sum_eq_single blk]
    · refine Finset.sum_congr rfl fun j _ => ?_
      split_ifs <;> simp_all
    · intro blk' _ hne
      refine Finset.sum_eq_zero fun j _ => ?_
      split_ifs with h1 h2
      · exact absurd h2.2 hne
      · rfl
      · rfl
    · intro h; exact absurd (Finset.mem_range.2 hblk) h
  · intro p' _ hne
    refine Finset.sum_eq_zero fun blk' _ => Finset.sum_eq_zero fun j _ => ?_
    split_ifs with h1 h2
    · exact absurd h2.1 hne
    · rfl
    · rfl
  · intro h; exact absurd (Finset.mem_range.2 hpa) h

/-- The top term as a sum over blocks, ordered pairs of points and pairs of flags. -/
theorem topTerm_eq {P : Array ℕ} {id : Std.HashMap ℕ ℕ} {blocks : List DBlock} {top : TopArr}
    (hsound : topSound 7 P blocks top = true) (hcomp : topComplete 7 id blocks top = true)
    (hid : idOK P id = true) (hnd : topNodup top = true) (hsize : top.size = P.size)
    (qt : Array (Array (Array Int))) (R : Array ℕ) (hR : ∀ u < 8, R.getD u 0 < P.size) :
    (topTerm 8 top qt R : ℝ) = ∑ b ∈ Finset.range 8, ∑ a ∈ (Finset.range 8).erase b,
      ∑ blk ∈ Finset.range blocks.length, ∑ i ∈ Finset.range (flagW blocks),
        if flagAt blocks blk i = (P.getD (R.getD b 0) 0, maskExcept 7 (posIn b a)) then
          ∑ j ∈ Finset.range (flagW blocks),
            (if flagAt blocks blk j = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a b)) then
              (qget qt blk i j : ℝ) else 0)
        else 0 := by
  have expand : (topTerm 8 top qt R : ℝ) = ∑ b ∈ Finset.range 8, ∑ e ∈ topSet 7 P blocks (R.getD b 0),
      ((top.getD (R.getD (unpos b e.1) 0) []).map fun e' =>
        if e'.1 = posIn (unpos b e.1) b ∧ e'.2.1 = e.2.1 then (qget qt e.2.1 e.2.2 e'.2.2 : ℝ) else 0).sum := by
    unfold topTerm
    rw [Int.cast_list_sum, List.map_map, list_sum_range]
    refine Finset.sum_congr rfl fun b hb => ?_
    rw [← sum_top_eq (by norm_num) hsound hcomp hid hnd hsize (hR b (Finset.mem_range.1 hb))]
    simp only [Function.comp_def, Int.cast_list_sum, List.map_map, Int.cast_ite, Int.cast_zero, qget]
  rw [expand]
  refine Finset.sum_congr rfl fun b hb => ?_
  have hb8 : b < 8 := Finset.mem_range.1 hb
  rw [sum_topSet]
  rw [sum_range_pos (k := 7) (b := b) (by omega)]
  refine Finset.sum_congr rfl fun a ha => ?_
  have hab : a ≠ b := (Finset.mem_erase.1 ha).1
  have ha8 : a < 8 := Finset.mem_range.1 (Finset.mem_erase.1 ha).2
  refine Finset.sum_congr rfl fun blk hblk => Finset.sum_congr rfl fun i _ => ?_
  split_ifs with h
  · rw [unpos_posIn hab]
    exact topTerm_inner hsound hcomp hid hnd hsize qt R hR ha8 hb8 hab (Finset.mem_range.1 hblk)
  · rfl

end BeatAvg.Check

namespace BeatAvg.Check

/-- The flag of `(rest2 a b, {a})` in a pattern whose restriction deleting `b` has bits `x`. -/
theorem givesPair_decFlag_iff {n : ℕ} (T : TupEnum n) {M : Pat (n + 1)} {a b : Fin (n + 1)} (hab : a ≠ b)
    {x : ℕ} (hx : T.decode x = restrict (Fin.succAboveOrderEmb b) M) (hxlt : x < 2 ^ T.l.length)
    {f : ℕ × ℕ} (hf1 : f.1 < 2 ^ T.l.length) (hf2 : f.2 < 2 ^ n) (hn : 1 ≤ n) :
    GivesPair M a b (decFlag T f) ↔ f = (x, maskExcept n (posIn b a)) := by
  have hc : (rest2 a b ∪ {a}).card = n := by rw [rest2_union hab]; exact card_erase_fin b
  have hp : posIn b a < n := posIn_lt a b hab
  constructor
  · rintro ⟨h, hF⟩
    rw [flagOf_pair M hab h] at hF
    simp only [decFlag, Prod.mk.injEq] at hF
    obtain ⟨h1, h2⟩ := hF
    rw [← hx] at h1
    exact Prod.ext (decode_inj T hf1 hxlt h1.symm) (ofMask_inj hf2 (maskExcept_lt hp) h2.symm)
  · rintro rfl
    refine ⟨hc, ?_⟩
    rw [flagOf_pair M hab hc]
    simp only [decFlag, hx]

end BeatAvg.Check

namespace BeatAvg.Check

theorem sum_fin_pairs {n : ℕ} (G : ℕ → ℕ → ℝ) :
    ∑ ab : Fin n × Fin n, (if ab.1 ≠ ab.2 then G ab.1 ab.2 else 0) =
      ∑ b ∈ Finset.range n, ∑ a ∈ (Finset.range n).erase b, G a b := by
  rw [Fintype.sum_prod_type, Finset.sum_comm]
  rw [← Fin.sum_univ_eq_sum_range (fun b => ∑ a ∈ (Finset.range n).erase b, G a b)]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [← Finset.sum_filter_ne_zero]
  have : ∑ a : Fin n, (if a ≠ b then G a b else 0) = ∑ a ∈ Finset.range n, if a ≠ (b : ℕ) then G a b else 0 := by
    rw [← Fin.sum_univ_eq_sum_range (fun a => if a ≠ (b : ℕ) then G a b else 0)]
    refine Finset.sum_congr rfl fun a _ => ?_
    simp [Fin.ext_iff]
  rw [Finset.sum_filter_ne_zero, this, Finset.sum_ite, Finset.sum_const_zero, add_zero]
  congr 1
  ext a
  simp [Finset.mem_erase, and_comm]

theorem sum_fin_flags {W : ℕ} (fl : List (ℕ × ℕ)) (hW : fl.length ≤ W) {x : ℕ × ℕ} (hx : x.2 ≠ 0) (h : ℕ → ℝ) :
    ∑ i : Fin fl.length, (if fl[(i : ℕ)] = x then h i else 0) =
      ∑ i ∈ Finset.range W, (if fl.getD i (0, 0) = x then h i else 0) := by
  rw [← Finset.sum_subset (Finset.range_subset_range.2 hW)]
  · rw [← Fin.sum_univ_eq_sum_range (fun i => if fl.getD i (0, 0) = x then h i else 0)]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [List.getD_eq_getElem _ _ i.2]
  · intro i _ hi
    simp only [Finset.mem_range, not_lt] at hi
    rw [List.getD_eq_default _ _ hi]
    have : ((0 : ℕ), (0 : ℕ)) ≠ x := fun e => hx (by rw [← e])
    simp [this]

end BeatAvg.Check

namespace BeatAvg.Check

theorem term_eq {W : ℕ} (fl : List (ℕ × ℕ)) (hW : fl.length ≤ W) (Q : ℕ → ℕ → ℝ)
    (P1 P2 : ℕ × ℕ → Prop) [DecidablePred P1] [DecidablePred P2] (x y : ℕ × ℕ) (hx : x.2 ≠ 0) (hy : y.2 ≠ 0)
    (h1 : ∀ f ∈ fl, P1 f ↔ f = x) (h2 : ∀ f ∈ fl, P2 f ↔ f = y) :
    ∑ i : Fin fl.length, ∑ j : Fin fl.length, Q i j * (if P1 fl[(i : ℕ)] ∧ P2 fl[(j : ℕ)] then 1 else 0) =
      ∑ i ∈ Finset.range W, if fl.getD i (0, 0) = x then
        ∑ j ∈ Finset.range W, (if fl.getD j (0, 0) = y then Q i j else 0) else 0 := by
  have e : ∀ i : Fin fl.length, ∑ j : Fin fl.length, Q i j * (if P1 fl[(i : ℕ)] ∧ P2 fl[(j : ℕ)] then 1 else 0) =
      if fl[(i : ℕ)] = x then ∑ j ∈ Finset.range W, (if fl.getD j (0, 0) = y then Q i j else 0) else 0 := by
    intro i
    by_cases hi : fl[(i : ℕ)] = x
    · have hP1 : P1 fl[(i : ℕ)] := (h1 _ (List.getElem_mem _)).2 hi
      rw [if_pos hi, ← sum_fin_flags fl hW hy]
      refine Finset.sum_congr rfl fun j _ => ?_
      by_cases hj : fl[(j : ℕ)] = y
      · have hP2 : P2 fl[(j : ℕ)] := (h2 _ (List.getElem_mem _)).2 hj
        rw [if_pos ⟨hP1, hP2⟩, mul_one, if_pos hj]
      · have hP2 : ¬ P2 fl[(j : ℕ)] := fun h => hj ((h2 _ (List.getElem_mem _)).1 h)
        rw [if_neg (fun h => hP2 h.2), mul_zero, if_neg hj]
    · have hP1 : ¬ P1 fl[(i : ℕ)] := fun h => hi ((h1 _ (List.getElem_mem _)).1 h)
      simp [hP1, hi]
  rw [Finset.sum_congr rfl fun i _ => e i]
  exact sum_fin_flags fl hW hx (fun i => ∑ j ∈ Finset.range W, (if fl.getD j (0, 0) = y then Q i j else 0))

/-- The value of a block `(6, 7)` at 8 points, from the numbers of the restrictions of the pattern. -/
theorem blockVal_mid (b : DBlock) (hwf : b.t ≤ b.m ∧ 2 * b.m - b.t ≤ 8) (henum : enumOK b.m = true)
    (hwf' : b.wf 8 = true) (ht : b.t = 6) (hm : b.m = 7) (qscale : ℕ)
    (T7 : TupEnum 7) (hT7 : T7.l = tupList 7) (M : Pat 8) (P R : Array ℕ)
    (hR : ∀ u : Fin 8, T7.decode (P.getD (R.getD u 0) 0) = restrict (Fin.succAboveOrderEmb u) M)
    (hPlt : ∀ u < 8, P.getD (R.getD u 0) 0 < 2 ^ T7.l.length) {W : ℕ} (hW : b.flags.length ≤ W) :
    blockVal (b.toBlock 8 hwf henum qscale) M =
      (∑ bb ∈ Finset.range 8, ∑ a ∈ (Finset.range 8).erase bb, ∑ i ∈ Finset.range W,
        if b.flags.getD i (0, 0) = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a)) then
          ∑ j ∈ Finset.range W, (if b.flags.getD j (0, 0) = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a bb)) then
            (b.qint i j : ℝ) else 0)
        else 0) / (56 * qscale) := by
  obtain ⟨t, m, flags, terms⟩ := b
  simp only at ht hm hwf' hW ⊢
  subst ht hm
  have hcan := hwf'
  simp only [DBlock.wf, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hcan
  obtain ⟨-, hcan⟩ := hcan
  set T := TupEnum.ofCheck 7 henum
  have hTl : T.l = T7.l := by rw [hT7]; rfl
  have hB := blockVal_top (n := 8) (by norm_num) (DBlock.toBlock 8 ⟨6, 7, flags, terms⟩ hwf henum qscale)
    (show 6 = 8 - 2 by norm_num) (show 7 = 8 - 1 by norm_num) M
  rw [hB]
  have hGP : ∀ (a bb : Fin 8), a ≠ bb → ∀ f ∈ flags,
      GivesPair M a bb (decFlag T f) ↔ f = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a)) := by
    intro a bb hab f hf
    have hx : T.decode (P.getD (R.getD bb 0) 0) = restrict (Fin.succAboveOrderEmb bb) M := by
      rw [decode_congr T T7 hTl]; exact hR bb
    have hc := hcan f hf
    have hb1 : P.getD (R.getD bb 0) 0 < 2 ^ T.l.length := by rw [hTl]; exact hPlt bb bb.2
    have hc1 : f.1 < 2 ^ T.l.length := hc.1
    exact givesPair_decFlag_iff T hab hx hb1 hc1 hc.2 (by norm_num)
  have hnz : ∀ a bb : Fin 8, a ≠ bb → (maskExcept 7 (posIn bb a)) ≠ 0 := fun a bb hab =>
    maskExcept_ne_zero (by norm_num) (posIn_lt a bb hab)
  have hnum : ∀ ab : Fin 8 × Fin 8, ab.1 ≠ ab.2 →
      ∑ i : Fin flags.length, ∑ j : Fin flags.length,
        (DBlock.toBlock 8 ⟨6, 7, flags, terms⟩ hwf henum qscale).Q i j *
          (if GivesPair M ab.1 ab.2 ((DBlock.toBlock 8 ⟨6, 7, flags, terms⟩ hwf henum qscale).flags i) ∧
              GivesPair M ab.2 ab.1 ((DBlock.toBlock 8 ⟨6, 7, flags, terms⟩ hwf henum qscale).flags j)
            then 1 else 0) =
      (∑ i ∈ Finset.range W, if flags.getD i (0, 0) = (P.getD (R.getD ab.2 0) 0, maskExcept 7 (posIn ab.2 ab.1)) then
          ∑ j ∈ Finset.range W, (if flags.getD j (0, 0) =
            (P.getD (R.getD ab.1 0) 0, maskExcept 7 (posIn ab.1 ab.2)) then
            ((DBlock.qint ⟨6, 7, flags, terms⟩ i j : ℤ) : ℝ) else 0) else 0) / qscale := by
    intro ab hab
    have := term_eq flags hW (fun i j => ((DBlock.qint ⟨6, 7, flags, terms⟩ i j : ℤ) : ℝ) / qscale)
      (fun f => GivesPair M ab.1 ab.2 (decFlag T f)) (fun f => GivesPair M ab.2 ab.1 (decFlag T f))
      (P.getD (R.getD ab.2 0) 0, maskExcept 7 (posIn ab.2 ab.1))
      (P.getD (R.getD ab.1 0) 0, maskExcept 7 (posIn ab.1 ab.2)) (hnz _ _ hab) (hnz _ _ (Ne.symm hab))
      (hGP ab.1 ab.2 hab) (hGP ab.2 ab.1 (Ne.symm hab))
    change (∑ i : Fin flags.length, ∑ j : Fin flags.length,
        ((DBlock.qint ⟨6, 7, flags, terms⟩ i j : ℤ) : ℝ) / qscale *
          (if GivesPair M ab.1 ab.2 (decFlag T flags[(i : ℕ)]) ∧ GivesPair M ab.2 ab.1 (decFlag T flags[(j : ℕ)])
            then 1 else 0)) = _
    rw [this, Finset.sum_div]
    refine Finset.sum_congr rfl fun i _ => ?_
    split_ifs
    · rw [Finset.sum_div]
      refine Finset.sum_congr rfl fun j _ => ?_
      split_ifs <;> simp
    · simp
  set G : ℕ → ℕ → ℝ := fun a bb => (∑ i ∈ Finset.range W,
    if flags.getD i (0, 0) = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a)) then
      ∑ j ∈ Finset.range W, (if flags.getD j (0, 0) = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a bb)) then
        ((DBlock.qint ⟨6, 7, flags, terms⟩ i j : ℤ) : ℝ) else 0) else 0) / qscale with hG
  set B := DBlock.toBlock 8 ⟨6, 7, flags, terms⟩ hwf henum qscale with hBdef
  have hsum : (∑ ab : Fin 8 × Fin 8, if ab.1 ≠ ab.2 then ∑ i, ∑ j, B.Q i j *
      (if GivesPair M ab.1 ab.2 (B.flags i) ∧ GivesPair M ab.2 ab.1 (B.flags j) then 1 else 0) else 0) =
      ∑ ab : Fin 8 × Fin 8, (if ab.1 ≠ ab.2 then G ab.1 ab.2 else 0) := by
    refine Finset.sum_congr rfl fun ab _ => ?_
    split_ifs with hab
    · exact hnum ab hab
    · rfl
  rw [hsum, sum_fin_pairs]
  have hG2 : (∑ bb ∈ Finset.range 8, ∑ a ∈ (Finset.range 8).erase bb, G a bb) =
      (∑ bb ∈ Finset.range 8, ∑ a ∈ (Finset.range 8).erase bb, ∑ i ∈ Finset.range W,
        if flags.getD i (0, 0) = (P.getD (R.getD bb 0) 0, maskExcept 7 (posIn bb a)) then
          ∑ j ∈ Finset.range W, (if flags.getD j (0, 0) = (P.getD (R.getD a 0) 0, maskExcept 7 (posIn a bb)) then
            ((DBlock.qint ⟨6, 7, flags, terms⟩ i j : ℤ) : ℝ) else 0) else 0) / qscale := by
    rw [Finset.sum_div]
    refine Finset.sum_congr rfl fun bb _ => ?_
    rw [Finset.sum_div]
  have hden : (qscale : ℝ) * (((8 : ℕ) : ℝ) * (((8 : ℕ) : ℝ) - 1)) = 56 * qscale := by push_cast; ring
  rw [hG2, div_div, hden]

end BeatAvg.Check
