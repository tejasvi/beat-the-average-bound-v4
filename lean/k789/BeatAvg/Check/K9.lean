import BeatAvg.Check.K9b

/-!
# Soundness of the check with 9 points, part 3: tuples of realizable patterns, values, and the three stages
-/

open Finset

namespace BeatAvg.Check

open Std

section tuples

variable {levels : List (List TreeRec)} (hlen : levels.length = 4) (hchain : chainOK 3 [0] levels = true)
  (h6 : enumOK 6 = true) (h7 : enumOK 7 = true)

include hlen hchain in
/-- Realizable 7-patterns are numbered. -/
theorem num7_exists (N : Pat 7) (hN : Realizable N) : ∃ n < (chainList [0] levels).toArray.size,
    (TupEnum.ofCheck 7 h7).decode ((chainList [0] levels).toArray.getD n 0) = N := by
  have hchain7 := chain_sound levels 3 [0] (TupEnum.ofCheck 3 enumOK_three) rfl (level3_all _) hchain
  rw [hlen] at hchain7
  obtain ⟨x, hx, hdx⟩ := hchain7 (TupEnum.ofCheck 7 h7) rfl N hN
  obtain ⟨n, hn, rfl⟩ := List.mem_iff_getElem.1 hx
  exact ⟨n, by simpa using hn, by simpa [Array.getD, hn] using hdx⟩

