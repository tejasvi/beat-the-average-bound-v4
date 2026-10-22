import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_16 : (top.getD 16 dfltB).flags.length = 232 := by decide +kernel

theorem p_16 : qrowP T top 16 0 232 160 42 = true := by decide +kernel

end BeatAvg.K.K7
