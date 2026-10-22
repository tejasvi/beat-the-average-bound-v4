import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_499 : treeK7OK l7 499 = true := by decide +kernel

theorem n_499 : (recAt l7 499).2.2.2.length ≤ 80 := by decide +kernel

theorem v_499_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 499 0 16 = true := by decide +kernel

theorem v_499_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 499 16 16 = true := by decide +kernel

theorem v_499_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 499 32 16 = true := by decide +kernel

theorem v_499_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 499 48 16 = true := by decide +kernel

theorem v_499_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 499 64 16 = true := by decide +kernel

theorem r_499 : recsK7OK T qscale den6 d14 lamN lamD l7 499 1 = true := recK7_of (n := 80) t_499 n_499 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_499_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_499_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_499_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_499_3 (v_499_4)))))

theorem t_500 : treeK7OK l7 500 = true := by decide +kernel

theorem n_500 : (recAt l7 500).2.2.2.length ≤ 240 := by decide +kernel

theorem v_500_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 0 16 = true := by decide +kernel

theorem v_500_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 16 16 = true := by decide +kernel

theorem v_500_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 32 16 = true := by decide +kernel

theorem v_500_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 48 16 = true := by decide +kernel

theorem v_500_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 64 16 = true := by decide +kernel

theorem v_500_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 80 16 = true := by decide +kernel

theorem v_500_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 96 16 = true := by decide +kernel

theorem v_500_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 112 16 = true := by decide +kernel

theorem v_500_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 128 16 = true := by decide +kernel

theorem v_500_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 144 16 = true := by decide +kernel

theorem v_500_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 160 16 = true := by decide +kernel

theorem v_500_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 176 16 = true := by decide +kernel

theorem v_500_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 192 16 = true := by decide +kernel

theorem v_500_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 208 16 = true := by decide +kernel

theorem v_500_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 500 224 16 = true := by decide +kernel

theorem r_500 : recsK7OK T qscale den6 d14 lamN lamD l7 500 1 = true := recK7_of (n := 240) t_500 n_500 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_500_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_500_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_500_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_500_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_500_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_500_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_500_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_500_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_500_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_500_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_500_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_500_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_500_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_500_13 (v_500_14)))))))))))))))

theorem rs_499 : recsK7OK T qscale den6 d14 lamN lamD l7 499 2 = true := recsK7OK_succ (lo := 499) (n := 1) r_499 (r_500)

end BeatAvg.K.K7
