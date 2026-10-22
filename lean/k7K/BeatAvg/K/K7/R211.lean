import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_733 : treeK7OK l7 733 = true := by decide +kernel

theorem n_733 : (recAt l7 733).2.2.2.length ≤ 288 := by decide +kernel

theorem v_733_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 0 16 = true := by decide +kernel

theorem v_733_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 16 16 = true := by decide +kernel

theorem v_733_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 32 16 = true := by decide +kernel

theorem v_733_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 48 16 = true := by decide +kernel

theorem v_733_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 64 16 = true := by decide +kernel

theorem v_733_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 80 16 = true := by decide +kernel

theorem v_733_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 96 16 = true := by decide +kernel

theorem v_733_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 112 16 = true := by decide +kernel

theorem v_733_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 128 16 = true := by decide +kernel

theorem v_733_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 144 16 = true := by decide +kernel

theorem v_733_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 160 16 = true := by decide +kernel

theorem v_733_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 176 16 = true := by decide +kernel

theorem v_733_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 192 16 = true := by decide +kernel

theorem v_733_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 208 16 = true := by decide +kernel

theorem v_733_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 224 16 = true := by decide +kernel

theorem v_733_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 240 16 = true := by decide +kernel

theorem v_733_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 256 16 = true := by decide +kernel

theorem v_733_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 733 272 16 = true := by decide +kernel

theorem r_733 : recsK7OK T qscale den6 d14 lamN lamD l7 733 1 = true := recK7_of (n := 288) t_733 n_733 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_733_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_733_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_733_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_733_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_733_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_733_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_733_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_733_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_733_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_733_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_733_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_733_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_733_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_733_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_733_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_733_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_733_16 (v_733_17))))))))))))))))))

theorem rs_733 : recsK7OK T qscale den6 d14 lamN lamD l7 733 1 = true := r_733

end BeatAvg.K.K7
