import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_23 : (top.getD 23 dfltB).flags.length = 65 := by decide +kernel

theorem p_23 : qrowP T top 23 0 65 160 42 = true := by decide +kernel

end BeatAvg.K.K7
