import BeatAvg.Core.K7K

/-!
# Splitting chunk checks into single items (core Lean only)

A kernel check of a chunk `((l.drop lo).take (n + 1)).all f` follows from the check of its first item and of the rest;
shard modules check items in separate theorems, so that the kernel's caches are freed between items.
-/

namespace BeatAvg.Check

theorem all_take_succ {α : Type} (f : α → Bool) (l : List α) (lo n : Nat)
    (h1 : ((l.drop lo).take 1).all f = true) (h2 : ((l.drop (lo + 1)).take n).all f = true) :
    ((l.drop lo).take (n + 1)).all f = true := by
  rw [List.all_eq_true] at h1 h2 ⊢
  intro x hx
  rw [List.mem_iff_getElem] at hx
  obtain ⟨k, hk, rfl⟩ := hx
  simp only [List.length_take, List.length_drop] at hk
  cases k with
  | zero =>
    apply h1
    rw [List.mem_iff_getElem]
    refine ⟨0, ?_, ?_⟩
    · simp only [List.length_take, List.length_drop]; omega
    · simp
  | succ k =>
    apply h2
    rw [List.mem_iff_getElem]
    refine ⟨k, ?_, ?_⟩
    · simp only [List.length_take, List.length_drop]; omega
    · simp only [List.getElem_take, List.getElem_drop]
      congr 1
      omega

theorem recsK7OK_succ {T : K7Tab} {qscale den6 d14 lamN lamD : Nat} {recs : List TreeRec} {lo n : Nat}
    (h1 : recsK7OK T qscale den6 d14 lamN lamD recs lo 1 = true)
    (h2 : recsK7OK T qscale den6 d14 lamN lamD recs (lo + 1) n = true) :
    recsK7OK T qscale den6 d14 lamN lamD recs lo (n + 1) = true :=
  all_take_succ _ recs lo n h1 h2

theorem f6OK_succ {T : K7Tab} {low : List DBlock} {den6 qscale lo n : Nat}
    (h1 : f6OK T low den6 qscale lo 1 = true) (h2 : f6OK T low den6 qscale (lo + 1) n = true) :
    f6OK T low den6 qscale lo (n + 1) = true :=
  all_take_succ _ (List.range T.n6) lo n h1 h2

theorem qrowOK_add {T : K7Tab} {top : List DBlock} {blk lo n m : Nat}
    (h1 : qrowOK T top blk lo n = true) (h2 : qrowOK T top blk (lo + n) m = true) :
    qrowOK T top blk lo (n + m) = true := by
  unfold qrowOK at h1 h2 ⊢
  rw [List.all_eq_true] at h1 h2 ⊢
  intro i hi
  rw [List.mem_iff_getElem] at hi
  obtain ⟨k, hk, rfl⟩ := hi
  simp only [List.length_take, List.length_drop] at hk
  by_cases hkn : k < n
  · apply h1
    rw [List.mem_iff_getElem]
    refine ⟨k, ?_, ?_⟩
    · simp only [List.length_take, List.length_drop]; omega
    · simp only [List.getElem_take, List.getElem_drop]
  · apply h2
    rw [List.mem_iff_getElem]
    refine ⟨k - n, ?_, ?_⟩
    · simp only [List.length_take, List.length_drop]; omega
    · simp only [List.getElem_take, List.getElem_drop]
      congr 1
      omega

end BeatAvg.Check

namespace BeatAvg.Check

theorem qrowOK_mono {T : K7Tab} {top : List DBlock} {blk lo n m : Nat} (hnm : n ≤ m)
    (h : qrowOK T top blk lo m = true) : qrowOK T top blk lo n = true := by
  unfold qrowOK at h ⊢
  rw [List.all_eq_true] at h ⊢
  intro i hi
  apply h
  rw [List.mem_iff_getElem] at hi ⊢
  obtain ⟨k, hk, rfl⟩ := hi
  simp only [List.length_take, List.length_drop] at hk
  refine ⟨k, ?_, ?_⟩
  · simp only [List.length_take, List.length_drop]; omega
  · simp only [List.getElem_take, List.getElem_drop]

end BeatAvg.Check

namespace BeatAvg.Check

