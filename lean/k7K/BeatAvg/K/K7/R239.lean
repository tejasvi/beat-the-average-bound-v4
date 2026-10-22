import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_787 : treeK7OK l7 787 = true := by decide +kernel

theorem n_787 : (recAt l7 787).2.2.2.length ≤ 64 := by decide +kernel

theorem v_787_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 787 0 16 = true := by decide +kernel

theorem v_787_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 787 16 16 = true := by decide +kernel

theorem v_787_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 787 32 16 = true := by decide +kernel

theorem v_787_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 787 48 16 = true := by decide +kernel

theorem r_787 : recsK7OK T qscale den6 d14 lamN lamD l7 787 1 = true := recK7_of (n := 64) t_787 n_787 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_787_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_787_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_787_2 (v_787_3))))

theorem t_788 : treeK7OK l7 788 = true := by decide +kernel

theorem n_788 : (recAt l7 788).2.2.2.length ≤ 144 := by decide +kernel

theorem v_788_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 0 16 = true := by decide +kernel

theorem v_788_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 16 16 = true := by decide +kernel

theorem v_788_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 32 16 = true := by decide +kernel

theorem v_788_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 48 16 = true := by decide +kernel

theorem v_788_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 64 16 = true := by decide +kernel

theorem v_788_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 80 16 = true := by decide +kernel

theorem v_788_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 96 16 = true := by decide +kernel

theorem v_788_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 112 16 = true := by decide +kernel

theorem v_788_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 788 128 16 = true := by decide +kernel

theorem r_788 : recsK7OK T qscale den6 d14 lamN lamD l7 788 1 = true := recK7_of (n := 144) t_788 n_788 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_788_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_788_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_788_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_788_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_788_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_788_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_788_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_788_7 (v_788_8)))))))))

theorem t_789 : treeK7OK l7 789 = true := by decide +kernel

theorem n_789 : (recAt l7 789).2.2.2.length ≤ 96 := by decide +kernel

theorem v_789_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 789 0 16 = true := by decide +kernel

theorem v_789_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 789 16 16 = true := by decide +kernel

theorem v_789_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 789 32 16 = true := by decide +kernel

theorem v_789_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 789 48 16 = true := by decide +kernel

theorem v_789_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 789 64 16 = true := by decide +kernel

theorem v_789_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 789 80 16 = true := by decide +kernel

theorem r_789 : recsK7OK T qscale den6 d14 lamN lamD l7 789 1 = true := recK7_of (n := 96) t_789 n_789 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_789_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_789_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_789_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_789_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_789_4 (v_789_5))))))

theorem t_790 : treeK7OK l7 790 = true := by decide +kernel

theorem n_790 : (recAt l7 790).2.2.2.length ≤ 96 := by decide +kernel

theorem v_790_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 790 0 16 = true := by decide +kernel

theorem v_790_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 790 16 16 = true := by decide +kernel

theorem v_790_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 790 32 16 = true := by decide +kernel

theorem v_790_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 790 48 16 = true := by decide +kernel

theorem v_790_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 790 64 16 = true := by decide +kernel

theorem v_790_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 790 80 16 = true := by decide +kernel

theorem r_790 : recsK7OK T qscale den6 d14 lamN lamD l7 790 1 = true := recK7_of (n := 96) t_790 n_790 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_790_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_790_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_790_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_790_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_790_4 (v_790_5))))))

theorem rs_787 : recsK7OK T qscale den6 d14 lamN lamD l7 787 4 = true := recsK7OK_succ (lo := 787) (n := 3) r_787 (recsK7OK_succ (lo := 788) (n := 2) r_788 (recsK7OK_succ (lo := 789) (n := 1) r_789 (r_790)))

end BeatAvg.K.K7
