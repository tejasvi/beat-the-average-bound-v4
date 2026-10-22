import BeatAvg.Pattern

/-!
# Values through restrictions (Lemma 5.1 of the paper)

For a `(k+1)`-pattern `M` and `u : Fin (k+1)`, `M|_u` is the restriction to the points other than `u`.
(a) `Σ_u #{τ | (M|_u) τ} = (k + 1 - 4) #{τ | M τ}`;
(b) `Σ_u flagCount(F, G; M|_u) = (k + 1 - (2m - t)) flagCount(F, G; M)`;
(c) for `(t, m) = (k - 1, k)` the triples are the ordered pairs of distinct points.
-/

open Finset

namespace BeatAvg

variable {k : ℕ}

theorem restrict_restrict {a b c : ℕ} (e : Fin a ↪o Fin b) (e' : Fin b ↪o Fin c) (M : Pat c) :
    restrict e (restrict e' M) = restrict (e.trans e') M := rfl

/-- `orderEmbOfFin` of an image is the composite. -/
theorem orderEmbOfFin_map {a b m : ℕ} (e : Fin a ↪o Fin b) (S : Finset (Fin a)) (h : S.card = m)
    (h' : (S.map e.toEmbedding).card = m) :
    (S.map e.toEmbedding).orderEmbOfFin h' = (S.orderEmbOfFin h).trans e := by
  symm
  apply Finset.orderEmbOfFin_unique'
  intro x
  simp only [RelEmbedding.coe_trans, Function.comp_apply, Finset.mem_map, RelEmbedding.coe_toEmbedding]
  exact ⟨_, S.orderEmbOfFin_mem h x, rfl⟩

theorem flagOf_restrict {a b m : ℕ} (e : Fin a ↪o Fin b) (M : Pat b) (J A : Finset (Fin a))
    (h : (J ∪ A).card = m) (h' : (J.map e.toEmbedding ∪ A.map e.toEmbedding).card = m) :
    flagOf (restrict e M) J A h = flagOf M (J.map e.toEmbedding) (A.map e.toEmbedding) h' := by
  have hU : J.map e.toEmbedding ∪ A.map e.toEmbedding = (J ∪ A).map e.toEmbedding := (Finset.map_union _ _).symm
  have h'' : ((J ∪ A).map e.toEmbedding).card = m := hU ▸ h'
  have key : (J.map e.toEmbedding ∪ A.map e.toEmbedding).orderEmbOfFin h' = ((J ∪ A).orderEmbOfFin h).trans e := by
    rw [← orderEmbOfFin_map e (J ∪ A) h h'']
    congr 1
  unfold flagOf
  rw [key]
  congr 1
  ext i
  simp only [Finset.mem_filter, Finset.mem_univ, true_and, RelEmbedding.coe_trans, Function.comp_apply,
    Finset.mem_map, RelEmbedding.coe_toEmbedding]
  constructor
  · intro hi; exact ⟨_, hi, rfl⟩
  · rintro ⟨j, hj, e1⟩; rwa [← e.injective e1]

theorem givesFlag_restrict {a b m : ℕ} (e : Fin a ↪o Fin b) (M : Pat b) (J A : Finset (Fin a)) (F : Flag m) :
    GivesFlag (restrict e M) J A F ↔ GivesFlag M (J.map e.toEmbedding) (A.map e.toEmbedding) F := by
  have hc : (J.map e.toEmbedding ∪ A.map e.toEmbedding).card = (J ∪ A).card := by
    rw [← Finset.map_union, Finset.card_map]
  constructor
  · rintro ⟨h, hF⟩
    exact ⟨hc.trans h, by rw [← flagOf_restrict e M J A h]; exact hF⟩
  · rintro ⟨h', hF⟩
    exact ⟨hc.symm.trans h', by rw [flagOf_restrict e M J A _ h']; exact hF⟩

/-- The points covered by a triple. -/
def cover (p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k)) : Finset (Fin k) := p.1 ∪ p.2.1 ∪ p.2.2

theorem card_cover {t m : ℕ} {p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k)} (ht : t ≤ m)
    (hp : IsTriple t m p) : (cover p).card = 2 * m - t := by
  obtain ⟨h1, h2, h3, d12, d13, d23⟩ := hp
  rw [cover, Finset.card_union_of_disjoint, Finset.card_union_of_disjoint d12, h1, h2, h3]
  · omega
  · exact Finset.disjoint_union_left.2 ⟨d13, d23⟩

