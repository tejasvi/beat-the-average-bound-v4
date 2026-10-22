import BeatAvg.Pattern
import BeatAvg.Core.Tuples

/-!
# The bit encoding of patterns

`TupEnum k` is an enumeration of `T_k` by quadruples of natural numbers without repetitions; `decode` reads a
`k`-pattern from the bits of a natural number.
-/

namespace BeatAvg.Check

theorem mem_allQ {k : Nat} {q : Nat × Nat × Nat × Nat} (h1 : q.1 < k) (h2 : q.2.1 < k) (h3 : q.2.2.1 < k)
    (h4 : q.2.2.2 < k) : q ∈ allQ k := by
  obtain ⟨d, a, b, c⟩ := q
  simp only [allQ, List.mem_flatMap, List.mem_range, List.mem_map, Prod.mk.injEq]
  exact ⟨d, h1, a, h2, b, h3, c, h4, rfl, rfl, rfl, rfl⟩

/-- The quadruple `(d, a, b, c)` of a tuple. -/
def ofTup {k : Nat} (τ : Tup k) : Nat × Nat × Nat × Nat := (τ.d.1, τ.a.1, τ.b.1, τ.c.1)

theorem validQ_iff {k : Nat} (q : Nat × Nat × Nat × Nat) :
    validQ k q = true ↔ q.2.1 < q.2.2.1 ∧ q.2.2.1 < q.2.2.2 ∧ q.2.2.2 < k ∧ q.1 < k ∧
      q.1 ≠ q.2.1 ∧ q.1 ≠ q.2.2.1 ∧ q.1 ≠ q.2.2.2 := by
  simp [validQ, and_assoc]

theorem validQ_ofTup {k : Nat} (τ : Tup k) : validQ k (ofTup τ) = true := by
  rw [validQ_iff]
  obtain ⟨⟨d, a, b, c⟩, hab, hbc, hda, hdb, hdc⟩ := τ
  refine ⟨hab, hbc, c.2, d.2, ?_, ?_, ?_⟩
  · exact fun h => hda (Fin.ext h)
  · exact fun h => hdb (Fin.ext h)
  · exact fun h => hdc (Fin.ext h)

/-- A valid quadruple as a tuple. -/
def toTup {k : Nat} (q : Nat × Nat × Nat × Nat) (h : validQ k q = true) : Tup k :=
  have h' := (validQ_iff q).1 h
  ⟨(⟨q.1, h'.2.2.2.1⟩, ⟨q.2.1, by omega⟩, ⟨q.2.2.1, by omega⟩, ⟨q.2.2.2, h'.2.2.1⟩),
    Fin.mk_lt_mk.2 h'.1, Fin.mk_lt_mk.2 h'.2.1,
    fun e => h'.2.2.2.2.1 (Fin.mk.inj e), fun e => h'.2.2.2.2.2.1 (Fin.mk.inj e),
    fun e => h'.2.2.2.2.2.2 (Fin.mk.inj e)⟩

theorem ofTup_toTup {k : Nat} (q : Nat × Nat × Nat × Nat) (h : validQ k q = true) :
    ofTup (toTup q h) = q := rfl

theorem toTup_ofTup {k : Nat} (τ : Tup k) : toTup (ofTup τ) (validQ_ofTup τ) = τ := rfl

theorem ofTup_injective {k : Nat} : Function.Injective (ofTup (k := k)) := by
  intro τ σ h
  rw [← toTup_ofTup τ, ← toTup_ofTup σ]
  congr 1

/-- An enumeration of `T_k` without repetitions. -/
structure TupEnum (k : Nat) where
  l : List (Nat × Nat × Nat × Nat)
  valid : l.all (validQ k) = true
  nodup : l.Nodup
  complete : (allQ k).all (fun q => !validQ k q || l.contains q) = true

namespace TupEnum
variable {k : Nat} (T : TupEnum k)

theorem valid_get (i : Nat) (h : i < T.l.length) : validQ k T.l[i] = true :=
  List.all_eq_true.1 T.valid _ (List.getElem_mem h)

theorem mem (τ : Tup k) : ofTup τ ∈ T.l := by
  have hq : ofTup τ ∈ allQ k := mem_allQ τ.d.2 τ.a.2 τ.b.2 τ.c.2
  have := List.all_eq_true.1 T.complete _ hq
  rw [validQ_ofTup] at this
  simpa using this

/-- The position of a tuple in the enumeration. -/
def rank (τ : Tup k) : Nat := T.l.idxOf (ofTup τ)

theorem rank_lt (τ : Tup k) : T.rank τ < T.l.length := List.idxOf_lt_length_of_mem (T.mem τ)

/-- The tuple at a position. -/
def tupAt (i : Nat) (h : i < T.l.length) : Tup k := toTup T.l[i] (T.valid_get i h)

theorem tupAt_rank (τ : Tup k) : T.tupAt (T.rank τ) (T.rank_lt τ) = τ := by
  apply ofTup_injective
  simp only [tupAt, ofTup_toTup, rank]
  exact List.getElem_idxOf _

theorem rank_tupAt (i : Nat) (h : i < T.l.length) : T.rank (T.tupAt i h) = i := by
  simp only [rank, tupAt, ofTup_toTup]
  exact List.Nodup.idxOf_getElem T.nodup i h

theorem rank_injective : Function.Injective T.rank := by
  intro τ σ h
  rw [← T.tupAt_rank τ, ← T.tupAt_rank σ]
  congr 1

/-- The pattern encoded by the bits of `n` (bit `rank τ` is the sign at `τ`). -/
def decode (n : Nat) : Pat k := fun τ => n.testBit (T.rank τ)

end TupEnum

end BeatAvg.Check
