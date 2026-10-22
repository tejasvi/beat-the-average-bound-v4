import BeatAvg.Comb.Averaging
import BeatAvg.Check.Realize

/-!
# Values through restrictions: the identity (5.2) of the paper, block by block, and Lemma 5.2
-/

open Finset

namespace BeatAvg

/-- The contribution `Σ_{i,j} Q_ij c(F_i, F_j; M)` of a block, for a pattern of any size. -/
noncomputable def blockVal {k n : ℕ} (B : Block k) (M : Pat n) : ℝ :=
  ∑ i, ∑ j, B.Q i j * cFlag B.t B.m (B.flags i) (B.flags j) M

theorem val_eq_blockVal {k : ℕ} (blocks : List (Block k)) (M : Pat k) :
    val blocks M = dens M + (blocks.map fun B => blockVal B M).sum := rfl

/-- The number of triples. -/
def nTriples (k t m : ℕ) : ℕ := k.choose t * (k - t).choose (m - t) * (k - m).choose (m - t)

/-- A block of the lower kind at `n + 1` points: its value is the average over the `n`-point restrictions. -/
theorem sum_comm3 {α β γ : Type*} [Fintype α] [Fintype β] [Fintype γ] (f : α → β → γ → ℝ) :
    ∑ u, ∑ i, ∑ j, f u i j = ∑ i, ∑ j, ∑ u, f u i j := by
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_comm

theorem blockVal_avg {k n : ℕ} (B : Block k) (ht : B.t ≤ B.m)
    (hD : nTriples (n + 1) B.t B.m * (n + 1 - (2 * B.m - B.t)) = (n + 1) * nTriples n B.t B.m)
    (hD0 : 0 < nTriples n B.t B.m) (M : Pat (n + 1)) :
    blockVal B M = (∑ u : Fin (n + 1), blockVal B (restrict (Fin.succAboveOrderEmb u) M)) / (n + 1) := by
  simp only [blockVal]
  rw [sum_comm3 (fun u i j => B.Q i j * cFlag B.t B.m (B.flags i) (B.flags j)
    (restrict (Fin.succAboveOrderEmb u) M))]
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [cFlag_avg (k := n) ht hD hD0, ← Finset.mul_sum, mul_div_assoc]

/-- `(rest2 a b, {a})` gives the flag `F`. -/
def GivesPair {n m : ℕ} (M : Pat n) (a b : Fin n) (F : Flag m) : Prop := GivesFlag M (rest2 a b) {a} F

noncomputable instance {n m : ℕ} (M : Pat n) (a b : Fin n) (F : Flag m) : Decidable (GivesPair M a b F) :=
  Classical.dec _

theorem nTriples_top {n : ℕ} (hn : 2 ≤ n) : (nTriples n (n - 2) (n - 1) : ℝ) = (n : ℝ) * (n - 1) := by
  unfold nTriples
  have e1 : n - (n - 2) = 2 := by omega
  have e2 : n - 1 - (n - 2) = 1 := by omega
  have e3 : n - (n - 1) = 1 := by omega
  rw [e1, e2, e3, Nat.choose_symm_of_eq_add (by omega : n = (n - 2) + 2)]
  simp only [Nat.choose_two_right, Nat.choose_one_right, mul_one]
  have h2 : 2 ∣ n * (n - 1) := (Nat.even_mul_pred_self n).two_dvd
  rw [Nat.cast_mul, Nat.cast_div h2 (by norm_num), Nat.cast_mul, Nat.cast_sub (by omega)]
  push_cast
  ring

