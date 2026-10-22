import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_336 : treeK7OK l7 336 = true := by decide +kernel

theorem n_336 : (recAt l7 336).2.2.2.length ≤ 352 := by decide +kernel

theorem v_336_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 0 16 = true := by decide +kernel

theorem v_336_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 16 16 = true := by decide +kernel

theorem v_336_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 32 16 = true := by decide +kernel

theorem v_336_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 48 16 = true := by decide +kernel

theorem v_336_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 64 16 = true := by decide +kernel

theorem v_336_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 80 16 = true := by decide +kernel

theorem v_336_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 96 16 = true := by decide +kernel

theorem v_336_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 112 16 = true := by decide +kernel

theorem v_336_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 128 16 = true := by decide +kernel

theorem v_336_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 144 16 = true := by decide +kernel

theorem v_336_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 160 16 = true := by decide +kernel

theorem v_336_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 176 16 = true := by decide +kernel

theorem v_336_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 192 16 = true := by decide +kernel

theorem v_336_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 208 16 = true := by decide +kernel

theorem v_336_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 224 16 = true := by decide +kernel

theorem v_336_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 240 16 = true := by decide +kernel

theorem v_336_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 256 16 = true := by decide +kernel

theorem v_336_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 272 16 = true := by decide +kernel

theorem v_336_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 288 16 = true := by decide +kernel

theorem v_336_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 304 16 = true := by decide +kernel

theorem v_336_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 320 16 = true := by decide +kernel

theorem v_336_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 336 336 16 = true := by decide +kernel

theorem r_336 : recsK7OK T qscale den6 d14 lamN lamD l7 336 1 = true := recK7_of (n := 352) t_336 n_336 (leavesK7OK_add (lo := 0) (n := 16) (m := 336) v_336_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 320) v_336_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 304) v_336_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 288) v_336_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 272) v_336_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 256) v_336_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 240) v_336_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 224) v_336_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 208) v_336_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 192) v_336_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 176) v_336_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 160) v_336_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 144) v_336_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 128) v_336_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 112) v_336_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 96) v_336_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 80) v_336_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 64) v_336_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 48) v_336_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 32) v_336_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 16) v_336_20 (v_336_21))))))))))))))))))))))

theorem rs_336 : recsK7OK T qscale den6 d14 lamN lamD l7 336 1 = true := r_336

end BeatAvg.K.K7
