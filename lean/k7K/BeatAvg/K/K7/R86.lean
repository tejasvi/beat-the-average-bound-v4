import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_333 : treeK7OK l7 333 = true := by decide +kernel

theorem n_333 : (recAt l7 333).2.2.2.length ≤ 512 := by decide +kernel

theorem v_333_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 0 16 = true := by decide +kernel

theorem v_333_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 16 16 = true := by decide +kernel

theorem v_333_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 32 16 = true := by decide +kernel

theorem v_333_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 48 16 = true := by decide +kernel

theorem v_333_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 64 16 = true := by decide +kernel

theorem v_333_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 80 16 = true := by decide +kernel

theorem v_333_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 96 16 = true := by decide +kernel

theorem v_333_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 112 16 = true := by decide +kernel

theorem v_333_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 128 16 = true := by decide +kernel

theorem v_333_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 144 16 = true := by decide +kernel

theorem v_333_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 160 16 = true := by decide +kernel

theorem v_333_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 176 16 = true := by decide +kernel

theorem v_333_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 192 16 = true := by decide +kernel

theorem v_333_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 208 16 = true := by decide +kernel

theorem v_333_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 224 16 = true := by decide +kernel

theorem v_333_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 240 16 = true := by decide +kernel

theorem v_333_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 256 16 = true := by decide +kernel

theorem v_333_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 272 16 = true := by decide +kernel

theorem v_333_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 288 16 = true := by decide +kernel

theorem v_333_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 304 16 = true := by decide +kernel

theorem v_333_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 320 16 = true := by decide +kernel

theorem v_333_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 336 16 = true := by decide +kernel

theorem v_333_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 352 16 = true := by decide +kernel

theorem v_333_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 368 16 = true := by decide +kernel

theorem v_333_24 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 384 16 = true := by decide +kernel

theorem v_333_25 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 400 16 = true := by decide +kernel

theorem v_333_26 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 416 16 = true := by decide +kernel

theorem v_333_27 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 432 16 = true := by decide +kernel

theorem v_333_28 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 448 16 = true := by decide +kernel

theorem v_333_29 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 464 16 = true := by decide +kernel

theorem v_333_30 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 480 16 = true := by decide +kernel

theorem v_333_31 : leavesK7OK T qscale den6 d14 lamN lamD l7 333 496 16 = true := by decide +kernel

theorem r_333 : recsK7OK T qscale den6 d14 lamN lamD l7 333 1 = true := recK7_of (n := 512) t_333 n_333 (leavesK7OK_add (lo := 0) (n := 16) (m := 496) v_333_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 480) v_333_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 464) v_333_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 448) v_333_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 432) v_333_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 416) v_333_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 400) v_333_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 384) v_333_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 368) v_333_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 352) v_333_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 336) v_333_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 320) v_333_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 304) v_333_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 288) v_333_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 272) v_333_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 256) v_333_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 240) v_333_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 224) v_333_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 208) v_333_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 192) v_333_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 176) v_333_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 160) v_333_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 144) v_333_22 (leavesK7OK_add (lo := 368) (n := 16) (m := 128) v_333_23 (leavesK7OK_add (lo := 384) (n := 16) (m := 112) v_333_24 (leavesK7OK_add (lo := 400) (n := 16) (m := 96) v_333_25 (leavesK7OK_add (lo := 416) (n := 16) (m := 80) v_333_26 (leavesK7OK_add (lo := 432) (n := 16) (m := 64) v_333_27 (leavesK7OK_add (lo := 448) (n := 16) (m := 48) v_333_28 (leavesK7OK_add (lo := 464) (n := 16) (m := 32) v_333_29 (leavesK7OK_add (lo := 480) (n := 16) (m := 16) v_333_30 (v_333_31))))))))))))))))))))))))))))))))

theorem rs_333 : recsK7OK T qscale den6 d14 lamN lamD l7 333 1 = true := r_333

end BeatAvg.K.K7
