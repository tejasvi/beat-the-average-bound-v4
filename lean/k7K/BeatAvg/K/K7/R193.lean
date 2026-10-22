import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_654 : treeK7OK l7 654 = true := by decide +kernel

theorem n_654 : (recAt l7 654).2.2.2.length ≤ 32 := by decide +kernel

theorem v_654_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 654 0 16 = true := by decide +kernel

theorem v_654_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 654 16 16 = true := by decide +kernel

theorem r_654 : recsK7OK T qscale den6 d14 lamN lamD l7 654 1 = true := recK7_of (n := 32) t_654 n_654 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_654_0 (v_654_1))

theorem t_655 : treeK7OK l7 655 = true := by decide +kernel

theorem n_655 : (recAt l7 655).2.2.2.length ≤ 80 := by decide +kernel

theorem v_655_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 655 0 16 = true := by decide +kernel

theorem v_655_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 655 16 16 = true := by decide +kernel

theorem v_655_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 655 32 16 = true := by decide +kernel

theorem v_655_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 655 48 16 = true := by decide +kernel

theorem v_655_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 655 64 16 = true := by decide +kernel

theorem r_655 : recsK7OK T qscale den6 d14 lamN lamD l7 655 1 = true := recK7_of (n := 80) t_655 n_655 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_655_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_655_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_655_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_655_3 (v_655_4)))))

theorem t_656 : treeK7OK l7 656 = true := by decide +kernel

theorem n_656 : (recAt l7 656).2.2.2.length ≤ 48 := by decide +kernel

theorem v_656_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 656 0 16 = true := by decide +kernel

theorem v_656_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 656 16 16 = true := by decide +kernel

theorem v_656_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 656 32 16 = true := by decide +kernel

theorem r_656 : recsK7OK T qscale den6 d14 lamN lamD l7 656 1 = true := recK7_of (n := 48) t_656 n_656 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_656_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_656_1 (v_656_2)))

theorem t_657 : treeK7OK l7 657 = true := by decide +kernel

theorem n_657 : (recAt l7 657).2.2.2.length ≤ 32 := by decide +kernel

theorem v_657_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 657 0 16 = true := by decide +kernel

theorem v_657_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 657 16 16 = true := by decide +kernel

theorem r_657 : recsK7OK T qscale den6 d14 lamN lamD l7 657 1 = true := recK7_of (n := 32) t_657 n_657 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_657_0 (v_657_1))

theorem t_658 : treeK7OK l7 658 = true := by decide +kernel

theorem n_658 : (recAt l7 658).2.2.2.length ≤ 160 := by decide +kernel

theorem v_658_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 0 16 = true := by decide +kernel

theorem v_658_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 16 16 = true := by decide +kernel

theorem v_658_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 32 16 = true := by decide +kernel

theorem v_658_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 48 16 = true := by decide +kernel

theorem v_658_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 64 16 = true := by decide +kernel

theorem v_658_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 80 16 = true := by decide +kernel

theorem v_658_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 96 16 = true := by decide +kernel

theorem v_658_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 112 16 = true := by decide +kernel

theorem v_658_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 128 16 = true := by decide +kernel

theorem v_658_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 658 144 16 = true := by decide +kernel

theorem r_658 : recsK7OK T qscale den6 d14 lamN lamD l7 658 1 = true := recK7_of (n := 160) t_658 n_658 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_658_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_658_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_658_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_658_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_658_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_658_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_658_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_658_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_658_8 (v_658_9))))))))))

theorem rs_654 : recsK7OK T qscale den6 d14 lamN lamD l7 654 5 = true := recsK7OK_succ (lo := 654) (n := 4) r_654 (recsK7OK_succ (lo := 655) (n := 3) r_655 (recsK7OK_succ (lo := 656) (n := 2) r_656 (recsK7OK_succ (lo := 657) (n := 1) r_657 (r_658))))

end BeatAvg.K.K7
