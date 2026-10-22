import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_184 : treeK7OK l7 184 = true := by decide +kernel

theorem n_184 : (recAt l7 184).2.2.2.length ≤ 112 := by decide +kernel

theorem v_184_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 184 0 16 = true := by decide +kernel

theorem v_184_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 184 16 16 = true := by decide +kernel

theorem v_184_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 184 32 16 = true := by decide +kernel

theorem v_184_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 184 48 16 = true := by decide +kernel

theorem v_184_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 184 64 16 = true := by decide +kernel

theorem v_184_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 184 80 16 = true := by decide +kernel

theorem v_184_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 184 96 16 = true := by decide +kernel

theorem r_184 : recsK7OK T qscale den6 d14 lamN lamD l7 184 1 = true := recK7_of (n := 112) t_184 n_184 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_184_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_184_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_184_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_184_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_184_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_184_5 (v_184_6)))))))

theorem t_185 : treeK7OK l7 185 = true := by decide +kernel

theorem n_185 : (recAt l7 185).2.2.2.length ≤ 96 := by decide +kernel

theorem v_185_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 185 0 16 = true := by decide +kernel

theorem v_185_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 185 16 16 = true := by decide +kernel

theorem v_185_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 185 32 16 = true := by decide +kernel

theorem v_185_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 185 48 16 = true := by decide +kernel

theorem v_185_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 185 64 16 = true := by decide +kernel

theorem v_185_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 185 80 16 = true := by decide +kernel

theorem r_185 : recsK7OK T qscale den6 d14 lamN lamD l7 185 1 = true := recK7_of (n := 96) t_185 n_185 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_185_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_185_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_185_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_185_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_185_4 (v_185_5))))))

theorem t_186 : treeK7OK l7 186 = true := by decide +kernel

theorem n_186 : (recAt l7 186).2.2.2.length ≤ 96 := by decide +kernel

theorem v_186_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 186 0 16 = true := by decide +kernel

theorem v_186_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 186 16 16 = true := by decide +kernel

theorem v_186_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 186 32 16 = true := by decide +kernel

theorem v_186_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 186 48 16 = true := by decide +kernel

theorem v_186_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 186 64 16 = true := by decide +kernel

theorem v_186_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 186 80 16 = true := by decide +kernel

theorem r_186 : recsK7OK T qscale den6 d14 lamN lamD l7 186 1 = true := recK7_of (n := 96) t_186 n_186 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_186_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_186_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_186_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_186_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_186_4 (v_186_5))))))

theorem rs_184 : recsK7OK T qscale den6 d14 lamN lamD l7 184 3 = true := recsK7OK_succ (lo := 184) (n := 2) r_184 (recsK7OK_succ (lo := 185) (n := 1) r_185 (r_186))

end BeatAvg.K.K7
