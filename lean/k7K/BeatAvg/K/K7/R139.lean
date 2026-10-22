import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_466 : treeK7OK l7 466 = true := by decide +kernel

theorem n_466 : (recAt l7 466).2.2.2.length ≤ 112 := by decide +kernel

theorem v_466_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 466 0 16 = true := by decide +kernel

theorem v_466_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 466 16 16 = true := by decide +kernel

theorem v_466_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 466 32 16 = true := by decide +kernel

theorem v_466_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 466 48 16 = true := by decide +kernel

theorem v_466_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 466 64 16 = true := by decide +kernel

theorem v_466_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 466 80 16 = true := by decide +kernel

theorem v_466_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 466 96 16 = true := by decide +kernel

theorem r_466 : recsK7OK T qscale den6 d14 lamN lamD l7 466 1 = true := recK7_of (n := 112) t_466 n_466 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_466_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_466_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_466_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_466_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_466_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_466_5 (v_466_6)))))))

theorem t_467 : treeK7OK l7 467 = true := by decide +kernel

theorem n_467 : (recAt l7 467).2.2.2.length ≤ 144 := by decide +kernel

theorem v_467_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 0 16 = true := by decide +kernel

theorem v_467_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 16 16 = true := by decide +kernel

theorem v_467_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 32 16 = true := by decide +kernel

theorem v_467_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 48 16 = true := by decide +kernel

theorem v_467_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 64 16 = true := by decide +kernel

theorem v_467_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 80 16 = true := by decide +kernel

theorem v_467_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 96 16 = true := by decide +kernel

theorem v_467_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 112 16 = true := by decide +kernel

theorem v_467_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 467 128 16 = true := by decide +kernel

theorem r_467 : recsK7OK T qscale den6 d14 lamN lamD l7 467 1 = true := recK7_of (n := 144) t_467 n_467 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_467_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_467_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_467_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_467_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_467_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_467_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_467_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_467_7 (v_467_8)))))))))

theorem t_468 : treeK7OK l7 468 = true := by decide +kernel

theorem n_468 : (recAt l7 468).2.2.2.length ≤ 144 := by decide +kernel

theorem v_468_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 0 16 = true := by decide +kernel

theorem v_468_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 16 16 = true := by decide +kernel

theorem v_468_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 32 16 = true := by decide +kernel

theorem v_468_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 48 16 = true := by decide +kernel

theorem v_468_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 64 16 = true := by decide +kernel

theorem v_468_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 80 16 = true := by decide +kernel

theorem v_468_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 96 16 = true := by decide +kernel

theorem v_468_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 112 16 = true := by decide +kernel

theorem v_468_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 468 128 16 = true := by decide +kernel

theorem r_468 : recsK7OK T qscale den6 d14 lamN lamD l7 468 1 = true := recK7_of (n := 144) t_468 n_468 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_468_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_468_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_468_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_468_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_468_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_468_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_468_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_468_7 (v_468_8)))))))))

theorem rs_466 : recsK7OK T qscale den6 d14 lamN lamD l7 466 3 = true := recsK7OK_succ (lo := 466) (n := 2) r_466 (recsK7OK_succ (lo := 467) (n := 1) r_467 (r_468))

end BeatAvg.K.K7
