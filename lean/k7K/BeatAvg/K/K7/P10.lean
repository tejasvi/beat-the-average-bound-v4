import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_10 : (top.getD 10 dfltB).flags.length = 74 := by decide +kernel

theorem p_10 : qrowP T top 10 0 74 160 42 = true := by decide +kernel

end BeatAvg.K.K7
