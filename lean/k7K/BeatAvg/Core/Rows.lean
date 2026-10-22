/-!
# Gordan certificates: rows and checks (core Lean only)

Rows are functions `Nat → Int` (coordinate `j ↦ r_j`). Row ids of a certificate: `0, …, k-1` are `x_0 > 0` and
`x_i - x_{i-1} > 0`; `k + t` is `±L_τ > 0` for the `t`-th tuple `τ` of the list.
-/

namespace BeatAvg.Check

/-- The indicator row `e_i`. -/
def ind (i j : Nat) : Int := if j = i then 1 else 0

/-- Row `i` of the order part: `x_0 > 0` for `i = 0`, `x_i - x_{i-1} > 0` for `i ≥ 1`. -/
def orderRow (i : Nat) (j : Nat) : Int := ind i j - (if i = 0 then 0 else ind (i - 1) j)

/-- The row `±(2 e_d - e_a - e_b - e_c)` of the quadruple `(d, a, b, c)`. -/
def tupRow (q : Nat × Nat × Nat × Nat) (pos : Bool) (j : Nat) : Int :=
  let v : Int := 2 * ind q.1 j - ind q.2.1 j - ind q.2.2.1 j - ind q.2.2.2 j
  if pos then v else -v

/-- Acceptance of a Gordan certificate: nonempty, positive multipliers, and `Σ mult · row = 0` on `0, …, k-1`. -/
def gordanOK (k : Nat) (cert : List ((Nat → Int) × Nat)) : Bool :=
  !cert.isEmpty && cert.all (fun p => decide (0 < p.2)) &&
    (List.range k).all fun j => (cert.map fun p => (p.2 : Int) * p.1 j).sum == 0

/-- The rows given by a certificate's row ids, if all ids are known to the oracle `rowOf`. -/
def certRows (rowOf : Nat → Option (Nat → Int)) : List (Nat × Nat) → Option (List ((Nat → Int) × Nat))
  | [] => some []
  | (rid, m) :: rest =>
    match rowOf rid, certRows rowOf rest with
    | some r, some rs => some ((r, m) :: rs)
    | _, _ => none

/-- Gordan check with rows from an oracle. -/
def certOK (k : Nat) (rowOf : Nat → Option (Nat → Int)) (cert : List (Nat × Nat)) : Bool :=
  match certRows rowOf cert with
  | some rows => gordanOK k rows
  | none => false

/-- The rows of `S(M)` for the pattern with bits `M` (row ids as in the certificate format). -/
def patRow (k : Nat) (l : List (Nat × Nat × Nat × Nat)) (M : Nat) (rid : Nat) : Option (Nat → Int) :=
  if rid < k then some (orderRow rid)
  else match l[rid - k]? with
    | some q => some (tupRow q (M.testBit (rid - k)))
    | none => none

/-- A Gordan certificate for `S(M)`. -/
def exclOK (k : Nat) (l : List (Nat × Nat × Nat × Nat)) (M : Nat) (cert : List (Nat × Nat)) : Bool :=
  certOK k (patRow k l M) cert

end BeatAvg.Check
