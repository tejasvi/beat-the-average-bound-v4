import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_843 : treeK7OK l7 843 = true := by decide +kernel

theorem n_843 : (recAt l7 843).2.2.2.length ≤ 288 := by decide +kernel

theorem v_843_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 0 16 = true := by decide +kernel

theorem v_843_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 16 16 = true := by decide +kernel

theorem v_843_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 32 16 = true := by decide +kernel

theorem v_843_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 48 16 = true := by decide +kernel

theorem v_843_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 64 16 = true := by decide +kernel

theorem v_843_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 80 16 = true := by decide +kernel

theorem v_843_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 96 16 = true := by decide +kernel

theorem v_843_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 112 16 = true := by decide +kernel

theorem v_843_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 128 16 = true := by decide +kernel

theorem v_843_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 144 16 = true := by decide +kernel

theorem v_843_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 160 16 = true := by decide +kernel

theorem v_843_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 176 16 = true := by decide +kernel

theorem v_843_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 192 16 = true := by decide +kernel

theorem v_843_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 208 16 = true := by decide +kernel

theorem v_843_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 224 16 = true := by decide +kernel

theorem v_843_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 240 16 = true := by decide +kernel

theorem v_843_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 256 16 = true := by decide +kernel

theorem v_843_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 843 272 16 = true := by decide +kernel

theorem r_843 : recsK7OK T qscale den6 d14 lamN lamD l7 843 1 = true := recK7_of (n := 288) t_843 n_843 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_843_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_843_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_843_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_843_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_843_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_843_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_843_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_843_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_843_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_843_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_843_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_843_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_843_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_843_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_843_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_843_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_843_16 (v_843_17))))))))))))))))))

theorem rs_843 : recsK7OK T qscale den6 d14 lamN lamD l7 843 1 = true := r_843

end BeatAvg.K.K7
