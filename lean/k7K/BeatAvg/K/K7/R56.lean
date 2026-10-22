import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_207 : treeK7OK l7 207 = true := by decide +kernel

theorem n_207 : (recAt l7 207).2.2.2.length ≤ 96 := by decide +kernel

theorem v_207_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 207 0 16 = true := by decide +kernel

theorem v_207_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 207 16 16 = true := by decide +kernel

theorem v_207_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 207 32 16 = true := by decide +kernel

theorem v_207_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 207 48 16 = true := by decide +kernel

theorem v_207_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 207 64 16 = true := by decide +kernel

theorem v_207_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 207 80 16 = true := by decide +kernel

theorem r_207 : recsK7OK T qscale den6 d14 lamN lamD l7 207 1 = true := recK7_of (n := 96) t_207 n_207 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_207_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_207_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_207_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_207_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_207_4 (v_207_5))))))

theorem t_208 : treeK7OK l7 208 = true := by decide +kernel

theorem n_208 : (recAt l7 208).2.2.2.length ≤ 80 := by decide +kernel

theorem v_208_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 208 0 16 = true := by decide +kernel

theorem v_208_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 208 16 16 = true := by decide +kernel

theorem v_208_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 208 32 16 = true := by decide +kernel

theorem v_208_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 208 48 16 = true := by decide +kernel

theorem v_208_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 208 64 16 = true := by decide +kernel

theorem r_208 : recsK7OK T qscale den6 d14 lamN lamD l7 208 1 = true := recK7_of (n := 80) t_208 n_208 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_208_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_208_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_208_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_208_3 (v_208_4)))))

theorem t_209 : treeK7OK l7 209 = true := by decide +kernel

theorem n_209 : (recAt l7 209).2.2.2.length ≤ 128 := by decide +kernel

theorem v_209_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 0 16 = true := by decide +kernel

theorem v_209_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 16 16 = true := by decide +kernel

theorem v_209_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 32 16 = true := by decide +kernel

theorem v_209_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 48 16 = true := by decide +kernel

theorem v_209_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 64 16 = true := by decide +kernel

theorem v_209_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 80 16 = true := by decide +kernel

theorem v_209_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 96 16 = true := by decide +kernel

theorem v_209_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 209 112 16 = true := by decide +kernel

theorem r_209 : recsK7OK T qscale den6 d14 lamN lamD l7 209 1 = true := recK7_of (n := 128) t_209 n_209 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_209_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_209_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_209_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_209_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_209_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_209_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_209_6 (v_209_7))))))))

theorem t_210 : treeK7OK l7 210 = true := by decide +kernel

theorem n_210 : (recAt l7 210).2.2.2.length ≤ 32 := by decide +kernel

theorem v_210_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 210 0 16 = true := by decide +kernel

theorem v_210_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 210 16 16 = true := by decide +kernel

theorem r_210 : recsK7OK T qscale den6 d14 lamN lamD l7 210 1 = true := recK7_of (n := 32) t_210 n_210 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_210_0 (v_210_1))

theorem rs_207 : recsK7OK T qscale den6 d14 lamN lamD l7 207 4 = true := recsK7OK_succ (lo := 207) (n := 3) r_207 (recsK7OK_succ (lo := 208) (n := 2) r_208 (recsK7OK_succ (lo := 209) (n := 1) r_209 (r_210)))

end BeatAvg.K.K7
