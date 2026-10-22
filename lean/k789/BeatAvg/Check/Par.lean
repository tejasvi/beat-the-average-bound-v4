import BeatAvg.Check.K9e
import BeatAvg.Core.Hier9P

/-!
# The parallel evaluation equals the sequential one
-/

namespace BeatAvg.Check

theorem chunkL_flatten {α : Type} (k : Nat) : ∀ (fuel : Nat) (l : List α), l.length ≤ fuel * (k + 1) →
    (chunkL k fuel l).flatten = l
  | 0, l, h => by
    have : l = [] := List.eq_nil_of_length_eq_zero (by simpa using h)
    simp [chunkL, this]
  | fuel + 1, l, h => by
    unfold chunkL
    by_cases hl : l.isEmpty
    · rw [if_pos hl]
      simp [List.isEmpty_iff.1 hl]
    · rw [if_neg hl, List.flatten_cons,
        chunkL_flatten k fuel (l.drop (k + 1)) (by simp only [List.length_drop]; rw [Nat.add_mul] at h; omega),
        List.take_append_drop]

theorem chunkL_flatten' {α : Type} (k : Nat) (l : List α) : (chunkL k l.length l).flatten = l :=
  chunkL_flatten k l.length l (Nat.le_mul_of_pos_right _ (Nat.succ_pos k))

theorem parMapL_eq {α β : Type} (k : Nat) (f : α → β) (l : List α) : parMapL k f l = l.map f := by
  unfold parMapL
  rw [List.map_map]
  have : (Task.get ∘ fun c : List α => Task.spawn fun _ => c.map f) = List.map f := rfl
  rw [this, ← List.map_flatten, chunkL_flatten']

theorem parAllL_eq {α : Type} (k : Nat) (f : α → Bool) (l : List α) : parAllL k f l = l.all f := by
  unfold parAllL
  rw [List.all_map]
  have : (Task.get ∘ fun c : List α => Task.spawn fun _ => c.all f) = fun c => c.all f := rfl
  rw [this]
  conv_rhs => rw [← chunkL_flatten' k l]
  rw [List.all_flatten]

theorem parMapA_eq {α β : Type} (k : Nat) (f : α → β) (A : Array α) : parMapA k f A = A.map f := by
  unfold parMapA
  rw [parMapL_eq]
  apply Array.ext'
  simp

theorem join8_eq (D : Array (Array Nat)) (ch : Std.HashMap Nat (Array Nat)) (body : Array Nat → Bool) :
    join8 D ch body = (List.range D.size).all (join8At D ch body) := rfl

theorem chainOKP_eq (k : Nat) : ∀ (j : Nat) (parents : List Nat) (levels : List (List TreeRec)),
    chainOKP k j parents levels = chainOK j parents levels
  | _, _, [] => rfl
  | j, parents, recs :: rest => by
    simp only [chainOKP, chainOK, parAllL_eq, chainOKP_eq k (j + 1) _ rest]

theorem checkK9P_eq (levels : List (List TreeRec)) (lower mid top : List DBlock)
    (excl8 excl9 : List (Nat × List (Nat × Nat))) (S : Array (Array Nat)) (core : Array (Nat × Array Nat))
    (lamN lamD capN capD den7 qscale : Nat) :
    checkK9P levels lower mid top excl8 excl9 S core lamN lamD capN capD den7 qscale =
      checkK9 levels lower mid top excl8 excl9 S core lamN lamD capN capD den7 qscale := by
  unfold checkK9P checkK9
  simp only [chainOKP_eq, parMapA_eq, parMapL_eq, parAllL_eq, join8_eq]
  rfl

end BeatAvg.Check
