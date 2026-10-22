import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_163 : treeK7OK l7 163 = true := by decide +kernel

theorem n_163 : (recAt l7 163).2.2.2.length ≤ 64 := by decide +kernel

theorem v_163_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 163 0 16 = true := by decide +kernel

theorem v_163_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 163 16 16 = true := by decide +kernel

theorem v_163_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 163 32 16 = true := by decide +kernel

theorem v_163_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 163 48 16 = true := by decide +kernel

theorem r_163 : recsK7OK T qscale den6 d14 lamN lamD l7 163 1 = true := recK7_of (n := 64) t_163 n_163 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_163_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_163_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_163_2 (v_163_3))))

theorem t_164 : treeK7OK l7 164 = true := by decide +kernel

theorem n_164 : (recAt l7 164).2.2.2.length ≤ 80 := by decide +kernel

theorem v_164_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 164 0 16 = true := by decide +kernel

theorem v_164_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 164 16 16 = true := by decide +kernel

theorem v_164_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 164 32 16 = true := by decide +kernel

theorem v_164_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 164 48 16 = true := by decide +kernel

theorem v_164_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 164 64 16 = true := by decide +kernel

theorem r_164 : recsK7OK T qscale den6 d14 lamN lamD l7 164 1 = true := recK7_of (n := 80) t_164 n_164 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_164_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_164_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_164_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_164_3 (v_164_4)))))

theorem t_165 : treeK7OK l7 165 = true := by decide +kernel

theorem n_165 : (recAt l7 165).2.2.2.length ≤ 64 := by decide +kernel

theorem v_165_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 165 0 16 = true := by decide +kernel

theorem v_165_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 165 16 16 = true := by decide +kernel

theorem v_165_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 165 32 16 = true := by decide +kernel

theorem v_165_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 165 48 16 = true := by decide +kernel

theorem r_165 : recsK7OK T qscale den6 d14 lamN lamD l7 165 1 = true := recK7_of (n := 64) t_165 n_165 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_165_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_165_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_165_2 (v_165_3))))

theorem t_166 : treeK7OK l7 166 = true := by decide +kernel

theorem n_166 : (recAt l7 166).2.2.2.length ≤ 48 := by decide +kernel

theorem v_166_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 166 0 16 = true := by decide +kernel

theorem v_166_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 166 16 16 = true := by decide +kernel

theorem v_166_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 166 32 16 = true := by decide +kernel

theorem r_166 : recsK7OK T qscale den6 d14 lamN lamD l7 166 1 = true := recK7_of (n := 48) t_166 n_166 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_166_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_166_1 (v_166_2)))

theorem t_167 : treeK7OK l7 167 = true := by decide +kernel

theorem n_167 : (recAt l7 167).2.2.2.length ≤ 128 := by decide +kernel

theorem v_167_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 0 16 = true := by decide +kernel

theorem v_167_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 16 16 = true := by decide +kernel

theorem v_167_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 32 16 = true := by decide +kernel

theorem v_167_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 48 16 = true := by decide +kernel

theorem v_167_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 64 16 = true := by decide +kernel

theorem v_167_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 80 16 = true := by decide +kernel

theorem v_167_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 96 16 = true := by decide +kernel

theorem v_167_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 167 112 16 = true := by decide +kernel

theorem r_167 : recsK7OK T qscale den6 d14 lamN lamD l7 167 1 = true := recK7_of (n := 128) t_167 n_167 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_167_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_167_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_167_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_167_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_167_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_167_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_167_6 (v_167_7))))))))

theorem rs_163 : recsK7OK T qscale den6 d14 lamN lamD l7 163 5 = true := recsK7OK_succ (lo := 163) (n := 4) r_163 (recsK7OK_succ (lo := 164) (n := 3) r_164 (recsK7OK_succ (lo := 165) (n := 2) r_165 (recsK7OK_succ (lo := 166) (n := 1) r_166 (r_167))))

end BeatAvg.K.K7
