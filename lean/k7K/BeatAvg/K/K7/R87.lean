import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_334 : treeK7OK l7 334 = true := by decide +kernel

theorem n_334 : (recAt l7 334).2.2.2.length ≤ 128 := by decide +kernel

theorem v_334_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 0 16 = true := by decide +kernel

theorem v_334_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 16 16 = true := by decide +kernel

theorem v_334_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 32 16 = true := by decide +kernel

theorem v_334_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 48 16 = true := by decide +kernel

theorem v_334_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 64 16 = true := by decide +kernel

theorem v_334_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 80 16 = true := by decide +kernel

theorem v_334_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 96 16 = true := by decide +kernel

theorem v_334_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 334 112 16 = true := by decide +kernel

theorem r_334 : recsK7OK T qscale den6 d14 lamN lamD l7 334 1 = true := recK7_of (n := 128) t_334 n_334 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_334_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_334_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_334_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_334_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_334_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_334_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_334_6 (v_334_7))))))))

theorem t_335 : treeK7OK l7 335 = true := by decide +kernel

theorem n_335 : (recAt l7 335).2.2.2.length ≤ 112 := by decide +kernel

theorem v_335_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 335 0 16 = true := by decide +kernel

theorem v_335_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 335 16 16 = true := by decide +kernel

theorem v_335_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 335 32 16 = true := by decide +kernel

theorem v_335_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 335 48 16 = true := by decide +kernel

theorem v_335_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 335 64 16 = true := by decide +kernel

theorem v_335_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 335 80 16 = true := by decide +kernel

theorem v_335_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 335 96 16 = true := by decide +kernel

theorem r_335 : recsK7OK T qscale den6 d14 lamN lamD l7 335 1 = true := recK7_of (n := 112) t_335 n_335 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_335_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_335_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_335_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_335_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_335_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_335_5 (v_335_6)))))))

theorem rs_334 : recsK7OK T qscale den6 d14 lamN lamD l7 334 2 = true := recsK7OK_succ (lo := 334) (n := 1) r_334 (r_335)

end BeatAvg.K.K7
