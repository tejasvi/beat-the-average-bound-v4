import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_420 : treeK7OK l7 420 = true := by decide +kernel

theorem n_420 : (recAt l7 420).2.2.2.length ≤ 272 := by decide +kernel

theorem v_420_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 0 16 = true := by decide +kernel

theorem v_420_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 16 16 = true := by decide +kernel

theorem v_420_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 32 16 = true := by decide +kernel

theorem v_420_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 48 16 = true := by decide +kernel

theorem v_420_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 64 16 = true := by decide +kernel

theorem v_420_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 80 16 = true := by decide +kernel

theorem v_420_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 96 16 = true := by decide +kernel

theorem v_420_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 112 16 = true := by decide +kernel

theorem v_420_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 128 16 = true := by decide +kernel

theorem v_420_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 144 16 = true := by decide +kernel

theorem v_420_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 160 16 = true := by decide +kernel

theorem v_420_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 176 16 = true := by decide +kernel

theorem v_420_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 192 16 = true := by decide +kernel

theorem v_420_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 208 16 = true := by decide +kernel

theorem v_420_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 224 16 = true := by decide +kernel

theorem v_420_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 240 16 = true := by decide +kernel

theorem v_420_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 420 256 16 = true := by decide +kernel

theorem r_420 : recsK7OK T qscale den6 d14 lamN lamD l7 420 1 = true := recK7_of (n := 272) t_420 n_420 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_420_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_420_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_420_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_420_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_420_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_420_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_420_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_420_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_420_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_420_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_420_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_420_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_420_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_420_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_420_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_420_15 (v_420_16)))))))))))))))))

theorem rs_420 : recsK7OK T qscale den6 d14 lamN lamD l7 420 1 = true := r_420

end BeatAvg.K.K7
