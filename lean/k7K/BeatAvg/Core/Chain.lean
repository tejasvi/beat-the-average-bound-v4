import BeatAvg.Core.Direct

/-!
# Chains of tree levels and packed data (core Lean only)
-/

namespace BeatAvg.Check

/-- Tree records of one level: `(parent bits, perm, token stream, leaves)`. -/
abbrev TreeRec := Nat × List Nat × Nat × List Nat

/-- Levels `k + 1, k + 2, …`: each level's parents are the previous list in order, and every tree is accepted. -/
def chainOK : Nat → List Nat → List (List TreeRec) → Bool
  | _, _, [] => true
  | k, parents, recs :: rest =>
    enumOK (k + 1) && recs.map (·.1) == parents &&
      recs.all (treeOK nextTok (k + 1) (tupList k).length (tupList (k + 1))) &&
      chainOK (k + 1) (recs.flatMap (·.2.2.2)) rest

/-- The list of patterns after the last level. -/
def chainList : List Nat → List (List TreeRec) → List Nat
  | parents, [] => parents
  | _, recs :: rest => chainList (recs.flatMap (·.2.2.2)) rest

/-- `count` fields of `w` bits of `x`, least significant first. -/
def unpack (w : Nat) : Nat → Nat → List Nat
  | 0, _ => []
  | c + 1, x => (x &&& (2 ^ w - 1)) :: unpack w c (x >>> w)

/-- Zigzag decoding of a signed integer. -/
def unzig (z : Nat) : Int := if z % 2 = 0 then (z / 2 : Nat) else -((z / 2 : Nat) : Int) - 1

/-- A packed block: `t`, `m`, the number `n` of flags, the flags packed as `(bits | positions << wb)` in
fields of `wb + m` bits, the term multipliers, and the term vectors (zigzag fields of `wv` bits). -/
structure PBlock where
  t : Nat
  m : Nat
  n : Nat
  wb : Nat
  flags : Nat
  wv : Nat
  terms : List (Nat × Nat)

def PBlock.unpackB (b : PBlock) : DBlock where
  t := b.t
  m := b.m
  flags := (unpack (b.wb + b.m) b.n b.flags).map fun f => (f &&& (2 ^ b.wb - 1), f >>> b.wb)
  terms := b.terms.map fun p => (p.1, (unpack b.wv b.n p.2).map unzig)

/-- A packed tree record: parent bits, perm (8-bit fields), number of new tuples, token stream, leaves
(fields of `wl` bits), number of leaves. -/
structure PRec where
  P : Nat
  perm : Nat
  np : Nat
  toks : Nat
  wl : Nat
  leaves : Nat
  nl : Nat

def PRec.unpackR (r : PRec) : TreeRec := (r.P, unpack 8 r.np r.perm, r.toks, unpack r.wl r.nl r.leaves)

end BeatAvg.Check
