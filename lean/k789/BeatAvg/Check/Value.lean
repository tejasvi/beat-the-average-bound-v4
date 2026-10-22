import BeatAvg.Check.Restrict

/-!
# Block contributions computed on bits

`blockSum` sums `Q[i][j]` over the triples `(J, A, B)`; its value is `Σ_{i,j} Q_ij · flagCount(F_i, F_j; M)`.
-/

open Finset

namespace BeatAvg.Check

theorem sum_ite_eq_lookup {l : List (Nat × Nat)} (hnd : l.Nodup) (x : Nat × Nat) (g : Nat → ℝ) :
    ∑ i : Fin l.length, (if x = l[(i : Nat)] then g i else 0) =
      (match lookupIdx l x with | some i => g i | none => 0) := by
  unfold lookupIdx
  by_cases hx : x ∈ l
  · have hc : l.contains x = true := List.contains_iff_mem.2 hx
    simp only [hc, if_true]
    have hlt : l.idxOf x < l.length := List.idxOf_lt_length_of_mem hx
    rw [Finset.sum_eq_single ⟨l.idxOf x, hlt⟩]
    · simp [List.getElem_idxOf]
    · intro i _ hi
      have : x ≠ l[(i : Nat)] := by
        intro e
        apply hi
        apply Fin.ext
        simp only
        rw [e, List.Nodup.idxOf_getElem hnd]
      simp [this]
    · simp
  · have hc : l.contains x = false := by simpa [List.contains_iff_mem] using hx
    simp only [hc, Bool.false_eq_true, if_false]
    refine Finset.sum_eq_zero fun i _ => ?_
    have : x ≠ l[(i : Nat)] := fun e => hx (e ▸ List.getElem_mem _)
    simp [this]

theorem flagCount_eq_sum {k : Nat} (t m : Nat) (F G : Flag m) (M : Pat k) :
    (flagCount t m F G M : ℝ) = ∑ p ∈ univ.filter (fun p => IsTriple t m p),
      (if GivesFlag M p.1 p.2.1 F ∧ GivesFlag M p.1 p.2.2 G then (1 : ℝ) else 0) := by
  rw [Finset.sum_boole, Finset.filter_filter]
  rfl

theorem card_union_of_triple {k t m : Nat} (ht : t ≤ m) {p : Finset (Fin k) × Finset (Fin k) × Finset (Fin k)}
    (hp : IsTriple t m p) : (p.1 ∪ p.2.1).card = m ∧ (p.1 ∪ p.2.2).card = m := by
  obtain ⟨h1, h2, h3, h4, h5, -⟩ := hp
  rw [Finset.card_union_of_disjoint h4, Finset.card_union_of_disjoint h5, h1, h2, h3]
  omega

theorem blockSum_sound {k m t : Nat} (ht : t ≤ m) (Tk : TupEnum k) (Tm : TupEnum m) (flags : List (Nat × Nat))
    (hcanon : ∀ f ∈ flags, f.1 < 2 ^ Tm.l.length ∧ f.2 < 2 ^ m) (hnd : flags.Nodup)
    (Qint : Nat → Nat → Int) (M : Nat) :
    ∑ i : Fin flags.length, ∑ j : Fin flags.length,
      (Qint i j : ℝ) * (flagCount t m (decFlag Tm flags[(i : Nat)]) (decFlag Tm flags[(j : Nat)]) (Tk.decode M) : ℝ) =
    (blockSum Tk.l Tm.l k t m flags Qint M : ℝ) := by
  simp only [flagCount_eq_sum, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine (Finset.sum_congr rfl fun i _ => Finset.sum_comm).trans ?_
  rw [Finset.sum_comm]
  rw [sum_triples_eq]
  unfold blockSum
  rw [Int.cast_list_sum, List.map_map]
  congr 1
  apply List.map_congr_left
  intro q hq
  obtain ⟨-, hT⟩ := mem_genTriples.1 hq
  obtain ⟨hcA, hcB⟩ := card_union_of_triple ht hT
  simp only [Function.comp, ofMask3] at hcA hcB ⊢
  -- rewrite the flag conditions through the keys
  have hgA : ∀ i : Fin flags.length, GivesFlag (Tk.decode M) (ofMask k q.1) (ofMask k q.2.1)
      (decFlag Tm flags[(i : Nat)]) ↔ flagKey Tk.l Tm.l k M q.1 q.2.1 = flags[(i : Nat)] := by
    intro i
    have hc := hcanon _ (List.getElem_mem i.2)
    rw [givesFlag_iff Tk Tm M q.1 q.2.1 _ hc.1 hc.2]
    exact ⟨fun h => h.2, fun h => ⟨hcA, h⟩⟩
  have hgB : ∀ j : Fin flags.length, GivesFlag (Tk.decode M) (ofMask k q.1) (ofMask k q.2.2)
      (decFlag Tm flags[(j : Nat)]) ↔ flagKey Tk.l Tm.l k M q.1 q.2.2 = flags[(j : Nat)] := by
    intro j
    have hc := hcanon _ (List.getElem_mem j.2)
    rw [givesFlag_iff Tk Tm M q.1 q.2.2 _ hc.1 hc.2]
    exact ⟨fun h => h.2, fun h => ⟨hcB, h⟩⟩
  simp only [hgA, hgB]
  have e1 : ∀ i : Fin flags.length, (∑ j : Fin flags.length, (Qint i j : ℝ) *
      (if flagKey Tk.l Tm.l k M q.1 q.2.1 = flags[(i : Nat)] ∧ flagKey Tk.l Tm.l k M q.1 q.2.2 = flags[(j : Nat)]
        then (1 : ℝ) else 0)) =
      if flagKey Tk.l Tm.l k M q.1 q.2.1 = flags[(i : Nat)] then
        (match lookupIdx flags (flagKey Tk.l Tm.l k M q.1 q.2.2) with | some j => (Qint i j : ℝ) | none => 0)
      else 0 := by
    intro i
    split
    · rename_i hA
      rw [← sum_ite_eq_lookup hnd _ (fun j => (Qint i j : ℝ))]
      refine Finset.sum_congr rfl fun j _ => ?_
      by_cases hB : flagKey Tk.l Tm.l k M q.1 q.2.2 = flags[(j : Nat)] <;> simp [hA, hB]
    · rename_i hA
      refine Finset.sum_eq_zero fun j _ => ?_
      simp [hA]
  rw [Finset.sum_comm, Finset.sum_congr rfl fun i _ => e1 i]
  rw [sum_ite_eq_lookup hnd _ (fun i => match lookupIdx flags (flagKey Tk.l Tm.l k M q.1 q.2.2) with
    | some j => (Qint i j : ℝ) | none => 0)]
  cases lookupIdx flags (flagKey Tk.l Tm.l k M q.1 q.2.1) <;>
    cases lookupIdx flags (flagKey Tk.l Tm.l k M q.1 q.2.2) <;> simp

end BeatAvg.Check