/-- Sets of `Fin (k+1)` avoiding `u` are images under `succAbove u`. -/
theorem exists_map_succAbove {S : Finset (Fin (k + 1))} {u : Fin (k + 1)} (hu : u ∉ S) :
    ∃ S' : Finset (Fin k), S'.map (Fin.succAboveOrderEmb u).toEmbedding = S := by
  refine ⟨Finset.univ.filter fun i => u.succAbove i ∈ S, ?_⟩
  ext x
  simp only [Finset.mem_map, Finset.mem_filter, Finset.mem_univ, true_and, RelEmbedding.coe_toEmbedding,
    Fin.succAboveOrderEmb_apply]
  constructor
  · rintro ⟨i, hi, rfl⟩; exact hi
  · intro hx
    have hne : x ≠ u := fun e => hu (e ▸ hx)
    obtain ⟨i, rfl⟩ := Fin.exists_succAbove_eq hne
    exact ⟨i, hx, rfl⟩

/-- Lemma 5.1 (b), counting form. -/
theorem sum_flagCount_restrict {t m : ℕ} (ht : t ≤ m) (F G : Flag m) (M : Pat (k + 1)) :
    ∑ u : Fin (k + 1), flagCount t m F G (restrict (Fin.succAboveOrderEmb u) M) =
      (k + 1 - (2 * m - t)) * flagCount t m F G M := by
  classical
  -- the triples of `M` with the given flags
  set Pr : Finset (Fin (k + 1)) × Finset (Fin (k + 1)) × Finset (Fin (k + 1)) → Prop :=
    fun p => IsTriple t m p ∧ GivesFlag M p.1 p.2.1 F ∧ GivesFlag M p.1 p.2.2 G
  have hu : ∀ u : Fin (k + 1), flagCount t m F G (restrict (Fin.succAboveOrderEmb u) M) =
      (Finset.univ.filter fun p => Pr p ∧ u ∉ cover p).card := by
    intro u
    unfold flagCount
    set e := (Fin.succAboveOrderEmb u).toEmbedding
    apply Finset.card_bij (fun p _ => (p.1.map e, p.2.1.map e, p.2.2.map e))
    · intro p hp
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hp ⊢
      obtain ⟨⟨h1, h2, h3, d12, d13, d23⟩, g1, g2⟩ := hp
      refine ⟨⟨⟨by simp [h1], by simp [h2], by simp [h3], by simpa [Finset.disjoint_map] using d12,
        by simpa [Finset.disjoint_map] using d13, by simpa [Finset.disjoint_map] using d23⟩,
        (givesFlag_restrict _ M _ _ F).1 g1, (givesFlag_restrict _ M _ _ G).1 g2⟩, ?_⟩
      simp only [cover, Finset.mem_union, Finset.mem_map, not_or, not_exists, not_and, e,
        RelEmbedding.coe_toEmbedding, Fin.succAboveOrderEmb_apply]
      exact ⟨⟨fun i _ h => Fin.succAbove_ne u i h, fun i _ h => Fin.succAbove_ne u i h⟩,
        fun i _ h => Fin.succAbove_ne u i h⟩
    · intro p _ q _ h
      simp only [Prod.mk.injEq] at h
      exact Prod.ext (Finset.map_injective _ h.1) (Prod.ext (Finset.map_injective _ h.2.1)
        (Finset.map_injective _ h.2.2))
    · intro q hq
      obtain ⟨q1, q2, q3⟩ := q
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hq
      obtain ⟨⟨hT, g1, g2⟩, hcov⟩ := hq
      simp only [cover, Finset.mem_union, not_or] at hcov
      obtain ⟨⟨c1, c2⟩, c3⟩ := hcov
      obtain ⟨J, rfl⟩ := exists_map_succAbove c1
      obtain ⟨A, rfl⟩ := exists_map_succAbove c2
      obtain ⟨B, rfl⟩ := exists_map_succAbove c3
      refine ⟨(J, A, B), ?_, rfl⟩
      simp only [Finset.mem_filter, Finset.mem_univ, true_and]
      obtain ⟨h1, h2, h3, d12, d13, d23⟩ := hT
      simp only [Finset.card_map, Finset.disjoint_map] at h1 h2 h3 d12 d13 d23
      exact ⟨⟨h1, h2, h3, d12, d13, d23⟩, (givesFlag_restrict _ M _ _ F).2 g1, (givesFlag_restrict _ M _ _ G).2 g2⟩
  simp_rw [hu]
  -- double counting
  have hdc : ∑ u : Fin (k + 1), (Finset.univ.filter fun p => Pr p ∧ u ∉ cover p).card =
      ∑ p ∈ Finset.univ.filter Pr, (Finset.univ.filter fun u => u ∉ cover p).card := by
    simp only [Finset.card_eq_sum_ones, Finset.sum_filter]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun p _ => ?_
    by_cases hp : Pr p <;> simp [hp]
  rw [hdc]
  have hcount : ∀ p ∈ Finset.univ.filter Pr, (Finset.univ.filter fun u => u ∉ cover p).card = k + 1 - (2 * m - t) := by
    intro p hp
    have hT := (Finset.mem_filter.1 hp).2.1
    have : (Finset.univ.filter fun u => u ∉ cover p) = (cover p)ᶜ := by ext; simp
    rw [this, Finset.card_compl, Fintype.card_fin, card_cover ht hT]
  rw [Finset.sum_congr rfl hcount, Finset.sum_const, smul_eq_mul, mul_comm]
  rfl

