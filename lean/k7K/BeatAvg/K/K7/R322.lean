import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_977 : treeK7OK l7 977 = true := by decide +kernel

theorem n_977 : (recAt l7 977).2.2.2.length ≤ 272 := by decide +kernel

theorem v_977_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 0 16 = true := by decide +kernel

theorem v_977_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 16 16 = true := by decide +kernel

theorem v_977_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 32 16 = true := by decide +kernel

theorem v_977_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 48 16 = true := by decide +kernel

theorem v_977_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 64 16 = true := by decide +kernel

theorem v_977_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 80 16 = true := by decide +kernel

theorem v_977_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 96 16 = true := by decide +kernel

theorem v_977_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 112 16 = true := by decide +kernel

theorem v_977_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 128 16 = true := by decide +kernel

theorem v_977_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 144 16 = true := by decide +kernel

theorem v_977_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 160 16 = true := by decide +kernel

theorem v_977_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 176 16 = true := by decide +kernel

theorem v_977_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 192 16 = true := by decide +kernel

theorem v_977_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 208 16 = true := by decide +kernel

theorem v_977_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 224 16 = true := by decide +kernel

theorem v_977_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 240 16 = true := by decide +kernel

theorem v_977_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 977 256 16 = true := by decide +kernel

theorem r_977 : recsK7OK T qscale den6 d14 lamN lamD l7 977 1 = true := recK7_of (n := 272) t_977 n_977 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_977_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_977_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_977_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_977_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_977_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_977_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_977_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_977_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_977_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_977_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_977_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_977_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_977_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_977_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_977_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_977_15 (v_977_16)))))))))))))))))

theorem rs_977 : recsK7OK T qscale den6 d14 lamN lamD l7 977 1 = true := r_977

end BeatAvg.K.K7
