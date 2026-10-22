import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_895 : treeK7OK l7 895 = true := by decide +kernel

theorem n_895 : (recAt l7 895).2.2.2.length ≤ 128 := by decide +kernel

theorem v_895_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 0 16 = true := by decide +kernel

theorem v_895_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 16 16 = true := by decide +kernel

theorem v_895_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 32 16 = true := by decide +kernel

theorem v_895_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 48 16 = true := by decide +kernel

theorem v_895_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 64 16 = true := by decide +kernel

theorem v_895_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 80 16 = true := by decide +kernel

theorem v_895_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 96 16 = true := by decide +kernel

theorem v_895_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 895 112 16 = true := by decide +kernel

theorem r_895 : recsK7OK T qscale den6 d14 lamN lamD l7 895 1 = true := recK7_of (n := 128) t_895 n_895 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_895_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_895_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_895_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_895_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_895_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_895_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_895_6 (v_895_7))))))))

theorem t_896 : treeK7OK l7 896 = true := by decide +kernel

theorem n_896 : (recAt l7 896).2.2.2.length ≤ 112 := by decide +kernel

theorem v_896_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 896 0 16 = true := by decide +kernel

theorem v_896_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 896 16 16 = true := by decide +kernel

theorem v_896_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 896 32 16 = true := by decide +kernel

theorem v_896_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 896 48 16 = true := by decide +kernel

theorem v_896_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 896 64 16 = true := by decide +kernel

theorem v_896_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 896 80 16 = true := by decide +kernel

theorem v_896_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 896 96 16 = true := by decide +kernel

theorem r_896 : recsK7OK T qscale den6 d14 lamN lamD l7 896 1 = true := recK7_of (n := 112) t_896 n_896 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_896_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_896_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_896_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_896_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_896_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_896_5 (v_896_6)))))))

theorem t_897 : treeK7OK l7 897 = true := by decide +kernel

theorem n_897 : (recAt l7 897).2.2.2.length ≤ 80 := by decide +kernel

theorem v_897_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 897 0 16 = true := by decide +kernel

theorem v_897_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 897 16 16 = true := by decide +kernel

theorem v_897_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 897 32 16 = true := by decide +kernel

theorem v_897_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 897 48 16 = true := by decide +kernel

theorem v_897_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 897 64 16 = true := by decide +kernel

theorem r_897 : recsK7OK T qscale den6 d14 lamN lamD l7 897 1 = true := recK7_of (n := 80) t_897 n_897 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_897_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_897_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_897_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_897_3 (v_897_4)))))

theorem rs_895 : recsK7OK T qscale den6 d14 lamN lamD l7 895 3 = true := recsK7OK_succ (lo := 895) (n := 2) r_895 (recsK7OK_succ (lo := 896) (n := 1) r_896 (r_897))

end BeatAvg.K.K7
