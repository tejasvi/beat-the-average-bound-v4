import BeatAvg.K.K7.Defs
import BeatAvg.Core.KPack

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem qlen_6 : (top.getD 6 dfltB).flags.length = 283 := by decide +kernel

theorem p_6 : qrowP T top 6 0 283 160 42 = true := by decide +kernel

end BeatAvg.K.K7