include hlen hchain in
/-- The 7-patterns are bit vectors. -/
theorem num7_lt : ∀ n < (chainList [0] levels).toArray.size,
    (chainList [0] levels).toArray.getD n 0 < 2 ^ (tupList 7).length := by
  have hlt := chainList_lt levels 3 [0] hchain (by intro he; rw [he] at hlen; simp at hlen)
  rw [hlen] at hlt
  intro n hn
  have hn' : n < (chainList [0] levels).length := by simpa using hn
  have := hlt _ (List.getElem_mem hn')
  simpa [Array.getD, hn'] using this

theorem mkDel_size (P : Array ℕ) : (mkDel 7 P).size = P.size := by simp [mkDel]

theorem mkDel_get {P : Array ℕ} {n : ℕ} (hn : n < P.size) {i : ℕ} (hi : i < 7) :
    ((mkDel 7 P).getD n #[]).getD i 0 =
      gather (P.getD n 0) (restrIdx (tupList 7) (tupList 6) (ptsOf 7 (maskExcept 7 i))) := by
  simp only [mkDel]
  rw [getD_map_lt _ _ #[] 0 hn]
  rw [getD_map_lt _ _ 0 [] (by simp [delIdx, hi]), delIdx, getD_range_map 7 _ [] hi]

theorem mkDel_dec {P : Array ℕ} (T6 : TupEnum 6) (hT6 : T6.l = tupList 6) (T7 : TupEnum 7) (hT7 : T7.l = tupList 7)
    {n : ℕ} (hn : n < P.size) (i : Fin 7) :
    T6.decode (((mkDel 7 P).getD n #[]).getD i 0) =
      restrict (Fin.succAboveOrderEmb i) (T7.decode (P.getD n 0)) := by
  rw [mkDel_get hn i.2]
  have := decode_del T7 T6 i (P.getD n 0)
  rw [hT7, hT6] at this
  exact this

theorem mkDel_lt {P : Array ℕ} (T6 : TupEnum 6) (hT6 : T6.l = tupList 6) {n : ℕ} (hn : n < P.size) {i : ℕ}
    (hi : i < 7) : ((mkDel 7 P).getD n #[]).getD i 0 < 2 ^ T6.l.length := by
  rw [mkDel_get hn hi]
  have := gather_lt (P.getD n 0) (restrIdx (tupList 7) (tupList 6) (ptsOf 7 (maskExcept 7 i)))
  rw [restrIdx_length] at this
  rw [hT6]
  exact this

include hlen hchain h6 in
/-- The tuple of the numbers of the restrictions of a realizable 8-pattern: it is visited by the join, and its
deletions are consistent. -/
theorem tuple8_exists {bd : Array (HashMap Nat (Array Nat))}
    (hbd : ∀ i < 7, byDelOK (mkDel 7 (chainList [0] levels).toArray) (bd.getD i {}) i = true)
    (M : Pat 8) (hM : Realizable M) :
    ∃ R : Array ℕ, R.size = 8 ∧ (∀ u < 8, R.getD u 0 < (chainList [0] levels).toArray.size) ∧
      (∀ u : Fin 8, (TupEnum.ofCheck 7 h7).decode ((chainList [0] levels).toArray.getD (R.getD u 0) 0) =
        restrict (Fin.succAboveOrderEmb u) M) ∧
      (∀ body, join8 (mkDel 7 (chainList [0] levels).toArray) (bd.getD 6 {}) body = true → body R = true) ∧
      (∀ z y, z < 8 → y < 8 → z ≠ y →
        consR z ((mkDel 7 (chainList [0] levels).toArray).getD (R.getD z 0) #[]) y
          ((mkDel 7 (chainList [0] levels).toArray).getD (R.getD y 0) #[]) = true) := by
  set P := (chainList [0] levels).toArray with hP
  let T6 := TupEnum.ofCheck 6 h6
  let T7 := TupEnum.ofCheck 7 h7
  have hex : ∀ u : Fin 8, ∃ n < P.size, T7.decode (P.getD n 0) = restrict (Fin.succAboveOrderEmb u) M :=
    fun u => num7_exists hlen hchain h7 _ (hM.restrict _)
  choose nf hnf hdec using hex
  let nN : ℕ → ℕ := fun u => if h : u < 8 then nf ⟨u, h⟩ else 0
  have hnN : ∀ u (h : u < 8), nN u = nf ⟨u, h⟩ := fun u h => dif_pos h
  have hDdec : ∀ (u : Fin 8) (i : Fin 7), T6.decode (((mkDel 7 P).getD (nf u) #[]).getD i 0) =
      restrict (Fin.succAboveOrderEmb i) (restrict (Fin.succAboveOrderEmb u) M) := by
    intro u i
    rw [mkDel_dec T6 rfl T7 rfl (hnf u) i, hdec u]
  have hcons : ∀ a b : ℕ, a < b → b < 8 →
      ((mkDel 7 P).getD (nN a) #[]).getD (b - 1) 0 = ((mkDel 7 P).getD (nN b) #[]).getD a 0 := by
    intro a b hab hb
    have ha : a < 8 := by omega
    rw [hnN a ha, hnN b hb]
    apply decode_inj T6 (mkDel_lt T6 rfl (hnf _) (by omega)) (mkDel_lt T6 rfl (hnf _) (by omega))
    have e1 := hDdec ⟨a, ha⟩ ⟨b - 1, by omega⟩
    have e2 := hDdec ⟨b, hb⟩ ⟨a, by omega⟩
    dsimp only at e1 e2
    rw [e1, e2]
    exact (restrict_del_comm a b hab hb M).symm
  have hsz : ∀ u, u < 8 → nN u < (mkDel 7 P).size := by
    intro u hu
    rw [mkDel_size, hnN u hu]
    exact hnf _
  have hRu : ∀ u (hu : u < 8), (#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : Array ℕ).getD u 0 =
      nf ⟨u, hu⟩ := by
    intro u hu
    interval_cases u <;> rfl
  refine ⟨#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7], rfl, ?_, ?_, ?_, ?_⟩
  · intro u hu
    rw [hRu u hu]
    exact hnf _
  · intro u
    rw [hRu u u.2]
    exact hdec u
  · intro body hjoin
    exact join8_sound (hbd 6 (by norm_num)) hjoin (nN 0) (nN 1) (nN 2) (nN 3) (nN 4) (nN 5) (nN 6) (nN 7)
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
  · intro z y hz hy hzy
    have hR8 : ∀ u (hu : u < 8), (#[nN 0, nN 1, nN 2, nN 3, nN 4, nN 5, nN 6, nN 7] : Array ℕ).getD u 0 = nN u := by
      intro u hu; rw [hRu u hu, hnN u hu]
    rw [hR8 z hz, hR8 y hy]
    unfold consR
    by_cases h : z < y
    · rw [if_pos h, hcons z y h hy]; simp
    · rw [if_neg h, hcons y z (by omega) hz]; simp

end tuples

end BeatAvg.Check

namespace BeatAvg.Check

theorem mem_toBlocks' {k qscale : Nat} : ∀ {l : List DBlock} {h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true}
    {B : Block k}, B ∈ toBlocks k qscale l h →
      ∃ b ∈ l, ∃ hw he, B = b.toBlock k hw he qscale
  | [], _, B, hB => by simp [toBlocks] at hB
  | b :: l, h, B, hB => by
    simp only [toBlocks, List.mem_cons] at hB
    rcases hB with rfl | hB
    · exact ⟨b, List.mem_cons_self, _, _, rfl⟩
    · obtain ⟨b', hb', hw, he, rfl⟩ := mem_toBlocks' hB
      exact ⟨b', List.mem_cons_of_mem _ hb', hw, he, rfl⟩

theorem sum_blockVal_congr {k k' n : Nat} (qscale : Nat) (N : Pat n) : ∀ (l : List DBlock)
    (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true) (h' : ∀ b ∈ l, b.wf k' = true ∧ enumOK b.m = true),
    ((toBlocks k qscale l h).map fun B => blockVal B N).sum = ((toBlocks k' qscale l h').map fun B => blockVal B N).sum
  | [], _, _ => rfl
  | b :: l, h, h' => by
    simp only [toBlocks, List.map_cons, List.sum_cons]
    rw [sum_blockVal_congr qscale N l]
    rfl

theorem filter_all {k qscale : Nat} (c : ℕ) (l : List DBlock) (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ l, 2 * b.m - b.t ≤ c) :
    (toBlocks k qscale l h).filter (fun B => decide (2 * B.m - B.t ≤ c)) = toBlocks k qscale l h := by
  apply List.filter_eq_self.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  have := hl b hb
  simp [ht, hm, this]

theorem filter_none {k qscale : Nat} (c : ℕ) (l : List DBlock) (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ l, ¬ 2 * b.m - b.t ≤ c) :
    (toBlocks k qscale l h).filter (fun B => decide (2 * B.m - B.t ≤ c)) = [] := by
  apply List.filter_eq_nil_iff.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  have := hl b hb
  simp [ht, hm, this]

theorem filter_all' {k qscale : Nat} (c : ℕ) (l : List DBlock) (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ l, ¬ 2 * b.m - b.t ≤ c) :
    (toBlocks k qscale l h).filter (fun B => !decide (2 * B.m - B.t ≤ c)) = toBlocks k qscale l h := by
  apply List.filter_eq_self.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  have := hl b hb
  simp [ht, hm, this]

theorem filter_none' {k qscale : Nat} (c : ℕ) (l : List DBlock) (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ l, 2 * b.m - b.t ≤ c) :
    (toBlocks k qscale l h).filter (fun B => !decide (2 * B.m - B.t ≤ c)) = [] := by
  apply List.filter_eq_nil_iff.2
  intro B hB
  obtain ⟨b, hb, ht, hm⟩ := mem_toBlocks hB
  have := hl b hb
  simp [ht, hm, this]

/-- The value at 8 points of the blocks of the certificate with 9 points is the value of the lower and mid blocks. -/
theorem fLower9_eq {qscale : Nat} (lower mid top : List DBlock)
    (h1 : ∀ b ∈ lower, b.wf 9 = true ∧ enumOK b.m = true) (h2 : ∀ b ∈ mid, b.wf 9 = true ∧ enumOK b.m = true)
    (h3 : ∀ b ∈ top, b.wf 9 = true ∧ enumOK b.m = true)
    (h1' : ∀ b ∈ lower, b.wf 8 = true ∧ enumOK b.m = true) (h2' : ∀ b ∈ mid, b.wf 8 = true ∧ enumOK b.m = true)
    (hl : ∀ b ∈ lower, 2 * b.m - b.t ≤ 7) (hm : ∀ b ∈ mid, b.t = 6 ∧ b.m = 7) (ht : ∀ b ∈ top, b.t = 7 ∧ b.m = 8)
    (N : Pat 8) :
    fLower (n := 8) (toBlocks 9 qscale lower h1 ++ toBlocks 9 qscale mid h2 ++ toBlocks 9 qscale top h3) N =
      val (toBlocks 8 qscale lower h1' ++ toBlocks 8 qscale mid h2') N := by
  unfold fLower
  rw [val_eq_blockVal, List.filter_append, List.filter_append,
    filter_all 8 lower h1 (fun b hb => le_trans (hl b hb) (by norm_num)),
    filter_all 8 mid h2 (fun b hb => by rw [(hm b hb).1, (hm b hb).2]),
    filter_none 8 top h3 (fun b hb => by rw [(ht b hb).1, (ht b hb).2]; norm_num), List.append_nil,
    List.map_append, List.map_append, List.sum_append, List.sum_append,
    sum_blockVal_congr qscale N lower h1 h1', sum_blockVal_congr qscale N mid h2 h2']

theorem qarr_eq_qtab (b : DBlock) : b.qarr = (b.qtab.map List.toArray).toArray := by
  apply Array.ext
  · simp [DBlock.qarr, DBlock.qtab]
  · intro i hi1 hi2
    have hi : i < b.flags.length := by simpa [DBlock.qarr] using hi1
    apply Array.ext
    · simp [DBlock.qarr, DBlock.qtab]
    · intro j hj1 hj2
      have hj : j < b.flags.length := by simpa [DBlock.qarr] using hj1
      have e1 := qarr_get b hi hj
      have e2 := qtab_get b hi hj
      simp only [Array.getD, hi1, hj1, dite_true, Array.getInternal_eq_getElem] at e1
      rw [e1, ← e2]
      simp [List.getD_eq_getElem?_getD, hi, hj, DBlock.qtab]

theorem f8num_congr {f7 f7' : Array Int} {top : TopArr} {qt qt' : Array (Array (Array Int))} {den7 qscale : ℕ}
    {R : Array ℕ} (hf : ∀ u < 8, f7.getD (R.getD u 0) 0 = f7'.getD (R.getD u 0) 0) (hq : qt = qt') :
    f8num f7 top qt den7 qscale R = f8num f7' top qt' den7 qscale R := by
  unfold f8num
  have h1 : ((List.range 8).map fun x => f7.getD (R.getD x 0) 0) = ((List.range 8).map fun x => f7'.getD (R.getD x 0) 0) :=
    List.map_congr_left fun x hx => hf x (List.mem_range.1 hx)
  rw [h1, hq]

end BeatAvg.Check

namespace BeatAvg.Check

open Std

/-- The combinatorial factor of a block of the lower kind, from 9 to 8 points. -/
theorem nTriples_nine : ∀ t < 9, ∀ m < 9, t ≤ m → 2 * m - t ≤ 8 →
    nTriples (8 + 1) t m * (8 + 1 - (2 * m - t)) = (8 + 1) * nTriples 8 t m ∧ 0 < nTriples 8 t m := by
  decide

/-- The facts used about one 8-pattern and its tuple of numbers. -/
structure IsTuple8 (P : Array ℕ) (T7 : TupEnum 7) (N : Pat 8) (R : Array ℕ) : Prop where
  size : R.size = 8
  lt : ∀ u < 8, R.getD u 0 < P.size
  dec : ∀ u : Fin 8, T7.decode (P.getD (R.getD u 0) 0) = restrict (Fin.succAboveOrderEmb u) N

/-- Tuples of the same pattern are equal. -/
theorem IsTuple8.unique {P : Array ℕ} {id : HashMap ℕ ℕ} (hid : idOK P id = true) {T7 : TupEnum 7}
    (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ T7.l.length) {N : Pat 8} {R R' : Array ℕ}
    (h : IsTuple8 P T7 N R) (h' : IsTuple8 P T7 N R') : R = R' := by
  apply Array.ext
  · rw [h.size, h'.size]
  · intro i hi hi'
    have hi8 : i < 8 := by rw [h.size] at hi; exact hi
    have e := num_unique hid T7 hPlt (h.lt i hi8) (h'.lt i hi8)
      (by rw [h.dec ⟨i, hi8⟩, h'.dec ⟨i, hi8⟩])
    simpa [Array.getD, hi, hi'] using e

/-- The restrictions of the restrictions of a 9-pattern give consistent tuples. -/
theorem IsTuple8.cons9 {P : Array ℕ} {id : HashMap ℕ ℕ} (hid : idOK P id = true) {T7 : TupEnum 7}
    (hPlt : ∀ n < P.size, P.getD n 0 < 2 ^ T7.l.length) {M : Pat 9} {Rf : ℕ → Array ℕ}
    (hR : ∀ u : Fin 9, IsTuple8 P T7 (restrict (Fin.succAboveOrderEmb u) M) (Rf u)) :
    ∀ z y, z < 9 → y < 9 → z ≠ y → consR z (Rf z) y (Rf y) = true := by
  have key : ∀ a b, a < b → b < 9 → (Rf a).getD (b - 1) 0 = (Rf b).getD a 0 := by
    intro a b hab hb
    have ha : a < 9 := by omega
    apply num_unique hid T7 hPlt ((hR ⟨a, ha⟩).lt (b - 1) (by omega)) ((hR ⟨b, hb⟩).lt a (by omega))
    have e1 := (hR ⟨a, ha⟩).dec ⟨b - 1, by omega⟩
    have e2 := (hR ⟨b, hb⟩).dec ⟨a, by omega⟩
    dsimp only at e1 e2
    rw [e1, e2]
    exact (restrict_del_comm a b hab hb M).symm
  intro z y hz hy hzy
  unfold consR
  by_cases h : z < y
  · rw [if_pos h, key z y h hy]; simp
  · rw [if_neg h, key y z (by omega) hz]; simp

end BeatAvg.Check

namespace BeatAvg.Check

open Std

section main

variable {levels : List (List TreeRec)} {lower mid top : List DBlock} {excl8 excl9 : List (Nat × List (Nat × Nat))}
  {S : Array (Array Nat)} {core : Array (Nat × Array Nat)} {lamN lamD capN capD den7 qscale : Nat}
  (hlen : levels.length = 4) (h6 : enumOK 6 = true) (h7 : enumOK 7 = true) (h8 : enumOK 8 = true)
  (h9 : enumOK 9 = true)
  (hchain : chainOK 3 [0] levels = true) (hpre : directPre 7 lower 1 den7 qscale = true)
  (hmid : ∀ b ∈ mid, ((b.wf 8 = true ∧ enumOK b.m = true) ∧ b.t = 6) ∧ b.m = 7)
  (htop : ∀ b ∈ top, ((b.wf 9 = true ∧ enumOK b.m = true) ∧ b.t = 7) ∧ b.m = 8)

include hpre hmid htop in
/-- The blocks are well formed. -/
theorem k9_blocks :
    (∀ b ∈ lower, b.wf 9 = true ∧ enumOK b.m = true) ∧ (∀ b ∈ mid, b.wf 9 = true ∧ enumOK b.m = true) ∧
    (∀ b ∈ top, b.wf 9 = true ∧ enumOK b.m = true) ∧ (∀ b ∈ lower, b.wf 8 = true ∧ enumOK b.m = true) ∧
    (∀ b ∈ mid, b.wf 8 = true ∧ enumOK b.m = true) ∧ (∀ b ∈ lower, b.wf 7 = true) ∧
    (∀ b ∈ lower, 2 * b.m - b.t ≤ 7) ∧ (∀ b ∈ mid, b.t = 6 ∧ b.m = 7) ∧ (∀ b ∈ top, b.t = 7 ∧ b.m = 8) := by
  have hpre' := hpre
  simp only [directPre, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hpre'
  obtain ⟨⟨⟨⟨⟨⟨_, _⟩, _⟩, _⟩, _⟩, _⟩, hbl⟩ := hpre'
  refine ⟨fun b hb => ⟨DBlock.wf_mono (hbl b hb).1.1.1 (by norm_num), (hbl b hb).1.1.2⟩,
    fun b hb => ⟨DBlock.wf_mono (hmid b hb).1.1.1 (by norm_num), (hmid b hb).1.1.2⟩,
    fun b hb => ⟨(htop b hb).1.1.1, (htop b hb).1.1.2⟩,
    fun b hb => ⟨DBlock.wf_mono (hbl b hb).1.1.1 (by norm_num), (hbl b hb).1.1.2⟩,
    fun b hb => ⟨(hmid b hb).1.1.1, (hmid b hb).1.1.2⟩,
    fun b hb => (hbl b hb).1.1.1,
    fun b hb => (DBlock.wf_dims (hbl b hb).1.1.1).2,
    fun b hb => ⟨(hmid b hb).1.2, (hmid b hb).2⟩,
    fun b hb => ⟨(htop b hb).1.2, (htop b hb).2⟩⟩

end main

end BeatAvg.Check
