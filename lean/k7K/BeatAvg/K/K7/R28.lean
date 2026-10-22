import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_102 : treeK7OK l7 102 = true := by decide +kernel

theorem n_102 : (recAt l7 102).2.2.2.length ≤ 112 := by decide +kernel

theorem v_102_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 102 0 16 = true := by decide +kernel

theorem v_102_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 102 16 16 = true := by decide +kernel

theorem v_102_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 102 32 16 = true := by decide +kernel

theorem v_102_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 102 48 16 = true := by decide +kernel

theorem v_102_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 102 64 16 = true := by decide +kernel

theorem v_102_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 102 80 16 = true := by decide +kernel

theorem v_102_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 102 96 16 = true := by decide +kernel

theorem r_102 : recsK7OK T qscale den6 d14 lamN lamD l7 102 1 = true := recK7_of (n := 112) t_102 n_102 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_102_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_102_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_102_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_102_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_102_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_102_5 (v_102_6)))))))

theorem t_103 : treeK7OK l7 103 = true := by decide +kernel

theorem n_103 : (recAt l7 103).2.2.2.length ≤ 80 := by decide +kernel

theorem v_103_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 103 0 16 = true := by decide +kernel

theorem v_103_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 103 16 16 = true := by decide +kernel

theorem v_103_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 103 32 16 = true := by decide +kernel

theorem v_103_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 103 48 16 = true := by decide +kernel

theorem v_103_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 103 64 16 = true := by decide +kernel

theorem r_103 : recsK7OK T qscale den6 d14 lamN lamD l7 103 1 = true := recK7_of (n := 80) t_103 n_103 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_103_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_103_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_103_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_103_3 (v_103_4)))))

theorem t_104 : treeK7OK l7 104 = true := by decide +kernel

theorem n_104 : (recAt l7 104).2.2.2.length ≤ 64 := by decide +kernel

theorem v_104_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 104 0 16 = true := by decide +kernel

theorem v_104_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 104 16 16 = true := by decide +kernel

theorem v_104_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 104 32 16 = true := by decide +kernel

theorem v_104_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 104 48 16 = true := by decide +kernel

theorem r_104 : recsK7OK T qscale den6 d14 lamN lamD l7 104 1 = true := recK7_of (n := 64) t_104 n_104 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_104_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_104_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_104_2 (v_104_3))))

theorem t_105 : treeK7OK l7 105 = true := by decide +kernel

theorem n_105 : (recAt l7 105).2.2.2.length ≤ 48 := by decide +kernel

theorem v_105_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 105 0 16 = true := by decide +kernel

theorem v_105_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 105 16 16 = true := by decide +kernel

theorem v_105_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 105 32 16 = true := by decide +kernel

theorem r_105 : recsK7OK T qscale den6 d14 lamN lamD l7 105 1 = true := recK7_of (n := 48) t_105 n_105 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_105_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_105_1 (v_105_2)))

theorem t_106 : treeK7OK l7 106 = true := by decide +kernel

theorem n_106 : (recAt l7 106).2.2.2.length ≤ 48 := by decide +kernel

theorem v_106_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 106 0 16 = true := by decide +kernel

theorem v_106_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 106 16 16 = true := by decide +kernel

theorem v_106_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 106 32 16 = true := by decide +kernel

theorem r_106 : recsK7OK T qscale den6 d14 lamN lamD l7 106 1 = true := recK7_of (n := 48) t_106 n_106 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_106_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_106_1 (v_106_2)))

theorem rs_102 : recsK7OK T qscale den6 d14 lamN lamD l7 102 5 = true := recsK7OK_succ (lo := 102) (n := 4) r_102 (recsK7OK_succ (lo := 103) (n := 3) r_103 (recsK7OK_succ (lo := 104) (n := 2) r_104 (recsK7OK_succ (lo := 105) (n := 1) r_105 (r_106))))

end BeatAvg.K.K7
