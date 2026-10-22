import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_904 : treeK7OK l7 904 = true := by decide +kernel

theorem n_904 : (recAt l7 904).2.2.2.length ≤ 64 := by decide +kernel

theorem v_904_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 904 0 16 = true := by decide +kernel

theorem v_904_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 904 16 16 = true := by decide +kernel

theorem v_904_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 904 32 16 = true := by decide +kernel

theorem v_904_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 904 48 16 = true := by decide +kernel

theorem r_904 : recsK7OK T qscale den6 d14 lamN lamD l7 904 1 = true := recK7_of (n := 64) t_904 n_904 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_904_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_904_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_904_2 (v_904_3))))

theorem t_905 : treeK7OK l7 905 = true := by decide +kernel

theorem n_905 : (recAt l7 905).2.2.2.length ≤ 128 := by decide +kernel

theorem v_905_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 0 16 = true := by decide +kernel

theorem v_905_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 16 16 = true := by decide +kernel

theorem v_905_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 32 16 = true := by decide +kernel

theorem v_905_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 48 16 = true := by decide +kernel

theorem v_905_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 64 16 = true := by decide +kernel

theorem v_905_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 80 16 = true := by decide +kernel

theorem v_905_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 96 16 = true := by decide +kernel

theorem v_905_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 905 112 16 = true := by decide +kernel

theorem r_905 : recsK7OK T qscale den6 d14 lamN lamD l7 905 1 = true := recK7_of (n := 128) t_905 n_905 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_905_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_905_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_905_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_905_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_905_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_905_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_905_6 (v_905_7))))))))

theorem t_906 : treeK7OK l7 906 = true := by decide +kernel

theorem n_906 : (recAt l7 906).2.2.2.length ≤ 80 := by decide +kernel

theorem v_906_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 906 0 16 = true := by decide +kernel

theorem v_906_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 906 16 16 = true := by decide +kernel

theorem v_906_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 906 32 16 = true := by decide +kernel

theorem v_906_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 906 48 16 = true := by decide +kernel

theorem v_906_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 906 64 16 = true := by decide +kernel

theorem r_906 : recsK7OK T qscale den6 d14 lamN lamD l7 906 1 = true := recK7_of (n := 80) t_906 n_906 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_906_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_906_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_906_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_906_3 (v_906_4)))))

theorem t_907 : treeK7OK l7 907 = true := by decide +kernel

theorem n_907 : (recAt l7 907).2.2.2.length ≤ 80 := by decide +kernel

theorem v_907_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 907 0 16 = true := by decide +kernel

theorem v_907_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 907 16 16 = true := by decide +kernel

theorem v_907_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 907 32 16 = true := by decide +kernel

theorem v_907_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 907 48 16 = true := by decide +kernel

theorem v_907_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 907 64 16 = true := by decide +kernel

theorem r_907 : recsK7OK T qscale den6 d14 lamN lamD l7 907 1 = true := recK7_of (n := 80) t_907 n_907 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_907_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_907_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_907_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_907_3 (v_907_4)))))

theorem t_908 : treeK7OK l7 908 = true := by decide +kernel

theorem n_908 : (recAt l7 908).2.2.2.length ≤ 48 := by decide +kernel

theorem v_908_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 908 0 16 = true := by decide +kernel

theorem v_908_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 908 16 16 = true := by decide +kernel

theorem v_908_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 908 32 16 = true := by decide +kernel

theorem r_908 : recsK7OK T qscale den6 d14 lamN lamD l7 908 1 = true := recK7_of (n := 48) t_908 n_908 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_908_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_908_1 (v_908_2)))

theorem t_909 : treeK7OK l7 909 = true := by decide +kernel

theorem n_909 : (recAt l7 909).2.2.2.length ≤ 32 := by decide +kernel

theorem v_909_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 909 0 16 = true := by decide +kernel

theorem v_909_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 909 16 16 = true := by decide +kernel

theorem r_909 : recsK7OK T qscale den6 d14 lamN lamD l7 909 1 = true := recK7_of (n := 32) t_909 n_909 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_909_0 (v_909_1))

theorem rs_904 : recsK7OK T qscale den6 d14 lamN lamD l7 904 6 = true := recsK7OK_succ (lo := 904) (n := 5) r_904 (recsK7OK_succ (lo := 905) (n := 4) r_905 (recsK7OK_succ (lo := 906) (n := 3) r_906 (recsK7OK_succ (lo := 907) (n := 2) r_907 (recsK7OK_succ (lo := 908) (n := 1) r_908 (r_909)))))

end BeatAvg.K.K7
