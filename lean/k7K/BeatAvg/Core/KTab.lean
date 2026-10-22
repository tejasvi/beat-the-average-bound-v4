import BeatAvg.Core.Hier

/-!
# Tables for kernel evaluation (core Lean only)

In the kernel, random access is cheap only in a single natural number (one shift and one mask) or along the
branches of a literal binary tree. Tables are such numbers and trees; their meaning is never derived from how they
were built: every entry that is used is compared with its definition by a kernel check.
-/

namespace BeatAvg.Check

/-- Binary trees of natural numbers. -/
inductive KT where
  | leaf : Nat → KT
  | node : KT → KT → KT

/-- The leaf at index `i` of a tree of depth `d` (bits of `i` from the most significant). -/
def KT.get : Nat → KT → Nat → Nat
  | _, .leaf x, _ => x
  | 0, .node _ _, _ => 0
  | d + 1, .node l r, i => if (i >>> d) % 2 = 0 then KT.get d l i else KT.get d r i

/-- Field `i` of width `w`. -/
def fld (x w i : Nat) : Nat := (x >>> (w * i)) &&& (2 ^ w - 1)

/-- A signed field, stored with the offset `2 ^ (w - 1)`. -/
def sfld (x w i : Nat) : Int := (fld x w i : Int) - ((2 ^ (w - 1) : Nat) : Int)

/-- Binary search for `key` among the first `hi` fields (increasing) of width `w`: the last index whose field is at
most `key` (the caller compares the field with `key`). -/
def bsearch (S w key : Nat) : Nat → Nat → Nat → Nat
  | 0, lo, _ => lo
  | fuel + 1, lo, hi =>
    if lo + 1 < hi then
      let mid := (lo + hi) / 2
      if fld S w mid ≤ key then bsearch S w key fuel mid hi else bsearch S w key fuel lo mid
    else lo

/-- Top flags of one pattern: a count (12 bits), then entries `(position, block, index)` in fields of 28 bits
(4 + 12 + 12 bits). -/
def decTop (x : Nat) : List (Nat × Nat × Nat) :=
  (List.range (x &&& 4095)).map fun k =>
    let e := fld (x >>> 12) 28 k
    (e &&& 15, (e >>> 4) &&& 4095, e >>> 16)

/-- The top term from lists of flags and a function giving the matrix entries (`topTermL` with a function). -/
def topTermF (np : Nat) (L : Nat → List (Nat × Nat × Nat)) (qf : Nat → Nat → Nat → Int) : Int :=
  ((List.range np).map fun b => ((L b).map fun e =>
    ((L (unpos b e.1)).map fun e' =>
      if e'.1 = posIn (unpos b e.1) b ∧ e'.2.1 = e.2.1 then qf e.2.1 e.2.2 e'.2.2 else 0).sum).sum).sum

end BeatAvg.Check
