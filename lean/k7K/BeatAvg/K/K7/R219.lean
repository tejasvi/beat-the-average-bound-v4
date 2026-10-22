import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_748 : treeK7OK l7 748 = true := by decide +kernel

theorem n_748 : (recAt l7 748).2.2.2.length ≤ 416 := by decide +kernel

theorem v_748_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 0 16 = true := by decide +kernel

theorem v_748_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 16 16 = true := by decide +kernel

theorem v_748_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 32 16 = true := by decide +kernel

theorem v_748_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 48 16 = true := by decide +kernel

theorem v_748_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 64 16 = true := by decide +kernel

theorem v_748_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 80 16 = true := by decide +kernel

theorem v_748_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 96 16 = true := by decide +kernel

theorem v_748_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 112 16 = true := by decide +kernel

theorem v_748_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 128 16 = true := by decide +kernel

theorem v_748_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 144 16 = true := by decide +kernel

theorem v_748_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 160 16 = true := by decide +kernel

theorem v_748_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 176 16 = true := by decide +kernel

theorem v_748_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 192 16 = true := by decide +kernel

theorem v_748_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 208 16 = true := by decide +kernel

theorem v_748_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 224 16 = true := by decide +kernel

theorem v_748_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 240 16 = true := by decide +kernel

theorem v_748_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 256 16 = true := by decide +kernel

theorem v_748_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 272 16 = true := by decide +kernel

theorem v_748_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 288 16 = true := by decide +kernel

theorem v_748_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 304 16 = true := by decide +kernel

theorem v_748_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 320 16 = true := by decide +kernel

theorem v_748_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 336 16 = true := by decide +kernel

theorem v_748_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 352 16 = true := by decide +kernel

theorem v_748_23 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 368 16 = true := by decide +kernel

theorem v_748_24 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 384 16 = true := by decide +kernel

theorem v_748_25 : leavesK7OK T qscale den6 d14 lamN lamD l7 748 400 16 = true := by decide +kernel

theorem r_748 : recsK7OK T qscale den6 d14 lamN lamD l7 748 1 = true := recK7_of (n := 416) t_748 n_748 (leavesK7OK_add (lo := 0) (n := 16) (m := 400) v_748_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 384) v_748_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 368) v_748_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 352) v_748_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 336) v_748_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 320) v_748_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 304) v_748_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 288) v_748_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 272) v_748_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 256) v_748_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 240) v_748_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 224) v_748_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 208) v_748_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 192) v_748_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 176) v_748_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 160) v_748_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 144) v_748_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 128) v_748_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 112) v_748_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 96) v_748_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 80) v_748_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 64) v_748_21 (leavesK7OK_add (lo := 352) (n := 16) (m := 48) v_748_22 (leavesK7OK_add (lo := 368) (n := 16) (m := 32) v_748_23 (leavesK7OK_add (lo := 384) (n := 16) (m := 16) v_748_24 (v_748_25))))))))))))))))))))))))))

theorem rs_748 : recsK7OK T qscale den6 d14 lamN lamD l7 748 1 = true := r_748

end BeatAvg.K.K7
