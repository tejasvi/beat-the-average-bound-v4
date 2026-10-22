import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_431 : treeK7OK l7 431 = true := by decide +kernel

theorem n_431 : (recAt l7 431).2.2.2.length ≤ 160 := by decide +kernel

theorem v_431_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 0 16 = true := by decide +kernel

theorem v_431_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 16 16 = true := by decide +kernel

theorem v_431_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 32 16 = true := by decide +kernel

theorem v_431_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 48 16 = true := by decide +kernel

theorem v_431_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 64 16 = true := by decide +kernel

theorem v_431_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 80 16 = true := by decide +kernel

theorem v_431_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 96 16 = true := by decide +kernel

theorem v_431_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 112 16 = true := by decide +kernel

theorem v_431_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 128 16 = true := by decide +kernel

theorem v_431_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 431 144 16 = true := by decide +kernel

theorem r_431 : recsK7OK T qscale den6 d14 lamN lamD l7 431 1 = true := recK7_of (n := 160) t_431 n_431 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_431_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_431_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_431_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_431_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_431_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_431_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_431_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_431_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_431_8 (v_431_9))))))))))

theorem t_432 : treeK7OK l7 432 = true := by decide +kernel

theorem n_432 : (recAt l7 432).2.2.2.length ≤ 128 := by decide +kernel

theorem v_432_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 0 16 = true := by decide +kernel

theorem v_432_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 16 16 = true := by decide +kernel

theorem v_432_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 32 16 = true := by decide +kernel

theorem v_432_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 48 16 = true := by decide +kernel

theorem v_432_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 64 16 = true := by decide +kernel

theorem v_432_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 80 16 = true := by decide +kernel

theorem v_432_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 96 16 = true := by decide +kernel

theorem v_432_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 432 112 16 = true := by decide +kernel

theorem r_432 : recsK7OK T qscale den6 d14 lamN lamD l7 432 1 = true := recK7_of (n := 128) t_432 n_432 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_432_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_432_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_432_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_432_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_432_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_432_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_432_6 (v_432_7))))))))

theorem t_433 : treeK7OK l7 433 = true := by decide +kernel

theorem n_433 : (recAt l7 433).2.2.2.length ≤ 16 := by decide +kernel

theorem v_433_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 433 0 16 = true := by decide +kernel

theorem r_433 : recsK7OK T qscale den6 d14 lamN lamD l7 433 1 = true := recK7_of (n := 16) t_433 n_433 (v_433_0)

theorem rs_431 : recsK7OK T qscale den6 d14 lamN lamD l7 431 3 = true := recsK7OK_succ (lo := 431) (n := 2) r_431 (recsK7OK_succ (lo := 432) (n := 1) r_432 (r_433))

end BeatAvg.K.K7
