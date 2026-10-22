import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1130 : treeK7OK l7 1130 = true := by decide +kernel

theorem n_1130 : (recAt l7 1130).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1130_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1130 0 16 = true := by decide +kernel

theorem v_1130_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1130 16 16 = true := by decide +kernel

theorem v_1130_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1130 32 16 = true := by decide +kernel

theorem v_1130_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1130 48 16 = true := by decide +kernel

theorem r_1130 : recsK7OK T qscale den6 d14 lamN lamD l7 1130 1 = true := recK7_of (n := 64) t_1130 n_1130 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1130_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1130_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1130_2 (v_1130_3))))

theorem t_1131 : treeK7OK l7 1131 = true := by decide +kernel

theorem n_1131 : (recAt l7 1131).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1131_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1131 0 16 = true := by decide +kernel

theorem v_1131_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1131 16 16 = true := by decide +kernel

theorem v_1131_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1131 32 16 = true := by decide +kernel

theorem v_1131_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1131 48 16 = true := by decide +kernel

theorem v_1131_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1131 64 16 = true := by decide +kernel

theorem r_1131 : recsK7OK T qscale den6 d14 lamN lamD l7 1131 1 = true := recK7_of (n := 80) t_1131 n_1131 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1131_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1131_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1131_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1131_3 (v_1131_4)))))

theorem t_1132 : treeK7OK l7 1132 = true := by decide +kernel

theorem n_1132 : (recAt l7 1132).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1132_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1132 0 16 = true := by decide +kernel

theorem v_1132_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1132 16 16 = true := by decide +kernel

theorem v_1132_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1132 32 16 = true := by decide +kernel

theorem v_1132_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1132 48 16 = true := by decide +kernel

theorem v_1132_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1132 64 16 = true := by decide +kernel

theorem r_1132 : recsK7OK T qscale den6 d14 lamN lamD l7 1132 1 = true := recK7_of (n := 80) t_1132 n_1132 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1132_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1132_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1132_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1132_3 (v_1132_4)))))

theorem t_1133 : treeK7OK l7 1133 = true := by decide +kernel

theorem n_1133 : (recAt l7 1133).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1133_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1133 0 16 = true := by decide +kernel

theorem v_1133_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1133 16 16 = true := by decide +kernel

theorem v_1133_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1133 32 16 = true := by decide +kernel

theorem v_1133_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1133 48 16 = true := by decide +kernel

theorem v_1133_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1133 64 16 = true := by decide +kernel

theorem v_1133_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1133 80 16 = true := by decide +kernel

theorem v_1133_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1133 96 16 = true := by decide +kernel

theorem r_1133 : recsK7OK T qscale den6 d14 lamN lamD l7 1133 1 = true := recK7_of (n := 112) t_1133 n_1133 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1133_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1133_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1133_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1133_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1133_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1133_5 (v_1133_6)))))))

theorem t_1134 : treeK7OK l7 1134 = true := by decide +kernel

theorem n_1134 : (recAt l7 1134).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1134_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1134 0 16 = true := by decide +kernel

theorem v_1134_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1134 16 16 = true := by decide +kernel

theorem v_1134_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1134 32 16 = true := by decide +kernel

theorem v_1134_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1134 48 16 = true := by decide +kernel

theorem r_1134 : recsK7OK T qscale den6 d14 lamN lamD l7 1134 1 = true := recK7_of (n := 64) t_1134 n_1134 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1134_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1134_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1134_2 (v_1134_3))))

theorem rs_1130 : recsK7OK T qscale den6 d14 lamN lamD l7 1130 5 = true := recsK7OK_succ (lo := 1130) (n := 4) r_1130 (recsK7OK_succ (lo := 1131) (n := 3) r_1131 (recsK7OK_succ (lo := 1132) (n := 2) r_1132 (recsK7OK_succ (lo := 1133) (n := 1) r_1133 (r_1134))))

end BeatAvg.K.K7
