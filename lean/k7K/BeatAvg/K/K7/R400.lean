import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1224 : treeK7OK l7 1224 = true := by decide +kernel

theorem n_1224 : (recAt l7 1224).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1224_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 0 16 = true := by decide +kernel

theorem v_1224_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 16 16 = true := by decide +kernel

theorem v_1224_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 32 16 = true := by decide +kernel

theorem v_1224_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 48 16 = true := by decide +kernel

theorem v_1224_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 64 16 = true := by decide +kernel

theorem v_1224_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 80 16 = true := by decide +kernel

theorem v_1224_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 96 16 = true := by decide +kernel

theorem v_1224_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1224 112 16 = true := by decide +kernel

theorem r_1224 : recsK7OK T qscale den6 d14 lamN lamD l7 1224 1 = true := recK7_of (n := 128) t_1224 n_1224 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1224_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1224_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1224_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1224_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1224_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1224_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1224_6 (v_1224_7))))))))

theorem t_1225 : treeK7OK l7 1225 = true := by decide +kernel

theorem n_1225 : (recAt l7 1225).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1225_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 0 16 = true := by decide +kernel

theorem v_1225_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 16 16 = true := by decide +kernel

theorem v_1225_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 32 16 = true := by decide +kernel

theorem v_1225_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 48 16 = true := by decide +kernel

theorem v_1225_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 64 16 = true := by decide +kernel

theorem v_1225_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 80 16 = true := by decide +kernel

theorem v_1225_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 96 16 = true := by decide +kernel

theorem v_1225_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1225 112 16 = true := by decide +kernel

theorem r_1225 : recsK7OK T qscale den6 d14 lamN lamD l7 1225 1 = true := recK7_of (n := 128) t_1225 n_1225 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1225_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1225_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1225_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1225_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1225_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1225_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1225_6 (v_1225_7))))))))

theorem t_1226 : treeK7OK l7 1226 = true := by decide +kernel

theorem n_1226 : (recAt l7 1226).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1226_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 0 16 = true := by decide +kernel

theorem v_1226_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 16 16 = true := by decide +kernel

theorem v_1226_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 32 16 = true := by decide +kernel

theorem v_1226_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 48 16 = true := by decide +kernel

theorem v_1226_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 64 16 = true := by decide +kernel

theorem v_1226_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 80 16 = true := by decide +kernel

theorem v_1226_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 96 16 = true := by decide +kernel

theorem v_1226_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1226 112 16 = true := by decide +kernel

theorem r_1226 : recsK7OK T qscale den6 d14 lamN lamD l7 1226 1 = true := recK7_of (n := 128) t_1226 n_1226 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1226_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1226_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1226_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1226_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1226_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1226_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1226_6 (v_1226_7))))))))

theorem rs_1224 : recsK7OK T qscale den6 d14 lamN lamD l7 1224 3 = true := recsK7OK_succ (lo := 1224) (n := 2) r_1224 (recsK7OK_succ (lo := 1225) (n := 1) r_1225 (r_1226))

end BeatAvg.K.K7
