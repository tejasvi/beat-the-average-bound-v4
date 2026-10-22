import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_29 : (top.getD 29 dfltB).flags.length = 92 := by decide +kernel

theorem p_29 : qrowP T top 29 0 92 160 42 = true := by decide +kernel

end BeatAvg.K.K7
