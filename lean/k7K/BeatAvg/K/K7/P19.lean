import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_19 : (top.getD 19 dfltB).flags.length = 228 := by decide +kernel

theorem p_19 : qrowP T top 19 0 228 160 42 = true := by decide +kernel

end BeatAvg.K.K7
