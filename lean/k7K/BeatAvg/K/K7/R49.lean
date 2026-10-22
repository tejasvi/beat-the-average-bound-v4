import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_180 : treeK7OK l7 180 = true := by decide +kernel

theorem n_180 : (recAt l7 180).2.2.2.length ≤ 80 := by decide +kernel

theorem v_180_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 180 0 16 = true := by decide +kernel

theorem v_180_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 180 16 16 = true := by decide +kernel

theorem v_180_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 180 32 16 = true := by decide +kernel

theorem v_180_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 180 48 16 = true := by decide +kernel

theorem v_180_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 180 64 16 = true := by decide +kernel

theorem r_180 : recsK7OK T qscale den6 d14 lamN lamD l7 180 1 = true := recK7_of (n := 80) t_180 n_180 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_180_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_180_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_180_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_180_3 (v_180_4)))))

theorem t_181 : treeK7OK l7 181 = true := by decide +kernel

theorem n_181 : (recAt l7 181).2.2.2.length ≤ 112 := by decide +kernel

theorem v_181_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 181 0 16 = true := by decide +kernel

theorem v_181_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 181 16 16 = true := by decide +kernel

theorem v_181_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 181 32 16 = true := by decide +kernel

theorem v_181_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 181 48 16 = true := by decide +kernel

theorem v_181_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 181 64 16 = true := by decide +kernel

theorem v_181_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 181 80 16 = true := by decide +kernel

theorem v_181_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 181 96 16 = true := by decide +kernel

theorem r_181 : recsK7OK T qscale den6 d14 lamN lamD l7 181 1 = true := recK7_of (n := 112) t_181 n_181 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_181_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_181_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_181_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_181_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_181_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_181_5 (v_181_6)))))))

theorem t_182 : treeK7OK l7 182 = true := by decide +kernel

theorem n_182 : (recAt l7 182).2.2.2.length ≤ 144 := by decide +kernel

theorem v_182_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 0 16 = true := by decide +kernel

theorem v_182_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 16 16 = true := by decide +kernel

theorem v_182_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 32 16 = true := by decide +kernel

theorem v_182_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 48 16 = true := by decide +kernel

theorem v_182_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 64 16 = true := by decide +kernel

theorem v_182_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 80 16 = true := by decide +kernel

theorem v_182_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 96 16 = true := by decide +kernel

theorem v_182_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 112 16 = true := by decide +kernel

theorem v_182_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 182 128 16 = true := by decide +kernel

theorem r_182 : recsK7OK T qscale den6 d14 lamN lamD l7 182 1 = true := recK7_of (n := 144) t_182 n_182 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_182_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_182_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_182_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_182_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_182_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_182_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_182_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_182_7 (v_182_8)))))))))

theorem t_183 : treeK7OK l7 183 = true := by decide +kernel

theorem n_183 : (recAt l7 183).2.2.2.length ≤ 32 := by decide +kernel

theorem v_183_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 183 0 16 = true := by decide +kernel

theorem v_183_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 183 16 16 = true := by decide +kernel

theorem r_183 : recsK7OK T qscale den6 d14 lamN lamD l7 183 1 = true := recK7_of (n := 32) t_183 n_183 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_183_0 (v_183_1))

theorem rs_180 : recsK7OK T qscale den6 d14 lamN lamD l7 180 4 = true := recsK7OK_succ (lo := 180) (n := 3) r_180 (recsK7OK_succ (lo := 181) (n := 2) r_181 (recsK7OK_succ (lo := 182) (n := 1) r_182 (r_183)))

end BeatAvg.K.K7
