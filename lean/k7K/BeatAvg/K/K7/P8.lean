import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_8 : (top.getD 8 dfltB).flags.length = 171 := by decide +kernel

theorem p_8 : qrowP T top 8 0 171 160 42 = true := by decide +kernel

end BeatAvg.K.K7
