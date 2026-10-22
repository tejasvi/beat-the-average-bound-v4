import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_152 : treeK7OK l7 152 = true := by decide +kernel

theorem n_152 : (recAt l7 152).2.2.2.length ≤ 64 := by decide +kernel

theorem v_152_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 152 0 16 = true := by decide +kernel

theorem v_152_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 152 16 16 = true := by decide +kernel

theorem v_152_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 152 32 16 = true := by decide +kernel

theorem v_152_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 152 48 16 = true := by decide +kernel

theorem r_152 : recsK7OK T qscale den6 d14 lamN lamD l7 152 1 = true := recK7_of (n := 64) t_152 n_152 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_152_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_152_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_152_2 (v_152_3))))

theorem t_153 : treeK7OK l7 153 = true := by decide +kernel

theorem n_153 : (recAt l7 153).2.2.2.length ≤ 32 := by decide +kernel

theorem v_153_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 153 0 16 = true := by decide +kernel

theorem v_153_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 153 16 16 = true := by decide +kernel

theorem r_153 : recsK7OK T qscale den6 d14 lamN lamD l7 153 1 = true := recK7_of (n := 32) t_153 n_153 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_153_0 (v_153_1))

theorem t_154 : treeK7OK l7 154 = true := by decide +kernel

theorem n_154 : (recAt l7 154).2.2.2.length ≤ 112 := by decide +kernel

theorem v_154_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 154 0 16 = true := by decide +kernel

theorem v_154_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 154 16 16 = true := by decide +kernel

theorem v_154_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 154 32 16 = true := by decide +kernel

theorem v_154_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 154 48 16 = true := by decide +kernel

theorem v_154_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 154 64 16 = true := by decide +kernel

theorem v_154_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 154 80 16 = true := by decide +kernel

theorem v_154_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 154 96 16 = true := by decide +kernel

theorem r_154 : recsK7OK T qscale den6 d14 lamN lamD l7 154 1 = true := recK7_of (n := 112) t_154 n_154 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_154_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_154_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_154_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_154_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_154_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_154_5 (v_154_6)))))))

theorem t_155 : treeK7OK l7 155 = true := by decide +kernel

theorem n_155 : (recAt l7 155).2.2.2.length ≤ 96 := by decide +kernel

theorem v_155_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 155 0 16 = true := by decide +kernel

theorem v_155_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 155 16 16 = true := by decide +kernel

theorem v_155_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 155 32 16 = true := by decide +kernel

theorem v_155_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 155 48 16 = true := by decide +kernel

theorem v_155_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 155 64 16 = true := by decide +kernel

theorem v_155_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 155 80 16 = true := by decide +kernel

theorem r_155 : recsK7OK T qscale den6 d14 lamN lamD l7 155 1 = true := recK7_of (n := 96) t_155 n_155 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_155_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_155_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_155_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_155_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_155_4 (v_155_5))))))

theorem t_156 : treeK7OK l7 156 = true := by decide +kernel

theorem n_156 : (recAt l7 156).2.2.2.length ≤ 32 := by decide +kernel

theorem v_156_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 156 0 16 = true := by decide +kernel

theorem v_156_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 156 16 16 = true := by decide +kernel

theorem r_156 : recsK7OK T qscale den6 d14 lamN lamD l7 156 1 = true := recK7_of (n := 32) t_156 n_156 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_156_0 (v_156_1))

theorem rs_152 : recsK7OK T qscale den6 d14 lamN lamD l7 152 5 = true := recsK7OK_succ (lo := 152) (n := 4) r_152 (recsK7OK_succ (lo := 153) (n := 3) r_153 (recsK7OK_succ (lo := 154) (n := 2) r_154 (recsK7OK_succ (lo := 155) (n := 1) r_155 (r_156))))

end BeatAvg.K.K7
