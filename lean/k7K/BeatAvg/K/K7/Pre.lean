import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem chain3 : chainOK 3 [0] [l4, l5, l6] = true := by decide +kernel

theorem par : l7.map (·.1) = chainList [0] [l4, l5, l6] := by decide +kernel

theorem pre6 : directPre 6 low 1 den6 qscale = true := by decide +kernel

theorem lowOK : low.all (fun b => b.wf 7 && decide (2 * b.m - b.t ≤ 6)) = true := by decide +kernel

theorem topOK : top.all (fun b => b.wf 7 && enumOK b.m && b.t == 5 && b.m == 6) = true := by decide +kernel

theorem b14OK : (b14.wf 7 && enumOK b14.m && b14.t == 1 && b14.m == 4 && b14.D 7 == d14) = true := by decide +kernel

theorem sorted : s6Sorted T = true := by decide +kernel

theorem tab14 : tab14OK T b14 = true := by decide +kernel

theorem topLen : top.length = 30 := by decide +kernel

theorem nrecs : l7.length ≤ 1290 := by decide +kernel

theorem n6le : T.n6 ≤ 65 * 20 := by decide +kernel

end BeatAvg.K.K7
