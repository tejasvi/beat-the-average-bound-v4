import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_195 : treeK7OK l7 195 = true := by decide +kernel

theorem n_195 : (recAt l7 195).2.2.2.length ≤ 96 := by decide +kernel

theorem v_195_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 195 0 16 = true := by decide +kernel

theorem v_195_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 195 16 16 = true := by decide +kernel

theorem v_195_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 195 32 16 = true := by decide +kernel

theorem v_195_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 195 48 16 = true := by decide +kernel

theorem v_195_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 195 64 16 = true := by decide +kernel

theorem v_195_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 195 80 16 = true := by decide +kernel

theorem r_195 : recsK7OK T qscale den6 d14 lamN lamD l7 195 1 = true := recK7_of (n := 96) t_195 n_195 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_195_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_195_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_195_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_195_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_195_4 (v_195_5))))))

theorem t_196 : treeK7OK l7 196 = true := by decide +kernel

theorem n_196 : (recAt l7 196).2.2.2.length ≤ 64 := by decide +kernel

theorem v_196_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 196 0 16 = true := by decide +kernel

theorem v_196_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 196 16 16 = true := by decide +kernel

theorem v_196_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 196 32 16 = true := by decide +kernel

theorem v_196_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 196 48 16 = true := by decide +kernel

theorem r_196 : recsK7OK T qscale den6 d14 lamN lamD l7 196 1 = true := recK7_of (n := 64) t_196 n_196 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_196_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_196_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_196_2 (v_196_3))))

theorem t_197 : treeK7OK l7 197 = true := by decide +kernel

theorem n_197 : (recAt l7 197).2.2.2.length ≤ 32 := by decide +kernel

theorem v_197_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 197 0 16 = true := by decide +kernel

theorem v_197_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 197 16 16 = true := by decide +kernel

theorem r_197 : recsK7OK T qscale den6 d14 lamN lamD l7 197 1 = true := recK7_of (n := 32) t_197 n_197 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_197_0 (v_197_1))

theorem t_198 : treeK7OK l7 198 = true := by decide +kernel

theorem n_198 : (recAt l7 198).2.2.2.length ≤ 192 := by decide +kernel

theorem v_198_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 0 16 = true := by decide +kernel

theorem v_198_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 16 16 = true := by decide +kernel

theorem v_198_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 32 16 = true := by decide +kernel

theorem v_198_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 48 16 = true := by decide +kernel

theorem v_198_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 64 16 = true := by decide +kernel

theorem v_198_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 80 16 = true := by decide +kernel

theorem v_198_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 96 16 = true := by decide +kernel

theorem v_198_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 112 16 = true := by decide +kernel

theorem v_198_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 128 16 = true := by decide +kernel

theorem v_198_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 144 16 = true := by decide +kernel

theorem v_198_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 160 16 = true := by decide +kernel

theorem v_198_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 198 176 16 = true := by decide +kernel

theorem r_198 : recsK7OK T qscale den6 d14 lamN lamD l7 198 1 = true := recK7_of (n := 192) t_198 n_198 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_198_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_198_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_198_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_198_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_198_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_198_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_198_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_198_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_198_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_198_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_198_10 (v_198_11))))))))))))

theorem t_199 : treeK7OK l7 199 = true := by decide +kernel

theorem n_199 : (recAt l7 199).2.2.2.length ≤ 32 := by decide +kernel

theorem v_199_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 199 0 16 = true := by decide +kernel

theorem v_199_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 199 16 16 = true := by decide +kernel

theorem r_199 : recsK7OK T qscale den6 d14 lamN lamD l7 199 1 = true := recK7_of (n := 32) t_199 n_199 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_199_0 (v_199_1))

theorem rs_195 : recsK7OK T qscale den6 d14 lamN lamD l7 195 5 = true := recsK7OK_succ (lo := 195) (n := 4) r_195 (recsK7OK_succ (lo := 196) (n := 3) r_196 (recsK7OK_succ (lo := 197) (n := 2) r_197 (recsK7OK_succ (lo := 198) (n := 1) r_198 (r_199))))

end BeatAvg.K.K7
