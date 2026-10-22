import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1097 : treeK7OK l7 1097 = true := by decide +kernel

theorem n_1097 : (recAt l7 1097).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1097_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 0 16 = true := by decide +kernel

theorem v_1097_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 16 16 = true := by decide +kernel

theorem v_1097_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 32 16 = true := by decide +kernel

theorem v_1097_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 48 16 = true := by decide +kernel

theorem v_1097_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 64 16 = true := by decide +kernel

theorem v_1097_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 80 16 = true := by decide +kernel

theorem v_1097_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 96 16 = true := by decide +kernel

theorem v_1097_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 112 16 = true := by decide +kernel

theorem v_1097_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1097 128 16 = true := by decide +kernel

theorem r_1097 : recsK7OK T qscale den6 d14 lamN lamD l7 1097 1 = true := recK7_of (n := 144) t_1097 n_1097 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1097_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1097_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1097_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1097_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1097_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1097_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1097_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1097_7 (v_1097_8)))))))))

theorem t_1098 : treeK7OK l7 1098 = true := by decide +kernel

theorem n_1098 : (recAt l7 1098).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1098_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1098 0 16 = true := by decide +kernel

theorem v_1098_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1098 16 16 = true := by decide +kernel

theorem v_1098_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1098 32 16 = true := by decide +kernel

theorem v_1098_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1098 48 16 = true := by decide +kernel

theorem v_1098_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1098 64 16 = true := by decide +kernel

theorem v_1098_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1098 80 16 = true := by decide +kernel

theorem v_1098_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1098 96 16 = true := by decide +kernel

theorem r_1098 : recsK7OK T qscale den6 d14 lamN lamD l7 1098 1 = true := recK7_of (n := 112) t_1098 n_1098 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1098_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1098_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1098_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1098_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1098_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1098_5 (v_1098_6)))))))

theorem t_1099 : treeK7OK l7 1099 = true := by decide +kernel

theorem n_1099 : (recAt l7 1099).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1099_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1099 0 16 = true := by decide +kernel

theorem v_1099_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1099 16 16 = true := by decide +kernel

theorem v_1099_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1099 32 16 = true := by decide +kernel

theorem v_1099_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1099 48 16 = true := by decide +kernel

theorem v_1099_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1099 64 16 = true := by decide +kernel

theorem v_1099_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1099 80 16 = true := by decide +kernel

theorem v_1099_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1099 96 16 = true := by decide +kernel

theorem r_1099 : recsK7OK T qscale den6 d14 lamN lamD l7 1099 1 = true := recK7_of (n := 112) t_1099 n_1099 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1099_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1099_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1099_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1099_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1099_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1099_5 (v_1099_6)))))))

theorem rs_1097 : recsK7OK T qscale den6 d14 lamN lamD l7 1097 3 = true := recsK7OK_succ (lo := 1097) (n := 2) r_1097 (recsK7OK_succ (lo := 1098) (n := 1) r_1098 (r_1099))

end BeatAvg.K.K7
