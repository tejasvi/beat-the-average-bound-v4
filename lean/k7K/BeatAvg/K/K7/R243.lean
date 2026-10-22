import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_797 : treeK7OK l7 797 = true := by decide +kernel

theorem n_797 : (recAt l7 797).2.2.2.length ≤ 288 := by decide +kernel

theorem v_797_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 0 16 = true := by decide +kernel

theorem v_797_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 16 16 = true := by decide +kernel

theorem v_797_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 32 16 = true := by decide +kernel

theorem v_797_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 48 16 = true := by decide +kernel

theorem v_797_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 64 16 = true := by decide +kernel

theorem v_797_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 80 16 = true := by decide +kernel

theorem v_797_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 96 16 = true := by decide +kernel

theorem v_797_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 112 16 = true := by decide +kernel

theorem v_797_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 128 16 = true := by decide +kernel

theorem v_797_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 144 16 = true := by decide +kernel

theorem v_797_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 160 16 = true := by decide +kernel

theorem v_797_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 176 16 = true := by decide +kernel

theorem v_797_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 192 16 = true := by decide +kernel

theorem v_797_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 208 16 = true := by decide +kernel

theorem v_797_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 224 16 = true := by decide +kernel

theorem v_797_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 240 16 = true := by decide +kernel

theorem v_797_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 256 16 = true := by decide +kernel

theorem v_797_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 797 272 16 = true := by decide +kernel

theorem r_797 : recsK7OK T qscale den6 d14 lamN lamD l7 797 1 = true := recK7_of (n := 288) t_797 n_797 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_797_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_797_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_797_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_797_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_797_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_797_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_797_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_797_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_797_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_797_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_797_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_797_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_797_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_797_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_797_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_797_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_797_16 (v_797_17))))))))))))))))))

theorem rs_797 : recsK7OK T qscale den6 d14 lamN lamD l7 797 1 = true := r_797

end BeatAvg.K.K7
