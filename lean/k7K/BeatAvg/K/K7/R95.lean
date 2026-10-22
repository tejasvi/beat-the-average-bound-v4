import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_347 : treeK7OK l7 347 = true := by decide +kernel

theorem n_347 : (recAt l7 347).2.2.2.length ≤ 384 := by decide +kernel

theorem v_347_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 0 16 = true := by decide +kernel

theorem v_347_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 16 16 = true := by decide +kernel

theorem v_347_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 32 16 = true := by decide +kernel

theorem v_347_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 48 16 = true := by decide +kernel

theorem v_347_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 64 16 = true := by decide +kernel

theorem v_347_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 80 16 = true := by decide +kernel

theorem v_347_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 96 16 = true := by decide +kernel

theorem v_347_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 112 16 = true := by decide +kernel

theorem v_347_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 128 16 = true := by decide +kernel

theorem v_347_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 144 16 = true := by decide +kernel

theorem v_347_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 160 16 = true := by decide +kernel

theorem v_347_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 176 16 = true := by decide +kernel

theorem v_347_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 192 16 = true := by decide +kernel

theorem v_347_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 208 16 = true := by decide +kernel

theorem v_347_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 224 16 = true := by decide +kernel

theorem v_347_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 240 16 = true := by decide +kernel

theorem v_347_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 256 16 = true := by decide +kernel

theorem v_347_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 272 16 = true := by decide +kernel

theorem v_347_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 288 16 = true := by decide +kernel

theorem v_347_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 304 16 = true := by decide +kernel

theorem v_347_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 320 16 = true := by decide +kernel

theorem v_347_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 336 16 = true := by decide +kernel

theorem v_347_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 352 16 = true := by decide +kernel

theorem v_347_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 347 368 16 = true := by decide +kernel

theorem r_347 : recsK7OK T qscale den6 d14 lamN lamD l7 347 1 = true := recK7_of (n := 384) t_347 n_347 (leavesK7OK_add (lo := 0) (n := 16) (m := 368) v_347_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 352) v_347_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 336) v_347_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 320) v_347_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 304) v_347_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 288) v_347_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 272) v_347_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 256) v_347_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 240) v_347_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 224) v_347_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 208) v_347_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 192) v_347_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 176) v_347_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 160) v_347_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 144) v_347_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 128) v_347_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 112) v_347_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 96) v_347_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 80) v_347_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 64) v_347_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 48) v_347_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 32) v_347_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 16) v_347_22 (v_347_23))))))))))))))))))))))))

theorem rs_347 : recsK7OK T qscale den6 d14 lamN lamD l7 347 1 = true := r_347

end BeatAvg.K.K7
