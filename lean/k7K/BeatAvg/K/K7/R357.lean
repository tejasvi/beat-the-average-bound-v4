import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1071 : treeK7OK l7 1071 = true := by decide +kernel

theorem n_1071 : (recAt l7 1071).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1071_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 0 16 = true := by decide +kernel

theorem v_1071_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 16 16 = true := by decide +kernel

theorem v_1071_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 32 16 = true := by decide +kernel

theorem v_1071_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 48 16 = true := by decide +kernel

theorem v_1071_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 64 16 = true := by decide +kernel

theorem v_1071_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 80 16 = true := by decide +kernel

theorem v_1071_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 96 16 = true := by decide +kernel

theorem v_1071_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 112 16 = true := by decide +kernel

theorem v_1071_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1071 128 16 = true := by decide +kernel

theorem r_1071 : recsK7OK T qscale den6 d14 lamN lamD l7 1071 1 = true := recK7_of (n := 144) t_1071 n_1071 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1071_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1071_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1071_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1071_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1071_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1071_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1071_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1071_7 (v_1071_8)))))))))

theorem t_1072 : treeK7OK l7 1072 = true := by decide +kernel

theorem n_1072 : (recAt l7 1072).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1072_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1072 0 16 = true := by decide +kernel

theorem v_1072_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1072 16 16 = true := by decide +kernel

theorem v_1072_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1072 32 16 = true := by decide +kernel

theorem v_1072_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1072 48 16 = true := by decide +kernel

theorem r_1072 : recsK7OK T qscale den6 d14 lamN lamD l7 1072 1 = true := recK7_of (n := 64) t_1072 n_1072 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1072_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1072_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1072_2 (v_1072_3))))

theorem t_1073 : treeK7OK l7 1073 = true := by decide +kernel

theorem n_1073 : (recAt l7 1073).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1073_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 0 16 = true := by decide +kernel

theorem v_1073_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 16 16 = true := by decide +kernel

theorem v_1073_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 32 16 = true := by decide +kernel

theorem v_1073_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 48 16 = true := by decide +kernel

theorem v_1073_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 64 16 = true := by decide +kernel

theorem v_1073_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 80 16 = true := by decide +kernel

theorem v_1073_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 96 16 = true := by decide +kernel

theorem v_1073_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 112 16 = true := by decide +kernel

theorem v_1073_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 128 16 = true := by decide +kernel

theorem v_1073_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1073 144 16 = true := by decide +kernel

theorem r_1073 : recsK7OK T qscale den6 d14 lamN lamD l7 1073 1 = true := recK7_of (n := 160) t_1073 n_1073 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1073_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1073_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1073_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1073_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1073_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1073_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1073_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1073_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1073_8 (v_1073_9))))))))))

theorem rs_1071 : recsK7OK T qscale den6 d14 lamN lamD l7 1071 3 = true := recsK7OK_succ (lo := 1071) (n := 2) r_1071 (recsK7OK_succ (lo := 1072) (n := 1) r_1072 (r_1073))

end BeatAvg.K.K7
