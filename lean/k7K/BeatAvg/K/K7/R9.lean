import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_25 : treeK7OK l7 25 = true := by decide +kernel

theorem n_25 : (recAt l7 25).2.2.2.length ≤ 48 := by decide +kernel

theorem v_25_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 25 0 16 = true := by decide +kernel

theorem v_25_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 25 16 16 = true := by decide +kernel

theorem v_25_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 25 32 16 = true := by decide +kernel

theorem r_25 : recsK7OK T qscale den6 d14 lamN lamD l7 25 1 = true := recK7_of (n := 48) t_25 n_25 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_25_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_25_1 (v_25_2)))

theorem t_26 : treeK7OK l7 26 = true := by decide +kernel

theorem n_26 : (recAt l7 26).2.2.2.length ≤ 128 := by decide +kernel

theorem v_26_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 0 16 = true := by decide +kernel

theorem v_26_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 16 16 = true := by decide +kernel

theorem v_26_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 32 16 = true := by decide +kernel

theorem v_26_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 48 16 = true := by decide +kernel

theorem v_26_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 64 16 = true := by decide +kernel

theorem v_26_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 80 16 = true := by decide +kernel

theorem v_26_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 96 16 = true := by decide +kernel

theorem v_26_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 26 112 16 = true := by decide +kernel

theorem r_26 : recsK7OK T qscale den6 d14 lamN lamD l7 26 1 = true := recK7_of (n := 128) t_26 n_26 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_26_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_26_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_26_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_26_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_26_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_26_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_26_6 (v_26_7))))))))

theorem t_27 : treeK7OK l7 27 = true := by decide +kernel

theorem n_27 : (recAt l7 27).2.2.2.length ≤ 48 := by decide +kernel

theorem v_27_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 27 0 16 = true := by decide +kernel

theorem v_27_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 27 16 16 = true := by decide +kernel

theorem v_27_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 27 32 16 = true := by decide +kernel

theorem r_27 : recsK7OK T qscale den6 d14 lamN lamD l7 27 1 = true := recK7_of (n := 48) t_27 n_27 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_27_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_27_1 (v_27_2)))

theorem rs_25 : recsK7OK T qscale den6 d14 lamN lamD l7 25 3 = true := recsK7OK_succ (lo := 25) (n := 2) r_25 (recsK7OK_succ (lo := 26) (n := 1) r_26 (r_27))

end BeatAvg.K.K7
