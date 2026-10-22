import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1195 : treeK7OK l7 1195 = true := by decide +kernel

theorem n_1195 : (recAt l7 1195).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1195_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1195 0 16 = true := by decide +kernel

theorem v_1195_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1195 16 16 = true := by decide +kernel

theorem v_1195_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1195 32 16 = true := by decide +kernel

theorem v_1195_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1195 48 16 = true := by decide +kernel

theorem v_1195_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1195 64 16 = true := by decide +kernel

theorem v_1195_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1195 80 16 = true := by decide +kernel

theorem r_1195 : recsK7OK T qscale den6 d14 lamN lamD l7 1195 1 = true := recK7_of (n := 96) t_1195 n_1195 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1195_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1195_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1195_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1195_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1195_4 (v_1195_5))))))

theorem t_1196 : treeK7OK l7 1196 = true := by decide +kernel

theorem n_1196 : (recAt l7 1196).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1196_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1196 0 16 = true := by decide +kernel

theorem v_1196_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1196 16 16 = true := by decide +kernel

theorem v_1196_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1196 32 16 = true := by decide +kernel

theorem v_1196_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1196 48 16 = true := by decide +kernel

theorem v_1196_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1196 64 16 = true := by decide +kernel

theorem r_1196 : recsK7OK T qscale den6 d14 lamN lamD l7 1196 1 = true := recK7_of (n := 80) t_1196 n_1196 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1196_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1196_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1196_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1196_3 (v_1196_4)))))

theorem t_1197 : treeK7OK l7 1197 = true := by decide +kernel

theorem n_1197 : (recAt l7 1197).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1197_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1197 0 16 = true := by decide +kernel

theorem v_1197_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1197 16 16 = true := by decide +kernel

theorem v_1197_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1197 32 16 = true := by decide +kernel

theorem v_1197_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1197 48 16 = true := by decide +kernel

theorem v_1197_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1197 64 16 = true := by decide +kernel

theorem r_1197 : recsK7OK T qscale den6 d14 lamN lamD l7 1197 1 = true := recK7_of (n := 80) t_1197 n_1197 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1197_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1197_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1197_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1197_3 (v_1197_4)))))

theorem t_1198 : treeK7OK l7 1198 = true := by decide +kernel

theorem n_1198 : (recAt l7 1198).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1198_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1198 0 16 = true := by decide +kernel

theorem v_1198_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1198 16 16 = true := by decide +kernel

theorem v_1198_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1198 32 16 = true := by decide +kernel

theorem v_1198_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1198 48 16 = true := by decide +kernel

theorem v_1198_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1198 64 16 = true := by decide +kernel

theorem v_1198_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1198 80 16 = true := by decide +kernel

theorem r_1198 : recsK7OK T qscale den6 d14 lamN lamD l7 1198 1 = true := recK7_of (n := 96) t_1198 n_1198 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1198_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1198_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1198_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1198_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1198_4 (v_1198_5))))))

theorem t_1199 : treeK7OK l7 1199 = true := by decide +kernel

theorem n_1199 : (recAt l7 1199).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1199_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1199 0 16 = true := by decide +kernel

theorem v_1199_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1199 16 16 = true := by decide +kernel

theorem v_1199_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1199 32 16 = true := by decide +kernel

theorem v_1199_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1199 48 16 = true := by decide +kernel

theorem r_1199 : recsK7OK T qscale den6 d14 lamN lamD l7 1199 1 = true := recK7_of (n := 64) t_1199 n_1199 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1199_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1199_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1199_2 (v_1199_3))))

theorem rs_1195 : recsK7OK T qscale den6 d14 lamN lamD l7 1195 5 = true := recsK7OK_succ (lo := 1195) (n := 4) r_1195 (recsK7OK_succ (lo := 1196) (n := 3) r_1196 (recsK7OK_succ (lo := 1197) (n := 2) r_1197 (recsK7OK_succ (lo := 1198) (n := 1) r_1198 (r_1199))))

end BeatAvg.K.K7
