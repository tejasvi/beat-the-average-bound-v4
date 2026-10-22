import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1076 : treeK7OK l7 1076 = true := by decide +kernel

theorem n_1076 : (recAt l7 1076).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1076_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1076 0 16 = true := by decide +kernel

theorem v_1076_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1076 16 16 = true := by decide +kernel

theorem v_1076_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1076 32 16 = true := by decide +kernel

theorem v_1076_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1076 48 16 = true := by decide +kernel

theorem v_1076_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1076 64 16 = true := by decide +kernel

theorem v_1076_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1076 80 16 = true := by decide +kernel

theorem v_1076_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1076 96 16 = true := by decide +kernel

theorem r_1076 : recsK7OK T qscale den6 d14 lamN lamD l7 1076 1 = true := recK7_of (n := 112) t_1076 n_1076 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1076_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1076_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1076_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1076_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1076_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1076_5 (v_1076_6)))))))

theorem t_1077 : treeK7OK l7 1077 = true := by decide +kernel

theorem n_1077 : (recAt l7 1077).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1077_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 0 16 = true := by decide +kernel

theorem v_1077_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 16 16 = true := by decide +kernel

theorem v_1077_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 32 16 = true := by decide +kernel

theorem v_1077_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 48 16 = true := by decide +kernel

theorem v_1077_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 64 16 = true := by decide +kernel

theorem v_1077_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 80 16 = true := by decide +kernel

theorem v_1077_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 96 16 = true := by decide +kernel

theorem v_1077_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1077 112 16 = true := by decide +kernel

theorem r_1077 : recsK7OK T qscale den6 d14 lamN lamD l7 1077 1 = true := recK7_of (n := 128) t_1077 n_1077 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1077_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1077_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1077_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1077_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1077_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1077_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1077_6 (v_1077_7))))))))

theorem t_1078 : treeK7OK l7 1078 = true := by decide +kernel

theorem n_1078 : (recAt l7 1078).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1078_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 0 16 = true := by decide +kernel

theorem v_1078_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 16 16 = true := by decide +kernel

theorem v_1078_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 32 16 = true := by decide +kernel

theorem v_1078_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 48 16 = true := by decide +kernel

theorem v_1078_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 64 16 = true := by decide +kernel

theorem v_1078_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 80 16 = true := by decide +kernel

theorem v_1078_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 96 16 = true := by decide +kernel

theorem v_1078_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 112 16 = true := by decide +kernel

theorem v_1078_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1078 128 16 = true := by decide +kernel

theorem r_1078 : recsK7OK T qscale den6 d14 lamN lamD l7 1078 1 = true := recK7_of (n := 144) t_1078 n_1078 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1078_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1078_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1078_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1078_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1078_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1078_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1078_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1078_7 (v_1078_8)))))))))

theorem rs_1076 : recsK7OK T qscale den6 d14 lamN lamD l7 1076 3 = true := recsK7OK_succ (lo := 1076) (n := 2) r_1076 (recsK7OK_succ (lo := 1077) (n := 1) r_1077 (r_1078))

end BeatAvg.K.K7
