import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_732 : treeK7OK l7 732 = true := by decide +kernel

theorem n_732 : (recAt l7 732).2.2.2.length ≤ 304 := by decide +kernel

theorem v_732_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 0 16 = true := by decide +kernel

theorem v_732_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 16 16 = true := by decide +kernel

theorem v_732_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 32 16 = true := by decide +kernel

theorem v_732_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 48 16 = true := by decide +kernel

theorem v_732_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 64 16 = true := by decide +kernel

theorem v_732_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 80 16 = true := by decide +kernel

theorem v_732_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 96 16 = true := by decide +kernel

theorem v_732_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 112 16 = true := by decide +kernel

theorem v_732_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 128 16 = true := by decide +kernel

theorem v_732_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 144 16 = true := by decide +kernel

theorem v_732_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 160 16 = true := by decide +kernel

theorem v_732_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 176 16 = true := by decide +kernel

theorem v_732_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 192 16 = true := by decide +kernel

theorem v_732_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 208 16 = true := by decide +kernel

theorem v_732_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 224 16 = true := by decide +kernel

theorem v_732_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 240 16 = true := by decide +kernel

theorem v_732_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 256 16 = true := by decide +kernel

theorem v_732_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 272 16 = true := by decide +kernel

theorem v_732_18 : leavesK7OK T qscale den6 d14 lamN lamD l7 732 288 16 = true := by decide +kernel

theorem r_732 : recsK7OK T qscale den6 d14 lamN lamD l7 732 1 = true := recK7_of (n := 304) t_732 n_732 (leavesK7OK_add (lo := 0) (n := 16) (m := 288) v_732_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 272) v_732_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 256) v_732_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 240) v_732_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 224) v_732_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 208) v_732_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 192) v_732_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 176) v_732_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 160) v_732_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 144) v_732_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 128) v_732_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 112) v_732_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 96) v_732_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 80) v_732_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 64) v_732_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 48) v_732_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 32) v_732_16 (leavesK7OK_add (lo := 272) (n := 16) (m := 16) v_732_17 (v_732_18)))))))))))))))))))

theorem rs_732 : recsK7OK T qscale den6 d14 lamN lamD l7 732 1 = true := r_732

end BeatAvg.K.K7
