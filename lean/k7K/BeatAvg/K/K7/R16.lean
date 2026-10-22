import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_53 : treeK7OK l7 53 = true := by decide +kernel

theorem n_53 : (recAt l7 53).2.2.2.length ≤ 240 := by decide +kernel

theorem v_53_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 0 16 = true := by decide +kernel

theorem v_53_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 16 16 = true := by decide +kernel

theorem v_53_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 32 16 = true := by decide +kernel

theorem v_53_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 48 16 = true := by decide +kernel

theorem v_53_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 64 16 = true := by decide +kernel

theorem v_53_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 80 16 = true := by decide +kernel

theorem v_53_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 96 16 = true := by decide +kernel

theorem v_53_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 112 16 = true := by decide +kernel

theorem v_53_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 128 16 = true := by decide +kernel

theorem v_53_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 144 16 = true := by decide +kernel

theorem v_53_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 160 16 = true := by decide +kernel

theorem v_53_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 176 16 = true := by decide +kernel

theorem v_53_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 192 16 = true := by decide +kernel

theorem v_53_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 208 16 = true := by decide +kernel

theorem v_53_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 53 224 16 = true := by decide +kernel

theorem r_53 : recsK7OK T qscale den6 d14 lamN lamD l7 53 1 = true := recK7_of (n := 240) t_53 n_53 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_53_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_53_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_53_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_53_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_53_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_53_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_53_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_53_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_53_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_53_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_53_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_53_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_53_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_53_13 (v_53_14)))))))))))))))

theorem rs_53 : recsK7OK T qscale den6 d14 lamN lamD l7 53 1 = true := r_53

end BeatAvg.K.K7
