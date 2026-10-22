import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_779 : treeK7OK l7 779 = true := by decide +kernel

theorem n_779 : (recAt l7 779).2.2.2.length ≤ 368 := by decide +kernel

theorem v_779_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 0 16 = true := by decide +kernel

theorem v_779_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 16 16 = true := by decide +kernel

theorem v_779_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 32 16 = true := by decide +kernel

theorem v_779_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 48 16 = true := by decide +kernel

theorem v_779_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 64 16 = true := by decide +kernel

theorem v_779_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 80 16 = true := by decide +kernel

theorem v_779_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 96 16 = true := by decide +kernel

theorem v_779_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 112 16 = true := by decide +kernel

theorem v_779_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 128 16 = true := by decide +kernel

theorem v_779_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 144 16 = true := by decide +kernel

theorem v_779_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 160 16 = true := by decide +kernel

theorem v_779_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 176 16 = true := by decide +kernel

theorem v_779_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 192 16 = true := by decide +kernel

theorem v_779_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 208 16 = true := by decide +kernel

theorem v_779_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 224 16 = true := by decide +kernel

theorem v_779_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 240 16 = true := by decide +kernel

theorem v_779_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 256 16 = true := by decide +kernel

theorem v_779_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 272 16 = true := by decide +kernel

theorem v_779_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 288 16 = true := by decide +kernel

theorem v_779_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 304 16 = true := by decide +kernel

theorem v_779_20 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 320 16 = true := by decide +kernel

theorem v_779_21 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 336 16 = true := by decide +kernel

theorem v_779_22 : leavesK7OK T qscale den6 d14 lamN lamD l7 779 352 16 = true := by decide +kernel

theorem r_779 : recsK7OK T qscale den6 d14 lamN lamD l7 779 1 = true := recK7_of (n := 368) t_779 n_779 (leavesK7OK_add (lo := 0) (n := 16) (m := 352) v_779_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 336) v_779_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 320) v_779_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 304) v_779_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 288) v_779_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 272) v_779_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 256) v_779_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 240) v_779_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 224) v_779_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 208) v_779_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 192) v_779_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 176) v_779_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 160) v_779_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 144) v_779_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 128) v_779_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 112) v_779_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 96) v_779_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 80) v_779_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 64) v_779_18 (leavesK7OK_add (lo := 304) (n := 16) (m := 48) v_779_19 (leavesK7OK_add (lo := 320) (n := 16) (m := 32) v_779_20 (leavesK7OK_add (lo := 336) (n := 16) (m := 16) v_779_21 (v_779_22)))))))))))))))))))))))

theorem rs_779 : recsK7OK T qscale den6 d14 lamN lamD l7 779 1 = true := r_779

end BeatAvg.K.K7
