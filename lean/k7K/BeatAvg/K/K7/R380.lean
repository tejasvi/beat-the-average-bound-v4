import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1158 : treeK7OK l7 1158 = true := by decide +kernel

theorem n_1158 : (recAt l7 1158).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1158_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1158 0 16 = true := by decide +kernel

theorem v_1158_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1158 16 16 = true := by decide +kernel

theorem v_1158_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1158 32 16 = true := by decide +kernel

theorem v_1158_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1158 48 16 = true := by decide +kernel

theorem v_1158_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1158 64 16 = true := by decide +kernel

theorem v_1158_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1158 80 16 = true := by decide +kernel

theorem r_1158 : recsK7OK T qscale den6 d14 lamN lamD l7 1158 1 = true := recK7_of (n := 96) t_1158 n_1158 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1158_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1158_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1158_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1158_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1158_4 (v_1158_5))))))

theorem t_1159 : treeK7OK l7 1159 = true := by decide +kernel

theorem n_1159 : (recAt l7 1159).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1159_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1159 0 16 = true := by decide +kernel

theorem v_1159_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1159 16 16 = true := by decide +kernel

theorem v_1159_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1159 32 16 = true := by decide +kernel

theorem r_1159 : recsK7OK T qscale den6 d14 lamN lamD l7 1159 1 = true := recK7_of (n := 48) t_1159 n_1159 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1159_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1159_1 (v_1159_2)))

theorem t_1160 : treeK7OK l7 1160 = true := by decide +kernel

theorem n_1160 : (recAt l7 1160).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1160_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1160 0 16 = true := by decide +kernel

theorem v_1160_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1160 16 16 = true := by decide +kernel

theorem v_1160_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1160 32 16 = true := by decide +kernel

theorem v_1160_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1160 48 16 = true := by decide +kernel

theorem v_1160_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1160 64 16 = true := by decide +kernel

theorem v_1160_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1160 80 16 = true := by decide +kernel

theorem r_1160 : recsK7OK T qscale den6 d14 lamN lamD l7 1160 1 = true := recK7_of (n := 96) t_1160 n_1160 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1160_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1160_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1160_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1160_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1160_4 (v_1160_5))))))

theorem t_1161 : treeK7OK l7 1161 = true := by decide +kernel

theorem n_1161 : (recAt l7 1161).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1161_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1161 0 16 = true := by decide +kernel

theorem v_1161_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1161 16 16 = true := by decide +kernel

theorem v_1161_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1161 32 16 = true := by decide +kernel

theorem v_1161_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1161 48 16 = true := by decide +kernel

theorem v_1161_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1161 64 16 = true := by decide +kernel

theorem v_1161_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1161 80 16 = true := by decide +kernel

theorem r_1161 : recsK7OK T qscale den6 d14 lamN lamD l7 1161 1 = true := recK7_of (n := 96) t_1161 n_1161 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1161_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1161_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1161_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1161_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1161_4 (v_1161_5))))))

theorem t_1162 : treeK7OK l7 1162 = true := by decide +kernel

theorem n_1162 : (recAt l7 1162).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1162_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1162 0 16 = true := by decide +kernel

theorem v_1162_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1162 16 16 = true := by decide +kernel

theorem r_1162 : recsK7OK T qscale den6 d14 lamN lamD l7 1162 1 = true := recK7_of (n := 32) t_1162 n_1162 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1162_0 (v_1162_1))

theorem t_1163 : treeK7OK l7 1163 = true := by decide +kernel

theorem n_1163 : (recAt l7 1163).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1163_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1163 0 16 = true := by decide +kernel

theorem v_1163_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1163 16 16 = true := by decide +kernel

theorem v_1163_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1163 32 16 = true := by decide +kernel

theorem r_1163 : recsK7OK T qscale den6 d14 lamN lamD l7 1163 1 = true := recK7_of (n := 48) t_1163 n_1163 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1163_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1163_1 (v_1163_2)))

theorem rs_1158 : recsK7OK T qscale den6 d14 lamN lamD l7 1158 6 = true := recsK7OK_succ (lo := 1158) (n := 5) r_1158 (recsK7OK_succ (lo := 1159) (n := 4) r_1159 (recsK7OK_succ (lo := 1160) (n := 3) r_1160 (recsK7OK_succ (lo := 1161) (n := 2) r_1161 (recsK7OK_succ (lo := 1162) (n := 1) r_1162 (r_1163)))))

end BeatAvg.K.K7
