import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_687 : treeK7OK l7 687 = true := by decide +kernel

theorem n_687 : (recAt l7 687).2.2.2.length ≤ 96 := by decide +kernel

theorem v_687_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 687 0 16 = true := by decide +kernel

theorem v_687_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 687 16 16 = true := by decide +kernel

theorem v_687_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 687 32 16 = true := by decide +kernel

theorem v_687_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 687 48 16 = true := by decide +kernel

theorem v_687_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 687 64 16 = true := by decide +kernel

theorem v_687_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 687 80 16 = true := by decide +kernel

theorem r_687 : recsK7OK T qscale den6 d14 lamN lamD l7 687 1 = true := recK7_of (n := 96) t_687 n_687 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_687_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_687_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_687_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_687_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_687_4 (v_687_5))))))

theorem t_688 : treeK7OK l7 688 = true := by decide +kernel

theorem n_688 : (recAt l7 688).2.2.2.length ≤ 80 := by decide +kernel

theorem v_688_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 688 0 16 = true := by decide +kernel

theorem v_688_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 688 16 16 = true := by decide +kernel

theorem v_688_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 688 32 16 = true := by decide +kernel

theorem v_688_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 688 48 16 = true := by decide +kernel

theorem v_688_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 688 64 16 = true := by decide +kernel

theorem r_688 : recsK7OK T qscale den6 d14 lamN lamD l7 688 1 = true := recK7_of (n := 80) t_688 n_688 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_688_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_688_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_688_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_688_3 (v_688_4)))))

theorem t_689 : treeK7OK l7 689 = true := by decide +kernel

theorem n_689 : (recAt l7 689).2.2.2.length ≤ 64 := by decide +kernel

theorem v_689_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 689 0 16 = true := by decide +kernel

theorem v_689_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 689 16 16 = true := by decide +kernel

theorem v_689_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 689 32 16 = true := by decide +kernel

theorem v_689_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 689 48 16 = true := by decide +kernel

theorem r_689 : recsK7OK T qscale den6 d14 lamN lamD l7 689 1 = true := recK7_of (n := 64) t_689 n_689 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_689_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_689_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_689_2 (v_689_3))))

theorem t_690 : treeK7OK l7 690 = true := by decide +kernel

theorem n_690 : (recAt l7 690).2.2.2.length ≤ 80 := by decide +kernel

theorem v_690_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 690 0 16 = true := by decide +kernel

theorem v_690_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 690 16 16 = true := by decide +kernel

theorem v_690_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 690 32 16 = true := by decide +kernel

theorem v_690_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 690 48 16 = true := by decide +kernel

theorem v_690_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 690 64 16 = true := by decide +kernel

theorem r_690 : recsK7OK T qscale den6 d14 lamN lamD l7 690 1 = true := recK7_of (n := 80) t_690 n_690 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_690_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_690_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_690_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_690_3 (v_690_4)))))

theorem t_691 : treeK7OK l7 691 = true := by decide +kernel

theorem n_691 : (recAt l7 691).2.2.2.length ≤ 80 := by decide +kernel

theorem v_691_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 691 0 16 = true := by decide +kernel

theorem v_691_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 691 16 16 = true := by decide +kernel

theorem v_691_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 691 32 16 = true := by decide +kernel

theorem v_691_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 691 48 16 = true := by decide +kernel

theorem v_691_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 691 64 16 = true := by decide +kernel

theorem r_691 : recsK7OK T qscale den6 d14 lamN lamD l7 691 1 = true := recK7_of (n := 80) t_691 n_691 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_691_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_691_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_691_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_691_3 (v_691_4)))))

theorem rs_687 : recsK7OK T qscale den6 d14 lamN lamD l7 687 5 = true := recsK7OK_succ (lo := 687) (n := 4) r_687 (recsK7OK_succ (lo := 688) (n := 3) r_688 (recsK7OK_succ (lo := 689) (n := 2) r_689 (recsK7OK_succ (lo := 690) (n := 1) r_690 (r_691))))

end BeatAvg.K.K7
