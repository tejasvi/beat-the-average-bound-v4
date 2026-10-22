import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_137 : treeK7OK l7 137 = true := by decide +kernel

theorem n_137 : (recAt l7 137).2.2.2.length ≤ 208 := by decide +kernel

theorem v_137_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 0 16 = true := by decide +kernel

theorem v_137_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 16 16 = true := by decide +kernel

theorem v_137_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 32 16 = true := by decide +kernel

theorem v_137_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 48 16 = true := by decide +kernel

theorem v_137_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 64 16 = true := by decide +kernel

theorem v_137_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 80 16 = true := by decide +kernel

theorem v_137_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 96 16 = true := by decide +kernel

theorem v_137_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 112 16 = true := by decide +kernel

theorem v_137_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 128 16 = true := by decide +kernel

theorem v_137_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 144 16 = true := by decide +kernel

theorem v_137_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 160 16 = true := by decide +kernel

theorem v_137_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 176 16 = true := by decide +kernel

theorem v_137_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 137 192 16 = true := by decide +kernel

theorem r_137 : recsK7OK T qscale den6 d14 lamN lamD l7 137 1 = true := recK7_of (n := 208) t_137 n_137 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_137_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_137_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_137_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_137_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_137_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_137_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_137_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_137_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_137_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_137_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_137_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_137_11 (v_137_12)))))))))))))

theorem t_138 : treeK7OK l7 138 = true := by decide +kernel

theorem n_138 : (recAt l7 138).2.2.2.length ≤ 48 := by decide +kernel

theorem v_138_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 138 0 16 = true := by decide +kernel

theorem v_138_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 138 16 16 = true := by decide +kernel

theorem v_138_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 138 32 16 = true := by decide +kernel

theorem r_138 : recsK7OK T qscale den6 d14 lamN lamD l7 138 1 = true := recK7_of (n := 48) t_138 n_138 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_138_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_138_1 (v_138_2)))

theorem t_139 : treeK7OK l7 139 = true := by decide +kernel

theorem n_139 : (recAt l7 139).2.2.2.length ≤ 160 := by decide +kernel

theorem v_139_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 0 16 = true := by decide +kernel

theorem v_139_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 16 16 = true := by decide +kernel

theorem v_139_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 32 16 = true := by decide +kernel

theorem v_139_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 48 16 = true := by decide +kernel

theorem v_139_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 64 16 = true := by decide +kernel

theorem v_139_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 80 16 = true := by decide +kernel

theorem v_139_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 96 16 = true := by decide +kernel

theorem v_139_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 112 16 = true := by decide +kernel

theorem v_139_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 128 16 = true := by decide +kernel

theorem v_139_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 139 144 16 = true := by decide +kernel

theorem r_139 : recsK7OK T qscale den6 d14 lamN lamD l7 139 1 = true := recK7_of (n := 160) t_139 n_139 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_139_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_139_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_139_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_139_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_139_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_139_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_139_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_139_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_139_8 (v_139_9))))))))))

theorem rs_137 : recsK7OK T qscale den6 d14 lamN lamD l7 137 3 = true := recsK7OK_succ (lo := 137) (n := 2) r_137 (recsK7OK_succ (lo := 138) (n := 1) r_138 (r_139))

end BeatAvg.K.K7
