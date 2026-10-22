import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem f6_0_0 : f6OK T low den6 qscale 0 1 = true := by decide +kernel

theorem f6_0_1 : f6OK T low den6 qscale 1 1 = true := by decide +kernel

theorem f6_0_2 : f6OK T low den6 qscale 2 1 = true := by decide +kernel

theorem f6_0_3 : f6OK T low den6 qscale 3 1 = true := by decide +kernel

theorem f6_0_4 : f6OK T low den6 qscale 4 1 = true := by decide +kernel

theorem f6_0_5 : f6OK T low den6 qscale 5 1 = true := by decide +kernel

theorem f6_0_6 : f6OK T low den6 qscale 6 1 = true := by decide +kernel

theorem f6_0_7 : f6OK T low den6 qscale 7 1 = true := by decide +kernel

theorem f6_0_8 : f6OK T low den6 qscale 8 1 = true := by decide +kernel

theorem f6_0_9 : f6OK T low den6 qscale 9 1 = true := by decide +kernel

theorem f6_0_10 : f6OK T low den6 qscale 10 1 = true := by decide +kernel

theorem f6_0_11 : f6OK T low den6 qscale 11 1 = true := by decide +kernel

theorem f6_0_12 : f6OK T low den6 qscale 12 1 = true := by decide +kernel

theorem f6_0_13 : f6OK T low den6 qscale 13 1 = true := by decide +kernel

theorem f6_0_14 : f6OK T low den6 qscale 14 1 = true := by decide +kernel

theorem f6_0_15 : f6OK T low den6 qscale 15 1 = true := by decide +kernel

theorem f6_0_16 : f6OK T low den6 qscale 16 1 = true := by decide +kernel

theorem f6_0_17 : f6OK T low den6 qscale 17 1 = true := by decide +kernel

theorem f6_0_18 : f6OK T low den6 qscale 18 1 = true := by decide +kernel

theorem f6_0_19 : f6OK T low den6 qscale 19 1 = true := by decide +kernel

theorem f6_0 : f6OK T low den6 qscale (0 * 20) 20 = true := f6OK_succ f6_0_0 (f6OK_succ f6_0_1 (f6OK_succ f6_0_2 (f6OK_succ f6_0_3 (f6OK_succ f6_0_4 (f6OK_succ f6_0_5 (f6OK_succ f6_0_6 (f6OK_succ f6_0_7 (f6OK_succ f6_0_8 (f6OK_succ f6_0_9 (f6OK_succ f6_0_10 (f6OK_succ f6_0_11 (f6OK_succ f6_0_12 (f6OK_succ f6_0_13 (f6OK_succ f6_0_14 (f6OK_succ f6_0_15 (f6OK_succ f6_0_16 (f6OK_succ f6_0_17 (f6OK_succ f6_0_18 (f6_0_19)))))))))))))))))))

end BeatAvg.K.K7
