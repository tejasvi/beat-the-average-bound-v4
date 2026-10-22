import BeatAvg.Check.Value
import BeatAvg.Check.Levels
import BeatAvg.Core.Direct

/-!
# Soundness of the direct evaluation (`directOK`)
-/

open Finset Matrix

namespace BeatAvg.Check

theorem binom_eq_choose : ∀ n k : Nat, binom n k = n.choose k
  | _, 0 => by simp [binom]
  | 0, k + 1 => by simp [binom]
  | n + 1, k + 1 => by rw [binom, binom_eq_choose n k, binom_eq_choose n (k + 1), Nat.choose_succ_succ]

/-- The enumeration `tupList m`, given its check. -/
def TupEnum.ofCheck (m : Nat) (h : enumOK m = true) : TupEnum m where
  l := tupList m
  valid := by simp only [enumOK, Bool.and_eq_true] at h; exact h.1.1
  nodup := by simp only [enumOK, Bool.and_eq_true, decide_eq_true_eq] at h; exact h.1.2
  complete := by simp only [enumOK, Bool.and_eq_true] at h; exact h.2

theorem card_tup {k : Nat} (T : TupEnum k) : Fintype.card (Tup k) = T.l.length := by
  rw [← Fintype.card_fin T.l.length]
  exact Fintype.card_congr ⟨fun τ => ⟨T.rank τ, T.rank_lt τ⟩, fun i => T.tupAt i i.2,
    fun τ => T.tupAt_rank τ, fun i => Fin.ext (T.rank_tupAt i i.2)⟩

theorem card_decode_true {k : Nat} (T : TupEnum k) (M : Nat) :
    (univ.filter fun τ => T.decode M τ = true).card = popcount T.l.length M := by
  rw [← card_ofMask]
  apply Finset.card_bij (fun τ _ => (⟨T.rank τ, T.rank_lt τ⟩ : Fin T.l.length))
  · intro τ hτ
    rw [Finset.mem_filter] at hτ
    exact mem_ofMask.2 hτ.2
  · intro τ _ σ _ h
    exact T.rank_injective (Fin.mk.inj h)
  · intro i hi
    refine ⟨T.tupAt i i.2, ?_, Fin.ext (T.rank_tupAt i i.2)⟩
    rw [Finset.mem_filter]
    refine ⟨Finset.mem_univ _, ?_⟩
    have := mem_ofMask.1 hi
    simpa [TupEnum.decode, T.rank_tupAt] using this

theorem dens_decode {k : Nat} (T : TupEnum k) (M : Nat) :
    dens (T.decode M) = (popcount T.l.length M : ℝ) / T.l.length := by
  rw [dens, card_decode_true, card_tup T]

/-- The block of the paper given by a `DBlock` (with `Q = Qint / qscale`). -/
noncomputable def DBlock.toBlock (k : Nat) (b : DBlock) (hwf : b.t ≤ b.m ∧ 2 * b.m - b.t ≤ k)
    (henum : enumOK b.m = true) (qscale : Nat) : Block k where
  t := b.t
  m := b.m
  n := b.flags.length
  flags := fun i => decFlag (TupEnum.ofCheck b.m henum) b.flags[(i : Nat)]
  Q := fun i j => (b.qint i j : ℝ) / qscale
  ht := hwf.1
  hk := hwf.2

/-- The matrix `(Σ w v_i v_j) / qscale` of a list of terms. -/
noncomputable def termsMatrix (n : Nat) (terms : List (Nat × List Int)) (qscale : Nat) :
    Matrix (Fin n) (Fin n) ℝ :=
  fun i j => (((terms.map fun p => (p.1 : Int) * p.2.getD i 0 * p.2.getD j 0).sum : Int) : ℝ) / qscale

theorem termsMatrix_psd (n : Nat) (terms : List (Nat × List Int)) (qscale : Nat) :
    (termsMatrix n terms qscale).PosSemidef := by
  induction terms with
  | nil =>
    have : termsMatrix n [] qscale = 0 := by ext i j; simp [termsMatrix]
    rw [this]; exact PosSemidef.zero
  | cons p l ih =>
    have e : termsMatrix n (p :: l) qscale = ((p.1 : ℝ) / qscale) • vecMulVec
        (fun i : Fin n => ((p.2.getD i 0 : Int) : ℝ)) (fun i : Fin n => ((p.2.getD i 0 : Int) : ℝ)) +
        termsMatrix n l qscale := by
      ext i j
      simp only [termsMatrix, List.map_cons, List.sum_cons, Int.cast_add, Int.cast_mul, Int.cast_natCast,
        Matrix.add_apply, Matrix.smul_apply, vecMulVec_apply, smul_eq_mul]
      ring
    rw [e]
    refine PosSemidef.add (PosSemidef.smul ?_ (div_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _))) ih
    have := posSemidef_vecMulVec_self_star (fun i : Fin n => ((p.2.getD i 0 : Int) : ℝ))
    simpa using this

