import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_13 : (top.getD 13 dfltB).flags.length = 97 := by decide +kernel

theorem p_13 : qrowP T top 13 0 97 160 42 = true := by decide +kernel

end BeatAvg.K.K7
