import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_892 : treeK7OK l7 892 = true := by decide +kernel

theorem n_892 : (recAt l7 892).2.2.2.length ≤ 240 := by decide +kernel

theorem v_892_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 0 16 = true := by decide +kernel

theorem v_892_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 16 16 = true := by decide +kernel

theorem v_892_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 32 16 = true := by decide +kernel

theorem v_892_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 48 16 = true := by decide +kernel

theorem v_892_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 64 16 = true := by decide +kernel

theorem v_892_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 80 16 = true := by decide +kernel

theorem v_892_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 96 16 = true := by decide +kernel

theorem v_892_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 112 16 = true := by decide +kernel

theorem v_892_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 128 16 = true := by decide +kernel

theorem v_892_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 144 16 = true := by decide +kernel

theorem v_892_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 160 16 = true := by decide +kernel

theorem v_892_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 176 16 = true := by decide +kernel

theorem v_892_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 192 16 = true := by decide +kernel

theorem v_892_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 208 16 = true := by decide +kernel

theorem v_892_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 892 224 16 = true := by decide +kernel

theorem r_892 : recsK7OK T qscale den6 d14 lamN lamD l7 892 1 = true := recK7_of (n := 240) t_892 n_892 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_892_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_892_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_892_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_892_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_892_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_892_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_892_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_892_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_892_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_892_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_892_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_892_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_892_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_892_13 (v_892_14)))))))))))))))

theorem rs_892 : recsK7OK T qscale den6 d14 lamN lamD l7 892 1 = true := r_892

end BeatAvg.K.K7
