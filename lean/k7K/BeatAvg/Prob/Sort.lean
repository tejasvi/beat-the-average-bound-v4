import BeatAvg.Prob.Generic

/-!
# Sorting samples

The pattern of an unsorted generic point is the pattern of its increasing rearrangement. A permutation of the points
permutes `T_k`, so the number of tuples with `L_τ > 0` does not change (proof of Lemma 2.3 of the paper).
-/

open Finset

namespace BeatAvg

variable {k : ℕ}

theorem strictMono_sort {x : Fin k → ℝ} (hx : Function.Injective x) : StrictMono (x ∘ Tuple.sort x) :=
  (Tuple.monotone_sort x).strictMono_of_injective (hx.comp (Tuple.sort x).injective)

theorem eq_sort_of_strictMono {x : Fin k → ℝ} (hx : Function.Injective x) {σ : Equiv.Perm (Fin k)}
    (h : StrictMono (x ∘ σ)) : σ = Tuple.sort x := by
  rw [Tuple.eq_sort_iff]
  refine ⟨h.monotone, fun i j hij heq => ?_⟩
  exact absurd (σ.injective (hx heq)) (ne_of_lt hij)

/-- The key `(d, {a, b, c})` of a tuple. -/
def tupKey (τ : Tup k) : Fin k × Finset (Fin k) := (τ.d, {τ.a, τ.b, τ.c})

theorem card_tupKey (τ : Tup k) : (tupKey τ).2.card = 3 := by
  have h1 : τ.a ≠ τ.b := ne_of_lt τ.2.1
  have h2 : τ.a ≠ τ.c := ne_of_lt (τ.2.1.trans τ.2.2.1)
  have h3 : τ.b ≠ τ.c := ne_of_lt τ.2.2.1
  simp [tupKey, Finset.card_insert_of_notMem, h1, h2, h3]

theorem d_notMem_tupKey (τ : Tup k) : (tupKey τ).1 ∉ (tupKey τ).2 := by
  simp only [tupKey, Finset.mem_insert, Finset.mem_singleton, not_or]
  exact ⟨τ.2.2.2.1, τ.2.2.2.2.1, τ.2.2.2.2.2⟩

theorem L_eq_key (τ : Tup k) (y : Fin k → ℝ) : L τ y = 2 * y (tupKey τ).1 - ∑ i ∈ (tupKey τ).2, y i := by
  have h1 : τ.a ≠ τ.b := ne_of_lt τ.2.1
  have h2 : τ.a ≠ τ.c := ne_of_lt (τ.2.1.trans τ.2.2.1)
  have h3 : τ.b ≠ τ.c := ne_of_lt τ.2.2.1
  simp only [tupKey, L]
  rw [Finset.sum_insert (by simp [h1, h2]), Finset.sum_insert (by simp [h3]), Finset.sum_singleton]
  ring

