import BeatAvg.Check.K9a

/-!
# The contribution of the top-kind blocks `(k - 1, k)` at `k + 1` points, for any `k ≥ 2`

The lists `L b` of top flags at the positions `b` (flags whose pattern has the bits `x b` of the restriction deleting
`b`) may come from numbers of patterns (`top.getD (R.getD b 0) []`) or be empty when no flag has that pattern.
-/

open Finset

namespace BeatAvg.Check

/-- The top flags with pattern bits `x`: triples `(p, block, index)`. -/
def topSetX (k : ℕ) (x : ℕ) (blocks : List DBlock) : Finset (ℕ × ℕ × ℕ) :=
  (Finset.range k ×ˢ Finset.range blocks.length ×ˢ Finset.range (flagW blocks)).filter fun e =>
    flagAt blocks e.2.1 e.2.2 = (x, maskExcept k e.1)

theorem topSet_eq_topSetX (k : ℕ) (P : Array ℕ) (blocks : List DBlock) (n : ℕ) :
    topSet k P blocks n = topSetX k (P.getD n 0) blocks := rfl

theorem sum_topSetX {k : ℕ} (x : ℕ) (blocks : List DBlock) (F : ℕ × ℕ × ℕ → ℝ) :
    ∑ e ∈ topSetX k x blocks, F e = ∑ p ∈ Finset.range k, ∑ blk ∈ Finset.range blocks.length,
      ∑ i ∈ Finset.range (flagW blocks), if flagAt blocks blk i = (x, maskExcept k p) then F (p, blk, i)
        else 0 := by
  rw [topSetX, Finset.sum_filter, Finset.sum_product]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [Finset.sum_product]

/-- `L b` lists the top flags with pattern bits `x b`, each once, for the positions `b < np`. -/
def TopLists (k : ℕ) (blocks : List DBlock) (L : ℕ → List (ℕ × ℕ × ℕ)) (x : ℕ → ℕ) (np : ℕ) : Prop :=
  ∀ b < np, (L b).Nodup ∧ ∀ e, e ∈ L b ↔ e ∈ topSetX k (x b) blocks

theorem sum_L {k np : ℕ} {blocks : List DBlock} {L : ℕ → List (ℕ × ℕ × ℕ)} {x : ℕ → ℕ}
    (hL : TopLists k blocks L x np) {b : ℕ} (hb : b < np) (g : ℕ × ℕ × ℕ → ℝ) :
    ((L b).map g).sum = ∑ e ∈ topSetX k (x b) blocks, g e := by
  rw [← List.sum_toFinset g (hL b hb).1]
  congr 1
  ext e
  rw [List.mem_toFinset, (hL b hb).2 e]

