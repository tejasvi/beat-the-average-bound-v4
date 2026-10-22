import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_757 : treeK7OK l7 757 = true := by decide +kernel

theorem n_757 : (recAt l7 757).2.2.2.length ≤ 128 := by decide +kernel

theorem v_757_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 0 16 = true := by decide +kernel

theorem v_757_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 16 16 = true := by decide +kernel

theorem v_757_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 32 16 = true := by decide +kernel

theorem v_757_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 48 16 = true := by decide +kernel

theorem v_757_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 64 16 = true := by decide +kernel

theorem v_757_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 80 16 = true := by decide +kernel

theorem v_757_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 96 16 = true := by decide +kernel

theorem v_757_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 757 112 16 = true := by decide +kernel

theorem r_757 : recsK7OK T qscale den6 d14 lamN lamD l7 757 1 = true := recK7_of (n := 128) t_757 n_757 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_757_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_757_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_757_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_757_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_757_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_757_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_757_6 (v_757_7))))))))

theorem t_758 : treeK7OK l7 758 = true := by decide +kernel

theorem n_758 : (recAt l7 758).2.2.2.length ≤ 80 := by decide +kernel

theorem v_758_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 758 0 16 = true := by decide +kernel

theorem v_758_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 758 16 16 = true := by decide +kernel

theorem v_758_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 758 32 16 = true := by decide +kernel

theorem v_758_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 758 48 16 = true := by decide +kernel

theorem v_758_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 758 64 16 = true := by decide +kernel

theorem r_758 : recsK7OK T qscale den6 d14 lamN lamD l7 758 1 = true := recK7_of (n := 80) t_758 n_758 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_758_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_758_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_758_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_758_3 (v_758_4)))))

theorem rs_757 : recsK7OK T qscale den6 d14 lamN lamD l7 757 2 = true := recsK7OK_succ (lo := 757) (n := 1) r_757 (r_758)

end BeatAvg.K.K7