theorem orderEmbOfFin_congr {S S' : Finset (Fin k)} (h1 : S.card = 3) (h2 : S'.card = 3) (e : S = S')
    (i : Fin 3) : S.orderEmbOfFin h1 i = S'.orderEmbOfFin h2 i := by
  subst e; rfl

/-- The increasing enumeration of a three-element set. -/
theorem triple_eq_orderEmb (τ : Tup k) (h : (tupKey τ).2.card = 3) :
    ((tupKey τ).2.orderEmbOfFin h 0 = τ.a) ∧ ((tupKey τ).2.orderEmbOfFin h 1 = τ.b) ∧
      ((tupKey τ).2.orderEmbOfFin h 2 = τ.c) := by
  have hf : (![τ.a, τ.b, τ.c] : Fin 3 → Fin k) = (tupKey τ).2.orderEmbOfFin h := by
    apply Finset.orderEmbOfFin_unique h
    · intro x
      fin_cases x <;> simp [tupKey]
    · rw [Fin.strictMono_iff_lt_succ]
      intro i
      fin_cases i
      · exact τ.2.1
      · exact τ.2.2.1
  refine ⟨?_, ?_, ?_⟩
  · rw [← hf]; rfl
  · rw [← hf]; rfl
  · rw [← hf]; rfl

theorem tupKey_injective : Function.Injective (tupKey (k := k)) := by
  intro τ σ h
  have hτ := triple_eq_orderEmb τ (card_tupKey τ)
  have hσ := triple_eq_orderEmb σ (card_tupKey σ)
  have hd : (tupKey τ).1 = (tupKey σ).1 := by rw [h]
  have hS : (tupKey τ).2 = (tupKey σ).2 := by rw [h]
  have ea : τ.a = σ.a := by
    rw [← hτ.1, ← hσ.1]; exact orderEmbOfFin_congr _ _ hS 0
  have eb : τ.b = σ.b := by
    rw [← hτ.2.1, ← hσ.2.1]; exact orderEmbOfFin_congr _ _ hS 1
  have ec : τ.c = σ.c := by
    rw [← hτ.2.2, ← hσ.2.2]; exact orderEmbOfFin_congr _ _ hS 2
  simp only [tupKey] at hd
  obtain ⟨⟨d1, a1, b1, c1⟩, _⟩ := τ
  obtain ⟨⟨d2, a2, b2, c2⟩, _⟩ := σ
  simp only [Tup.d, Tup.a, Tup.b, Tup.c] at hd ea eb ec
  subst hd ea eb ec
  rfl

/-- The tuple with a given key. -/
def tupOfKey (d : Fin k) (S : Finset (Fin k)) (hS : S.card = 3) (hd : d ∉ S) : Tup k :=
  ⟨(d, S.orderEmbOfFin hS 0, S.orderEmbOfFin hS 1, S.orderEmbOfFin hS 2),
    (S.orderEmbOfFin hS).strictMono (by decide), (S.orderEmbOfFin hS).strictMono (by decide),
    fun e => hd (by have := S.orderEmbOfFin_mem hS 0; exact (show d = _ from e) ▸ this),
    fun e => hd (by have := S.orderEmbOfFin_mem hS 1; exact (show d = _ from e) ▸ this),
    fun e => hd (by have := S.orderEmbOfFin_mem hS 2; exact (show d = _ from e) ▸ this)⟩

theorem tupKey_tupOfKey (d : Fin k) (S : Finset (Fin k)) (hS : S.card = 3) (hd : d ∉ S) :
    tupKey (tupOfKey d S hS hd) = (d, S) := by
  simp only [tupKey, tupOfKey, Tup.d, Tup.a, Tup.b, Tup.c, Prod.mk.injEq, true_and]
  apply Finset.eq_of_subset_of_card_le
  · intro x hx
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl | rfl <;> exact S.orderEmbOfFin_mem hS _
  · rw [hS]
    have h1 : S.orderEmbOfFin hS 0 ≠ S.orderEmbOfFin hS 1 := (S.orderEmbOfFin hS).injective.ne (by decide)
    have h2 : S.orderEmbOfFin hS 0 ≠ S.orderEmbOfFin hS 2 := (S.orderEmbOfFin hS).injective.ne (by decide)
    have h3 : S.orderEmbOfFin hS 1 ≠ S.orderEmbOfFin hS 2 := (S.orderEmbOfFin hS).injective.ne (by decide)
    simp [Finset.card_insert_of_notMem, h1, h2, h3]

/-- `L_τ (x ∘ σ) = L_{τ'} x` for the tuple `τ'` with key `(σ d, σ {a, b, c})`. -/
theorem L_comp_perm (τ : Tup k) (σ : Equiv.Perm (Fin k)) (x : Fin k → ℝ) :
    ∃ τ' : Tup k, tupKey τ' = (σ (tupKey τ).1, (tupKey τ).2.map σ.toEmbedding) ∧ L τ (x ∘ σ) = L τ' x := by
  have hS : ((tupKey τ).2.map σ.toEmbedding).card = 3 := by rw [Finset.card_map, card_tupKey]
  have hd : σ (tupKey τ).1 ∉ (tupKey τ).2.map σ.toEmbedding := by
    simp only [Finset.mem_map, Equiv.coe_toEmbedding, not_exists, not_and]
    intro i hi he
    exact d_notMem_tupKey τ (σ.injective he ▸ hi)
  refine ⟨tupOfKey _ _ hS hd, tupKey_tupOfKey _ _ hS hd, ?_⟩
  rw [L_eq_key, L_eq_key, tupKey_tupOfKey, Finset.sum_map]
  rfl

theorem Generic.comp_perm {x : Fin k → ℝ} (hx : Generic x) (σ : Equiv.Perm (Fin k)) : Generic (x ∘ σ) := by
  refine ⟨fun i => hx.1 _, hx.2.1.comp σ.injective, fun τ => ?_⟩
  obtain ⟨τ', -, h⟩ := L_comp_perm τ σ x
  rw [h]; exact hx.2.2 τ'

/-- The sorted pattern of a generic point is realizable. -/
theorem realizable_sortedPat {x : Fin k → ℝ} (hx : Generic x) : Realizable (sortedPat x) :=
  ⟨x ∘ Tuple.sort x, strictMono_sort hx.2.1, hx.comp_perm _, rfl⟩

/-- The number of tuples with `L_τ > 0` does not change under a permutation of the points. -/
theorem card_L_pos_comp_perm (σ : Equiv.Perm (Fin k)) (x : Fin k → ℝ) :
    (univ.filter fun τ : Tup k => 0 < L τ (x ∘ σ)).card = (univ.filter fun τ : Tup k => 0 < L τ x).card := by
  classical
  -- the map τ ↦ τ' with key (σ d, σ S)
  let g : Tup k → Tup k := fun τ => (L_comp_perm τ σ x).choose
  have hg : ∀ τ, tupKey (g τ) = (σ (tupKey τ).1, (tupKey τ).2.map σ.toEmbedding) ∧ L τ (x ∘ σ) = L (g τ) x :=
    fun τ => (L_comp_perm τ σ x).choose_spec
  apply Finset.card_bij (fun τ _ => g τ)
  · intro τ hτ
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hτ ⊢
    rw [← (hg τ).2]; exact hτ
  · intro τ1 _ τ2 _ h
    apply tupKey_injective
    have e := congrArg tupKey h
    rw [(hg τ1).1, (hg τ2).1] at e
    simp only [Prod.mk.injEq] at e
    exact Prod.ext (σ.injective e.1) (Finset.map_injective _ e.2)
  · intro τ' hτ'
    -- preimage: key (σ⁻¹ d', σ⁻¹ S')
    obtain ⟨τ, hτk, hL⟩ := L_comp_perm τ' σ.symm (x ∘ σ)
    refine ⟨τ, ?_, ?_⟩
    · simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hτ' ⊢
      have : x ∘ σ ∘ σ.symm = x := by funext i; simp
      rw [Function.comp_assoc, this] at hL
      rw [← hL]; exact hτ'
    · apply tupKey_injective
      rw [(hg τ).1, hτk]
      simp only [Equiv.apply_symm_apply, Finset.map_map]
      ext <;> simp

end BeatAvg
