import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1138 : treeK7OK l7 1138 = true := by decide +kernel

theorem n_1138 : (recAt l7 1138).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1138_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 0 16 = true := by decide +kernel

theorem v_1138_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 16 16 = true := by decide +kernel

theorem v_1138_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 32 16 = true := by decide +kernel

theorem v_1138_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 48 16 = true := by decide +kernel

theorem v_1138_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 64 16 = true := by decide +kernel

theorem v_1138_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 80 16 = true := by decide +kernel

theorem v_1138_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 96 16 = true := by decide +kernel

theorem v_1138_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1138 112 16 = true := by decide +kernel

theorem r_1138 : recsK7OK T qscale den6 d14 lamN lamD l7 1138 1 = true := recK7_of (n := 128) t_1138 n_1138 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1138_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1138_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1138_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1138_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1138_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1138_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1138_6 (v_1138_7))))))))

theorem t_1139 : treeK7OK l7 1139 = true := by decide +kernel

theorem n_1139 : (recAt l7 1139).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1139_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1139 0 16 = true := by decide +kernel

theorem v_1139_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1139 16 16 = true := by decide +kernel

theorem v_1139_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1139 32 16 = true := by decide +kernel

theorem v_1139_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1139 48 16 = true := by decide +kernel

theorem v_1139_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1139 64 16 = true := by decide +kernel

theorem v_1139_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1139 80 16 = true := by decide +kernel

theorem r_1139 : recsK7OK T qscale den6 d14 lamN lamD l7 1139 1 = true := recK7_of (n := 96) t_1139 n_1139 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1139_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1139_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1139_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1139_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1139_4 (v_1139_5))))))

theorem t_1140 : treeK7OK l7 1140 = true := by decide +kernel

theorem n_1140 : (recAt l7 1140).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1140_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1140 0 16 = true := by decide +kernel

theorem v_1140_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1140 16 16 = true := by decide +kernel

theorem v_1140_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1140 32 16 = true := by decide +kernel

theorem v_1140_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1140 48 16 = true := by decide +kernel

theorem v_1140_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1140 64 16 = true := by decide +kernel

theorem v_1140_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1140 80 16 = true := by decide +kernel

theorem r_1140 : recsK7OK T qscale den6 d14 lamN lamD l7 1140 1 = true := recK7_of (n := 96) t_1140 n_1140 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1140_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1140_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1140_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1140_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1140_4 (v_1140_5))))))

theorem t_1141 : treeK7OK l7 1141 = true := by decide +kernel

theorem n_1141 : (recAt l7 1141).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1141_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1141 0 16 = true := by decide +kernel

theorem v_1141_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1141 16 16 = true := by decide +kernel

theorem v_1141_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1141 32 16 = true := by decide +kernel

theorem v_1141_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1141 48 16 = true := by decide +kernel

theorem v_1141_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1141 64 16 = true := by decide +kernel

theorem r_1141 : recsK7OK T qscale den6 d14 lamN lamD l7 1141 1 = true := recK7_of (n := 80) t_1141 n_1141 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1141_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1141_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1141_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1141_3 (v_1141_4)))))

theorem rs_1138 : recsK7OK T qscale den6 d14 lamN lamD l7 1138 4 = true := recsK7OK_succ (lo := 1138) (n := 3) r_1138 (recsK7OK_succ (lo := 1139) (n := 2) r_1139 (recsK7OK_succ (lo := 1140) (n := 1) r_1140 (r_1141)))

end BeatAvg.K.K7
