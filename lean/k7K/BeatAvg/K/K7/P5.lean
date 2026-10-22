import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_5 : (top.getD 5 dfltB).flags.length = 95 := by decide +kernel

theorem p_5 : qrowP T top 5 0 95 160 42 = true := by decide +kernel

end BeatAvg.K.K7
