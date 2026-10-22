import BeatAvg.Core.Hier

/-!
# Parallel evaluation helpers (core Lean only)

`Task.spawn f` is logically `⟨f ()⟩` and `Task.get` is the projection, so each function below equals its sequential
version (lemmas in `BeatAvg.Check.Par`); compiled code evaluates the pieces in parallel tasks. Pieces have length
`k + 1`.
-/

namespace BeatAvg.Check

/-- Consecutive pieces of length `k + 1` (`fuel` bounds the number of pieces). -/
def chunkL {α : Type} (k : Nat) : Nat → List α → List (List α)
  | 0, _ => []
  | fuel + 1, l => if l.isEmpty then [] else l.take (k + 1) :: chunkL k fuel (l.drop (k + 1))

/-- `List.map`, one task per piece. -/
def parMapL {α β : Type} (k : Nat) (f : α → β) (l : List α) : List β :=
  (((chunkL k l.length l).map fun c => Task.spawn fun _ => c.map f).map Task.get).flatten

/-- `List.all`, one task per piece. -/
def parAllL {α : Type} (k : Nat) (f : α → Bool) (l : List α) : Bool :=
  ((chunkL k l.length l).map fun c => Task.spawn fun _ => c.all f).all Task.get

/-- `Array.map`, one task per piece. -/
def parMapA {α β : Type} (k : Nat) (f : α → β) (A : Array α) : Array β := (parMapL k f A.toList).toArray

/-- The work of `join8` for the 7-pattern number `p` (the last restriction). -/
def join8At (D : Array (Array Nat)) (ch : Std.HashMap Nat (Array Nat)) (body : Array Nat → Bool) (p : Nat) : Bool :=
    let d := D.getD p #[]
    (ch.getD (d.getD 0 0) #[]).all fun c0 =>
    let e0 := D.getD c0 #[]
    (ch.getD (d.getD 1 0) #[]).all fun c1 =>
    let e1 := D.getD c1 #[]
    !(e0.getD 0 0 == e1.getD 0 0) ||
    (ch.getD (d.getD 2 0) #[]).all fun c2 =>
    let e2 := D.getD c2 #[]
    !(e0.getD 1 0 == e2.getD 0 0 && e1.getD 1 0 == e2.getD 1 0) ||
    (ch.getD (d.getD 3 0) #[]).all fun c3 =>
    let e3 := D.getD c3 #[]
    !(e0.getD 2 0 == e3.getD 0 0 && e1.getD 2 0 == e3.getD 1 0 && e2.getD 2 0 == e3.getD 2 0) ||
    (ch.getD (d.getD 4 0) #[]).all fun c4 =>
    let e4 := D.getD c4 #[]
    !(e0.getD 3 0 == e4.getD 0 0 && e1.getD 3 0 == e4.getD 1 0 && e2.getD 3 0 == e4.getD 2 0 &&
      e3.getD 3 0 == e4.getD 3 0) ||
    (ch.getD (d.getD 5 0) #[]).all fun c5 =>
    let e5 := D.getD c5 #[]
    !(e0.getD 4 0 == e5.getD 0 0 && e1.getD 4 0 == e5.getD 1 0 && e2.getD 4 0 == e5.getD 2 0 &&
      e3.getD 4 0 == e5.getD 3 0 && e4.getD 4 0 == e5.getD 4 0) ||
    (ch.getD (d.getD 6 0) #[]).all fun c6 =>
    let e6 := D.getD c6 #[]
    !(e0.getD 5 0 == e6.getD 0 0 && e1.getD 5 0 == e6.getD 1 0 && e2.getD 5 0 == e6.getD 2 0 &&
      e3.getD 5 0 == e6.getD 3 0 && e4.getD 5 0 == e6.getD 4 0 && e5.getD 5 0 == e6.getD 5 0) ||
    body #[c0, c1, c2, c3, c4, c5, c6, p]

/-- `chainOK` with the trees of each level checked in parallel pieces. -/
def chainOKP (k : Nat) : Nat → List Nat → List (List TreeRec) → Bool
  | _, _, [] => true
  | j, parents, recs :: rest =>
    enumOK (j + 1) && recs.map (·.1) == parents &&
      parAllL k (treeOK nextTok (j + 1) (tupList j).length (tupList (j + 1))) recs &&
      chainOKP k (j + 1) (recs.flatMap (·.2.2.2)) rest

end BeatAvg.Check
