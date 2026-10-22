import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_418 : treeK7OK l7 418 = true := by decide +kernel

theorem n_418 : (recAt l7 418).2.2.2.length ≤ 96 := by decide +kernel

theorem v_418_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 418 0 16 = true := by decide +kernel

theorem v_418_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 418 16 16 = true := by decide +kernel

theorem v_418_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 418 32 16 = true := by decide +kernel

theorem v_418_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 418 48 16 = true := by decide +kernel

theorem v_418_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 418 64 16 = true := by decide +kernel

theorem v_418_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 418 80 16 = true := by decide +kernel

theorem r_418 : recsK7OK T qscale den6 d14 lamN lamD l7 418 1 = true := recK7_of (n := 96) t_418 n_418 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_418_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_418_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_418_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_418_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_418_4 (v_418_5))))))

theorem t_419 : treeK7OK l7 419 = true := by decide +kernel

theorem n_419 : (recAt l7 419).2.2.2.length ≤ 96 := by decide +kernel

theorem v_419_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 419 0 16 = true := by decide +kernel

theorem v_419_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 419 16 16 = true := by decide +kernel

theorem v_419_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 419 32 16 = true := by decide +kernel

theorem v_419_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 419 48 16 = true := by decide +kernel

theorem v_419_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 419 64 16 = true := by decide +kernel

theorem v_419_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 419 80 16 = true := by decide +kernel

theorem r_419 : recsK7OK T qscale den6 d14 lamN lamD l7 419 1 = true := recK7_of (n := 96) t_419 n_419 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_419_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_419_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_419_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_419_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_419_4 (v_419_5))))))

theorem rs_418 : recsK7OK T qscale den6 d14 lamN lamD l7 418 2 = true := recsK7OK_succ (lo := 418) (n := 1) r_418 (r_419)

end BeatAvg.K.K7
