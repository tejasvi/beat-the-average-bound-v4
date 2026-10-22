import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_924 : treeK7OK l7 924 = true := by decide +kernel

theorem n_924 : (recAt l7 924).2.2.2.length ≤ 352 := by decide +kernel

theorem v_924_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 0 16 = true := by decide +kernel

theorem v_924_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 16 16 = true := by decide +kernel

theorem v_924_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 32 16 = true := by decide +kernel

theorem v_924_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 48 16 = true := by decide +kernel

theorem v_924_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 64 16 = true := by decide +kernel

theorem v_924_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 80 16 = true := by decide +kernel

theorem v_924_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 96 16 = true := by decide +kernel

theorem v_924_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 112 16 = true := by decide +kernel

theorem v_924_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 128 16 = true := by decide +kernel

theorem v_924_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 144 16 = true := by decide +kernel

theorem v_924_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 160 16 = true := by decide +kernel

theorem v_924_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 176 16 = true := by decide +kernel

theorem v_924_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 192 16 = true := by decide +kernel

theorem v_924_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 208 16 = true := by decide +kernel

theorem v_924_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 224 16 = true := by decide +kernel

theorem v_924_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 240 16 = true := by decide +kernel

theorem v_924_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 256 16 = true := by decide +kernel

theorem v_924_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 272 16 = true := by decide +kernel

theorem v_924_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 288 16 = true := by decide +kernel

theorem v_924_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 304 16 = true := by decide +kernel

theorem v_924_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 320 16 = true := by decide +kernel

theorem v_924_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 924 336 16 = true := by decide +kernel

theorem r_924 : recsK7OK T qscale den6 d14 lamN lamD l7 924 1 = true := recK7_of (n := 352) t_924 n_924 (leavesK7OK_add (lo := 0) (n := 16) (m := 336) v_924_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 320) v_924_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 304) v_924_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 288) v_924_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 272) v_924_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 256) v_924_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 240) v_924_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 224) v_924_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 208) v_924_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 192) v_924_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 176) v_924_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 160) v_924_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 144) v_924_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 128) v_924_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 112) v_924_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 96) v_924_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 80) v_924_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 64) v_924_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 48) v_924_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 32) v_924_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 16) v_924_20 (v_924_21))))))))))))))))))))))

theorem rs_924 : recsK7OK T qscale den6 d14 lamN lamD l7 924 1 = true := r_924

end BeatAvg.K.K7