/-- A block of the top kind `(t, m) = (n - 2, n - 1)` at `n` points: a sum over ordered pairs of points. -/
theorem blockVal_top {k n : ℕ} (hn : 2 ≤ n) (B : Block k) (htm : B.t = n - 2) (hm : B.m = n - 1) (M : Pat n) :
    blockVal B M = (∑ ab : Fin n × Fin n, if ab.1 ≠ ab.2 then
      ∑ i, ∑ j, B.Q i j * (if GivesPair M ab.1 ab.2 (B.flags i) ∧ GivesPair M ab.2 ab.1 (B.flags j)
        then 1 else 0) else 0) / ((n : ℝ) * (n - 1)) := by
  obtain ⟨t, m, nB, flags, Q, ht, hk⟩ := B
  simp only at htm hm ⊢
  subst htm hm
  simp only [blockVal, cFlag]
  have hcount : ∀ F G : Flag (n - 1), (flagCount (n - 2) (n - 1) F G M : ℝ) =
      ∑ ab : Fin n × Fin n, if ab.1 ≠ ab.2 then (if GivesPair M ab.1 ab.2 F ∧ GivesPair M ab.2 ab.1 G then 1 else 0)
        else 0 := by
    intro F G
    rw [flagCount_pairs hn, Finset.card_filter]
    push_cast
    refine Finset.sum_congr rfl fun ab _ => ?_
    have hr : rest2 ab.2 ab.1 = rest2 ab.1 ab.2 := by simp [rest2, Finset.pair_comm]
    by_cases h : ab.1 ≠ ab.2
    · have hP : (ab.1 ≠ ab.2 ∧ GivesFlag M (rest2 ab.1 ab.2) {ab.1} F ∧ GivesFlag M (rest2 ab.1 ab.2) {ab.2} G) ↔
          (GivesPair M ab.1 ab.2 F ∧ GivesPair M ab.2 ab.1 G) := by
        simp only [GivesPair, hr, h, ne_eq, not_false_eq_true, true_and]
      rw [if_pos h]
      exact if_congr hP rfl rfl
    · rw [if_neg h, if_neg (fun hh => h hh.1)]
  have hD := nTriples_top hn
  unfold nTriples at hD
  simp_rw [hcount, hD]
  have hR : (∑ ab : Fin n × Fin n, if ab.1 ≠ ab.2 then ∑ i, ∑ j, Q i j *
      (if GivesPair M ab.1 ab.2 (flags i) ∧ GivesPair M ab.2 ab.1 (flags j) then (1 : ℝ) else 0) else 0) =
      ∑ i, ∑ j, Q i j * ∑ ab : Fin n × Fin n, (if ab.1 ≠ ab.2 then
        (if GivesPair M ab.1 ab.2 (flags i) ∧ GivesPair M ab.2 ab.1 (flags j) then (1 : ℝ) else 0) else 0) := by
    have e1 : ∀ ab : Fin n × Fin n, (if ab.1 ≠ ab.2 then ∑ i, ∑ j, Q i j *
        (if GivesPair M ab.1 ab.2 (flags i) ∧ GivesPair M ab.2 ab.1 (flags j) then (1 : ℝ) else 0) else 0) =
        ∑ i, ∑ j, Q i j * (if ab.1 ≠ ab.2 then
          (if GivesPair M ab.1 ab.2 (flags i) ∧ GivesPair M ab.2 ab.1 (flags j) then (1 : ℝ) else 0) else 0) := by
      intro ab
      by_cases h : ab.1 ≠ ab.2
      · simp only [h, if_true, ne_eq, not_false_eq_true]
      · simp [h]
    simp only [e1]
    simp only [Finset.mul_sum]
    exact sum_comm3 _
  rw [hR]
  simp only [Finset.sum_div, mul_div_assoc]

end BeatAvg

namespace BeatAvg

/-- The value at `n` points of the blocks with `2m - t ≤ n` (`f_n` of the paper). -/
noncomputable def fLower {n : ℕ} (blocks : List (Block (n + 1))) (N : Pat n) : ℝ :=
  dens N + ((blocks.filter fun B => decide (2 * B.m - B.t ≤ n)).map fun B => blockVal B N).sum

/-- The flag of `(rest2 a b, {a})` is that of a block of the top kind, for some `a ≠ b`. -/
def Occ {n : ℕ} (blocks : List (Block (n + 1))) (M : Pat (n + 1)) (b : Fin (n + 1)) : Prop :=
  ∃ B ∈ blocks, ¬ (2 * B.m - B.t ≤ n) ∧ ∃ i a, a ≠ b ∧ GivesPair M a b (B.flags i)

theorem sum_map_filter {α : Type*} (p : α → Bool) (f : α → ℝ) :
    ∀ l : List α, (l.map f).sum = ((l.filter p).map f).sum + ((l.filter fun a => !p a).map f).sum
  | [] => by simp
  | a :: l => by
    have ih := sum_map_filter p f l
    cases h : p a <;> simp [List.filter_cons, h, ih] <;> ring

