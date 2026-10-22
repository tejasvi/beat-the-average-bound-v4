import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_20 : (top.getD 20 dfltB).flags.length = 53 := by decide +kernel

theorem p_20 : qrowP T top 20 0 53 160 42 = true := by decide +kernel

end BeatAvg.K.K7
