import BeatAvg.Check.Assembly
import BeatAvg.Comb.Identity
import BeatAvg.Core.Hier

/-!
# Soundness of the hierarchical checks, part 1: deletions of points on bits
-/

open Finset

namespace BeatAvg.Check

theorem val_succAbove' {n : ℕ} (p : Fin (n + 1)) (i : Fin n) :
    (p.succAbove i : ℕ) = if (i : ℕ) < (p : ℕ) then (i : ℕ) else (i : ℕ) + 1 := by
  by_cases h : (i : ℕ) < p
  · rw [Fin.succAbove_of_castSucc_lt p i (by simpa [Fin.lt_def] using h)]; simp [h]
  · rw [Fin.succAbove_of_le_castSucc p i (by rw [Fin.le_def]; simp; omega)]; simp [h]

theorem testBit_maskExcept {k i j : ℕ} (hi : i < k) :
    (maskExcept k i).testBit j = (decide (j < k) && decide (j ≠ i)) := by
  unfold maskExcept
  rw [Nat.testBit_xor, Nat.testBit_two_pow_sub_one, Nat.testBit_two_pow]
  by_cases h1 : j < k
  · by_cases h2 : j = i
    · subst h2; simp [h1]
    · have h3 : ¬ i = j := fun e => h2 e.symm
      simp [h1, h2, h3]
  · have h2 : j ≠ i := fun e => h1 (e ▸ hi)
    have h3 : ¬ i = j := fun e => h2 e.symm
    simp [h1, h2, h3]

theorem maskExcept_lt {k i : ℕ} (hi : i < k) : maskExcept k i < 2 ^ k := by
  apply Nat.lt_pow_two_of_testBit
  intro j hj
  rw [testBit_maskExcept hi]
  simp; omega

/-- The points other than `i`. -/
theorem ofMask_maskExcept {k : ℕ} (i : Fin k) : ofMask k (maskExcept k i) = Finset.univ.erase i := by
  ext j
  rw [mem_ofMask, testBit_maskExcept i.2]
  simp [Fin.ext_iff]

theorem card_erase_fin {k : ℕ} (i : Fin (k + 1)) : (Finset.univ.erase i).card = k := by
  rw [Finset.card_erase_of_mem (Finset.mem_univ i), Finset.card_univ, Fintype.card_fin]; rfl

/-- `orderEmbOfFin` of the points other than `i` is `succAbove i`. -/
theorem orderEmbOfFin_erase {k : ℕ} (i : Fin (k + 1)) (h : (Finset.univ.erase i).card = k) :
    (Finset.univ.erase i).orderEmbOfFin h = Fin.succAboveOrderEmb i := by
  symm
  apply Finset.orderEmbOfFin_unique'
  intro x
  simp [Fin.succAbove_ne]

/-- Deleting a point on bits is restricting along `succAbove`. -/
theorem decode_del {k : ℕ} (Tk : TupEnum (k + 1)) (Tm : TupEnum k) (i : Fin (k + 1)) (M : ℕ) :
    Tm.decode (gather M (restrIdx Tk.l Tm.l (ptsOf (k + 1) (maskExcept (k + 1) i)))) =
      restrict (Fin.succAboveOrderEmb i) (Tk.decode M) := by
  have hU : Finset.univ.erase i = ofMask (k + 1) (maskExcept (k + 1) i) := (ofMask_maskExcept i).symm
  have := decode_restrBits Tk Tm (Finset.univ.erase i) hU (card_erase_fin i) M
  rw [orderEmbOfFin_erase] at this
  exact this

/-- Restrictions of restrictions: deleting `b` then `a` (renumbered) is deleting `a` then `b - 1`. -/
theorem succAbove_comm {n : ℕ} (a b : ℕ) (hab : a < b) (hb : b < n + 2) :
    (Fin.succAboveOrderEmb (⟨a, by omega⟩ : Fin (n + 1))).trans (Fin.succAboveOrderEmb (⟨b, hb⟩ : Fin (n + 2))) =
      (Fin.succAboveOrderEmb (⟨b - 1, by omega⟩ : Fin (n + 1))).trans
        (Fin.succAboveOrderEmb (⟨a, by omega⟩ : Fin (n + 2))) := by
  ext i
  simp only [RelEmbedding.coe_trans, Function.comp_apply, Fin.succAboveOrderEmb_apply]
  rw [val_succAbove', val_succAbove', val_succAbove', val_succAbove']
  simp only
  split_ifs <;> omega