theorem DBlock.toBlock_psd (k : Nat) (b : DBlock) (hwf) (henum) (qscale : Nat) :
    (b.toBlock k hwf henum qscale).Q.PosSemidef :=
  termsMatrix_psd b.flags.length b.terms qscale

/-- The contribution of one block to `val`. -/
theorem contrib_eq {k : Nat} (Tk : TupEnum k) (b : DBlock) (henum : enumOK b.m = true) (qscale : Nat)
    (hwf' : b.wf k = true) (M : Nat) :
    (∑ i : Fin b.flags.length, ∑ j : Fin b.flags.length, ((b.qint i j : ℝ) / qscale) *
      cFlag b.t b.m (decFlag (TupEnum.ofCheck b.m henum) b.flags[(i : Nat)])
        (decFlag (TupEnum.ofCheck b.m henum) b.flags[(j : Nat)]) (Tk.decode M)) =
      (blockSum Tk.l (tupList b.m) k b.t b.m b.flags b.qint M : ℝ) / ((b.D k : ℝ) * qscale) := by
  have hw := hwf'
  simp only [DBlock.wf, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at hw
  obtain ⟨⟨⟨ht, -⟩, hnd⟩, hcan⟩ := hw
  have hsound := blockSum_sound ht Tk (TupEnum.ofCheck b.m henum) b.flags (fun f hf => hcan f hf) hnd b.qint M
  have hD : ((k.choose b.t * (k - b.t).choose (b.m - b.t) * (k - b.m).choose (b.m - b.t) : ℕ) : ℝ) =
      b.D k := by
    simp [DBlock.D, binom_eq_choose]
  change _ = (blockSum Tk.l (TupEnum.ofCheck b.m henum).l k b.t b.m b.flags b.qint M : ℝ) / _
  rw [← hsound, Finset.sum_div]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun j _ => ?_
  simp only [cFlag, hD]
  ring

end BeatAvg.Check

namespace BeatAvg.Check

theorem DBlock.wf_dims {k : Nat} {b : DBlock} (h : b.wf k = true) : b.t ≤ b.m ∧ 2 * b.m - b.t ≤ k := by
  simp only [DBlock.wf, Bool.and_eq_true, decide_eq_true_eq] at h
  exact h.1.1

/-- The blocks of the paper given by checked `DBlock`s. -/
noncomputable def toBlocks (k qscale : Nat) :
    (l : List DBlock) → (∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true) → List (Block k)
  | [], _ => []
  | b :: l, h => b.toBlock k (DBlock.wf_dims (h b List.mem_cons_self).1) (h b List.mem_cons_self).2 qscale ::
      toBlocks k qscale l (fun b' hb' => h b' (List.mem_cons_of_mem _ hb'))

theorem toBlocks_psd (k qscale : Nat) :
    ∀ (l : List DBlock) (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true),
      ∀ B ∈ toBlocks k qscale l h, B.Q.PosSemidef
  | [], _, B, hB => by simp [toBlocks] at hB
  | b :: l, h, B, hB => by
    simp only [toBlocks, List.mem_cons] at hB
    rcases hB with rfl | hB
    · exact DBlock.toBlock_psd _ _ _ _ _
    · exact toBlocks_psd k qscale l _ B hB

theorem val_toBlocks {k : Nat} (Tk : TupEnum k) (qscale : Nat) (M : Nat) :
    ∀ (l : List DBlock) (h : ∀ b ∈ l, b.wf k = true ∧ enumOK b.m = true),
      val (toBlocks k qscale l h) (Tk.decode M) = dens (Tk.decode M) +
        (l.map fun b => (blockSum Tk.l (tupList b.m) k b.t b.m b.flags b.qint M : ℝ) /
          ((b.D k : ℝ) * qscale)).sum
  | [], _ => by simp [val, toBlocks]
  | b :: l, h => by
    have ih := val_toBlocks Tk qscale M l (fun b' hb' => h b' (List.mem_cons_of_mem _ hb'))
    simp only [val] at ih ⊢
    simp only [toBlocks, List.map_cons, List.sum_cons]
    have ih2 := add_left_cancel ih
    rw [ih2]
    have hc := contrib_eq Tk b (h b List.mem_cons_self).2 qscale (h b List.mem_cons_self).1 M
    exact congrArg (fun z => dens (Tk.decode M) + (z + _)) hc

