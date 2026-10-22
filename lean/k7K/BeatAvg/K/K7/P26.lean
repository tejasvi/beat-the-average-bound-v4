import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_26 : (top.getD 26 dfltB).flags.length = 40 := by decide +kernel

theorem p_26 : qrowP T top 26 0 40 160 42 = true := by decide +kernel

end BeatAvg.K.K7
