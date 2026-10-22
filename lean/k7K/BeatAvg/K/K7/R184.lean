import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_631 : treeK7OK l7 631 = true := by decide +kernel

theorem n_631 : (recAt l7 631).2.2.2.length ≤ 336 := by decide +kernel

theorem v_631_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 0 16 = true := by decide +kernel

theorem v_631_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 16 16 = true := by decide +kernel

theorem v_631_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 32 16 = true := by decide +kernel

theorem v_631_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 48 16 = true := by decide +kernel

theorem v_631_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 64 16 = true := by decide +kernel

theorem v_631_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 80 16 = true := by decide +kernel

theorem v_631_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 96 16 = true := by decide +kernel

theorem v_631_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 112 16 = true := by decide +kernel

theorem v_631_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 128 16 = true := by decide +kernel

theorem v_631_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 144 16 = true := by decide +kernel

theorem v_631_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 160 16 = true := by decide +kernel

theorem v_631_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 176 16 = true := by decide +kernel

theorem v_631_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 192 16 = true := by decide +kernel

theorem v_631_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 208 16 = true := by decide +kernel

theorem v_631_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 224 16 = true := by decide +kernel

theorem v_631_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 240 16 = true := by decide +kernel

theorem v_631_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 256 16 = true := by decide +kernel

theorem v_631_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 272 16 = true := by decide +kernel

theorem v_631_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 288 16 = true := by decide +kernel

theorem v_631_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 304 16 = true := by decide +kernel

theorem v_631_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 631 320 16 = true := by decide +kernel

theorem r_631 : recsK7OK T qscale den6 d14 lamN lamD l7 631 1 = true := recK7_of (n := 336) t_631 n_631 (leavesK7OK_add (lo := 0) (n := 16) (m := 320) v_631_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 304) v_631_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 288) v_631_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 272) v_631_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 256) v_631_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 240) v_631_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 224) v_631_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 208) v_631_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 192) v_631_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 176) v_631_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 160) v_631_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 144) v_631_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 128) v_631_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 112) v_631_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 96) v_631_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 80) v_631_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 64) v_631_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 48) v_631_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 32) v_631_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 16) v_631_19 (v_631_20)))))))))))))))))))))

theorem rs_631 : recsK7OK T qscale den6 d14 lamN lamD l7 631 1 = true := r_631

end BeatAvg.K.K7