theorem directOK_sound {k : Nat} (Tk : TupEnum k) (hTk : Tk.l = tupList k) (blocks : List DBlock)
    (lamN lamD den qscale : Nat) (P : List Nat) (h : directOK k blocks lamN lamD den qscale P = true)
    (hP : ∀ M : Pat k, Realizable M → ∃ x ∈ P, Tk.decode x = M) :
    ∃ bl : List (Block k), (∀ B ∈ bl, B.Q.PosSemidef) ∧
      ∀ M : Pat k, Realizable M → val bl M ≤ (lamN : ℝ) / lamD := by
  simp only [directOK, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨hlamD, hden⟩, hnT⟩, hq⟩, hdivT⟩, -⟩, hbl⟩, hval⟩ := h
  have hwf : ∀ b ∈ blocks, b.wf k = true ∧ enumOK b.m = true := fun b hb => ⟨(hbl b hb).1.1.1, (hbl b hb).1.1.2⟩
  refine ⟨toBlocks k qscale blocks hwf, toBlocks_psd k qscale blocks hwf, ?_⟩
  intro M hM
  obtain ⟨x, hx, rfl⟩ := hP M hM
  have hv := hval x hx
  rw [val_toBlocks Tk qscale x blocks hwf, dens_decode]
  rw [hTk]
  -- valNum = den · val
  have hnT' : (0 : ℝ) < (tupList k).length := by exact_mod_cast hnT
  have hden' : (0 : ℝ) < den := by exact_mod_cast hden
  have hlamD' : (0 : ℝ) < lamD := by exact_mod_cast hlamD
  have key : (valNum k (tupList k) blocks den qscale x : ℝ) = den *
      ((popcount (tupList k).length x : ℝ) / (tupList k).length +
        (blocks.map fun b => (blockSum (tupList k) (tupList b.m) k b.t b.m b.flags b.qint x : ℝ) /
          ((b.D k : ℝ) * qscale)).sum) := by
    simp only [valNum, Int.cast_add, Int.cast_natCast, Int.cast_list_sum, List.map_map]
    rw [mul_add, ← List.sum_map_mul_left]
    congr 1
    · rw [Nat.cast_mul, Nat.cast_div (Nat.dvd_of_mod_eq_zero hdivT) (ne_of_gt hnT')]
      ring
    · congr 1
      apply List.map_congr_left
      intro b hb
      have hDq : 0 < b.D k * qscale := Nat.mul_pos (hbl b hb).1.2 hq
      have hdiv : b.D k * qscale ∣ den := Nat.dvd_of_mod_eq_zero (hbl b hb).2
      simp only [Function.comp, Int.cast_mul, Int.cast_natCast]
      rw [Nat.cast_div hdiv (by exact_mod_cast (ne_of_gt hDq)), Nat.cast_mul]
      field_simp
  have hv' : (valNum k (tupList k) blocks den qscale x : ℝ) * lamD ≤ (lamN : ℝ) * den := by
    exact_mod_cast hv
  rw [key] at hv'
  rw [le_div_iff₀ hlamD']
  nlinarith [hv']

end BeatAvg.Check

namespace BeatAvg.Check

theorem lookupIdx_lt {l : List (Nat × Nat)} {x : Nat × Nat} {i : Nat} (h : lookupIdx l x = some i) :
    i < l.length := by
  unfold lookupIdx at h
  split at h
  · rename_i hc
    simp only [Option.some.injEq] at h
    subst h
    exact List.idxOf_lt_length_of_mem (List.contains_iff_mem.1 hc)
  · simp at h

theorem qtab_get (b : DBlock) {i j : Nat} (hi : i < b.flags.length) (hj : j < b.flags.length) :
    (b.qtab.getD i []).getD j 0 = b.qint i j := by
  simp [DBlock.qtab, List.getD_eq_getElem?_getD, hi, hj]

theorem blockSumT_eq (lk lm : List (Nat × Nat × Nat × Nat)) (k : Nat) (b : DBlock) (M : Nat) :
    blockSumT (tripleTable lk lm k b.t b.m) b.flags b.qtab M = blockSum lk lm k b.t b.m b.flags b.qint M := by
  unfold blockSumT tripleTable blockSum
  rw [List.map_map]
  congr 1
  apply List.map_congr_left
  intro q _
  simp only [Function.comp, flagKey, restrBits]
  cases h1 : lookupIdx b.flags
      (gather M (restrIdx lk lm (ptsOf k (q.1 ||| q.2.1))), gather q.1 (ptsOf k (q.1 ||| q.2.1))) with
  | none => simp
  | some i =>
    cases h2 : lookupIdx b.flags
        (gather M (restrIdx lk lm (ptsOf k (q.1 ||| q.2.2))), gather q.1 (ptsOf k (q.1 ||| q.2.2))) with
    | none => simp
    | some j => exact qtab_get b (lookupIdx_lt h1) (lookupIdx_lt h2)

theorem sumT_eq (k : Nat) (lk : List (Nat × Nat × Nat × Nat)) (den qscale M : Nat) :
    ∀ blocks : List DBlock,
    ((blocks.zip (blocks.map fun b => (tripleTable lk (tupList b.m) k b.t b.m, b.qtab))).map fun bp =>
        blockSumT bp.2.1 bp.1.flags bp.2.2 M * ((den / (bp.1.D k * qscale) : Nat) : Int)).sum =
      (blocks.map fun b => blockSum lk (tupList b.m) k b.t b.m b.flags b.qint M *
        ((den / (b.D k * qscale) : Nat) : Int)).sum
  | [] => rfl
  | b :: l => by
    simp only [List.map_cons, List.zip_cons_cons, List.sum_cons]
    rw [blockSumT_eq, sumT_eq k lk den qscale M l]

theorem valNumT_eq (k : Nat) (lk : List (Nat × Nat × Nat × Nat)) (blocks : List DBlock) (den qscale M : Nat) :
    valNumT lk blocks (blocks.map fun b => (tripleTable lk (tupList b.m) k b.t b.m, b.qtab)) den qscale k M =
      valNum k lk blocks den qscale M := by
  unfold valNumT valNum
  rw [sumT_eq]

theorem directOKT_eq (k : Nat) (blocks : List DBlock) (lamN lamD den qscale : Nat) (P : List Nat) :
    directOKT k blocks lamN lamD den qscale P = directOK k blocks lamN lamD den qscale P := by
  unfold directOKT directOK
  simp only [valNumT_eq]

end BeatAvg.Check

namespace BeatAvg.Check

theorem all_of_chunks {α : Type*} (f : α → Bool) (P : List α) (n : Nat) :
    ∀ c : Nat, P.length ≤ c * n → (∀ i < c, ((P.drop (i * n)).take n).all f = true) → P.all f = true
  | 0, hlen, _ => by
    have : P = [] := List.eq_nil_of_length_eq_zero (by simpa using hlen)
    simp [this]
  | c + 1, hlen, h => by
    rw [← List.take_append_drop n P, List.all_append, Bool.and_eq_true]
    refine ⟨by simpa using h 0 (by omega), ?_⟩
    apply all_of_chunks f (P.drop n) n c
    · simp only [List.length_drop]; rw [Nat.add_mul] at hlen; omega
    · intro i hi
      have := h (i + 1) (by omega)
      rwa [List.drop_drop, show n + i * n = (i + 1) * n by ring]

theorem directOKT_of_chunks {k : Nat} {blocks : List DBlock} {lamN lamD den qscale : Nat} {P : List Nat}
    (hpre : directPre k blocks lamD den qscale = true) (n c : Nat) (hlen : P.length ≤ c * n)
    (hc : ∀ i < c, directChunk k blocks lamN lamD den qscale P (i * n) n = true) :
    directOKT k blocks lamN lamD den qscale P = true := by
  unfold directOKT
  unfold directPre at hpre
  simp only [Bool.and_eq_true] at hpre ⊢
  refine ⟨hpre, ?_⟩
  exact all_of_chunks _ P n c hlen hc

end BeatAvg.Check
