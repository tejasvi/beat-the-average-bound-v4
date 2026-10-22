import BeatAvg.Core.Hier9P
import BeatAvg.Data.K9

/-! Native evaluation of the k = 9 check, in parallel tasks (`checkK9P`, equal to `checkK9` by
`BeatAvg.Check.checkK9P_eq`); the trees are those of the certificate with 8 points. -/

open BeatAvg.Check BeatAvg.Data.K9 in
theorem BeatAvg.N.K9.check_ok : checkK9P BeatAvg.Data.K8.levels lower mid top excl8 excl9 S core lamN lamD capN capD
    den7 qscale = true := by native_decide
