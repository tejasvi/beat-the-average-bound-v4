import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_705 : treeK7OK l7 705 = true := by decide +kernel

theorem n_705 : (recAt l7 705).2.2.2.length ≤ 112 := by decide +kernel

theorem v_705_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 705 0 16 = true := by decide +kernel

theorem v_705_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 705 16 16 = true := by decide +kernel

theorem v_705_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 705 32 16 = true := by decide +kernel

theorem v_705_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 705 48 16 = true := by decide +kernel

theorem v_705_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 705 64 16 = true := by decide +kernel

theorem v_705_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 705 80 16 = true := by decide +kernel

theorem v_705_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 705 96 16 = true := by decide +kernel

theorem r_705 : recsK7OK T qscale den6 d14 lamN lamD l7 705 1 = true := recK7_of (n := 112) t_705 n_705 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_705_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_705_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_705_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_705_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_705_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_705_5 (v_705_6)))))))

theorem t_706 : treeK7OK l7 706 = true := by decide +kernel

theorem n_706 : (recAt l7 706).2.2.2.length ≤ 64 := by decide +kernel

theorem v_706_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 706 0 16 = true := by decide +kernel

theorem v_706_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 706 16 16 = true := by decide +kernel

theorem v_706_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 706 32 16 = true := by decide +kernel

theorem v_706_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 706 48 16 = true := by decide +kernel

theorem r_706 : recsK7OK T qscale den6 d14 lamN lamD l7 706 1 = true := recK7_of (n := 64) t_706 n_706 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_706_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_706_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_706_2 (v_706_3))))

theorem t_707 : treeK7OK l7 707 = true := by decide +kernel

theorem n_707 : (recAt l7 707).2.2.2.length ≤ 96 := by decide +kernel

theorem v_707_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 707 0 16 = true := by decide +kernel

theorem v_707_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 707 16 16 = true := by decide +kernel

theorem v_707_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 707 32 16 = true := by decide +kernel

theorem v_707_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 707 48 16 = true := by decide +kernel

theorem v_707_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 707 64 16 = true := by decide +kernel

theorem v_707_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 707 80 16 = true := by decide +kernel

theorem r_707 : recsK7OK T qscale den6 d14 lamN lamD l7 707 1 = true := recK7_of (n := 96) t_707 n_707 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_707_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_707_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_707_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_707_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_707_4 (v_707_5))))))

theorem t_708 : treeK7OK l7 708 = true := by decide +kernel

theorem n_708 : (recAt l7 708).2.2.2.length ≤ 64 := by decide +kernel

theorem v_708_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 708 0 16 = true := by decide +kernel

theorem v_708_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 708 16 16 = true := by decide +kernel

theorem v_708_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 708 32 16 = true := by decide +kernel

theorem v_708_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 708 48 16 = true := by decide +kernel

theorem r_708 : recsK7OK T qscale den6 d14 lamN lamD l7 708 1 = true := recK7_of (n := 64) t_708 n_708 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_708_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_708_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_708_2 (v_708_3))))

theorem rs_705 : recsK7OK T qscale den6 d14 lamN lamD l7 705 4 = true := recsK7OK_succ (lo := 705) (n := 3) r_705 (recsK7OK_succ (lo := 706) (n := 2) r_706 (recsK7OK_succ (lo := 707) (n := 1) r_707 (r_708)))

end BeatAvg.K.K7
