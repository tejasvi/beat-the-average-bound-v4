import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_340 : treeK7OK l7 340 = true := by decide +kernel

theorem n_340 : (recAt l7 340).2.2.2.length ≤ 96 := by decide +kernel

theorem v_340_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 340 0 16 = true := by decide +kernel

theorem v_340_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 340 16 16 = true := by decide +kernel

theorem v_340_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 340 32 16 = true := by decide +kernel

theorem v_340_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 340 48 16 = true := by decide +kernel

theorem v_340_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 340 64 16 = true := by decide +kernel

theorem v_340_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 340 80 16 = true := by decide +kernel

theorem r_340 : recsK7OK T qscale den6 d14 lamN lamD l7 340 1 = true := recK7_of (n := 96) t_340 n_340 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_340_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_340_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_340_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_340_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_340_4 (v_340_5))))))

theorem t_341 : treeK7OK l7 341 = true := by decide +kernel

theorem n_341 : (recAt l7 341).2.2.2.length ≤ 64 := by decide +kernel

theorem v_341_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 341 0 16 = true := by decide +kernel

theorem v_341_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 341 16 16 = true := by decide +kernel

theorem v_341_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 341 32 16 = true := by decide +kernel

theorem v_341_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 341 48 16 = true := by decide +kernel

theorem r_341 : recsK7OK T qscale den6 d14 lamN lamD l7 341 1 = true := recK7_of (n := 64) t_341 n_341 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_341_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_341_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_341_2 (v_341_3))))

theorem rs_340 : recsK7OK T qscale den6 d14 lamN lamD l7 340 2 = true := recsK7OK_succ (lo := 340) (n := 1) r_340 (r_341)

end BeatAvg.K.K7
