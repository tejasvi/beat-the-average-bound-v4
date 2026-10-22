import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1125 : treeK7OK l7 1125 = true := by decide +kernel

theorem n_1125 : (recAt l7 1125).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1125_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1125 0 16 = true := by decide +kernel

theorem v_1125_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1125 16 16 = true := by decide +kernel

theorem v_1125_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1125 32 16 = true := by decide +kernel

theorem v_1125_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1125 48 16 = true := by decide +kernel

theorem v_1125_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1125 64 16 = true := by decide +kernel

theorem v_1125_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1125 80 16 = true := by decide +kernel

theorem v_1125_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1125 96 16 = true := by decide +kernel

theorem r_1125 : recsK7OK T qscale den6 d14 lamN lamD l7 1125 1 = true := recK7_of (n := 112) t_1125 n_1125 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1125_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1125_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1125_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1125_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1125_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1125_5 (v_1125_6)))))))

theorem t_1126 : treeK7OK l7 1126 = true := by decide +kernel

theorem n_1126 : (recAt l7 1126).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1126_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1126 0 16 = true := by decide +kernel

theorem v_1126_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1126 16 16 = true := by decide +kernel

theorem v_1126_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1126 32 16 = true := by decide +kernel

theorem v_1126_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1126 48 16 = true := by decide +kernel

theorem v_1126_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1126 64 16 = true := by decide +kernel

theorem r_1126 : recsK7OK T qscale den6 d14 lamN lamD l7 1126 1 = true := recK7_of (n := 80) t_1126 n_1126 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1126_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1126_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1126_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1126_3 (v_1126_4)))))

theorem t_1127 : treeK7OK l7 1127 = true := by decide +kernel

theorem n_1127 : (recAt l7 1127).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1127_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1127 0 16 = true := by decide +kernel

theorem v_1127_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1127 16 16 = true := by decide +kernel

theorem v_1127_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1127 32 16 = true := by decide +kernel

theorem v_1127_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1127 48 16 = true := by decide +kernel

theorem v_1127_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1127 64 16 = true := by decide +kernel

theorem r_1127 : recsK7OK T qscale den6 d14 lamN lamD l7 1127 1 = true := recK7_of (n := 80) t_1127 n_1127 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1127_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1127_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1127_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1127_3 (v_1127_4)))))

theorem t_1128 : treeK7OK l7 1128 = true := by decide +kernel

theorem n_1128 : (recAt l7 1128).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1128_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1128 0 16 = true := by decide +kernel

theorem v_1128_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1128 16 16 = true := by decide +kernel

theorem v_1128_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1128 32 16 = true := by decide +kernel

theorem v_1128_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1128 48 16 = true := by decide +kernel

theorem r_1128 : recsK7OK T qscale den6 d14 lamN lamD l7 1128 1 = true := recK7_of (n := 64) t_1128 n_1128 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1128_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1128_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1128_2 (v_1128_3))))

theorem t_1129 : treeK7OK l7 1129 = true := by decide +kernel

theorem n_1129 : (recAt l7 1129).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1129_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1129 0 16 = true := by decide +kernel

theorem v_1129_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1129 16 16 = true := by decide +kernel

theorem v_1129_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1129 32 16 = true := by decide +kernel

theorem v_1129_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1129 48 16 = true := by decide +kernel

theorem v_1129_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1129 64 16 = true := by decide +kernel

theorem r_1129 : recsK7OK T qscale den6 d14 lamN lamD l7 1129 1 = true := recK7_of (n := 80) t_1129 n_1129 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1129_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1129_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1129_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1129_3 (v_1129_4)))))

theorem rs_1125 : recsK7OK T qscale den6 d14 lamN lamD l7 1125 5 = true := recsK7OK_succ (lo := 1125) (n := 4) r_1125 (recsK7OK_succ (lo := 1126) (n := 3) r_1126 (recsK7OK_succ (lo := 1127) (n := 2) r_1127 (recsK7OK_succ (lo := 1128) (n := 1) r_1128 (r_1129))))

end BeatAvg.K.K7
