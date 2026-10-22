import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_842 : treeK7OK l7 842 = true := by decide +kernel

theorem n_842 : (recAt l7 842).2.2.2.length ≤ 224 := by decide +kernel

theorem v_842_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 0 16 = true := by decide +kernel

theorem v_842_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 16 16 = true := by decide +kernel

theorem v_842_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 32 16 = true := by decide +kernel

theorem v_842_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 48 16 = true := by decide +kernel

theorem v_842_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 64 16 = true := by decide +kernel

theorem v_842_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 80 16 = true := by decide +kernel

theorem v_842_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 96 16 = true := by decide +kernel

theorem v_842_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 112 16 = true := by decide +kernel

theorem v_842_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 128 16 = true := by decide +kernel

theorem v_842_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 144 16 = true := by decide +kernel

theorem v_842_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 160 16 = true := by decide +kernel

theorem v_842_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 176 16 = true := by decide +kernel

theorem v_842_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 192 16 = true := by decide +kernel

theorem v_842_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 842 208 16 = true := by decide +kernel

theorem r_842 : recsK7OK T qscale den6 d14 lamN lamD l7 842 1 = true := recK7_of (n := 224) t_842 n_842 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_842_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_842_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_842_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_842_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_842_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_842_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_842_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_842_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_842_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_842_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_842_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_842_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_842_12 (v_842_13))))))))))))))

theorem rs_842 : recsK7OK T qscale den6 d14 lamN lamD l7 842 1 = true := r_842

end BeatAvg.K.K7
