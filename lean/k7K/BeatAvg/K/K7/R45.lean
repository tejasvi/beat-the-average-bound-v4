import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_159 : treeK7OK l7 159 = true := by decide +kernel

theorem n_159 : (recAt l7 159).2.2.2.length ≤ 128 := by decide +kernel

theorem v_159_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 0 16 = true := by decide +kernel

theorem v_159_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 16 16 = true := by decide +kernel

theorem v_159_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 32 16 = true := by decide +kernel

theorem v_159_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 48 16 = true := by decide +kernel

theorem v_159_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 64 16 = true := by decide +kernel

theorem v_159_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 80 16 = true := by decide +kernel

theorem v_159_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 96 16 = true := by decide +kernel

theorem v_159_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 159 112 16 = true := by decide +kernel

theorem r_159 : recsK7OK T qscale den6 d14 lamN lamD l7 159 1 = true := recK7_of (n := 128) t_159 n_159 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_159_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_159_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_159_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_159_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_159_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_159_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_159_6 (v_159_7))))))))

theorem t_160 : treeK7OK l7 160 = true := by decide +kernel

theorem n_160 : (recAt l7 160).2.2.2.length ≤ 112 := by decide +kernel

theorem v_160_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 160 0 16 = true := by decide +kernel

theorem v_160_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 160 16 16 = true := by decide +kernel

theorem v_160_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 160 32 16 = true := by decide +kernel

theorem v_160_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 160 48 16 = true := by decide +kernel

theorem v_160_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 160 64 16 = true := by decide +kernel

theorem v_160_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 160 80 16 = true := by decide +kernel

theorem v_160_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 160 96 16 = true := by decide +kernel

theorem r_160 : recsK7OK T qscale den6 d14 lamN lamD l7 160 1 = true := recK7_of (n := 112) t_160 n_160 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_160_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_160_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_160_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_160_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_160_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_160_5 (v_160_6)))))))

theorem t_161 : treeK7OK l7 161 = true := by decide +kernel

theorem n_161 : (recAt l7 161).2.2.2.length ≤ 80 := by decide +kernel

theorem v_161_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 161 0 16 = true := by decide +kernel

theorem v_161_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 161 16 16 = true := by decide +kernel

theorem v_161_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 161 32 16 = true := by decide +kernel

theorem v_161_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 161 48 16 = true := by decide +kernel

theorem v_161_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 161 64 16 = true := by decide +kernel

theorem r_161 : recsK7OK T qscale den6 d14 lamN lamD l7 161 1 = true := recK7_of (n := 80) t_161 n_161 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_161_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_161_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_161_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_161_3 (v_161_4)))))

theorem t_162 : treeK7OK l7 162 = true := by decide +kernel

theorem n_162 : (recAt l7 162).2.2.2.length ≤ 96 := by decide +kernel

theorem v_162_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 162 0 16 = true := by decide +kernel

theorem v_162_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 162 16 16 = true := by decide +kernel

theorem v_162_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 162 32 16 = true := by decide +kernel

theorem v_162_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 162 48 16 = true := by decide +kernel

theorem v_162_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 162 64 16 = true := by decide +kernel

theorem v_162_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 162 80 16 = true := by decide +kernel

theorem r_162 : recsK7OK T qscale den6 d14 lamN lamD l7 162 1 = true := recK7_of (n := 96) t_162 n_162 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_162_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_162_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_162_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_162_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_162_4 (v_162_5))))))

theorem rs_159 : recsK7OK T qscale den6 d14 lamN lamD l7 159 4 = true := recsK7OK_succ (lo := 159) (n := 3) r_159 (recsK7OK_succ (lo := 160) (n := 2) r_160 (recsK7OK_succ (lo := 161) (n := 1) r_161 (r_162)))

end BeatAvg.K.K7