/-- Lemma 5.2 (hierarchical bound) of the paper, at `n + 1` points. -/
theorem hier_bound {n : ℕ} (hn : 5 ≤ n) (blocks : List (Block (n + 1)))
    (hlow : ∀ B ∈ blocks, 2 * B.m - B.t ≤ n → B.t ≤ B.m ∧
      nTriples (n + 1) B.t B.m * (n + 1 - (2 * B.m - B.t)) = (n + 1) * nTriples n B.t B.m ∧ 0 < nTriples n B.t B.m)
    (htop : ∀ B ∈ blocks, ¬ (2 * B.m - B.t ≤ n) → B.t = n + 1 - 2 ∧ B.m = n + 1 - 1)
    (lam cap : ℝ)
    (h1 : ∀ N : Pat n, Realizable N → fLower blocks N ≤ cap)
    (h2 : ∀ M : Pat (n + 1), Realizable M →
      (∀ u, (n + 1) * lam - n * cap < fLower blocks (restrict (Fin.succAboveOrderEmb u) M)) → val blocks M ≤ lam)
    (h3 : ∀ M : Pat (n + 1), Realizable M → (∃ u v, u ≠ v ∧ Occ blocks M u ∧ Occ blocks M v) → val blocks M ≤ lam) :
    ∀ M : Pat (n + 1), Realizable M → val blocks M ≤ lam := by
  intro M hM
  by_cases hocc : ∃ u v, u ≠ v ∧ Occ blocks M u ∧ Occ blocks M v
  · exact h3 M hM hocc
  by_cases hall : ∀ u, (n + 1) * lam - n * cap < fLower blocks (restrict (Fin.succAboveOrderEmb u) M)
  · exact h2 M hM hall
  push_neg at hall
  obtain ⟨u0, hu0⟩ := hall
  -- the top blocks contribute nothing
  have htop0 : ∀ B ∈ blocks.filter (fun B => !decide (2 * B.m - B.t ≤ n)), blockVal B M = 0 := by
    intro B hB
    rw [List.mem_filter] at hB
    have hnot : ¬ (2 * B.m - B.t ≤ n) := by simpa using hB.2
    obtain ⟨htm, hm⟩ := htop B hB.1 hnot
    rw [blockVal_top (by omega) B htm hm M]
    rw [div_eq_zero_iff]
    left
    refine Finset.sum_eq_zero fun ab _ => ?_
    split
    · rename_i hne
      refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ => ?_
      rw [if_neg, mul_zero]
      rintro ⟨g1, g2⟩
      exact hocc ⟨ab.2, ab.1, Ne.symm hne, ⟨B, hB.1, hnot, i, ab.1, hne, g1⟩, ⟨B, hB.1, hnot, j, ab.2, Ne.symm hne, g2⟩⟩
    · rfl
  -- the value is the average of the values f of the restrictions
  have havg : val blocks M = (∑ u : Fin (n + 1), fLower blocks (restrict (Fin.succAboveOrderEmb u) M)) / (n + 1) := by
    rw [val_eq_blockVal, sum_map_filter (fun B => decide (2 * B.m - B.t ≤ n))]
    have hz : ((blocks.filter fun B => !decide (2 * B.m - B.t ≤ n)).map fun B => blockVal B M).sum = 0 := by
      refine List.sum_eq_zero fun x hx => ?_
      obtain ⟨B, hB, rfl⟩ := List.mem_map.1 hx
      exact htop0 B hB
    rw [hz, add_zero]
    simp only [fLower]
    rw [Finset.sum_add_distrib, add_div, dens_avg (by omega) M]
    congr 1
    -- lower blocks
    have hl : ∀ l : List (Block (n + 1)), (∀ B ∈ l, 2 * B.m - B.t ≤ n → B.t ≤ B.m ∧
        nTriples (n + 1) B.t B.m * (n + 1 - (2 * B.m - B.t)) = (n + 1) * nTriples n B.t B.m ∧
          0 < nTriples n B.t B.m) →
        ((l.filter fun B => decide (2 * B.m - B.t ≤ n)).map fun B => blockVal B M).sum =
        (∑ u : Fin (n + 1), ((l.filter fun B => decide (2 * B.m - B.t ≤ n)).map fun B =>
          blockVal B (restrict (Fin.succAboveOrderEmb u) M)).sum) / (n + 1) := by
      intro l hl
      induction l with
      | nil => simp
      | cons B l ih =>
        have ih' := ih (fun B' hB' => hl B' (List.mem_cons_of_mem _ hB'))
        by_cases hB : 2 * B.m - B.t ≤ n
        · obtain ⟨ht, hD, hD0⟩ := hl B List.mem_cons_self hB
          simp only [List.filter_cons, hB, decide_true, if_true, List.map_cons, List.sum_cons]
          rw [ih', blockVal_avg B ht hD hD0 M, Finset.sum_add_distrib, add_div]
        · simp only [List.filter_cons, hB, decide_false, Bool.false_eq_true, if_false]
          exact ih'
    exact hl blocks hlow
  rw [havg, div_le_iff₀ (by positivity)]
  -- f ≤ cap for every restriction (realizable), and ≤ θ for u0
  have hle : ∀ u, fLower blocks (restrict (Fin.succAboveOrderEmb u) M) ≤ cap :=
    fun u => h1 _ (hM.restrict _)
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ u0)]
  have hrest : ∑ u ∈ Finset.univ.erase u0, fLower blocks (restrict (Fin.succAboveOrderEmb u) M) ≤ n * cap := by
    calc ∑ u ∈ Finset.univ.erase u0, fLower blocks (restrict (Fin.succAboveOrderEmb u) M)
        ≤ ∑ u ∈ Finset.univ.erase u0, cap := Finset.sum_le_sum fun u _ => hle u
      _ = n * cap := by
        rw [Finset.sum_const, Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ, Fintype.card_fin,
          nsmul_eq_mul]
        push_cast; ring
  linarith

