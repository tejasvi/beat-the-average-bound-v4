import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1086 : treeK7OK l7 1086 = true := by decide +kernel

theorem n_1086 : (recAt l7 1086).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1086_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 0 16 = true := by decide +kernel

theorem v_1086_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 16 16 = true := by decide +kernel

theorem v_1086_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 32 16 = true := by decide +kernel

theorem v_1086_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 48 16 = true := by decide +kernel

theorem v_1086_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 64 16 = true := by decide +kernel

theorem v_1086_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 80 16 = true := by decide +kernel

theorem v_1086_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 96 16 = true := by decide +kernel

theorem v_1086_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1086 112 16 = true := by decide +kernel

theorem r_1086 : recsK7OK T qscale den6 d14 lamN lamD l7 1086 1 = true := recK7_of (n := 128) t_1086 n_1086 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1086_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1086_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1086_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1086_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1086_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1086_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1086_6 (v_1086_7))))))))

theorem t_1087 : treeK7OK l7 1087 = true := by decide +kernel

theorem n_1087 : (recAt l7 1087).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1087_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1087 0 16 = true := by decide +kernel

theorem v_1087_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1087 16 16 = true := by decide +kernel

theorem v_1087_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1087 32 16 = true := by decide +kernel

theorem v_1087_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1087 48 16 = true := by decide +kernel

theorem v_1087_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1087 64 16 = true := by decide +kernel

theorem r_1087 : recsK7OK T qscale den6 d14 lamN lamD l7 1087 1 = true := recK7_of (n := 80) t_1087 n_1087 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1087_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1087_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1087_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1087_3 (v_1087_4)))))

theorem t_1088 : treeK7OK l7 1088 = true := by decide +kernel

theorem n_1088 : (recAt l7 1088).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1088_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1088 0 16 = true := by decide +kernel

theorem v_1088_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1088 16 16 = true := by decide +kernel

theorem v_1088_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1088 32 16 = true := by decide +kernel

theorem v_1088_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1088 48 16 = true := by decide +kernel

theorem v_1088_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1088 64 16 = true := by decide +kernel

theorem r_1088 : recsK7OK T qscale den6 d14 lamN lamD l7 1088 1 = true := recK7_of (n := 80) t_1088 n_1088 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1088_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1088_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1088_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1088_3 (v_1088_4)))))

theorem t_1089 : treeK7OK l7 1089 = true := by decide +kernel

theorem n_1089 : (recAt l7 1089).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1089_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1089 0 16 = true := by decide +kernel

theorem v_1089_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1089 16 16 = true := by decide +kernel

theorem v_1089_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1089 32 16 = true := by decide +kernel

theorem r_1089 : recsK7OK T qscale den6 d14 lamN lamD l7 1089 1 = true := recK7_of (n := 48) t_1089 n_1089 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1089_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1089_1 (v_1089_2)))

theorem rs_1086 : recsK7OK T qscale den6 d14 lamN lamD l7 1086 4 = true := recsK7OK_succ (lo := 1086) (n := 3) r_1086 (recsK7OK_succ (lo := 1087) (n := 2) r_1087 (recsK7OK_succ (lo := 1088) (n := 1) r_1088 (r_1089)))

end BeatAvg.K.K7