/-- The top term from lists of flags. -/
def topTermL (np : ℕ) (L : ℕ → List (ℕ × ℕ × ℕ)) (qt : Array (Array (Array Int))) : Int :=
  ((List.range np).map fun b => ((L b).map fun e =>
    ((L (unpos b e.1)).map fun e' =>
      if e'.1 = posIn (unpos b e.1) b ∧ e'.2.1 = e.2.1 then qget qt e.2.1 e.2.2 e'.2.2 else 0).sum).sum).sum

theorem topTerm_eq_L (np : ℕ) (top : TopArr) (qt : Array (Array (Array Int))) (R : Array ℕ) :
    topTerm np top qt R = topTermL np (fun b => top.getD (R.getD b 0) []) qt := rfl

/-- Lists from numbers of patterns. -/
theorem topLists_of_top {k np : ℕ} (hk : 2 ≤ k) {P : Array ℕ} {id : Std.HashMap ℕ ℕ} {blocks : List DBlock}
    {top : TopArr} (hsound : topSound k P blocks top = true) (hcomp : topComplete k id blocks top = true)
    (hid : idOK P id = true) (hnd : topNodup top = true) (hsize : top.size = P.size) (R : Array ℕ)
    (hR : ∀ u < np, R.getD u 0 < P.size) :
    TopLists k blocks (fun b => top.getD (R.getD b 0) []) (fun b => P.getD (R.getD b 0) 0) np := by
  intro b hb
  refine ⟨?_, fun e => mem_top_iff hk hsound hcomp hid hsize (hR b hb) e⟩
  have := List.all_eq_true.1 hnd (R.getD b 0) (List.mem_range.2 (hsize ▸ hR b hb))
  simpa using this

theorem topTermL_inner {k : ℕ} {blocks : List DBlock} {L : ℕ → List (ℕ × ℕ × ℕ)} {x : ℕ → ℕ}
    (hL : TopLists k blocks L x (k + 1)) (qt : Array (Array (Array Int))) {a b blk i : ℕ}
    (ha : a < k + 1) (hb : b < k + 1) (hab : a ≠ b) (hblk : blk < blocks.length) :
    ((L a).map fun e' => if e'.1 = posIn a b ∧ e'.2.1 = blk then (qget qt blk i e'.2.2 : ℝ) else 0).sum =
      ∑ j ∈ Finset.range (flagW blocks),
        if flagAt blocks blk j = (x a, maskExcept k (posIn a b)) then (qget qt blk i j : ℝ) else 0 := by
  rw [sum_L hL ha, sum_topSetX]
  have hpa : posIn a b < k := posIn_lt' (by omega) (by omega) (Ne.symm hab)
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

/-- The top term as a sum over ordered pairs of points, blocks and pairs of flags. -/
theorem topTermL_eq {k : ℕ} {blocks : List DBlock} {L : ℕ → List (ℕ × ℕ × ℕ)} {x : ℕ → ℕ}
    (hL : TopLists k blocks L x (k + 1)) (qt : Array (Array (Array Int))) :
    (topTermL (k + 1) L qt : ℝ) = ∑ b ∈ Finset.range (k + 1), ∑ a ∈ (Finset.range (k + 1)).erase b,
      ∑ blk ∈ Finset.range blocks.length, ∑ i ∈ Finset.range (flagW blocks),
        if flagAt blocks blk i = (x b, maskExcept k (posIn b a)) then
          ∑ j ∈ Finset.range (flagW blocks),
            (if flagAt blocks blk j = (x a, maskExcept k (posIn a b)) then (qget qt blk i j : ℝ) else 0)
        else 0 := by
  have expand : (topTermL (k + 1) L qt : ℝ) = ∑ b ∈ Finset.range (k + 1), ∑ e ∈ topSetX k (x b) blocks,
      ((L (unpos b e.1)).map fun e' =>
        if e'.1 = posIn (unpos b e.1) b ∧ e'.2.1 = e.2.1 then (qget qt e.2.1 e.2.2 e'.2.2 : ℝ) else 0).sum := by
    unfold topTermL
    rw [Int.cast_list_sum, List.map_map, list_sum_range]
    refine Finset.sum_congr rfl fun b hb => ?_
    rw [← sum_L hL (Finset.mem_range.1 hb)]
    simp only [Function.comp_def, Int.cast_list_sum, List.map_map, Int.cast_ite, Int.cast_zero]
  rw [expand]
  refine Finset.sum_congr rfl fun b hb => ?_
  have hb8 : b < k + 1 := Finset.mem_range.1 hb
  rw [sum_topSetX]
  rw [sum_range_pos (k := k) (b := b) (by omega)]
  refine Finset.sum_congr rfl fun a ha => ?_
  have hab : a ≠ b := (Finset.mem_erase.1 ha).1
  have ha8 : a < k + 1 := Finset.mem_range.1 (Finset.mem_erase.1 ha).2
  refine Finset.sum_congr rfl fun blk hblk => Finset.sum_congr rfl fun i _ => ?_
  split_ifs with h
  · rw [unpos_posIn hab]
    exact topTermL_inner hL qt ha8 hb8 hab (Finset.mem_range.1 hblk)
  · rfl

end BeatAvg.Check

namespace BeatAvg.Check

/-- The value of a block `(k - 1, k)` at `k + 1` points, from the bits `x u` of the restrictions. -/
theorem blockVal_topk {k : ℕ} (hk : 2 ≤ k) (b : DBlock) (hwf : b.t ≤ b.m ∧ 2 * b.m - b.t ≤ k + 1)
    (henum : enumOK b.m = true) (hwf' : b.wf (k + 1) = true) (ht : b.t = k - 1) (hm : b.m = k) (qscale : ℕ)
    (Tk : TupEnum k) (hTk : Tk.l = tupList k) (M : Pat (k + 1)) (x : ℕ → ℕ)
    (hR : ∀ u : Fin (k + 1), Tk.decode (x u) = restrict (Fin.succAboveOrderEmb u) M)
    (hPlt : ∀ u < k + 1, x u < 2 ^ Tk.l.length) {W : ℕ} (hW : b.flags.length ≤ W) :
    blockVal (b.toBlock (k + 1) hwf henum qscale) M =
      (∑ bb ∈ Finset.range (k + 1), ∑ a ∈ (Finset.range (k + 1)).erase bb, ∑ i ∈ Finset.range W,
        if b.flags.getD i (0, 0) = (x bb, maskExcept k (posIn bb a)) then
          ∑ j ∈ Finset.range W, (if b.flags.getD j (0, 0) = (x a, maskExcept k (posIn a bb)) then
            (b.qint i j : ℝ) else 0)
        else 0) / (((k : ℝ) + 1) * k * qscale) := by
  obtain ⟨t, m, flags, terms⟩ := b
  simp only at ht hm hwf' hW ⊢
  subst ht
  subst m
  have hcan := hwf'
  simp only [DBlock.wf, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hcan
  obtain ⟨-, hcan⟩ := hcan
  set T := TupEnum.ofCheck k henum
  have hTl : T.l = Tk.l := by rw [hTk]; rfl
  have hB := blockVal_top (n := k + 1) (by omega) (DBlock.toBlock (k + 1) ⟨k - 1, k, flags, terms⟩ hwf henum qscale)
    (show k - 1 = k + 1 - 2 by omega) (show k = k + 1 - 1 by omega) M
  rw [hB]
  have hGP : ∀ (a bb : Fin (k + 1)), a ≠ bb → ∀ f ∈ flags,
      GivesPair M a bb (decFlag T f) ↔ f = (x bb, maskExcept k (posIn bb a)) := by
    intro a bb hab f hf
    have hx : T.decode (x bb) = restrict (Fin.succAboveOrderEmb bb) M := by
      rw [decode_congr T Tk hTl]; exact hR bb
    have hc := hcan f hf
    have hb1 : x bb < 2 ^ T.l.length := by rw [hTl]; exact hPlt bb bb.2
    have hc1 : f.1 < 2 ^ T.l.length := hc.1
    exact givesPair_decFlag_iff T hab hx hb1 hc1 hc.2 (by omega)
  have hnz : ∀ a bb : Fin (k + 1), a ≠ bb → (maskExcept k (posIn bb a)) ≠ 0 := fun a bb hab =>
    maskExcept_ne_zero hk (posIn_lt a bb hab)
  have hnum : ∀ ab : Fin (k + 1) × Fin (k + 1), ab.1 ≠ ab.2 →
      ∑ i : Fin flags.length, ∑ j : Fin flags.length,
        (DBlock.toBlock (k + 1) ⟨k - 1, k, flags, terms⟩ hwf henum qscale).Q i j *
          (if GivesPair M ab.1 ab.2 ((DBlock.toBlock (k + 1) ⟨k - 1, k, flags, terms⟩ hwf henum qscale).flags i) ∧
              GivesPair M ab.2 ab.1 ((DBlock.toBlock (k + 1) ⟨k - 1, k, flags, terms⟩ hwf henum qscale).flags j)
            then 1 else 0) =
      (∑ i ∈ Finset.range W, if flags.getD i (0, 0) = (x ab.2, maskExcept k (posIn ab.2 ab.1)) then
          ∑ j ∈ Finset.range W, (if flags.getD j (0, 0) =
            (x ab.1, maskExcept k (posIn ab.1 ab.2)) then
            ((DBlock.qint ⟨k - 1, k, flags, terms⟩ i j : ℤ) : ℝ) else 0) else 0) / qscale := by
    intro ab hab
    have := term_eq flags hW (fun i j => ((DBlock.qint ⟨k - 1, k, flags, terms⟩ i j : ℤ) : ℝ) / qscale)
      (fun f => GivesPair M ab.1 ab.2 (decFlag T f)) (fun f => GivesPair M ab.2 ab.1 (decFlag T f))
      (x ab.2, maskExcept k (posIn ab.2 ab.1))
      (x ab.1, maskExcept k (posIn ab.1 ab.2)) (hnz _ _ hab) (hnz _ _ (Ne.symm hab))
      (hGP ab.1 ab.2 hab) (hGP ab.2 ab.1 (Ne.symm hab))
    change (∑ i : Fin flags.length, ∑ j : Fin flags.length,
        ((DBlock.qint ⟨k - 1, k, flags, terms⟩ i j : ℤ) : ℝ) / qscale *
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
    if flags.getD i (0, 0) = (x bb, maskExcept k (posIn bb a)) then
      ∑ j ∈ Finset.range W, (if flags.getD j (0, 0) = (x a, maskExcept k (posIn a bb)) then
        ((DBlock.qint ⟨k - 1, k, flags, terms⟩ i j : ℤ) : ℝ) else 0) else 0) / qscale with hG
  set B := DBlock.toBlock (k + 1) ⟨k - 1, k, flags, terms⟩ hwf henum qscale with hBdef
  have hsum : (∑ ab : Fin (k + 1) × Fin (k + 1), if ab.1 ≠ ab.2 then ∑ i, ∑ j, B.Q i j *
      (if GivesPair M ab.1 ab.2 (B.flags i) ∧ GivesPair M ab.2 ab.1 (B.flags j) then 1 else 0) else 0) =
      ∑ ab : Fin (k + 1) × Fin (k + 1), (if ab.1 ≠ ab.2 then G ab.1 ab.2 else 0) := by
    refine Finset.sum_congr rfl fun ab _ => ?_
    split_ifs with hab
    · exact hnum ab hab
    · rfl
  rw [hsum, sum_fin_pairs]
  have hG2 : (∑ bb ∈ Finset.range (k + 1), ∑ a ∈ (Finset.range (k + 1)).erase bb, G a bb) =
      (∑ bb ∈ Finset.range (k + 1), ∑ a ∈ (Finset.range (k + 1)).erase bb, ∑ i ∈ Finset.range W,
        if flags.getD i (0, 0) = (x bb, maskExcept k (posIn bb a)) then
          ∑ j ∈ Finset.range W, (if flags.getD j (0, 0) = (x a, maskExcept k (posIn a bb)) then
            ((DBlock.qint ⟨k - 1, k, flags, terms⟩ i j : ℤ) : ℝ) else 0) else 0) / qscale := by
    rw [Finset.sum_div]
    refine Finset.sum_congr rfl fun bb _ => ?_
    rw [Finset.sum_div]
  have hden : (qscale : ℝ) * (((k + 1 : ℕ) : ℝ) * (((k + 1 : ℕ) : ℝ) - 1)) = ((k : ℝ) + 1) * k * qscale := by
    push_cast; ring
  rw [hG2, div_div, hden]

/-- The blocks `(k - 1, k)` at `k + 1` points, as a sum over the blocks of the list. -/
theorem sum_blockVal_topk {k : ℕ} (hk : 2 ≤ k) (qscale : ℕ) (Tk : TupEnum k) (hTk : Tk.l = tupList k)
    (M : Pat (k + 1)) (x : ℕ → ℕ)
    (hR : ∀ u : Fin (k + 1), Tk.decode (x u) = restrict (Fin.succAboveOrderEmb u) M)
    (hPlt : ∀ u < k + 1, x u < 2 ^ Tk.l.length) (W : ℕ) :
    ∀ (l : List DBlock) (h : ∀ b ∈ l, b.wf (k + 1) = true ∧ enumOK b.m = true),
      (∀ b ∈ l, b.t = k - 1 ∧ b.m = k) → (∀ b ∈ l, b.flags.length ≤ W) →
      ((toBlocks (k + 1) qscale l h).map fun B => blockVal B M).sum =
        (l.map fun b => ∑ bb ∈ Finset.range (k + 1), ∑ a ∈ (Finset.range (k + 1)).erase bb, ∑ i ∈ Finset.range W,
          if b.flags.getD i (0, 0) = (x bb, maskExcept k (posIn bb a)) then
            ∑ j ∈ Finset.range W, (if b.flags.getD j (0, 0) =
              (x a, maskExcept k (posIn a bb)) then (b.qint i j : ℝ) else 0)
          else 0).sum / (((k : ℝ) + 1) * k * qscale)
  | [], _, _, _ => by simp [toBlocks]
  | b :: l, h, hm, hW => by
    simp only [toBlocks, List.map_cons, List.sum_cons]
    rw [sum_blockVal_topk hk qscale Tk hTk M x hR hPlt W l _ (fun b' hb' => hm b' (List.mem_cons_of_mem _ hb'))
      (fun b' hb' => hW b' (List.mem_cons_of_mem _ hb')), add_div]
    congr 1
    exact blockVal_topk hk b _ _ (h b List.mem_cons_self).1 (hm b List.mem_cons_self).1 (hm b List.mem_cons_self).2
      qscale Tk hTk M x hR hPlt (hW b List.mem_cons_self)

theorem qget_arr (l : List DBlock) {blk i j : ℕ} (hblk : blk < l.length)
    (hi : i < (l.getD blk dfltB).flags.length) (hj : j < (l.getD blk dfltB).flags.length) :
    qget ((l.map DBlock.qarr).toArray) blk i j = (l.getD blk dfltB).qint i j := by
  unfold qget
  have h1 : ((l.map DBlock.qarr).toArray).getD blk #[] = (l.getD blk dfltB).qarr := by
    simp [Array.getD, hblk, List.getD_eq_getElem _ _ hblk]
  rw [h1, qarr_get _ hi hj]

/-- The blocks `(k - 1, k)` at `k + 1` points give the top term of the lists `L`. -/
theorem topk_eq_topTermL {k : ℕ} (hk : 2 ≤ k) (qscale : ℕ) (top : List DBlock)
    (h3 : ∀ b ∈ top, b.wf (k + 1) = true ∧ enumOK b.m = true) (htop : ∀ b ∈ top, b.t = k - 1 ∧ b.m = k)
    (Tk : TupEnum k) (hTk : Tk.l = tupList k) (M : Pat (k + 1)) (x : ℕ → ℕ)
    (hR : ∀ u : Fin (k + 1), Tk.decode (x u) = restrict (Fin.succAboveOrderEmb u) M)
    (hPlt : ∀ u < k + 1, x u < 2 ^ Tk.l.length) {L : ℕ → List (ℕ × ℕ × ℕ)}
    (hL : TopLists k top L x (k + 1)) :
    ((toBlocks (k + 1) qscale top h3).map fun B => blockVal B M).sum =
      (topTermL (k + 1) L ((top.map DBlock.qarr).toArray) : ℝ) / (((k : ℝ) + 1) * k * qscale) := by
  have hW : ∀ b ∈ top, b.flags.length ≤ flagW top := by
    intro b hb; unfold flagW; exact List.le_sum_of_mem (List.mem_map.2 ⟨b, hb, rfl⟩)
  rw [sum_blockVal_topk hk qscale Tk hTk M x hR hPlt (flagW top) top h3 htop hW, topTermL_eq hL]
  congr 1
  rw [list_sum_getD dfltB]
  conv_lhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun bb hbb => ?_
  conv_lhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun a ha => ?_
  refine Finset.sum_congr rfl fun blk hblk => ?_
  refine Finset.sum_congr rfl fun i _ => ?_
  have hab : a ≠ bb := (Finset.mem_erase.1 ha).1
  have ha8 : a < k + 1 := Finset.mem_range.1 (Finset.mem_erase.1 ha).2
  have hbb8 : bb < k + 1 := Finset.mem_range.1 hbb
  by_cases hi : (top.getD blk dfltB).flags.getD i (0, 0) = (x bb, maskExcept k (posIn bb a))
  · have hi' : flagAt top blk i = (x bb, maskExcept k (posIn bb a)) := hi
    rw [if_pos hi, if_pos hi']
    refine Finset.sum_congr rfl fun j _ => ?_
    by_cases hj : (top.getD blk dfltB).flags.getD j (0, 0) = (x a, maskExcept k (posIn a bb))
    · have hj' : flagAt top blk j = (x a, maskExcept k (posIn a bb)) := hj
      rw [if_pos hj, if_pos hj']
      have r1 := flagAt_in_range (maskExcept_ne_zero hk (posIn_lt' ha8 hbb8 hab)) hi'
      have r2 := flagAt_in_range (maskExcept_ne_zero hk (posIn_lt' hbb8 ha8 (Ne.symm hab))) hj'
      rw [qget_arr top r1.1 r1.2.1 r2.2.1]
    · have hj' : ¬ flagAt top blk j = (x a, maskExcept k (posIn a bb)) := hj
      rw [if_neg hj, if_neg hj']
  · have hi' : ¬ flagAt top blk i = (x bb, maskExcept k (posIn bb a)) := hi
    rw [if_neg hi, if_neg hi']

end BeatAvg.Check
