import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_140 : treeK7OK l7 140 = true := by decide +kernel

theorem n_140 : (recAt l7 140).2.2.2.length ≤ 160 := by decide +kernel

theorem v_140_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 0 16 = true := by decide +kernel

theorem v_140_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 16 16 = true := by decide +kernel

theorem v_140_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 32 16 = true := by decide +kernel

theorem v_140_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 48 16 = true := by decide +kernel

theorem v_140_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 64 16 = true := by decide +kernel

theorem v_140_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 80 16 = true := by decide +kernel

theorem v_140_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 96 16 = true := by decide +kernel

theorem v_140_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 112 16 = true := by decide +kernel

theorem v_140_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 128 16 = true := by decide +kernel

theorem v_140_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 140 144 16 = true := by decide +kernel

theorem r_140 : recsK7OK T qscale den6 d14 lamN lamD l7 140 1 = true := recK7_of (n := 160) t_140 n_140 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_140_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_140_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_140_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_140_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_140_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_140_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_140_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_140_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_140_8 (v_140_9))))))))))

theorem t_141 : treeK7OK l7 141 = true := by decide +kernel

theorem n_141 : (recAt l7 141).2.2.2.length ≤ 48 := by decide +kernel

theorem v_141_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 141 0 16 = true := by decide +kernel

theorem v_141_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 141 16 16 = true := by decide +kernel

theorem v_141_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 141 32 16 = true := by decide +kernel

theorem r_141 : recsK7OK T qscale den6 d14 lamN lamD l7 141 1 = true := recK7_of (n := 48) t_141 n_141 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_141_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_141_1 (v_141_2)))

theorem t_142 : treeK7OK l7 142 = true := by decide +kernel

theorem n_142 : (recAt l7 142).2.2.2.length ≤ 96 := by decide +kernel

theorem v_142_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 142 0 16 = true := by decide +kernel

theorem v_142_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 142 16 16 = true := by decide +kernel

theorem v_142_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 142 32 16 = true := by decide +kernel

theorem v_142_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 142 48 16 = true := by decide +kernel

theorem v_142_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 142 64 16 = true := by decide +kernel

theorem v_142_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 142 80 16 = true := by decide +kernel

theorem r_142 : recsK7OK T qscale den6 d14 lamN lamD l7 142 1 = true := recK7_of (n := 96) t_142 n_142 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_142_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_142_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_142_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_142_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_142_4 (v_142_5))))))

theorem t_143 : treeK7OK l7 143 = true := by decide +kernel

theorem n_143 : (recAt l7 143).2.2.2.length ≤ 112 := by decide +kernel

theorem v_143_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 143 0 16 = true := by decide +kernel

theorem v_143_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 143 16 16 = true := by decide +kernel

theorem v_143_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 143 32 16 = true := by decide +kernel

theorem v_143_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 143 48 16 = true := by decide +kernel

theorem v_143_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 143 64 16 = true := by decide +kernel

theorem v_143_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 143 80 16 = true := by decide +kernel

theorem v_143_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 143 96 16 = true := by decide +kernel

theorem r_143 : recsK7OK T qscale den6 d14 lamN lamD l7 143 1 = true := recK7_of (n := 112) t_143 n_143 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_143_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_143_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_143_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_143_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_143_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_143_5 (v_143_6)))))))

theorem rs_140 : recsK7OK T qscale den6 d14 lamN lamD l7 140 4 = true := recsK7OK_succ (lo := 140) (n := 3) r_140 (recsK7OK_succ (lo := 141) (n := 2) r_141 (recsK7OK_succ (lo := 142) (n := 1) r_142 (r_143)))

end BeatAvg.K.K7
