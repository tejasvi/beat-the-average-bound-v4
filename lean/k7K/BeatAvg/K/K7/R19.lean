import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_61 : treeK7OK l7 61 = true := by decide +kernel

theorem n_61 : (recAt l7 61).2.2.2.length ≤ 80 := by decide +kernel

theorem v_61_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 61 0 16 = true := by decide +kernel

theorem v_61_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 61 16 16 = true := by decide +kernel

theorem v_61_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 61 32 16 = true := by decide +kernel

theorem v_61_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 61 48 16 = true := by decide +kernel

theorem v_61_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 61 64 16 = true := by decide +kernel

theorem r_61 : recsK7OK T qscale den6 d14 lamN lamD l7 61 1 = true := recK7_of (n := 80) t_61 n_61 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_61_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_61_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_61_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_61_3 (v_61_4)))))

theorem t_62 : treeK7OK l7 62 = true := by decide +kernel

theorem n_62 : (recAt l7 62).2.2.2.length ≤ 48 := by decide +kernel

theorem v_62_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 62 0 16 = true := by decide +kernel

theorem v_62_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 62 16 16 = true := by decide +kernel

theorem v_62_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 62 32 16 = true := by decide +kernel

theorem r_62 : recsK7OK T qscale den6 d14 lamN lamD l7 62 1 = true := recK7_of (n := 48) t_62 n_62 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_62_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_62_1 (v_62_2)))

theorem t_63 : treeK7OK l7 63 = true := by decide +kernel

theorem n_63 : (recAt l7 63).2.2.2.length ≤ 48 := by decide +kernel

theorem v_63_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 63 0 16 = true := by decide +kernel

theorem v_63_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 63 16 16 = true := by decide +kernel

theorem v_63_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 63 32 16 = true := by decide +kernel

theorem r_63 : recsK7OK T qscale den6 d14 lamN lamD l7 63 1 = true := recK7_of (n := 48) t_63 n_63 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_63_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_63_1 (v_63_2)))

theorem t_64 : treeK7OK l7 64 = true := by decide +kernel

theorem n_64 : (recAt l7 64).2.2.2.length ≤ 48 := by decide +kernel

theorem v_64_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 64 0 16 = true := by decide +kernel

theorem v_64_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 64 16 16 = true := by decide +kernel

theorem v_64_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 64 32 16 = true := by decide +kernel

theorem r_64 : recsK7OK T qscale den6 d14 lamN lamD l7 64 1 = true := recK7_of (n := 48) t_64 n_64 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_64_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_64_1 (v_64_2)))

theorem t_65 : treeK7OK l7 65 = true := by decide +kernel

theorem n_65 : (recAt l7 65).2.2.2.length ≤ 48 := by decide +kernel

theorem v_65_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 65 0 16 = true := by decide +kernel

theorem v_65_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 65 16 16 = true := by decide +kernel

theorem v_65_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 65 32 16 = true := by decide +kernel

theorem r_65 : recsK7OK T qscale den6 d14 lamN lamD l7 65 1 = true := recK7_of (n := 48) t_65 n_65 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_65_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_65_1 (v_65_2)))

theorem rs_61 : recsK7OK T qscale den6 d14 lamN lamD l7 61 5 = true := recsK7OK_succ (lo := 61) (n := 4) r_61 (recsK7OK_succ (lo := 62) (n := 3) r_62 (recsK7OK_succ (lo := 63) (n := 2) r_63 (recsK7OK_succ (lo := 64) (n := 1) r_64 (r_65))))

end BeatAvg.K.K7
