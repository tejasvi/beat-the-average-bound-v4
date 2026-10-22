import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_27 : (top.getD 27 dfltB).flags.length = 57 := by decide +kernel

theorem p_27 : qrowP T top 27 0 57 160 42 = true := by decide +kernel

end BeatAvg.K.K7
