import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_339 : treeK7OK l7 339 = true := by decide +kernel

theorem n_339 : (recAt l7 339).2.2.2.length ≤ 400 := by decide +kernel

theorem v_339_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 0 16 = true := by decide +kernel

theorem v_339_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 16 16 = true := by decide +kernel

theorem v_339_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 32 16 = true := by decide +kernel

theorem v_339_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 48 16 = true := by decide +kernel

theorem v_339_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 64 16 = true := by decide +kernel

theorem v_339_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 80 16 = true := by decide +kernel

theorem v_339_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 96 16 = true := by decide +kernel

theorem v_339_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 112 16 = true := by decide +kernel

theorem v_339_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 128 16 = true := by decide +kernel

theorem v_339_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 144 16 = true := by decide +kernel

theorem v_339_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 160 16 = true := by decide +kernel

theorem v_339_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 176 16 = true := by decide +kernel

theorem v_339_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 192 16 = true := by decide +kernel

theorem v_339_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 208 16 = true := by decide +kernel

theorem v_339_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 224 16 = true := by decide +kernel

theorem v_339_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 240 16 = true := by decide +kernel

theorem v_339_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 256 16 = true := by decide +kernel

theorem v_339_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 272 16 = true := by decide +kernel

theorem v_339_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 288 16 = true := by decide +kernel

theorem v_339_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 304 16 = true := by decide +kernel

theorem v_339_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 320 16 = true := by decide +kernel

theorem v_339_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 336 16 = true := by decide +kernel

theorem v_339_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 352 16 = true := by decide +kernel

theorem v_339_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 368 16 = true := by decide +kernel

theorem v_339_24 : leavesK7OK T qscale den6 d14 lamN lamD l7 339 384 16 = true := by decide +kernel

theorem r_339 : recsK7OK T qscale den6 d14 lamN lamD l7 339 1 = true := recK7_of (n := 400) t_339 n_339 (leavesK7OK_add (lo := 0) (n := 16) (m := 384) v_339_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 368) v_339_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 352) v_339_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 336) v_339_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 320) v_339_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 304) v_339_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 288) v_339_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 272) v_339_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 256) v_339_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 240) v_339_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 224) v_339_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 208) v_339_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 192) v_339_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 176) v_339_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 160) v_339_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 144) v_339_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 128) v_339_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 112) v_339_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 96) v_339_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 80) v_339_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 64) v_339_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 48) v_339_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 32) v_339_22 (leavesK7OK_add (lo := 368) (n := 16) (m := 16) v_339_23 (v_339_24)))))))))))))))))))))))))

theorem rs_339 : recsK7OK T qscale den6 d14 lamN lamD l7 339 1 = true := r_339

end BeatAvg.K.K7
