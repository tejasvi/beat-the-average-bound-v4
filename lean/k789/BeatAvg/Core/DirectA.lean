import BeatAvg.Core.Hier9

/-!
# The direct check with the faster evaluation (core Lean only)
-/

namespace BeatAvg.Check

/-- `directOKT` with the array-based evaluation of `valNum`. -/
def directOKA (k : Nat) (blocks : List DBlock) (lamN lamD den qscale : Nat) (P : List Nat) : Bool :=
  directPre k blocks lamD den qscale && blocks.all (fun b => flagIdxOK b.flags (flagIdx b.flags)) &&
    let lk := tupList k
    let pre := blocks.map (preA lk k)
    P.all fun M => decide (valNumA lk blocks pre den qscale k M * lamD ≤ (lamN * den : Nat))

end BeatAvg.Check
