import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_634 : treeK7OK l7 634 = true := by decide +kernel

theorem n_634 : (recAt l7 634).2.2.2.length ≤ 112 := by decide +kernel

theorem v_634_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 634 0 16 = true := by decide +kernel

theorem v_634_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 634 16 16 = true := by decide +kernel

theorem v_634_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 634 32 16 = true := by decide +kernel

theorem v_634_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 634 48 16 = true := by decide +kernel

theorem v_634_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 634 64 16 = true := by decide +kernel

theorem v_634_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 634 80 16 = true := by decide +kernel

theorem v_634_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 634 96 16 = true := by decide +kernel

theorem r_634 : recsK7OK T qscale den6 d14 lamN lamD l7 634 1 = true := recK7_of (n := 112) t_634 n_634 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_634_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_634_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_634_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_634_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_634_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_634_5 (v_634_6)))))))

theorem t_635 : treeK7OK l7 635 = true := by decide +kernel

theorem n_635 : (recAt l7 635).2.2.2.length ≤ 112 := by decide +kernel

theorem v_635_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 635 0 16 = true := by decide +kernel

theorem v_635_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 635 16 16 = true := by decide +kernel

theorem v_635_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 635 32 16 = true := by decide +kernel

theorem v_635_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 635 48 16 = true := by decide +kernel

theorem v_635_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 635 64 16 = true := by decide +kernel

theorem v_635_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 635 80 16 = true := by decide +kernel

theorem v_635_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 635 96 16 = true := by decide +kernel

theorem r_635 : recsK7OK T qscale den6 d14 lamN lamD l7 635 1 = true := recK7_of (n := 112) t_635 n_635 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_635_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_635_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_635_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_635_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_635_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_635_5 (v_635_6)))))))

theorem rs_634 : recsK7OK T qscale den6 d14 lamN lamD l7 634 2 = true := recsK7OK_succ (lo := 634) (n := 1) r_634 (r_635)

end BeatAvg.K.K7
