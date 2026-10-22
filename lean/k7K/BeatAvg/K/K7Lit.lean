import BeatAvg.Core.K7K

/-! The literal tables `del7` and `tab14` equal their definitions (kernel computation, core Lean only). -/

namespace BeatAvg.Check

theorem del7_eq : del7 = (List.range 7).map fun u => (delIdx 7).getD u [] := by decide +kernel

theorem tab14_eq : tab14 = tripleTable (tupList 7) (tupList 4) 7 1 4 := by decide +kernel

end BeatAvg.Check