end BeatAvg

namespace BeatAvg

variable {k : ℕ}

/-- The four points of a tuple. -/
def tupPts (τ : Tup k) : Finset (Fin k) := {τ.d, τ.a, τ.b, τ.c}

theorem card_tupPts (τ : Tup k) : (tupPts τ).card = 4 := by
  have hab : τ.a ≠ τ.b := ne_of_lt τ.2.1
  have hac : τ.a ≠ τ.c := ne_of_lt (τ.2.1.trans τ.2.2.1)
  have hbc : τ.b ≠ τ.c := ne_of_lt τ.2.2.1
  have hda : τ.d ≠ τ.a := τ.2.2.2.1
  have hdb : τ.d ≠ τ.b := τ.2.2.2.2.1
  have hdc : τ.d ≠ τ.c := τ.2.2.2.2.2
  simp [tupPts, Finset.card_insert_of_notMem, hab, hac, hbc, hda, hdb, hdc]

/-- A tuple avoiding `u` comes from a tuple of the other points. -/
theorem exists_tup_map_succAbove {u : Fin (k + 1)} {τ' : Tup (k + 1)} (hu : u ∉ tupPts τ') :
    ∃ τ : Tup k, τ.map (Fin.succAboveOrderEmb u) = τ' := by
  simp only [tupPts, Finset.mem_insert, Finset.mem_singleton, not_or] at hu
  obtain ⟨hd, ha, hb, hc⟩ := hu
  obtain ⟨d, hd'⟩ := Fin.exists_succAbove_eq (Ne.symm hd)
  obtain ⟨a, ha'⟩ := Fin.exists_succAbove_eq (Ne.symm ha)
  obtain ⟨b, hb'⟩ := Fin.exists_succAbove_eq (Ne.symm hb)
  obtain ⟨c, hc'⟩ := Fin.exists_succAbove_eq (Ne.symm hc)
  have hab : a < b := by
    rw [← Fin.succAbove_lt_succAbove_iff (p := u), ha', hb']; exact τ'.2.1
  have hbc : b < c := by
    rw [← Fin.succAbove_lt_succAbove_iff (p := u), hb', hc']; exact τ'.2.2.1
  have hda : d ≠ a := fun e => τ'.2.2.2.1 (hd'.symm.trans ((congrArg u.succAbove e).trans ha'))
  have hdb : d ≠ b := fun e => τ'.2.2.2.2.1 (hd'.symm.trans ((congrArg u.succAbove e).trans hb'))
  have hdc : d ≠ c := fun e => τ'.2.2.2.2.2 (hd'.symm.trans ((congrArg u.succAbove e).trans hc'))
  refine ⟨⟨(d, a, b, c), hab, hbc, hda, hdb, hdc⟩, ?_⟩
  apply Subtype.ext
  simp only [Tup.map, Fin.succAboveOrderEmb_apply, Tup.d, Tup.a, Tup.b, Tup.c] at hd' ha' hb' hc' ⊢
  rw [hd', ha', hb', hc']

/-- Lemma 5.1 (a), counting form. -/
theorem sum_count_restrict (M : Pat (k + 1)) :
    ∑ u : Fin (k + 1), (Finset.univ.filter fun τ : Tup k => restrict (Fin.succAboveOrderEmb u) M τ = true).card =
      (k + 1 - 4) * (Finset.univ.filter fun τ : Tup (k + 1) => M τ = true).card := by
  classical
  have hu : ∀ u : Fin (k + 1), (Finset.univ.filter fun τ : Tup k =>
      restrict (Fin.succAboveOrderEmb u) M τ = true).card =
      (Finset.univ.filter fun τ' : Tup (k + 1) => M τ' = true ∧ u ∉ tupPts τ').card := by
    intro u
    apply Finset.card_bij (fun τ _ => τ.map (Fin.succAboveOrderEmb u))
    · intro τ hτ
      have hτ' := (Finset.mem_filter.1 hτ).2
      simp only [restrict] at hτ'
      refine Finset.mem_filter.2 ⟨Finset.mem_univ _, hτ', ?_⟩
      simp only [tupPts, Tup.map, Tup.d, Tup.a, Tup.b, Tup.c, Finset.mem_insert, Finset.mem_singleton, not_or,
        Fin.succAboveOrderEmb_apply]
      exact ⟨(Fin.succAbove_ne u _).symm, (Fin.succAbove_ne u _).symm, (Fin.succAbove_ne u _).symm,
        (Fin.succAbove_ne u _).symm⟩
    · intro τ _ σ _ h
      apply Subtype.ext
      have := congrArg Subtype.val h
      simp only [Tup.map, Prod.mk.injEq, Fin.succAboveOrderEmb_apply] at this
      exact Prod.ext (Fin.succAbove_right_injective this.1) (Prod.ext (Fin.succAbove_right_injective this.2.1)
        (Prod.ext (Fin.succAbove_right_injective this.2.2.1) (Fin.succAbove_right_injective this.2.2.2)))
    · intro τ' hτ'
      have hτ'' := (Finset.mem_filter.1 hτ').2
      obtain ⟨τ, rfl⟩ := exists_tup_map_succAbove hτ''.2
      exact ⟨τ, Finset.mem_filter.2 ⟨Finset.mem_univ _, hτ''.1⟩, rfl⟩
  simp_rw [hu]
  have hdc : ∑ u : Fin (k + 1), (Finset.univ.filter fun τ' : Tup (k + 1) => M τ' = true ∧ u ∉ tupPts τ').card =
      ∑ τ' ∈ Finset.univ.filter (fun τ' : Tup (k + 1) => M τ' = true),
        (Finset.univ.filter fun u => u ∉ tupPts τ').card := by
    simp only [Finset.card_eq_sum_ones, Finset.sum_filter]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun τ' _ => ?_
    by_cases h : M τ' = true <;> simp [h]
  rw [hdc]
  have hc : ∀ τ' ∈ Finset.univ.filter (fun τ' : Tup (k + 1) => M τ' = true),
      (Finset.univ.filter fun u => u ∉ tupPts τ').card = k + 1 - 4 := by
    intro τ' _
    have : (Finset.univ.filter fun u => u ∉ tupPts τ') = (tupPts τ')ᶜ := by ext; simp
    rw [this, Finset.card_compl, Fintype.card_fin, card_tupPts]
  rw [Finset.sum_congr rfl hc, Finset.sum_const, smul_eq_mul, mul_comm]

/-- The number of tuples: `(k+1) |T_k| = (k + 1 - 4) |T_{k+1}|`. -/
theorem card_tup_succ : (k + 1) * Fintype.card (Tup k) = (k + 1 - 4) * Fintype.card (Tup (k + 1)) := by
  have := sum_count_restrict (k := k) (fun _ => true)
  simpa [restrict, Finset.card_univ] using this

/-- Lemma 5.1 (a): `d(M) = (1/(k+1)) Σ_u d(M|_u)` for `k + 1 ≥ 5`. -/
theorem dens_avg (hk : 4 ≤ k) (M : Pat (k + 1)) :
    dens M = (∑ u : Fin (k + 1), dens (restrict (Fin.succAboveOrderEmb u) M)) / (k + 1) := by
  have h1 := sum_count_restrict M
  have h2 := card_tup_succ (k := k)
  have hT : (0 : ℝ) < Fintype.card (Tup k) := by
    have : 0 < Fintype.card (Tup k) := by
      have hlt : (3 : ℕ) < k := by omega
      exact Fintype.card_pos_iff.2 ⟨⟨(⟨3, hlt⟩, ⟨0, by omega⟩, ⟨1, by omega⟩, ⟨2, by omega⟩), by simp [Fin.lt_def],
        by simp [Fin.lt_def], by simp [Fin.ext_iff], by simp [Fin.ext_iff], by simp [Fin.ext_iff]⟩⟩
    exact_mod_cast this
  simp only [dens]
  rw [← Finset.sum_div]
  have h1' : (∑ u : Fin (k + 1), ((Finset.univ.filter fun τ : Tup k =>
      restrict (Fin.succAboveOrderEmb u) M τ = true).card : ℝ)) =
      ((k + 1 - 4 : ℕ) : ℝ) * (Finset.univ.filter fun τ : Tup (k + 1) => M τ = true).card := by
    exact_mod_cast h1
  have h2' : ((k : ℝ) + 1) * Fintype.card (Tup k) = ((k + 1 - 4 : ℕ) : ℝ) * Fintype.card (Tup (k + 1)) := by
    exact_mod_cast h2
  have hk4 : (0 : ℝ) < ((k + 1 - 4 : ℕ) : ℝ) := by exact_mod_cast (by omega : 0 < k + 1 - 4)
  rw [h1']
  have hT1 : (0 : ℝ) < Fintype.card (Tup (k + 1)) := by
    have := mul_pos (by positivity : (0 : ℝ) < (k : ℝ) + 1) hT
    rw [h2'] at this
    exact pos_of_mul_pos_right this hk4.le
  field_simp
  nlinarith [h2']

end BeatAvg

namespace BeatAvg

variable {k : ℕ}

/-- Lemma 5.1 (b): `c(F, G; M) = (1/(k+1)) Σ_u c(F, G; M|_u)` when `2m - t ≤ k`, given the identity
`D_{k+1} (k + 1 - (2m - t)) = (k + 1) D_k` between the numbers of triples. -/
theorem cFlag_avg {t m : ℕ} (ht : t ≤ m)
    (hD : ((k + 1).choose t * (k + 1 - t).choose (m - t) * (k + 1 - m).choose (m - t)) * (k + 1 - (2 * m - t)) =
      (k + 1) * (k.choose t * (k - t).choose (m - t) * (k - m).choose (m - t)))
    (hD0 : 0 < k.choose t * (k - t).choose (m - t) * (k - m).choose (m - t))
    (F G : Flag m) (M : Pat (k + 1)) :
    cFlag t m F G M = (∑ u : Fin (k + 1), cFlag t m F G (restrict (Fin.succAboveOrderEmb u) M)) / (k + 1) := by
  have hsum := sum_flagCount_restrict (k := k) ht F G M
  simp only [cFlag]
  rw [← Finset.sum_div]
  have hsum' : (∑ u : Fin (k + 1), (flagCount t m F G (restrict (Fin.succAboveOrderEmb u) M) : ℝ)) =
      ((k + 1 - (2 * m - t) : ℕ) : ℝ) * flagCount t m F G M := by exact_mod_cast hsum
  rw [hsum']
  have hD' : (((k + 1).choose t * (k + 1 - t).choose (m - t) * (k + 1 - m).choose (m - t) : ℕ) : ℝ) *
      ((k + 1 - (2 * m - t) : ℕ) : ℝ) = ((k : ℝ) + 1) * ((k.choose t * (k - t).choose (m - t) * (k - m).choose (m - t) : ℕ) : ℝ) := by
    exact_mod_cast hD
  have h0 : (0 : ℝ) < ((k.choose t * (k - t).choose (m - t) * (k - m).choose (m - t) : ℕ) : ℝ) := by exact_mod_cast hD0
  by_cases hD1 : (((k + 1).choose t * (k + 1 - t).choose (m - t) * (k + 1 - m).choose (m - t) : ℕ) : ℝ) = 0
  · rw [hD1, zero_mul] at hD'
    have := mul_pos (by positivity : (0 : ℝ) < (k : ℝ) + 1) h0
    linarith
  · field_simp
    linear_combination (-(flagCount t m F G M : ℝ)) * hD'

/-- The points other than `a` and `b`. -/
def rest2 {n : ℕ} (a b : Fin n) : Finset (Fin n) := Finset.univ \ {a, b}

theorem card_rest2 {n : ℕ} {a b : Fin n} (hab : a ≠ b) : (rest2 a b).card = n - 2 := by
  have : rest2 a b = ({a, b} : Finset (Fin n))ᶜ := by ext; simp [rest2]
  rw [this, Finset.card_compl, Fintype.card_fin, Finset.card_pair hab]

/-- Lemma 5.1 (c): for `(t, m) = (n - 2, n - 1)` the triples are `(rest2 a b, {a}, {b})` for ordered pairs of
distinct points. -/
theorem flagCount_pairs {n : ℕ} (hn : 2 ≤ n) (F G : Flag (n - 1)) (M : Pat n) :
    flagCount (n - 2) (n - 1) F G M = (Finset.univ.filter fun ab : Fin n × Fin n => ab.1 ≠ ab.2 ∧
      GivesFlag M (rest2 ab.1 ab.2) {ab.1} F ∧ GivesFlag M (rest2 ab.1 ab.2) {ab.2} G).card := by
  classical
  unfold flagCount
  symm
  apply Finset.card_bij (fun ab _ => (rest2 ab.1 ab.2, ({ab.1} : Finset (Fin n)), ({ab.2} : Finset (Fin n))))
  · intro ab hab
    obtain ⟨hne, g1, g2⟩ := (Finset.mem_filter.1 hab).2
    refine Finset.mem_filter.2 ⟨Finset.mem_univ _, ⟨?_, ?_, ?_, ?_, ?_, ?_⟩, g1, g2⟩
    · exact card_rest2 hne
    · simp; omega
    · simp; omega
    · simp [rest2]
    · simp [rest2]
    · simpa using hne
  · intro ab _ cd _ h
    simp only [Prod.mk.injEq, Finset.singleton_inj] at h
    exact Prod.ext h.2.1 h.2.2
  · intro p hp
    obtain ⟨⟨h1, h2, h3, d12, d13, d23⟩, g1, g2⟩ := (Finset.mem_filter.1 hp).2
    have h2' : p.2.1.card = 1 := by rw [h2]; omega
    have h3' : p.2.2.card = 1 := by rw [h3]; omega
    obtain ⟨a, ha⟩ := Finset.card_eq_one.1 h2'
    obtain ⟨b, hb⟩ := Finset.card_eq_one.1 h3'
    have hab : a ≠ b := by
      intro e
      rw [ha, hb, e] at d23
      exact Finset.disjoint_singleton.1 d23 rfl
    have hJ : p.1 = rest2 a b := by
      apply Finset.eq_of_subset_of_card_le
      · intro x hx
        simp only [rest2, Finset.mem_sdiff, Finset.mem_univ, Finset.mem_insert, Finset.mem_singleton, true_and, not_or]
        constructor
        · rintro rfl; exact Finset.disjoint_left.1 d12 hx (by rw [ha]; simp)
        · rintro rfl; exact Finset.disjoint_left.1 d13 hx (by rw [hb]; simp)
      · rw [h1, card_rest2 hab]
    refine ⟨(a, b), Finset.mem_filter.2 ⟨Finset.mem_univ _, hab, ?_, ?_⟩, ?_⟩
    · rw [← hJ, ← ha]; exact g1
    · rw [← hJ, ← hb]; exact g2
    · obtain ⟨p1, p2, p3⟩ := p
      simp only at hJ ha hb
      simp [hJ, ha, hb]

end BeatAvg
