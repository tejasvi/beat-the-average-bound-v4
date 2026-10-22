import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1079 : treeK7OK l7 1079 = true := by decide +kernel

theorem n_1079 : (recAt l7 1079).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1079_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1079 0 16 = true := by decide +kernel

theorem v_1079_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1079 16 16 = true := by decide +kernel

theorem v_1079_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1079 32 16 = true := by decide +kernel

theorem v_1079_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1079 48 16 = true := by decide +kernel

theorem v_1079_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1079 64 16 = true := by decide +kernel

theorem v_1079_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1079 80 16 = true := by decide +kernel

theorem v_1079_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1079 96 16 = true := by decide +kernel

theorem r_1079 : recsK7OK T qscale den6 d14 lamN lamD l7 1079 1 = true := recK7_of (n := 112) t_1079 n_1079 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1079_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1079_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1079_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1079_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1079_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1079_5 (v_1079_6)))))))

theorem t_1080 : treeK7OK l7 1080 = true := by decide +kernel

theorem n_1080 : (recAt l7 1080).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1080_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 0 16 = true := by decide +kernel

theorem v_1080_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 16 16 = true := by decide +kernel

theorem v_1080_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 32 16 = true := by decide +kernel

theorem v_1080_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 48 16 = true := by decide +kernel

theorem v_1080_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 64 16 = true := by decide +kernel

theorem v_1080_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 80 16 = true := by decide +kernel

theorem v_1080_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 96 16 = true := by decide +kernel

theorem v_1080_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 112 16 = true := by decide +kernel

theorem v_1080_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1080 128 16 = true := by decide +kernel

theorem r_1080 : recsK7OK T qscale den6 d14 lamN lamD l7 1080 1 = true := recK7_of (n := 144) t_1080 n_1080 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1080_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1080_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1080_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1080_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1080_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1080_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1080_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1080_7 (v_1080_8)))))))))

theorem t_1081 : treeK7OK l7 1081 = true := by decide +kernel

theorem n_1081 : (recAt l7 1081).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1081_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1081 0 16 = true := by decide +kernel

theorem v_1081_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1081 16 16 = true := by decide +kernel

theorem v_1081_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1081 32 16 = true := by decide +kernel

theorem v_1081_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1081 48 16 = true := by decide +kernel

theorem v_1081_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1081 64 16 = true := by decide +kernel

theorem v_1081_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1081 80 16 = true := by decide +kernel

theorem r_1081 : recsK7OK T qscale den6 d14 lamN lamD l7 1081 1 = true := recK7_of (n := 96) t_1081 n_1081 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1081_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1081_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1081_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1081_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1081_4 (v_1081_5))))))

theorem rs_1079 : recsK7OK T qscale den6 d14 lamN lamD l7 1079 3 = true := recsK7OK_succ (lo := 1079) (n := 2) r_1079 (recsK7OK_succ (lo := 1080) (n := 1) r_1080 (r_1081))

end BeatAvg.K.K7
