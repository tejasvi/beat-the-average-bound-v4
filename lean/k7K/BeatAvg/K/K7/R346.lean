import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1033 : treeK7OK l7 1033 = true := by decide +kernel

theorem n_1033 : (recAt l7 1033).2.2.2.length ≤ 192 := by decide +kernel

theorem v_1033_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 0 16 = true := by decide +kernel

theorem v_1033_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 16 16 = true := by decide +kernel

theorem v_1033_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 32 16 = true := by decide +kernel

theorem v_1033_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 48 16 = true := by decide +kernel

theorem v_1033_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 64 16 = true := by decide +kernel

theorem v_1033_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 80 16 = true := by decide +kernel

theorem v_1033_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 96 16 = true := by decide +kernel

theorem v_1033_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 112 16 = true := by decide +kernel

theorem v_1033_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 128 16 = true := by decide +kernel

theorem v_1033_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 144 16 = true := by decide +kernel

theorem v_1033_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 160 16 = true := by decide +kernel

theorem v_1033_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1033 176 16 = true := by decide +kernel

theorem r_1033 : recsK7OK T qscale den6 d14 lamN lamD l7 1033 1 = true := recK7_of (n := 192) t_1033 n_1033 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_1033_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_1033_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_1033_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_1033_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_1033_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_1033_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_1033_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_1033_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_1033_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_1033_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_1033_10 (v_1033_11))))))))))))

theorem t_1034 : treeK7OK l7 1034 = true := by decide +kernel

theorem n_1034 : (recAt l7 1034).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1034_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1034 0 16 = true := by decide +kernel

theorem v_1034_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1034 16 16 = true := by decide +kernel

theorem v_1034_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1034 32 16 = true := by decide +kernel

theorem v_1034_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1034 48 16 = true := by decide +kernel

theorem v_1034_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1034 64 16 = true := by decide +kernel

theorem r_1034 : recsK7OK T qscale den6 d14 lamN lamD l7 1034 1 = true := recK7_of (n := 80) t_1034 n_1034 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1034_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1034_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1034_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1034_3 (v_1034_4)))))

theorem rs_1033 : recsK7OK T qscale den6 d14 lamN lamD l7 1033 2 = true := recsK7OK_succ (lo := 1033) (n := 1) r_1033 (r_1034)

end BeatAvg.K.K7
