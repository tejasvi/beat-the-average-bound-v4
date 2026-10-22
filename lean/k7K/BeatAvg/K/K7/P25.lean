import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_25 : (top.getD 25 dfltB).flags.length = 120 := by decide +kernel

theorem p_25 : qrowP T top 25 0 120 160 42 = true := by decide +kernel

end BeatAvg.K.K7
