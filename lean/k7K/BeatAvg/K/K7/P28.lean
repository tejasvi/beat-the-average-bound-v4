import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_28 : (top.getD 28 dfltB).flags.length = 67 := by decide +kernel

theorem p_28 : qrowP T top 28 0 67 160 42 = true := by decide +kernel

end BeatAvg.K.K7
