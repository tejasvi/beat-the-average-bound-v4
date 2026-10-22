import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1028 : treeK7OK l7 1028 = true := by decide +kernel

theorem n_1028 : (recAt l7 1028).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1028_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 0 16 = true := by decide +kernel

theorem v_1028_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 16 16 = true := by decide +kernel

theorem v_1028_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 32 16 = true := by decide +kernel

theorem v_1028_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 48 16 = true := by decide +kernel

theorem v_1028_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 64 16 = true := by decide +kernel

theorem v_1028_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 80 16 = true := by decide +kernel

theorem v_1028_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 96 16 = true := by decide +kernel

theorem v_1028_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 112 16 = true := by decide +kernel

theorem v_1028_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 128 16 = true := by decide +kernel

theorem v_1028_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1028 144 16 = true := by decide +kernel

theorem r_1028 : recsK7OK T qscale den6 d14 lamN lamD l7 1028 1 = true := recK7_of (n := 160) t_1028 n_1028 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1028_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1028_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1028_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1028_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1028_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1028_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1028_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1028_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1028_8 (v_1028_9))))))))))

theorem t_1029 : treeK7OK l7 1029 = true := by decide +kernel

theorem n_1029 : (recAt l7 1029).2.2.2.length ≤ 208 := by decide +kernel

theorem v_1029_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 0 16 = true := by decide +kernel

theorem v_1029_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 16 16 = true := by decide +kernel

theorem v_1029_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 32 16 = true := by decide +kernel

theorem v_1029_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 48 16 = true := by decide +kernel

theorem v_1029_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 64 16 = true := by decide +kernel

theorem v_1029_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 80 16 = true := by decide +kernel

theorem v_1029_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 96 16 = true := by decide +kernel

theorem v_1029_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 112 16 = true := by decide +kernel

theorem v_1029_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 128 16 = true := by decide +kernel

theorem v_1029_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 144 16 = true := by decide +kernel

theorem v_1029_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 160 16 = true := by decide +kernel

theorem v_1029_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 176 16 = true := by decide +kernel

theorem v_1029_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 1029 192 16 = true := by decide +kernel

theorem r_1029 : recsK7OK T qscale den6 d14 lamN lamD l7 1029 1 = true := recK7_of (n := 208) t_1029 n_1029 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_1029_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_1029_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_1029_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_1029_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_1029_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_1029_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_1029_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_1029_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_1029_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_1029_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_1029_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_1029_11 (v_1029_12)))))))))))))

theorem rs_1028 : recsK7OK T qscale den6 d14 lamN lamD l7 1028 2 = true := recsK7OK_succ (lo := 1028) (n := 1) r_1028 (r_1029)

end BeatAvg.K.K7
