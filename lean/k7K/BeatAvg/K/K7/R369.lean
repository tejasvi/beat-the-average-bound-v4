import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1111 : treeK7OK l7 1111 = true := by decide +kernel

theorem n_1111 : (recAt l7 1111).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1111_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1111 0 16 = true := by decide +kernel

theorem v_1111_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1111 16 16 = true := by decide +kernel

theorem v_1111_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1111 32 16 = true := by decide +kernel

theorem v_1111_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1111 48 16 = true := by decide +kernel

theorem v_1111_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1111 64 16 = true := by decide +kernel

theorem r_1111 : recsK7OK T qscale den6 d14 lamN lamD l7 1111 1 = true := recK7_of (n := 80) t_1111 n_1111 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1111_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1111_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1111_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1111_3 (v_1111_4)))))

theorem t_1112 : treeK7OK l7 1112 = true := by decide +kernel

theorem n_1112 : (recAt l7 1112).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1112_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1112 0 16 = true := by decide +kernel

theorem v_1112_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1112 16 16 = true := by decide +kernel

theorem v_1112_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1112 32 16 = true := by decide +kernel

theorem v_1112_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1112 48 16 = true := by decide +kernel

theorem v_1112_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1112 64 16 = true := by decide +kernel

theorem v_1112_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1112 80 16 = true := by decide +kernel

theorem r_1112 : recsK7OK T qscale den6 d14 lamN lamD l7 1112 1 = true := recK7_of (n := 96) t_1112 n_1112 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1112_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1112_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1112_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1112_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1112_4 (v_1112_5))))))

theorem t_1113 : treeK7OK l7 1113 = true := by decide +kernel

theorem n_1113 : (recAt l7 1113).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1113_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1113 0 16 = true := by decide +kernel

theorem v_1113_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1113 16 16 = true := by decide +kernel

theorem v_1113_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1113 32 16 = true := by decide +kernel

theorem v_1113_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1113 48 16 = true := by decide +kernel

theorem v_1113_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1113 64 16 = true := by decide +kernel

theorem r_1113 : recsK7OK T qscale den6 d14 lamN lamD l7 1113 1 = true := recK7_of (n := 80) t_1113 n_1113 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1113_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1113_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1113_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1113_3 (v_1113_4)))))

theorem t_1114 : treeK7OK l7 1114 = true := by decide +kernel

theorem n_1114 : (recAt l7 1114).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1114_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1114 0 16 = true := by decide +kernel

theorem v_1114_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1114 16 16 = true := by decide +kernel

theorem v_1114_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1114 32 16 = true := by decide +kernel

theorem v_1114_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1114 48 16 = true := by decide +kernel

theorem v_1114_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1114 64 16 = true := by decide +kernel

theorem r_1114 : recsK7OK T qscale den6 d14 lamN lamD l7 1114 1 = true := recK7_of (n := 80) t_1114 n_1114 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1114_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1114_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1114_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1114_3 (v_1114_4)))))

theorem t_1115 : treeK7OK l7 1115 = true := by decide +kernel

theorem n_1115 : (recAt l7 1115).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1115_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1115 0 16 = true := by decide +kernel

theorem v_1115_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1115 16 16 = true := by decide +kernel

theorem v_1115_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1115 32 16 = true := by decide +kernel

theorem v_1115_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1115 48 16 = true := by decide +kernel

theorem r_1115 : recsK7OK T qscale den6 d14 lamN lamD l7 1115 1 = true := recK7_of (n := 64) t_1115 n_1115 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1115_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1115_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1115_2 (v_1115_3))))

theorem rs_1111 : recsK7OK T qscale den6 d14 lamN lamD l7 1111 5 = true := recsK7OK_succ (lo := 1111) (n := 4) r_1111 (recsK7OK_succ (lo := 1112) (n := 3) r_1112 (recsK7OK_succ (lo := 1113) (n := 2) r_1113 (recsK7OK_succ (lo := 1114) (n := 1) r_1114 (r_1115))))

end BeatAvg.K.K7
