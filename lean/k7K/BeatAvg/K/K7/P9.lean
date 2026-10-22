import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_9 : (top.getD 9 dfltB).flags.length = 185 := by decide +kernel

theorem p_9 : qrowP T top 9 0 185 160 42 = true := by decide +kernel

end BeatAvg.K.K7
