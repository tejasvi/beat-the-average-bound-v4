import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_434 : treeK7OK l7 434 = true := by decide +kernel

theorem n_434 : (recAt l7 434).2.2.2.length ≤ 224 := by decide +kernel

theorem v_434_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 0 16 = true := by decide +kernel

theorem v_434_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 16 16 = true := by decide +kernel

theorem v_434_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 32 16 = true := by decide +kernel

theorem v_434_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 48 16 = true := by decide +kernel

theorem v_434_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 64 16 = true := by decide +kernel

theorem v_434_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 80 16 = true := by decide +kernel

theorem v_434_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 96 16 = true := by decide +kernel

theorem v_434_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 112 16 = true := by decide +kernel

theorem v_434_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 128 16 = true := by decide +kernel

theorem v_434_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 144 16 = true := by decide +kernel

theorem v_434_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 160 16 = true := by decide +kernel

theorem v_434_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 176 16 = true := by decide +kernel

theorem v_434_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 192 16 = true := by decide +kernel

theorem v_434_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 434 208 16 = true := by decide +kernel

theorem r_434 : recsK7OK T qscale den6 d14 lamN lamD l7 434 1 = true := recK7_of (n := 224) t_434 n_434 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_434_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_434_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_434_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_434_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_434_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_434_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_434_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_434_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_434_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_434_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_434_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_434_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_434_12 (v_434_13))))))))))))))

theorem rs_434 : recsK7OK T qscale den6 d14 lamN lamD l7 434 1 = true := r_434

end BeatAvg.K.K7
