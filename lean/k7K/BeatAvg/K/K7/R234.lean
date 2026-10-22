import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_778 : treeK7OK l7 778 = true := by decide +kernel

theorem n_778 : (recAt l7 778).2.2.2.length ≤ 384 := by decide +kernel

theorem v_778_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 0 16 = true := by decide +kernel

theorem v_778_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 16 16 = true := by decide +kernel

theorem v_778_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 32 16 = true := by decide +kernel

theorem v_778_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 48 16 = true := by decide +kernel

theorem v_778_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 64 16 = true := by decide +kernel

theorem v_778_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 80 16 = true := by decide +kernel

theorem v_778_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 96 16 = true := by decide +kernel

theorem v_778_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 112 16 = true := by decide +kernel

theorem v_778_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 128 16 = true := by decide +kernel

theorem v_778_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 144 16 = true := by decide +kernel

theorem v_778_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 160 16 = true := by decide +kernel

theorem v_778_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 176 16 = true := by decide +kernel

theorem v_778_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 192 16 = true := by decide +kernel

theorem v_778_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 208 16 = true := by decide +kernel

theorem v_778_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 224 16 = true := by decide +kernel

theorem v_778_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 240 16 = true := by decide +kernel

theorem v_778_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 256 16 = true := by decide +kernel

theorem v_778_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 272 16 = true := by decide +kernel

theorem v_778_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 288 16 = true := by decide +kernel

theorem v_778_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 304 16 = true := by decide +kernel

theorem v_778_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 320 16 = true := by decide +kernel

theorem v_778_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 336 16 = true := by decide +kernel

theorem v_778_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 352 16 = true := by decide +kernel

theorem v_778_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 778 368 16 = true := by decide +kernel

theorem r_778 : recsK7OK T qscale den6 d14 lamN lamD l7 778 1 = true := recK7_of (n := 384) t_778 n_778 (leavesK7OK_add (lo := 0) (n := 16) (m := 368) v_778_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 352) v_778_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 336) v_778_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 320) v_778_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 304) v_778_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 288) v_778_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 272) v_778_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 256) v_778_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 240) v_778_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 224) v_778_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 208) v_778_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 192) v_778_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 176) v_778_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 160) v_778_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 144) v_778_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 128) v_778_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 112) v_778_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 96) v_778_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 80) v_778_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 64) v_778_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 48) v_778_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 32) v_778_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 16) v_778_22 (v_778_23))))))))))))))))))))))))

theorem rs_778 : recsK7OK T qscale den6 d14 lamN lamD l7 778 1 = true := r_778

end BeatAvg.K.K7
