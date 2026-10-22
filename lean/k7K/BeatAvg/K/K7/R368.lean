import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1107 : treeK7OK l7 1107 = true := by decide +kernel

theorem n_1107 : (recAt l7 1107).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1107_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1107 0 16 = true := by decide +kernel

theorem v_1107_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1107 16 16 = true := by decide +kernel

theorem v_1107_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1107 32 16 = true := by decide +kernel

theorem v_1107_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1107 48 16 = true := by decide +kernel

theorem v_1107_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1107 64 16 = true := by decide +kernel

theorem v_1107_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1107 80 16 = true := by decide +kernel

theorem v_1107_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1107 96 16 = true := by decide +kernel

theorem r_1107 : recsK7OK T qscale den6 d14 lamN lamD l7 1107 1 = true := recK7_of (n := 112) t_1107 n_1107 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1107_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1107_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1107_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1107_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1107_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1107_5 (v_1107_6)))))))

theorem t_1108 : treeK7OK l7 1108 = true := by decide +kernel

theorem n_1108 : (recAt l7 1108).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1108_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1108 0 16 = true := by decide +kernel

theorem v_1108_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1108 16 16 = true := by decide +kernel

theorem v_1108_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1108 32 16 = true := by decide +kernel

theorem v_1108_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1108 48 16 = true := by decide +kernel

theorem v_1108_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1108 64 16 = true := by decide +kernel

theorem v_1108_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1108 80 16 = true := by decide +kernel

theorem v_1108_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1108 96 16 = true := by decide +kernel

theorem r_1108 : recsK7OK T qscale den6 d14 lamN lamD l7 1108 1 = true := recK7_of (n := 112) t_1108 n_1108 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1108_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1108_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1108_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1108_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1108_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1108_5 (v_1108_6)))))))

theorem t_1109 : treeK7OK l7 1109 = true := by decide +kernel

theorem n_1109 : (recAt l7 1109).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1109_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1109 0 16 = true := by decide +kernel

theorem v_1109_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1109 16 16 = true := by decide +kernel

theorem v_1109_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1109 32 16 = true := by decide +kernel

theorem v_1109_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1109 48 16 = true := by decide +kernel

theorem v_1109_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1109 64 16 = true := by decide +kernel

theorem v_1109_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1109 80 16 = true := by decide +kernel

theorem r_1109 : recsK7OK T qscale den6 d14 lamN lamD l7 1109 1 = true := recK7_of (n := 96) t_1109 n_1109 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1109_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1109_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1109_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1109_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1109_4 (v_1109_5))))))

theorem t_1110 : treeK7OK l7 1110 = true := by decide +kernel

theorem n_1110 : (recAt l7 1110).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1110_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1110 0 16 = true := by decide +kernel

theorem v_1110_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1110 16 16 = true := by decide +kernel

theorem v_1110_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1110 32 16 = true := by decide +kernel

theorem v_1110_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1110 48 16 = true := by decide +kernel

theorem v_1110_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1110 64 16 = true := by decide +kernel

theorem v_1110_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1110 80 16 = true := by decide +kernel

theorem r_1110 : recsK7OK T qscale den6 d14 lamN lamD l7 1110 1 = true := recK7_of (n := 96) t_1110 n_1110 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1110_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1110_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1110_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1110_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1110_4 (v_1110_5))))))

theorem rs_1107 : recsK7OK T qscale den6 d14 lamN lamD l7 1107 4 = true := recsK7OK_succ (lo := 1107) (n := 3) r_1107 (recsK7OK_succ (lo := 1108) (n := 2) r_1108 (recsK7OK_succ (lo := 1109) (n := 1) r_1109 (r_1110)))

end BeatAvg.K.K7
