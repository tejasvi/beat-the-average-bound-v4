import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_497 : treeK7OK l7 497 = true := by decide +kernel

theorem n_497 : (recAt l7 497).2.2.2.length ≤ 224 := by decide +kernel

theorem v_497_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 0 16 = true := by decide +kernel

theorem v_497_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 16 16 = true := by decide +kernel

theorem v_497_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 32 16 = true := by decide +kernel

theorem v_497_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 48 16 = true := by decide +kernel

theorem v_497_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 64 16 = true := by decide +kernel

theorem v_497_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 80 16 = true := by decide +kernel

theorem v_497_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 96 16 = true := by decide +kernel

theorem v_497_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 112 16 = true := by decide +kernel

theorem v_497_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 128 16 = true := by decide +kernel

theorem v_497_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 144 16 = true := by decide +kernel

theorem v_497_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 160 16 = true := by decide +kernel

theorem v_497_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 176 16 = true := by decide +kernel

theorem v_497_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 192 16 = true := by decide +kernel

theorem v_497_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 497 208 16 = true := by decide +kernel

theorem r_497 : recsK7OK T qscale den6 d14 lamN lamD l7 497 1 = true := recK7_of (n := 224) t_497 n_497 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_497_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_497_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_497_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_497_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_497_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_497_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_497_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_497_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_497_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_497_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_497_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_497_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_497_12 (v_497_13))))))))))))))

theorem t_498 : treeK7OK l7 498 = true := by decide +kernel

theorem n_498 : (recAt l7 498).2.2.2.length ≤ 160 := by decide +kernel

theorem v_498_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 0 16 = true := by decide +kernel

theorem v_498_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 16 16 = true := by decide +kernel

theorem v_498_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 32 16 = true := by decide +kernel

theorem v_498_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 48 16 = true := by decide +kernel

theorem v_498_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 64 16 = true := by decide +kernel

theorem v_498_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 80 16 = true := by decide +kernel

theorem v_498_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 96 16 = true := by decide +kernel

theorem v_498_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 112 16 = true := by decide +kernel

theorem v_498_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 128 16 = true := by decide +kernel

theorem v_498_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 498 144 16 = true := by decide +kernel

theorem r_498 : recsK7OK T qscale den6 d14 lamN lamD l7 498 1 = true := recK7_of (n := 160) t_498 n_498 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_498_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_498_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_498_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_498_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_498_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_498_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_498_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_498_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_498_8 (v_498_9))))))))))

theorem rs_497 : recsK7OK T qscale den6 d14 lamN lamD l7 497 2 = true := recsK7OK_succ (lo := 497) (n := 1) r_497 (r_498)

end BeatAvg.K.K7
