import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_4 : (top.getD 4 dfltB).flags.length = 211 := by decide +kernel

theorem p_4 : qrowP T top 4 0 211 160 42 = true := by decide +kernel

end BeatAvg.K.K7
