import BeatAvg.Core.Rows

/-!
# Extension trees: the walk (core Lean only)

A tree for a parent pattern `P` of `k - 1` points decides the `n` tuples of `T_k` that contain the last point, in the
order `perm`. Tokens, read from a stream with `next`: `2` = both signs (subtree for bit 1, then for bit 0);
`b ∈ {0, 1}` followed by a Gordan certificate `c, row₁, mult₁, …` refuting the other sign. The walk compares the
leaves, in order, with a given list of encoded `k`-patterns.
-/

namespace BeatAvg.Check

variable {S : Type}

/-- Read `c` pairs `(row id, multiplier)` from a token stream. -/
def readPairs (next : S → Nat × S) : Nat → S → List (Nat × Nat) × S
  | 0, s => ([], s)
  | c + 1, s =>
    match next s with
    | (r, s) =>
      match next s with
      | (m, s) =>
        match readPairs next c s with
        | (rest, s) => ((r, m) :: rest, s)

/-- One extension tree: `k` points, `np` parent tuples, the tuples `l` of `T_k` (parent tuples first), the parent
bits `P`, and the order `perm` in which the new tuples `np + u` are decided. -/
structure TreeCtx where
  k : Nat
  np : Nat
  l : List (Nat × Nat × Nat × Nat)
  P : Nat
  perm : List Nat

/-- Rows available at a node: order rows, parent tuples with the parent's signs, decided new tuples with their
signs, and the tuple `u` being decided with the sign `bad`. -/
def nodeRow (C : TreeCtx) (amask aval u : Nat) (bad : Bool) (rid : Nat) : Option (Nat → Int) :=
  if rid < C.k then some (orderRow rid)
  else
    match C.l[rid - C.k]? with
    | none => none
    | some q =>
      if rid - C.k < C.np then some (tupRow q (C.P.testBit (rid - C.k)))
      else if rid - C.k - C.np = u then some (tupRow q bad)
      else if amask.testBit (rid - C.k - C.np) then some (tupRow q (aval.testBit (rid - C.k - C.np)))
      else none

/-- The walk. `rem` tuples remain; `i` have been decided (`amask`, with values `aval`). -/
def walk (C : TreeCtx) (next : S → Nat × S) :
    Nat → Nat → Nat → Nat → S → List Nat → Option (S × List Nat)
  | 0, _, _, aval, s, leaves =>
    match leaves with
    | x :: rest => if x == 2 ^ C.np * aval + C.P then some (s, rest) else none
    | [] => none
  | rem + 1, i, amask, aval, s, leaves =>
    match next s with
    | (tok, s) =>
      if tok == 2 then
        match walk C next rem (i + 1) (amask ||| 2 ^ C.perm.getD i 0) (aval ||| 2 ^ C.perm.getD i 0) s leaves with
        | some (s, leaves) => walk C next rem (i + 1) (amask ||| 2 ^ C.perm.getD i 0) aval s leaves
        | none => none
      else if tok ≤ 1 then
        match next s with
        | (c, s) =>
          match readPairs next c s with
          | (cert, s) =>
            if certOK C.k (nodeRow C amask aval (C.perm.getD i 0) (tok == 0)) cert then
              walk C next rem (i + 1) (amask ||| 2 ^ C.perm.getD i 0)
                (if tok == 1 then aval ||| 2 ^ C.perm.getD i 0 else aval) s leaves
            else none
      else none

end BeatAvg.Check

namespace BeatAvg.Check

/-- Token stream as a natural number with 10-bit fields, least significant first. -/
def nextTok (s : Nat) : Nat × Nat := (s &&& 1023, s >>> 10)

/-- Check of one tree record `(P, perm, tokens, leaves)` at level `k` with `np` parent tuples: `P` has `np` bits,
`perm` is a permutation of the new tuples, and the walk matches exactly the list of leaves. -/
def treeOK {S : Type} (next : S → Nat × S) (k np : Nat) (l : List (Nat × Nat × Nat × Nat))
    (r : Nat × List Nat × S × List Nat) : Bool :=
  decide (r.1 < 2 ^ np) && decide r.2.1.Nodup && decide (r.2.1.length = l.length - np) &&
    (List.range (l.length - np)).all (fun v => r.2.1.contains v) &&
    match walk ⟨k, np, l, r.1, r.2.1⟩ next (l.length - np) 0 0 0 r.2.2.1 r.2.2.2 with
    | some (_, rest) => rest.isEmpty
    | none => false

end BeatAvg.Check
