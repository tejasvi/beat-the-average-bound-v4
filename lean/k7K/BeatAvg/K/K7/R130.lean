import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_435 : treeK7OK l7 435 = true := by decide +kernel

theorem n_435 : (recAt l7 435).2.2.2.length ≤ 192 := by decide +kernel

theorem v_435_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 0 16 = true := by decide +kernel

theorem v_435_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 16 16 = true := by decide +kernel

theorem v_435_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 32 16 = true := by decide +kernel

theorem v_435_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 48 16 = true := by decide +kernel

theorem v_435_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 64 16 = true := by decide +kernel

theorem v_435_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 80 16 = true := by decide +kernel

theorem v_435_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 96 16 = true := by decide +kernel

theorem v_435_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 112 16 = true := by decide +kernel

theorem v_435_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 128 16 = true := by decide +kernel

theorem v_435_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 144 16 = true := by decide +kernel

theorem v_435_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 160 16 = true := by decide +kernel

theorem v_435_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 435 176 16 = true := by decide +kernel

theorem r_435 : recsK7OK T qscale den6 d14 lamN lamD l7 435 1 = true := recK7_of (n := 192) t_435 n_435 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_435_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_435_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_435_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_435_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_435_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_435_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_435_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_435_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_435_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_435_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_435_10 (v_435_11))))))))))))

theorem t_436 : treeK7OK l7 436 = true := by decide +kernel

theorem n_436 : (recAt l7 436).2.2.2.length ≤ 112 := by decide +kernel

theorem v_436_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 436 0 16 = true := by decide +kernel

theorem v_436_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 436 16 16 = true := by decide +kernel

theorem v_436_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 436 32 16 = true := by decide +kernel

theorem v_436_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 436 48 16 = true := by decide +kernel

theorem v_436_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 436 64 16 = true := by decide +kernel

theorem v_436_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 436 80 16 = true := by decide +kernel

theorem v_436_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 436 96 16 = true := by decide +kernel

theorem r_436 : recsK7OK T qscale den6 d14 lamN lamD l7 436 1 = true := recK7_of (n := 112) t_436 n_436 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_436_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_436_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_436_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_436_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_436_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_436_5 (v_436_6)))))))

theorem rs_435 : recsK7OK T qscale den6 d14 lamN lamD l7 435 2 = true := recsK7OK_succ (lo := 435) (n := 1) r_435 (r_436)

end BeatAvg.K.K7
