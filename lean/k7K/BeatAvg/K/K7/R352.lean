import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1052 : treeK7OK l7 1052 = true := by decide +kernel

theorem n_1052 : (recAt l7 1052).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1052_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 0 16 = true := by decide +kernel

theorem v_1052_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 16 16 = true := by decide +kernel

theorem v_1052_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 32 16 = true := by decide +kernel

theorem v_1052_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 48 16 = true := by decide +kernel

theorem v_1052_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 64 16 = true := by decide +kernel

theorem v_1052_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 80 16 = true := by decide +kernel

theorem v_1052_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 96 16 = true := by decide +kernel

theorem v_1052_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 112 16 = true := by decide +kernel

theorem v_1052_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 128 16 = true := by decide +kernel

theorem v_1052_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1052 144 16 = true := by decide +kernel

theorem r_1052 : recsK7OK T qscale den6 d14 lamN lamD l7 1052 1 = true := recK7_of (n := 160) t_1052 n_1052 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1052_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1052_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1052_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1052_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1052_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1052_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1052_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1052_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1052_8 (v_1052_9))))))))))

theorem t_1053 : treeK7OK l7 1053 = true := by decide +kernel

theorem n_1053 : (recAt l7 1053).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1053_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 0 16 = true := by decide +kernel

theorem v_1053_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 16 16 = true := by decide +kernel

theorem v_1053_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 32 16 = true := by decide +kernel

theorem v_1053_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 48 16 = true := by decide +kernel

theorem v_1053_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 64 16 = true := by decide +kernel

theorem v_1053_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 80 16 = true := by decide +kernel

theorem v_1053_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 96 16 = true := by decide +kernel

theorem v_1053_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1053 112 16 = true := by decide +kernel

theorem r_1053 : recsK7OK T qscale den6 d14 lamN lamD l7 1053 1 = true := recK7_of (n := 128) t_1053 n_1053 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1053_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1053_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1053_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1053_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1053_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1053_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1053_6 (v_1053_7))))))))

theorem t_1054 : treeK7OK l7 1054 = true := by decide +kernel

theorem n_1054 : (recAt l7 1054).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1054_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1054 0 16 = true := by decide +kernel

theorem v_1054_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1054 16 16 = true := by decide +kernel

theorem v_1054_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1054 32 16 = true := by decide +kernel

theorem v_1054_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1054 48 16 = true := by decide +kernel

theorem r_1054 : recsK7OK T qscale den6 d14 lamN lamD l7 1054 1 = true := recK7_of (n := 64) t_1054 n_1054 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1054_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1054_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1054_2 (v_1054_3))))

theorem t_1055 : treeK7OK l7 1055 = true := by decide +kernel

theorem n_1055 : (recAt l7 1055).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1055_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1055 0 16 = true := by decide +kernel

theorem v_1055_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1055 16 16 = true := by decide +kernel

theorem v_1055_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1055 32 16 = true := by decide +kernel

theorem v_1055_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1055 48 16 = true := by decide +kernel

theorem r_1055 : recsK7OK T qscale den6 d14 lamN lamD l7 1055 1 = true := recK7_of (n := 64) t_1055 n_1055 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1055_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1055_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1055_2 (v_1055_3))))

theorem rs_1052 : recsK7OK T qscale den6 d14 lamN lamD l7 1052 4 = true := recsK7OK_succ (lo := 1052) (n := 3) r_1052 (recsK7OK_succ (lo := 1053) (n := 2) r_1053 (recsK7OK_succ (lo := 1054) (n := 1) r_1054 (r_1055)))

end BeatAvg.K.K7
