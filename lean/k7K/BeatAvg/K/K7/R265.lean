import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_841 : treeK7OK l7 841 = true := by decide +kernel

theorem n_841 : (recAt l7 841).2.2.2.length ≤ 320 := by decide +kernel

theorem v_841_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 0 16 = true := by decide +kernel

theorem v_841_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 16 16 = true := by decide +kernel

theorem v_841_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 32 16 = true := by decide +kernel

theorem v_841_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 48 16 = true := by decide +kernel

theorem v_841_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 64 16 = true := by decide +kernel

theorem v_841_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 80 16 = true := by decide +kernel

theorem v_841_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 96 16 = true := by decide +kernel

theorem v_841_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 112 16 = true := by decide +kernel

theorem v_841_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 128 16 = true := by decide +kernel

theorem v_841_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 144 16 = true := by decide +kernel

theorem v_841_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 160 16 = true := by decide +kernel

theorem v_841_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 176 16 = true := by decide +kernel

theorem v_841_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 192 16 = true := by decide +kernel

theorem v_841_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 208 16 = true := by decide +kernel

theorem v_841_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 224 16 = true := by decide +kernel

theorem v_841_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 240 16 = true := by decide +kernel

theorem v_841_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 256 16 = true := by decide +kernel

theorem v_841_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 272 16 = true := by decide +kernel

theorem v_841_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 288 16 = true := by decide +kernel

theorem v_841_19 : leavesK7OK T qscale den6 d14 lamN lamD l7 841 304 16 = true := by decide +kernel

theorem r_841 : recsK7OK T qscale den6 d14 lamN lamD l7 841 1 = true := recK7_of (n := 320) t_841 n_841 (leavesK7OK_add (lo := 0) (n := 16) (m := 304) v_841_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 288) v_841_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 272) v_841_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 256) v_841_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 240) v_841_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 224) v_841_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 208) v_841_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 192) v_841_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 176) v_841_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 160) v_841_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 144) v_841_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 128) v_841_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 112) v_841_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 96) v_841_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 80) v_841_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 64) v_841_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 48) v_841_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 32) v_841_17 (leavesK7OK_add (lo := 288) (n := 16) (m := 16) v_841_18 (v_841_19))))))))))))))))))))

theorem rs_841 : recsK7OK T qscale den6 d14 lamN lamD l7 841 1 = true := r_841

end BeatAvg.K.K7
