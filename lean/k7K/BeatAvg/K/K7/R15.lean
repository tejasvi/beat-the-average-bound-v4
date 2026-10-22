import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_47 : treeK7OK l7 47 = true := by decide +kernel

theorem n_47 : (recAt l7 47).2.2.2.length ≤ 128 := by decide +kernel

theorem v_47_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 0 16 = true := by decide +kernel

theorem v_47_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 16 16 = true := by decide +kernel

theorem v_47_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 32 16 = true := by decide +kernel

theorem v_47_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 48 16 = true := by decide +kernel

theorem v_47_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 64 16 = true := by decide +kernel

theorem v_47_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 80 16 = true := by decide +kernel

theorem v_47_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 96 16 = true := by decide +kernel

theorem v_47_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 47 112 16 = true := by decide +kernel

theorem r_47 : recsK7OK T qscale den6 d14 lamN lamD l7 47 1 = true := recK7_of (n := 128) t_47 n_47 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_47_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_47_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_47_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_47_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_47_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_47_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_47_6 (v_47_7))))))))

theorem t_48 : treeK7OK l7 48 = true := by decide +kernel

theorem n_48 : (recAt l7 48).2.2.2.length ≤ 96 := by decide +kernel

theorem v_48_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 48 0 16 = true := by decide +kernel

theorem v_48_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 48 16 16 = true := by decide +kernel

theorem v_48_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 48 32 16 = true := by decide +kernel

theorem v_48_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 48 48 16 = true := by decide +kernel

theorem v_48_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 48 64 16 = true := by decide +kernel

theorem v_48_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 48 80 16 = true := by decide +kernel

theorem r_48 : recsK7OK T qscale den6 d14 lamN lamD l7 48 1 = true := recK7_of (n := 96) t_48 n_48 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_48_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_48_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_48_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_48_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_48_4 (v_48_5))))))

theorem t_49 : treeK7OK l7 49 = true := by decide +kernel

theorem n_49 : (recAt l7 49).2.2.2.length ≤ 64 := by decide +kernel

theorem v_49_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 49 0 16 = true := by decide +kernel

theorem v_49_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 49 16 16 = true := by decide +kernel

theorem v_49_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 49 32 16 = true := by decide +kernel

theorem v_49_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 49 48 16 = true := by decide +kernel

theorem r_49 : recsK7OK T qscale den6 d14 lamN lamD l7 49 1 = true := recK7_of (n := 64) t_49 n_49 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_49_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_49_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_49_2 (v_49_3))))

theorem t_50 : treeK7OK l7 50 = true := by decide +kernel

theorem n_50 : (recAt l7 50).2.2.2.length ≤ 32 := by decide +kernel

theorem v_50_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 50 0 16 = true := by decide +kernel

theorem v_50_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 50 16 16 = true := by decide +kernel

theorem r_50 : recsK7OK T qscale den6 d14 lamN lamD l7 50 1 = true := recK7_of (n := 32) t_50 n_50 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_50_0 (v_50_1))

theorem t_51 : treeK7OK l7 51 = true := by decide +kernel

theorem n_51 : (recAt l7 51).2.2.2.length ≤ 32 := by decide +kernel

theorem v_51_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 51 0 16 = true := by decide +kernel

theorem v_51_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 51 16 16 = true := by decide +kernel

theorem r_51 : recsK7OK T qscale den6 d14 lamN lamD l7 51 1 = true := recK7_of (n := 32) t_51 n_51 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_51_0 (v_51_1))

theorem t_52 : treeK7OK l7 52 = true := by decide +kernel

theorem n_52 : (recAt l7 52).2.2.2.length ≤ 32 := by decide +kernel

theorem v_52_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 52 0 16 = true := by decide +kernel

theorem v_52_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 52 16 16 = true := by decide +kernel

theorem r_52 : recsK7OK T qscale den6 d14 lamN lamD l7 52 1 = true := recK7_of (n := 32) t_52 n_52 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_52_0 (v_52_1))

theorem rs_47 : recsK7OK T qscale den6 d14 lamN lamD l7 47 6 = true := recsK7OK_succ (lo := 47) (n := 5) r_47 (recsK7OK_succ (lo := 48) (n := 4) r_48 (recsK7OK_succ (lo := 49) (n := 3) r_49 (recsK7OK_succ (lo := 50) (n := 2) r_50 (recsK7OK_succ (lo := 51) (n := 1) r_51 (r_52)))))

end BeatAvg.K.K7
