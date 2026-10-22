import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1100 : treeK7OK l7 1100 = true := by decide +kernel

theorem n_1100 : (recAt l7 1100).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1100_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 0 16 = true := by decide +kernel

theorem v_1100_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 16 16 = true := by decide +kernel

theorem v_1100_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 32 16 = true := by decide +kernel

theorem v_1100_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 48 16 = true := by decide +kernel

theorem v_1100_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 64 16 = true := by decide +kernel

theorem v_1100_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 80 16 = true := by decide +kernel

theorem v_1100_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 96 16 = true := by decide +kernel

theorem v_1100_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 112 16 = true := by decide +kernel

theorem v_1100_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1100 128 16 = true := by decide +kernel

theorem r_1100 : recsK7OK T qscale den6 d14 lamN lamD l7 1100 1 = true := recK7_of (n := 144) t_1100 n_1100 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1100_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1100_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1100_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1100_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1100_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1100_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1100_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1100_7 (v_1100_8)))))))))

theorem t_1101 : treeK7OK l7 1101 = true := by decide +kernel

theorem n_1101 : (recAt l7 1101).2.2.2.length ≤ 192 := by decide +kernel

theorem v_1101_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 0 16 = true := by decide +kernel

theorem v_1101_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 16 16 = true := by decide +kernel

theorem v_1101_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 32 16 = true := by decide +kernel

theorem v_1101_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 48 16 = true := by decide +kernel

theorem v_1101_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 64 16 = true := by decide +kernel

theorem v_1101_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 80 16 = true := by decide +kernel

theorem v_1101_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 96 16 = true := by decide +kernel

theorem v_1101_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 112 16 = true := by decide +kernel

theorem v_1101_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 128 16 = true := by decide +kernel

theorem v_1101_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 144 16 = true := by decide +kernel

theorem v_1101_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 160 16 = true := by decide +kernel

theorem v_1101_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1101 176 16 = true := by decide +kernel

theorem r_1101 : recsK7OK T qscale den6 d14 lamN lamD l7 1101 1 = true := recK7_of (n := 192) t_1101 n_1101 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_1101_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_1101_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_1101_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_1101_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_1101_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_1101_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_1101_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_1101_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_1101_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_1101_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_1101_10 (v_1101_11))))))))))))

theorem t_1102 : treeK7OK l7 1102 = true := by decide +kernel

theorem n_1102 : (recAt l7 1102).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1102_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1102 0 16 = true := by decide +kernel

theorem v_1102_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1102 16 16 = true := by decide +kernel

theorem v_1102_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1102 32 16 = true := by decide +kernel

theorem v_1102_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1102 48 16 = true := by decide +kernel

theorem v_1102_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1102 64 16 = true := by decide +kernel

theorem r_1102 : recsK7OK T qscale den6 d14 lamN lamD l7 1102 1 = true := recK7_of (n := 80) t_1102 n_1102 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1102_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1102_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1102_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1102_3 (v_1102_4)))))

theorem rs_1100 : recsK7OK T qscale den6 d14 lamN lamD l7 1100 3 = true := recsK7OK_succ (lo := 1100) (n := 2) r_1100 (recsK7OK_succ (lo := 1101) (n := 1) r_1101 (r_1102))

end BeatAvg.K.K7
