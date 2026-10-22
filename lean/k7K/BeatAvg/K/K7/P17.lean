import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_17 : (top.getD 17 dfltB).flags.length = 121 := by decide +kernel

theorem p_17 : qrowP T top 17 0 121 160 42 = true := by decide +kernel

end BeatAvg.K.K7
