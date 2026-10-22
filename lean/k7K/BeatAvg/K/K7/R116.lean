import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_409 : treeK7OK l7 409 = true := by decide +kernel

theorem n_409 : (recAt l7 409).2.2.2.length ≤ 352 := by decide +kernel

theorem v_409_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 0 16 = true := by decide +kernel

theorem v_409_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 16 16 = true := by decide +kernel

theorem v_409_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 32 16 = true := by decide +kernel

theorem v_409_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 48 16 = true := by decide +kernel

theorem v_409_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 64 16 = true := by decide +kernel

theorem v_409_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 80 16 = true := by decide +kernel

theorem v_409_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 96 16 = true := by decide +kernel

theorem v_409_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 112 16 = true := by decide +kernel

theorem v_409_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 128 16 = true := by decide +kernel

theorem v_409_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 144 16 = true := by decide +kernel

theorem v_409_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 160 16 = true := by decide +kernel

theorem v_409_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 176 16 = true := by decide +kernel

theorem v_409_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 192 16 = true := by decide +kernel

theorem v_409_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 208 16 = true := by decide +kernel

theorem v_409_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 224 16 = true := by decide +kernel

theorem v_409_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 240 16 = true := by decide +kernel

theorem v_409_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 256 16 = true := by decide +kernel

theorem v_409_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 272 16 = true := by decide +kernel

theorem v_409_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 288 16 = true := by decide +kernel

theorem v_409_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 304 16 = true := by decide +kernel

theorem v_409_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 320 16 = true := by decide +kernel

theorem v_409_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 409 336 16 = true := by decide +kernel

theorem r_409 : recsK7OK T qscale den6 d14 lamN lamD l7 409 1 = true := recK7_of (n := 352) t_409 n_409 (leavesK7OK_add (lo := 0) (n := 16) (m := 336) v_409_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 320) v_409_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 304) v_409_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 288) v_409_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 272) v_409_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 256) v_409_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 240) v_409_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 224) v_409_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 208) v_409_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 192) v_409_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 176) v_409_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 160) v_409_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 144) v_409_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 128) v_409_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 112) v_409_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 96) v_409_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 80) v_409_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 64) v_409_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 48) v_409_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 32) v_409_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 16) v_409_20 (v_409_21))))))))))))))))))))))

theorem rs_409 : recsK7OK T qscale den6 d14 lamN lamD l7 409 1 = true := r_409

end BeatAvg.K.K7
