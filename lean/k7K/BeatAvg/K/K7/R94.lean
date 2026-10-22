import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_345 : treeK7OK l7 345 = true := by decide +kernel

theorem n_345 : (recAt l7 345).2.2.2.length ≤ 128 := by decide +kernel

theorem v_345_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 0 16 = true := by decide +kernel

theorem v_345_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 16 16 = true := by decide +kernel

theorem v_345_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 32 16 = true := by decide +kernel

theorem v_345_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 48 16 = true := by decide +kernel

theorem v_345_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 64 16 = true := by decide +kernel

theorem v_345_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 80 16 = true := by decide +kernel

theorem v_345_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 96 16 = true := by decide +kernel

theorem v_345_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 345 112 16 = true := by decide +kernel

theorem r_345 : recsK7OK T qscale den6 d14 lamN lamD l7 345 1 = true := recK7_of (n := 128) t_345 n_345 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_345_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_345_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_345_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_345_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_345_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_345_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_345_6 (v_345_7))))))))

theorem t_346 : treeK7OK l7 346 = true := by decide +kernel

theorem n_346 : (recAt l7 346).2.2.2.length ≤ 48 := by decide +kernel

theorem v_346_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 346 0 16 = true := by decide +kernel

theorem v_346_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 346 16 16 = true := by decide +kernel

theorem v_346_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 346 32 16 = true := by decide +kernel

theorem r_346 : recsK7OK T qscale den6 d14 lamN lamD l7 346 1 = true := recK7_of (n := 48) t_346 n_346 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_346_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_346_1 (v_346_2)))

theorem rs_345 : recsK7OK T qscale den6 d14 lamN lamD l7 345 2 = true := recsK7OK_succ (lo := 345) (n := 1) r_345 (r_346)

end BeatAvg.K.K7