theorem restrict_del_comm {n : ℕ} (a b : ℕ) (hab : a < b) (hb : b < n + 2) (M : Pat (n + 2)) :
    restrict (Fin.succAboveOrderEmb (⟨a, by omega⟩ : Fin (n + 1)))
        (restrict (Fin.succAboveOrderEmb (⟨b, hb⟩ : Fin (n + 2))) M) =
      restrict (Fin.succAboveOrderEmb (⟨b - 1, by omega⟩ : Fin (n + 1)))
        (restrict (Fin.succAboveOrderEmb (⟨a, by omega⟩ : Fin (n + 2))) M) := by
  rw [restrict_restrict, restrict_restrict, succAbove_comm a b hab hb]

end BeatAvg.Check

namespace BeatAvg.Check

theorem mem_byDel {D : Array (Array Nat)} {bd : Std.HashMap Nat (Array Nat)} {i : Nat} (h : byDelOK D bd i = true)
    {n : Nat} (hn : n < D.size) : n ∈ bd.getD ((D.getD n #[]).getD i 0) #[] := by
  have := List.all_eq_true.1 h n (List.mem_range.2 hn)
  exact Array.contains_iff_mem.1 this

/-- Every consistent tuple is visited by `join8`. -/
theorem join8_sound {D : Array (Array Nat)} {ch : Std.HashMap Nat (Array Nat)} {body : Array Nat → Bool}
    (hch : byDelOK D ch 6 = true) (h : join8 D ch body = true)
    (n0 n1 n2 n3 n4 n5 n6 n7 : Nat) (hn0 : n0 < D.size) (hn1 : n1 < D.size) (hn2 : n2 < D.size)
    (hn3 : n3 < D.size) (hn4 : n4 < D.size) (hn5 : n5 < D.size) (hn6 : n6 < D.size) (hn7 : n7 < D.size)
    (c0 : (D.getD n0 #[]).getD 6 0 = (D.getD n7 #[]).getD 0 0)
    (c1 : (D.getD n1 #[]).getD 6 0 = (D.getD n7 #[]).getD 1 0)
    (c2 : (D.getD n2 #[]).getD 6 0 = (D.getD n7 #[]).getD 2 0)
    (c3 : (D.getD n3 #[]).getD 6 0 = (D.getD n7 #[]).getD 3 0)
    (c4 : (D.getD n4 #[]).getD 6 0 = (D.getD n7 #[]).getD 4 0)
    (c5 : (D.getD n5 #[]).getD 6 0 = (D.getD n7 #[]).getD 5 0)
    (c6 : (D.getD n6 #[]).getD 6 0 = (D.getD n7 #[]).getD 6 0)
    (k01 : (D.getD n0 #[]).getD 0 0 = (D.getD n1 #[]).getD 0 0)
    (k02 : (D.getD n0 #[]).getD 1 0 = (D.getD n2 #[]).getD 0 0)
    (k12 : (D.getD n1 #[]).getD 1 0 = (D.getD n2 #[]).getD 1 0)
    (k03 : (D.getD n0 #[]).getD 2 0 = (D.getD n3 #[]).getD 0 0)
    (k13 : (D.getD n1 #[]).getD 2 0 = (D.getD n3 #[]).getD 1 0)
    (k23 : (D.getD n2 #[]).getD 2 0 = (D.getD n3 #[]).getD 2 0)
    (k04 : (D.getD n0 #[]).getD 3 0 = (D.getD n4 #[]).getD 0 0)
    (k14 : (D.getD n1 #[]).getD 3 0 = (D.getD n4 #[]).getD 1 0)
    (k24 : (D.getD n2 #[]).getD 3 0 = (D.getD n4 #[]).getD 2 0)
    (k34 : (D.getD n3 #[]).getD 3 0 = (D.getD n4 #[]).getD 3 0)
    (k05 : (D.getD n0 #[]).getD 4 0 = (D.getD n5 #[]).getD 0 0)
    (k15 : (D.getD n1 #[]).getD 4 0 = (D.getD n5 #[]).getD 1 0)
    (k25 : (D.getD n2 #[]).getD 4 0 = (D.getD n5 #[]).getD 2 0)
    (k35 : (D.getD n3 #[]).getD 4 0 = (D.getD n5 #[]).getD 3 0)
    (k45 : (D.getD n4 #[]).getD 4 0 = (D.getD n5 #[]).getD 4 0)
    (k06 : (D.getD n0 #[]).getD 5 0 = (D.getD n6 #[]).getD 0 0)
    (k16 : (D.getD n1 #[]).getD 5 0 = (D.getD n6 #[]).getD 1 0)
    (k26 : (D.getD n2 #[]).getD 5 0 = (D.getD n6 #[]).getD 2 0)
    (k36 : (D.getD n3 #[]).getD 5 0 = (D.getD n6 #[]).getD 3 0)
    (k46 : (D.getD n4 #[]).getD 5 0 = (D.getD n6 #[]).getD 4 0)
    (k56 : (D.getD n5 #[]).getD 5 0 = (D.getD n6 #[]).getD 5 0) :
    body #[n0, n1, n2, n3, n4, n5, n6, n7] = true := by
  unfold join8 at h
  have hp := List.all_eq_true.1 h n7 (List.mem_range.2 hn7)
  have m0 : n0 ∈ ch.getD ((D.getD n7 #[]).getD 0 0) #[] := c0 ▸ mem_byDel hch hn0
  have m1 : n1 ∈ ch.getD ((D.getD n7 #[]).getD 1 0) #[] := c1 ▸ mem_byDel hch hn1
  have m2 : n2 ∈ ch.getD ((D.getD n7 #[]).getD 2 0) #[] := c2 ▸ mem_byDel hch hn2
  have m3 : n3 ∈ ch.getD ((D.getD n7 #[]).getD 3 0) #[] := c3 ▸ mem_byDel hch hn3
  have m4 : n4 ∈ ch.getD ((D.getD n7 #[]).getD 4 0) #[] := c4 ▸ mem_byDel hch hn4
  have m5 : n5 ∈ ch.getD ((D.getD n7 #[]).getD 5 0) #[] := c5 ▸ mem_byDel hch hn5
  have m6 : n6 ∈ ch.getD ((D.getD n7 #[]).getD 6 0) #[] := c6 ▸ mem_byDel hch hn6
  have h0 := Array.all_eq_true'.1 hp n0 m0
  have h1 := Array.all_eq_true'.1 h0 n1 m1
  simp only [k01, beq_self_eq_true, Bool.not_true, Bool.false_or] at h1
  have h2 := Array.all_eq_true'.1 h1 n2 m2
  simp only [k02, k12, beq_self_eq_true, Bool.and_self, Bool.not_true, Bool.false_or] at h2
  have h3 := Array.all_eq_true'.1 h2 n3 m3
  simp only [k03, k13, k23, beq_self_eq_true, Bool.and_self, Bool.not_true, Bool.false_or] at h3
  have h4 := Array.all_eq_true'.1 h3 n4 m4
  simp only [k04, k14, k24, k34, beq_self_eq_true, Bool.and_self, Bool.not_true, Bool.false_or] at h4
  have h5 := Array.all_eq_true'.1 h4 n5 m5
  simp only [k05, k15, k25, k35, k45, beq_self_eq_true, Bool.and_self, Bool.not_true, Bool.false_or] at h5
  have h6 := Array.all_eq_true'.1 h5 n6 m6
  simp only [k06, k16, k26, k36, k46, k56, beq_self_eq_true, Bool.and_self, Bool.not_true, Bool.false_or] at h6
  exact h6

end BeatAvg.Check

namespace BeatAvg.Check

theorem rest2_union {n : ℕ} {a b : Fin n} (hab : a ≠ b) : rest2 a b ∪ {a} = Finset.univ.erase b := by
  ext x
  simp only [rest2, Finset.mem_union, Finset.mem_sdiff, Finset.mem_univ, Finset.mem_insert, Finset.mem_singleton,
    true_and, not_or, Finset.mem_erase, ne_eq, and_true]
  constructor
  · rintro (⟨h1, h2⟩ | rfl)
    · exact h2
    · exact hab
  · intro hx
    by_cases h : x = a
    · exact Or.inr h
    · exact Or.inl ⟨h, hx⟩

theorem succAbove_posIn {n : ℕ} (a b : Fin (n + 1)) (hab : a ≠ b) (hp : posIn b a < n) :
    b.succAbove ⟨posIn b a, hp⟩ = a := by
  apply Fin.ext
  rw [val_succAbove']
  simp only [posIn]
  have : (a : ℕ) ≠ b := fun e => hab (Fin.ext e)
  split_ifs <;> omega

theorem posIn_lt {n : ℕ} (a b : Fin (n + 1)) (hab : a ≠ b) : posIn b a < n := by
  have : (a : ℕ) ≠ b := fun e => hab (Fin.ext e)
  simp only [posIn]; split_ifs <;> omega

/-- The flag of `(rest2 a b, {a})`: the restriction deleting `b`, with all positions but that of `a` marked. -/
theorem flagOf_pair {n : ℕ} (M : Pat (n + 1)) {a b : Fin (n + 1)} (hab : a ≠ b)
    (h : (rest2 a b ∪ {a}).card = n) :
    flagOf M (rest2 a b) {a} h =
      (restrict (Fin.succAboveOrderEmb b) M, ofMask n (maskExcept n (posIn b a))) := by
  have hU := rest2_union hab
  have he : (rest2 a b ∪ {a}).orderEmbOfFin h = Fin.succAboveOrderEmb b := by
    have h' : (Finset.univ.erase b).card = n := hU ▸ h
    have := orderEmbOfFin_erase b h'
    rw [← this]
    congr 1
  unfold flagOf
  rw [he]
  congr 1
  rw [ofMask_maskExcept (⟨posIn b a, posIn_lt a b hab⟩ : Fin n)]
  ext i
  have key : b.succAbove i = a ↔ i = ⟨posIn b a, posIn_lt a b hab⟩ := by
    constructor
    · intro e
      apply Fin.succAbove_right_injective (p := b)
      rw [e, succAbove_posIn a b hab]
    · rintro rfl
      exact succAbove_posIn a b hab _
  simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_erase, ne_eq, and_true, rest2,
    Finset.mem_sdiff, Finset.mem_insert, Finset.mem_singleton, not_or, Fin.succAboveOrderEmb_apply, key]
  constructor
  · exact fun h => h.1
  · exact fun h => ⟨h, Fin.succAbove_ne b i⟩

end BeatAvg.Check

namespace BeatAvg.Check

/-- A bound for the positions of flags. -/
def flagW (blocks : List DBlock) : ℕ := (blocks.map fun b => b.flags.length).sum

theorem maskExcept_ne_zero {k p : ℕ} (hk : 2 ≤ k) (hp : p < k) : maskExcept k p ≠ 0 := by
  intro h
  have : (maskExcept k p).testBit (if p = 0 then 1 else 0) = true := by
    rw [testBit_maskExcept hp]; split_ifs <;> simp <;> omega
  rw [h, Nat.zero_testBit] at this
  exact Bool.false_ne_true this

theorem flagAt_in_range {blocks : List DBlock} {blk i : ℕ} {x : ℕ × ℕ} (hx : x.2 ≠ 0)
    (h : flagAt blocks blk i = x) : blk < blocks.length ∧ i < (blocks.getD blk dfltB).flags.length ∧
      i < flagW blocks := by
  have hblk : blk < blocks.length := by
    by_contra hb
    rw [flagAt, List.getD_eq_default _ _ (not_lt.1 hb)] at h
    simp [dfltB] at h
    exact hx (by rw [← h])
  have hi : i < (blocks.getD blk dfltB).flags.length := by
    by_contra hb
    rw [flagAt, List.getD_eq_default _ _ (not_lt.1 hb)] at h
    exact hx (by rw [← h])
  refine ⟨hblk, hi, lt_of_lt_of_le hi ?_⟩
  unfold flagW
  apply List.le_sum_of_mem
  exact List.mem_map.2 ⟨_, by rw [List.getD_eq_getElem _ _ hblk]; exact List.getElem_mem hblk, rfl⟩

/-- The top flags with pattern `P[n]`: triples `(p, block, index)`. -/
def topSet (k : ℕ) (P : Array ℕ) (blocks : List DBlock) (n : ℕ) : Finset (ℕ × ℕ × ℕ) :=
  (Finset.range k ×ˢ Finset.range blocks.length ×ˢ Finset.range (flagW blocks)).filter fun e =>
    flagAt blocks e.2.1 e.2.2 = (P.getD n 0, maskExcept k e.1)

theorem mem_top_iff {k : ℕ} (hk : 2 ≤ k) {P : Array ℕ} {id : Std.HashMap ℕ ℕ} {blocks : List DBlock} {top : TopArr}
    (hsound : topSound k P blocks top = true) (hcomp : topComplete k id blocks top = true)
    (hid : idOK P id = true) (hsize : top.size = P.size) {n : ℕ} (hn : n < P.size) (e : ℕ × ℕ × ℕ) :
    e ∈ top.getD n [] ↔ e ∈ topSet k P blocks n := by
  constructor
  · intro he
    have h1 := List.all_eq_true.1 (List.all_eq_true.1 hsound n (List.mem_range.2 (hsize ▸ hn))) e he
    simp only [Bool.and_eq_true, decide_eq_true_eq, beq_iff_eq] at h1
    obtain ⟨hp, hf⟩ := h1
    have hr := flagAt_in_range (maskExcept_ne_zero hk hp) hf
    simp only [topSet, Finset.mem_filter, Finset.mem_product, Finset.mem_range]
    exact ⟨⟨hp, hr.1, hr.2.2⟩, hf⟩
  · intro he
    simp only [topSet, Finset.mem_filter, Finset.mem_product, Finset.mem_range] at he
    obtain ⟨⟨hp, hblk, -⟩, hf⟩ := he
    have hr := flagAt_in_range (maskExcept_ne_zero hk hp) hf
    have h2 := List.all_eq_true.1 (List.all_eq_true.1 hcomp e.2.1 (List.mem_range.2 hblk)) e.2.2
      (List.mem_range.2 hr.2.1)
    have hidn : id.get? (P.getD n 0) = some n := by
      have := List.all_eq_true.1 hid n (List.mem_range.2 hn)
      simpa using this
    rw [hf] at h2
    simp only [hidn] at h2
    have h3 := List.all_eq_true.1 h2 e.1 (List.mem_range.2 hp)
    simp only [bne_self_eq_false, Bool.false_or, List.contains_iff_mem] at h3
    exact h3

theorem sum_top_eq {k : ℕ} (hk : 2 ≤ k) {P : Array ℕ} {id : Std.HashMap ℕ ℕ} {blocks : List DBlock} {top : TopArr}
    (hsound : topSound k P blocks top = true) (hcomp : topComplete k id blocks top = true)
    (hid : idOK P id = true) (hnd : topNodup top = true) (hsize : top.size = P.size) {n : ℕ} (hn : n < P.size)
    (g : ℕ × ℕ × ℕ → ℝ) :
    ((top.getD n []).map g).sum = ∑ e ∈ topSet k P blocks n, g e := by
  have hnd' : (top.getD n []).Nodup := by
    have := List.all_eq_true.1 hnd n (List.mem_range.2 (hsize ▸ hn))
    simpa using this
  rw [← List.sum_toFinset g hnd']
  congr 1
  ext e
  rw [List.mem_toFinset, mem_top_iff hk hsound hcomp hid hsize hn]

end BeatAvg.Check
