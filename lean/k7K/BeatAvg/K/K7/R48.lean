import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_175 : treeK7OK l7 175 = true := by decide +kernel

theorem n_175 : (recAt l7 175).2.2.2.length ≤ 96 := by decide +kernel

theorem v_175_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 175 0 16 = true := by decide +kernel

theorem v_175_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 175 16 16 = true := by decide +kernel

theorem v_175_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 175 32 16 = true := by decide +kernel

theorem v_175_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 175 48 16 = true := by decide +kernel

theorem v_175_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 175 64 16 = true := by decide +kernel

theorem v_175_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 175 80 16 = true := by decide +kernel

theorem r_175 : recsK7OK T qscale den6 d14 lamN lamD l7 175 1 = true := recK7_of (n := 96) t_175 n_175 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_175_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_175_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_175_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_175_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_175_4 (v_175_5))))))

theorem t_176 : treeK7OK l7 176 = true := by decide +kernel

theorem n_176 : (recAt l7 176).2.2.2.length ≤ 80 := by decide +kernel

theorem v_176_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 176 0 16 = true := by decide +kernel

theorem v_176_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 176 16 16 = true := by decide +kernel

theorem v_176_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 176 32 16 = true := by decide +kernel

theorem v_176_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 176 48 16 = true := by decide +kernel

theorem v_176_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 176 64 16 = true := by decide +kernel

theorem r_176 : recsK7OK T qscale den6 d14 lamN lamD l7 176 1 = true := recK7_of (n := 80) t_176 n_176 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_176_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_176_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_176_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_176_3 (v_176_4)))))

theorem t_177 : treeK7OK l7 177 = true := by decide +kernel

theorem n_177 : (recAt l7 177).2.2.2.length ≤ 48 := by decide +kernel

theorem v_177_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 177 0 16 = true := by decide +kernel

theorem v_177_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 177 16 16 = true := by decide +kernel

theorem v_177_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 177 32 16 = true := by decide +kernel

theorem r_177 : recsK7OK T qscale den6 d14 lamN lamD l7 177 1 = true := recK7_of (n := 48) t_177 n_177 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_177_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_177_1 (v_177_2)))

theorem t_178 : treeK7OK l7 178 = true := by decide +kernel

theorem n_178 : (recAt l7 178).2.2.2.length ≤ 48 := by decide +kernel

theorem v_178_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 178 0 16 = true := by decide +kernel

theorem v_178_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 178 16 16 = true := by decide +kernel

theorem v_178_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 178 32 16 = true := by decide +kernel

theorem r_178 : recsK7OK T qscale den6 d14 lamN lamD l7 178 1 = true := recK7_of (n := 48) t_178 n_178 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_178_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_178_1 (v_178_2)))

theorem t_179 : treeK7OK l7 179 = true := by decide +kernel

theorem n_179 : (recAt l7 179).2.2.2.length ≤ 96 := by decide +kernel

theorem v_179_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 179 0 16 = true := by decide +kernel

theorem v_179_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 179 16 16 = true := by decide +kernel

theorem v_179_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 179 32 16 = true := by decide +kernel

theorem v_179_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 179 48 16 = true := by decide +kernel

theorem v_179_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 179 64 16 = true := by decide +kernel

theorem v_179_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 179 80 16 = true := by decide +kernel

theorem r_179 : recsK7OK T qscale den6 d14 lamN lamD l7 179 1 = true := recK7_of (n := 96) t_179 n_179 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_179_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_179_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_179_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_179_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_179_4 (v_179_5))))))

theorem rs_175 : recsK7OK T qscale den6 d14 lamN lamD l7 175 5 = true := recsK7OK_succ (lo := 175) (n := 4) r_175 (recsK7OK_succ (lo := 176) (n := 3) r_176 (recsK7OK_succ (lo := 177) (n := 2) r_177 (recsK7OK_succ (lo := 178) (n := 1) r_178 (r_179))))

end BeatAvg.K.K7
