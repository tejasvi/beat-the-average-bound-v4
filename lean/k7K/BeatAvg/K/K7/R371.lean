import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1120 : treeK7OK l7 1120 = true := by decide +kernel

theorem n_1120 : (recAt l7 1120).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1120_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1120 0 16 = true := by decide +kernel

theorem v_1120_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1120 16 16 = true := by decide +kernel

theorem v_1120_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1120 32 16 = true := by decide +kernel

theorem v_1120_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1120 48 16 = true := by decide +kernel

theorem r_1120 : recsK7OK T qscale den6 d14 lamN lamD l7 1120 1 = true := recK7_of (n := 64) t_1120 n_1120 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1120_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1120_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1120_2 (v_1120_3))))

theorem t_1121 : treeK7OK l7 1121 = true := by decide +kernel

theorem n_1121 : (recAt l7 1121).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1121_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1121 0 16 = true := by decide +kernel

theorem v_1121_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1121 16 16 = true := by decide +kernel

theorem r_1121 : recsK7OK T qscale den6 d14 lamN lamD l7 1121 1 = true := recK7_of (n := 32) t_1121 n_1121 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1121_0 (v_1121_1))

theorem t_1122 : treeK7OK l7 1122 = true := by decide +kernel

theorem n_1122 : (recAt l7 1122).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1122_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1122 0 16 = true := by decide +kernel

theorem v_1122_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1122 16 16 = true := by decide +kernel

theorem v_1122_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1122 32 16 = true := by decide +kernel

theorem v_1122_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1122 48 16 = true := by decide +kernel

theorem v_1122_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1122 64 16 = true := by decide +kernel

theorem v_1122_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1122 80 16 = true := by decide +kernel

theorem v_1122_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1122 96 16 = true := by decide +kernel

theorem r_1122 : recsK7OK T qscale den6 d14 lamN lamD l7 1122 1 = true := recK7_of (n := 112) t_1122 n_1122 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1122_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1122_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1122_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1122_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1122_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1122_5 (v_1122_6)))))))

theorem t_1123 : treeK7OK l7 1123 = true := by decide +kernel

theorem n_1123 : (recAt l7 1123).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1123_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1123 0 16 = true := by decide +kernel

theorem v_1123_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1123 16 16 = true := by decide +kernel

theorem v_1123_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1123 32 16 = true := by decide +kernel

theorem v_1123_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1123 48 16 = true := by decide +kernel

theorem r_1123 : recsK7OK T qscale den6 d14 lamN lamD l7 1123 1 = true := recK7_of (n := 64) t_1123 n_1123 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1123_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1123_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1123_2 (v_1123_3))))

theorem t_1124 : treeK7OK l7 1124 = true := by decide +kernel

theorem n_1124 : (recAt l7 1124).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1124_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 0 16 = true := by decide +kernel

theorem v_1124_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 16 16 = true := by decide +kernel

theorem v_1124_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 32 16 = true := by decide +kernel

theorem v_1124_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 48 16 = true := by decide +kernel

theorem v_1124_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 64 16 = true := by decide +kernel

theorem v_1124_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 80 16 = true := by decide +kernel

theorem v_1124_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 96 16 = true := by decide +kernel

theorem v_1124_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 112 16 = true := by decide +kernel

theorem v_1124_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 128 16 = true := by decide +kernel

theorem v_1124_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1124 144 16 = true := by decide +kernel

theorem r_1124 : recsK7OK T qscale den6 d14 lamN lamD l7 1124 1 = true := recK7_of (n := 160) t_1124 n_1124 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1124_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1124_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1124_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1124_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1124_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1124_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1124_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1124_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1124_8 (v_1124_9))))))))))

theorem rs_1120 : recsK7OK T qscale den6 d14 lamN lamD l7 1120 5 = true := recsK7OK_succ (lo := 1120) (n := 4) r_1120 (recsK7OK_succ (lo := 1121) (n := 3) r_1121 (recsK7OK_succ (lo := 1122) (n := 2) r_1122 (recsK7OK_succ (lo := 1123) (n := 1) r_1123 (r_1124))))

end BeatAvg.K.K7
