import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_232 : treeK7OK l7 232 = true := by decide +kernel

theorem n_232 : (recAt l7 232).2.2.2.length ≤ 128 := by decide +kernel

theorem v_232_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 0 16 = true := by decide +kernel

theorem v_232_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 16 16 = true := by decide +kernel

theorem v_232_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 32 16 = true := by decide +kernel

theorem v_232_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 48 16 = true := by decide +kernel

theorem v_232_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 64 16 = true := by decide +kernel

theorem v_232_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 80 16 = true := by decide +kernel

theorem v_232_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 96 16 = true := by decide +kernel

theorem v_232_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 232 112 16 = true := by decide +kernel

theorem r_232 : recsK7OK T qscale den6 d14 lamN lamD l7 232 1 = true := recK7_of (n := 128) t_232 n_232 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_232_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_232_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_232_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_232_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_232_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_232_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_232_6 (v_232_7))))))))

theorem t_233 : treeK7OK l7 233 = true := by decide +kernel

theorem n_233 : (recAt l7 233).2.2.2.length ≤ 112 := by decide +kernel

theorem v_233_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 233 0 16 = true := by decide +kernel

theorem v_233_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 233 16 16 = true := by decide +kernel

theorem v_233_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 233 32 16 = true := by decide +kernel

theorem v_233_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 233 48 16 = true := by decide +kernel

theorem v_233_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 233 64 16 = true := by decide +kernel

theorem v_233_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 233 80 16 = true := by decide +kernel

theorem v_233_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 233 96 16 = true := by decide +kernel

theorem r_233 : recsK7OK T qscale den6 d14 lamN lamD l7 233 1 = true := recK7_of (n := 112) t_233 n_233 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_233_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_233_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_233_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_233_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_233_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_233_5 (v_233_6)))))))

theorem t_234 : treeK7OK l7 234 = true := by decide +kernel

theorem n_234 : (recAt l7 234).2.2.2.length ≤ 80 := by decide +kernel

theorem v_234_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 234 0 16 = true := by decide +kernel

theorem v_234_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 234 16 16 = true := by decide +kernel

theorem v_234_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 234 32 16 = true := by decide +kernel

theorem v_234_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 234 48 16 = true := by decide +kernel

theorem v_234_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 234 64 16 = true := by decide +kernel

theorem r_234 : recsK7OK T qscale den6 d14 lamN lamD l7 234 1 = true := recK7_of (n := 80) t_234 n_234 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_234_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_234_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_234_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_234_3 (v_234_4)))))

theorem rs_232 : recsK7OK T qscale den6 d14 lamN lamD l7 232 3 = true := recsK7OK_succ (lo := 232) (n := 2) r_232 (recsK7OK_succ (lo := 233) (n := 1) r_233 (r_234))

end BeatAvg.K.K7
