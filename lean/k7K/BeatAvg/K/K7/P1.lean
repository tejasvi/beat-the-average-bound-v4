import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_1 : (top.getD 1 dfltB).flags.length = 116 := by decide +kernel

theorem p_1 : qrowP T top 1 0 116 160 42 = true := by decide +kernel

end BeatAvg.K.K7