end BeatAvg

namespace BeatAvg

/-- Identity (5.2) of the paper at `n + 1` points: the value is the average of `f_n` over the `n`-point restrictions
plus the contributions of the blocks of the top kind. -/
theorem val_decomp {n : ℕ} (hn : 4 ≤ n) (blocks : List (Block (n + 1)))
    (hlow : ∀ B ∈ blocks, 2 * B.m - B.t ≤ n → B.t ≤ B.m ∧
      nTriples (n + 1) B.t B.m * (n + 1 - (2 * B.m - B.t)) = (n + 1) * nTriples n B.t B.m ∧ 0 < nTriples n B.t B.m)
    (M : Pat (n + 1)) :
    val blocks M = (∑ u : Fin (n + 1), fLower blocks (restrict (Fin.succAboveOrderEmb u) M)) / (n + 1) +
      ((blocks.filter fun B => !decide (2 * B.m - B.t ≤ n)).map fun B => blockVal B M).sum := by
  rw [val_eq_blockVal, sum_map_filter (fun B => decide (2 * B.m - B.t ≤ n)), ← add_assoc]
  congr 1
  simp only [fLower]
  rw [Finset.sum_add_distrib, add_div, dens_avg hn M]
  congr 1
  have hl : ∀ l : List (Block (n + 1)), (∀ B ∈ l, 2 * B.m - B.t ≤ n → B.t ≤ B.m ∧
      nTriples (n + 1) B.t B.m * (n + 1 - (2 * B.m - B.t)) = (n + 1) * nTriples n B.t B.m ∧
        0 < nTriples n B.t B.m) →
      ((l.filter fun B => decide (2 * B.m - B.t ≤ n)).map fun B => blockVal B M).sum =
      (∑ u : Fin (n + 1), ((l.filter fun B => decide (2 * B.m - B.t ≤ n)).map fun B =>
        blockVal B (restrict (Fin.succAboveOrderEmb u) M)).sum) / (n + 1) := by
    intro l hl
    induction l with
    | nil => simp
    | cons B l ih =>
      have ih' := ih (fun B' hB' => hl B' (List.mem_cons_of_mem _ hB'))
      by_cases hB : 2 * B.m - B.t ≤ n
      · obtain ⟨ht, hD, hD0⟩ := hl B List.mem_cons_self hB
        simp only [List.filter_cons, hB, decide_true, if_true, List.map_cons, List.sum_cons]
        rw [ih', blockVal_avg B ht hD hD0 M, Finset.sum_add_distrib, add_div]
      · simp only [List.filter_cons, hB, decide_false, Bool.false_eq_true, if_false]
        exact ih'
  exact hl blocks hlow

/-- Patterns of `n ≥ 5` points are determined by their restrictions to `n - 1` points (Lemma 4.3 (b), uniqueness). -/
theorem eq_of_restrict_eq {n : ℕ} (hn : 4 ≤ n) {M N : Pat (n + 1)}
    (h : ∀ u : Fin (n + 1), restrict (Fin.succAboveOrderEmb u) M = restrict (Fin.succAboveOrderEmb u) N) : M = N := by
  funext τ
  -- some point is not in τ
  have hcard : (tupPts τ).card < n + 1 := by rw [card_tupPts]; omega
  obtain ⟨u, hu⟩ : ∃ u, u ∉ tupPts τ := by
    by_contra hall
    push_neg at hall
    have : tupPts τ = Finset.univ := Finset.eq_univ_of_forall hall
    rw [this, Finset.card_univ, Fintype.card_fin] at hcard
    omega
  obtain ⟨σ, rfl⟩ := exists_tup_map_succAbove hu
  exact congrFun (h u) σ

end BeatAvg
