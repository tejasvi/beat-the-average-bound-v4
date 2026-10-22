import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_365 : treeK7OK l7 365 = true := by decide +kernel

theorem n_365 : (recAt l7 365).2.2.2.length ≤ 80 := by decide +kernel

theorem v_365_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 365 0 16 = true := by decide +kernel

theorem v_365_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 365 16 16 = true := by decide +kernel

theorem v_365_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 365 32 16 = true := by decide +kernel

theorem v_365_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 365 48 16 = true := by decide +kernel

theorem v_365_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 365 64 16 = true := by decide +kernel

theorem r_365 : recsK7OK T qscale den6 d14 lamN lamD l7 365 1 = true := recK7_of (n := 80) t_365 n_365 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_365_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_365_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_365_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_365_3 (v_365_4)))))

theorem t_366 : treeK7OK l7 366 = true := by decide +kernel

theorem n_366 : (recAt l7 366).2.2.2.length ≤ 144 := by decide +kernel

theorem v_366_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 0 16 = true := by decide +kernel

theorem v_366_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 16 16 = true := by decide +kernel

theorem v_366_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 32 16 = true := by decide +kernel

theorem v_366_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 48 16 = true := by decide +kernel

theorem v_366_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 64 16 = true := by decide +kernel

theorem v_366_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 80 16 = true := by decide +kernel

theorem v_366_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 96 16 = true := by decide +kernel

theorem v_366_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 112 16 = true := by decide +kernel

theorem v_366_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 366 128 16 = true := by decide +kernel

theorem r_366 : recsK7OK T qscale den6 d14 lamN lamD l7 366 1 = true := recK7_of (n := 144) t_366 n_366 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_366_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_366_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_366_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_366_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_366_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_366_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_366_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_366_7 (v_366_8)))))))))

theorem t_367 : treeK7OK l7 367 = true := by decide +kernel

theorem n_367 : (recAt l7 367).2.2.2.length ≤ 80 := by decide +kernel

theorem v_367_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 367 0 16 = true := by decide +kernel

theorem v_367_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 367 16 16 = true := by decide +kernel

theorem v_367_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 367 32 16 = true := by decide +kernel

theorem v_367_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 367 48 16 = true := by decide +kernel

theorem v_367_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 367 64 16 = true := by decide +kernel

theorem r_367 : recsK7OK T qscale den6 d14 lamN lamD l7 367 1 = true := recK7_of (n := 80) t_367 n_367 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_367_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_367_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_367_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_367_3 (v_367_4)))))

theorem t_368 : treeK7OK l7 368 = true := by decide +kernel

theorem n_368 : (recAt l7 368).2.2.2.length ≤ 48 := by decide +kernel

theorem v_368_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 368 0 16 = true := by decide +kernel

theorem v_368_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 368 16 16 = true := by decide +kernel

theorem v_368_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 368 32 16 = true := by decide +kernel

theorem r_368 : recsK7OK T qscale den6 d14 lamN lamD l7 368 1 = true := recK7_of (n := 48) t_368 n_368 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_368_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_368_1 (v_368_2)))

theorem rs_365 : recsK7OK T qscale den6 d14 lamN lamD l7 365 4 = true := recsK7OK_succ (lo := 365) (n := 3) r_365 (recsK7OK_succ (lo := 366) (n := 2) r_366 (recsK7OK_succ (lo := 367) (n := 1) r_367 (r_368)))

end BeatAvg.K.K7
