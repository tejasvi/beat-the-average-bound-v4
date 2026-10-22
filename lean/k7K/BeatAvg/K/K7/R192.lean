import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_649 : treeK7OK l7 649 = true := by decide +kernel

theorem n_649 : (recAt l7 649).2.2.2.length ≤ 128 := by decide +kernel

theorem v_649_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 0 16 = true := by decide +kernel

theorem v_649_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 16 16 = true := by decide +kernel

theorem v_649_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 32 16 = true := by decide +kernel

theorem v_649_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 48 16 = true := by decide +kernel

theorem v_649_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 64 16 = true := by decide +kernel

theorem v_649_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 80 16 = true := by decide +kernel

theorem v_649_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 96 16 = true := by decide +kernel

theorem v_649_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 649 112 16 = true := by decide +kernel

theorem r_649 : recsK7OK T qscale den6 d14 lamN lamD l7 649 1 = true := recK7_of (n := 128) t_649 n_649 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_649_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_649_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_649_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_649_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_649_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_649_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_649_6 (v_649_7))))))))

theorem t_650 : treeK7OK l7 650 = true := by decide +kernel

theorem n_650 : (recAt l7 650).2.2.2.length ≤ 96 := by decide +kernel

theorem v_650_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 650 0 16 = true := by decide +kernel

theorem v_650_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 650 16 16 = true := by decide +kernel

theorem v_650_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 650 32 16 = true := by decide +kernel

theorem v_650_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 650 48 16 = true := by decide +kernel

theorem v_650_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 650 64 16 = true := by decide +kernel

theorem v_650_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 650 80 16 = true := by decide +kernel

theorem r_650 : recsK7OK T qscale den6 d14 lamN lamD l7 650 1 = true := recK7_of (n := 96) t_650 n_650 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_650_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_650_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_650_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_650_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_650_4 (v_650_5))))))

theorem t_651 : treeK7OK l7 651 = true := by decide +kernel

theorem n_651 : (recAt l7 651).2.2.2.length ≤ 80 := by decide +kernel

theorem v_651_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 651 0 16 = true := by decide +kernel

theorem v_651_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 651 16 16 = true := by decide +kernel

theorem v_651_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 651 32 16 = true := by decide +kernel

theorem v_651_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 651 48 16 = true := by decide +kernel

theorem v_651_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 651 64 16 = true := by decide +kernel

theorem r_651 : recsK7OK T qscale den6 d14 lamN lamD l7 651 1 = true := recK7_of (n := 80) t_651 n_651 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_651_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_651_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_651_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_651_3 (v_651_4)))))

theorem t_652 : treeK7OK l7 652 = true := by decide +kernel

theorem n_652 : (recAt l7 652).2.2.2.length ≤ 80 := by decide +kernel

theorem v_652_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 652 0 16 = true := by decide +kernel

theorem v_652_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 652 16 16 = true := by decide +kernel

theorem v_652_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 652 32 16 = true := by decide +kernel

theorem v_652_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 652 48 16 = true := by decide +kernel

theorem v_652_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 652 64 16 = true := by decide +kernel

theorem r_652 : recsK7OK T qscale den6 d14 lamN lamD l7 652 1 = true := recK7_of (n := 80) t_652 n_652 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_652_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_652_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_652_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_652_3 (v_652_4)))))

theorem t_653 : treeK7OK l7 653 = true := by decide +kernel

theorem n_653 : (recAt l7 653).2.2.2.length ≤ 32 := by decide +kernel

theorem v_653_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 653 0 16 = true := by decide +kernel

theorem v_653_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 653 16 16 = true := by decide +kernel

theorem r_653 : recsK7OK T qscale den6 d14 lamN lamD l7 653 1 = true := recK7_of (n := 32) t_653 n_653 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_653_0 (v_653_1))

theorem rs_649 : recsK7OK T qscale den6 d14 lamN lamD l7 649 5 = true := recsK7OK_succ (lo := 649) (n := 4) r_649 (recsK7OK_succ (lo := 650) (n := 3) r_650 (recsK7OK_succ (lo := 651) (n := 2) r_651 (recsK7OK_succ (lo := 652) (n := 1) r_652 (r_653))))

end BeatAvg.K.K7
