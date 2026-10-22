import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_14 : (top.getD 14 dfltB).flags.length = 31 := by decide +kernel

theorem p_14 : qrowP T top 14 0 31 160 42 = true := by decide +kernel

end BeatAvg.K.K7
