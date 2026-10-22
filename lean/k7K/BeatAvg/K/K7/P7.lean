import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_7 : (top.getD 7 dfltB).flags.length = 242 := by decide +kernel

theorem p_7 : qrowP T top 7 0 242 160 42 = true := by decide +kernel

end BeatAvg.K.K7
