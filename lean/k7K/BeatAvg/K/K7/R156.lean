import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_522 : treeK7OK l7 522 = true := by decide +kernel

theorem n_522 : (recAt l7 522).2.2.2.length ≤ 320 := by decide +kernel

theorem v_522_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 0 16 = true := by decide +kernel

theorem v_522_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 16 16 = true := by decide +kernel

theorem v_522_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 32 16 = true := by decide +kernel

theorem v_522_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 48 16 = true := by decide +kernel

theorem v_522_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 64 16 = true := by decide +kernel

theorem v_522_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 80 16 = true := by decide +kernel

theorem v_522_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 96 16 = true := by decide +kernel

theorem v_522_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 112 16 = true := by decide +kernel

theorem v_522_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 128 16 = true := by decide +kernel

theorem v_522_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 144 16 = true := by decide +kernel

theorem v_522_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 160 16 = true := by decide +kernel

theorem v_522_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 176 16 = true := by decide +kernel

theorem v_522_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 192 16 = true := by decide +kernel

theorem v_522_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 208 16 = true := by decide +kernel

theorem v_522_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 224 16 = true := by decide +kernel

theorem v_522_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 240 16 = true := by decide +kernel

theorem v_522_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 256 16 = true := by decide +kernel

theorem v_522_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 272 16 = true := by decide +kernel

theorem v_522_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 288 16 = true := by decide +kernel

theorem v_522_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 522 304 16 = true := by decide +kernel

theorem r_522 : recsK7OK T qscale den6 d14 lamN lamD l7 522 1 = true := recK7_of (n := 320) t_522 n_522 (leavesK7OK_add (lo := 0) (n := 16) (m := 304) v_522_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 288) v_522_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 272) v_522_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 256) v_522_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 240) v_522_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 224) v_522_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 208) v_522_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 192) v_522_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 176) v_522_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 160) v_522_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 144) v_522_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 128) v_522_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 112) v_522_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 96) v_522_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 80) v_522_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 64) v_522_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 48) v_522_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 32) v_522_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 16) v_522_18 (v_522_19))))))))))))))))))))

theorem rs_522 : recsK7OK T qscale den6 d14 lamN lamD l7 522 1 = true := r_522

end BeatAvg.K.K7
