import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_876 : treeK7OK l7 876 = true := by decide +kernel

theorem n_876 : (recAt l7 876).2.2.2.length ≤ 304 := by decide +kernel

theorem v_876_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 0 16 = true := by decide +kernel

theorem v_876_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 16 16 = true := by decide +kernel

theorem v_876_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 32 16 = true := by decide +kernel

theorem v_876_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 48 16 = true := by decide +kernel

theorem v_876_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 64 16 = true := by decide +kernel

theorem v_876_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 80 16 = true := by decide +kernel

theorem v_876_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 96 16 = true := by decide +kernel

theorem v_876_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 112 16 = true := by decide +kernel

theorem v_876_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 128 16 = true := by decide +kernel

theorem v_876_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 144 16 = true := by decide +kernel

theorem v_876_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 160 16 = true := by decide +kernel

theorem v_876_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 176 16 = true := by decide +kernel

theorem v_876_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 192 16 = true := by decide +kernel

theorem v_876_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 208 16 = true := by decide +kernel

theorem v_876_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 224 16 = true := by decide +kernel

theorem v_876_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 240 16 = true := by decide +kernel

theorem v_876_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 256 16 = true := by decide +kernel

theorem v_876_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 272 16 = true := by decide +kernel

theorem v_876_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 876 288 16 = true := by decide +kernel

theorem r_876 : recsK7OK T qscale den6 d14 lamN lamD l7 876 1 = true := recK7_of (n := 304) t_876 n_876 (leavesK7OK_add (lo := 0) (n := 16) (m := 288) v_876_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 272) v_876_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 256) v_876_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 240) v_876_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 224) v_876_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 208) v_876_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 192) v_876_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 176) v_876_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 160) v_876_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 144) v_876_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 128) v_876_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 112) v_876_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 96) v_876_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 80) v_876_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 64) v_876_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 48) v_876_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 32) v_876_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 16) v_876_17 (v_876_18)))))))))))))))))))

theorem rs_876 : recsK7OK T qscale den6 d14 lamN lamD l7 876 1 = true := r_876

end BeatAvg.K.K7
