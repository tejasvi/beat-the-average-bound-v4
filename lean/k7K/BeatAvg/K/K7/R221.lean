import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_750 : treeK7OK l7 750 = true := by decide +kernel

theorem n_750 : (recAt l7 750).2.2.2.length ≤ 384 := by decide +kernel

theorem v_750_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 0 16 = true := by decide +kernel

theorem v_750_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 16 16 = true := by decide +kernel

theorem v_750_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 32 16 = true := by decide +kernel

theorem v_750_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 48 16 = true := by decide +kernel

theorem v_750_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 64 16 = true := by decide +kernel

theorem v_750_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 80 16 = true := by decide +kernel

theorem v_750_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 96 16 = true := by decide +kernel

theorem v_750_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 112 16 = true := by decide +kernel

theorem v_750_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 128 16 = true := by decide +kernel

theorem v_750_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 144 16 = true := by decide +kernel

theorem v_750_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 160 16 = true := by decide +kernel

theorem v_750_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 176 16 = true := by decide +kernel

theorem v_750_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 192 16 = true := by decide +kernel

theorem v_750_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 208 16 = true := by decide +kernel

theorem v_750_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 224 16 = true := by decide +kernel

theorem v_750_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 240 16 = true := by decide +kernel

theorem v_750_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 256 16 = true := by decide +kernel

theorem v_750_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 272 16 = true := by decide +kernel

theorem v_750_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 288 16 = true := by decide +kernel

theorem v_750_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 304 16 = true := by decide +kernel

theorem v_750_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 320 16 = true := by decide +kernel

theorem v_750_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 336 16 = true := by decide +kernel

theorem v_750_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 352 16 = true := by decide +kernel

theorem v_750_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 750 368 16 = true := by decide +kernel

theorem r_750 : recsK7OK T qscale den6 d14 lamN lamD l7 750 1 = true := recK7_of (n := 384) t_750 n_750 (leavesK7OK_add (lo := 0) (n := 16) (m := 368) v_750_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 352) v_750_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 336) v_750_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 320) v_750_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 304) v_750_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 288) v_750_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 272) v_750_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 256) v_750_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 240) v_750_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 224) v_750_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 208) v_750_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 192) v_750_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 176) v_750_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 160) v_750_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 144) v_750_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 128) v_750_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 112) v_750_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 96) v_750_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 80) v_750_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 64) v_750_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 48) v_750_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 32) v_750_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 16) v_750_22 (v_750_23))))))))))))))))))))))))

theorem rs_750 : recsK7OK T qscale den6 d14 lamN lamD l7 750 1 = true := r_750

end BeatAvg.K.K7