theorem all_take_add {α : Type} (f : α → Bool) (l : List α) (lo n m : Nat)
    (h1 : ((l.drop lo).take n).all f = true) (h2 : ((l.drop (lo + n)).take m).all f = true) :
    ((l.drop lo).take (n + m)).all f = true := by
  rw [List.all_eq_true] at h1 h2 ⊢
  intro x hx
  rw [List.mem_iff_getElem] at hx
  obtain ⟨k, hk, rfl⟩ := hx
  simp only [List.length_take, List.length_drop] at hk
  by_cases hkn : k < n
  · apply h1
    rw [List.mem_iff_getElem]
    refine ⟨k, ?_, ?_⟩
    · simp only [List.length_take, List.length_drop]; omega
    · simp only [List.getElem_take, List.getElem_drop]
  · apply h2
    rw [List.mem_iff_getElem]
    refine ⟨k - n, ?_, ?_⟩
    · simp only [List.length_take, List.length_drop]; omega
    · simp only [List.getElem_take, List.getElem_drop]
      congr 1
      omega

theorem recsK7OK_add {T : K7Tab} {qscale den6 d14 lamN lamD : Nat} {recs : List TreeRec} {lo n m : Nat}
    (h1 : recsK7OK T qscale den6 d14 lamN lamD recs lo n = true)
    (h2 : recsK7OK T qscale den6 d14 lamN lamD recs (lo + n) m = true) :
    recsK7OK T qscale den6 d14 lamN lamD recs lo (n + m) = true :=
  all_take_add _ recs lo n m h1 h2

/-- Record `j` of a list of tree records (a default record past the end). -/
def recAt (recs : List TreeRec) (j : Nat) : TreeRec := (recs.drop j).headD (0, [], 0, [])

/-- `nextTok` with the state first matched against `0` / `s + 1`, so that the kernel continues from a literal: with
`nextTok` the walk threads an unevaluated chain `((s >>> 10) >>> 10) …` and some trees became 30x slower (structural
comparisons of such chains in the kernel's caches). -/
def nextTokS (s : Nat) : Nat × Nat :=
  match s with
  | 0 => (0, 0)
  | s + 1 => ((s + 1) &&& 1023, (s + 1) >>> 10)

theorem nextTokS_eq : nextTokS = nextTok := by
  funext s
  cases s <;> rfl

/-- The tree of record `j` at level 7 (read with `nextTokS`). -/
def treeK7OK (recs : List TreeRec) (j : Nat) : Bool := treeOK nextTokS 7 (tupList 6).length (tupList 7) (recAt recs j)

/-- The leaves `lo, …, lo + n - 1` of record `j`. -/
def leavesK7OK (T : K7Tab) (qscale den6 d14 lamN lamD : Nat) (recs : List TreeRec) (j lo n : Nat) : Bool :=
  (((recAt recs j).2.2.2.drop lo).take n).all (leafK7OK T qscale den6 d14 lamN lamD)

theorem leavesK7OK_add {T : K7Tab} {qscale den6 d14 lamN lamD : Nat} {recs : List TreeRec} {j lo n m : Nat}
    (h1 : leavesK7OK T qscale den6 d14 lamN lamD recs j lo n = true)
    (h2 : leavesK7OK T qscale den6 d14 lamN lamD recs j (lo + n) m = true) :
    leavesK7OK T qscale den6 d14 lamN lamD recs j lo (n + m) = true :=
  all_take_add _ _ lo n m h1 h2

/-- A record from its tree and its leaves. -/
theorem recK7_of {T : K7Tab} {qscale den6 d14 lamN lamD : Nat} {recs : List TreeRec} {j n : Nat}
    (ht : treeK7OK recs j = true) (hn : (recAt recs j).2.2.2.length ≤ n)
    (hl : leavesK7OK T qscale den6 d14 lamN lamD recs j 0 n = true) :
    recsK7OK T qscale den6 d14 lamN lamD recs j 1 = true := by
  unfold leavesK7OK at hl
  unfold treeK7OK at ht
  rw [nextTokS_eq] at ht
  rw [List.drop_zero, List.take_of_length_le hn] at hl
  unfold recsK7OK
  unfold recAt at ht hl
  cases h : recs.drop j with
  | nil => rfl
  | cons r rest =>
    rw [h] at ht hl
    simp only [List.headD_cons] at ht hl
    simp only [List.take_succ_cons, List.take_zero, List.all_cons, List.all_nil, ht, hl,
      Bool.and_self]

end BeatAvg.Check
