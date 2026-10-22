import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_769 : treeK7OK l7 769 = true := by decide +kernel

theorem n_769 : (recAt l7 769).2.2.2.length ≤ 240 := by decide +kernel

theorem v_769_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 0 16 = true := by decide +kernel

theorem v_769_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 16 16 = true := by decide +kernel

theorem v_769_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 32 16 = true := by decide +kernel

theorem v_769_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 48 16 = true := by decide +kernel

theorem v_769_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 64 16 = true := by decide +kernel

theorem v_769_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 80 16 = true := by decide +kernel

theorem v_769_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 96 16 = true := by decide +kernel

theorem v_769_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 112 16 = true := by decide +kernel

theorem v_769_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 128 16 = true := by decide +kernel

theorem v_769_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 144 16 = true := by decide +kernel

theorem v_769_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 160 16 = true := by decide +kernel

theorem v_769_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 176 16 = true := by decide +kernel

theorem v_769_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 192 16 = true := by decide +kernel

theorem v_769_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 208 16 = true := by decide +kernel

theorem v_769_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 769 224 16 = true := by decide +kernel

theorem r_769 : recsK7OK T qscale den6 d14 lamN lamD l7 769 1 = true := recK7_of (n := 240) t_769 n_769 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_769_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_769_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_769_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_769_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_769_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_769_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_769_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_769_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_769_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_769_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_769_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_769_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_769_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_769_13 (v_769_14)))))))))))))))

theorem rs_769 : recsK7OK T qscale den6 d14 lamN lamD l7 769 1 = true := r_769

end BeatAvg.K.K7
