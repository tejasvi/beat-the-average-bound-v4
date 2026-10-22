import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_780 : treeK7OK l7 780 = true := by decide +kernel

theorem n_780 : (recAt l7 780).2.2.2.length ≤ 256 := by decide +kernel

theorem v_780_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 0 16 = true := by decide +kernel

theorem v_780_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 16 16 = true := by decide +kernel

theorem v_780_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 32 16 = true := by decide +kernel

theorem v_780_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 48 16 = true := by decide +kernel

theorem v_780_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 64 16 = true := by decide +kernel

theorem v_780_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 80 16 = true := by decide +kernel

theorem v_780_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 96 16 = true := by decide +kernel

theorem v_780_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 112 16 = true := by decide +kernel

theorem v_780_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 128 16 = true := by decide +kernel

theorem v_780_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 144 16 = true := by decide +kernel

theorem v_780_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 160 16 = true := by decide +kernel

theorem v_780_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 176 16 = true := by decide +kernel

theorem v_780_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 192 16 = true := by decide +kernel

theorem v_780_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 208 16 = true := by decide +kernel

theorem v_780_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 224 16 = true := by decide +kernel

theorem v_780_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 780 240 16 = true := by decide +kernel

theorem r_780 : recsK7OK T qscale den6 d14 lamN lamD l7 780 1 = true := recK7_of (n := 256) t_780 n_780 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_780_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_780_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_780_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_780_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_780_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_780_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_780_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_780_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_780_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_780_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_780_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_780_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_780_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_780_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_780_14 (v_780_15))))))))))))))))

theorem rs_780 : recsK7OK T qscale den6 d14 lamN lamD l7 780 1 = true := r_780

end BeatAvg.K.K7
