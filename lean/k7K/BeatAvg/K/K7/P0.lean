import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_0 : (top.getD 0 dfltB).flags.length = 158 := by decide +kernel

theorem p_0 : qrowP T top 0 0 158 160 42 = true := by decide +kernel

end BeatAvg.K.K7
