import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_353 : treeK7OK l7 353 = true := by decide +kernel

theorem n_353 : (recAt l7 353).2.2.2.length ≤ 160 := by decide +kernel

theorem v_353_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 0 16 = true := by decide +kernel

theorem v_353_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 16 16 = true := by decide +kernel

theorem v_353_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 32 16 = true := by decide +kernel

theorem v_353_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 48 16 = true := by decide +kernel

theorem v_353_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 64 16 = true := by decide +kernel

theorem v_353_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 80 16 = true := by decide +kernel

theorem v_353_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 96 16 = true := by decide +kernel

theorem v_353_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 112 16 = true := by decide +kernel

theorem v_353_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 128 16 = true := by decide +kernel

theorem v_353_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 353 144 16 = true := by decide +kernel

theorem r_353 : recsK7OK T qscale den6 d14 lamN lamD l7 353 1 = true := recK7_of (n := 160) t_353 n_353 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_353_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_353_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_353_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_353_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_353_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_353_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_353_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_353_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_353_8 (v_353_9))))))))))

theorem t_354 : treeK7OK l7 354 = true := by decide +kernel

theorem n_354 : (recAt l7 354).2.2.2.length ≤ 64 := by decide +kernel

theorem v_354_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 354 0 16 = true := by decide +kernel

theorem v_354_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 354 16 16 = true := by decide +kernel

theorem v_354_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 354 32 16 = true := by decide +kernel

theorem v_354_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 354 48 16 = true := by decide +kernel

theorem r_354 : recsK7OK T qscale den6 d14 lamN lamD l7 354 1 = true := recK7_of (n := 64) t_354 n_354 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_354_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_354_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_354_2 (v_354_3))))

theorem rs_353 : recsK7OK T qscale den6 d14 lamN lamD l7 353 2 = true := recsK7OK_succ (lo := 353) (n := 1) r_353 (r_354)

end BeatAvg.K.K7
