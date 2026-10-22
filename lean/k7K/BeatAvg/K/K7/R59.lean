import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_223 : treeK7OK l7 223 = true := by decide +kernel

theorem n_223 : (recAt l7 223).2.2.2.length ≤ 112 := by decide +kernel

theorem v_223_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 223 0 16 = true := by decide +kernel

theorem v_223_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 223 16 16 = true := by decide +kernel

theorem v_223_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 223 32 16 = true := by decide +kernel

theorem v_223_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 223 48 16 = true := by decide +kernel

theorem v_223_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 223 64 16 = true := by decide +kernel

theorem v_223_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 223 80 16 = true := by decide +kernel

theorem v_223_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 223 96 16 = true := by decide +kernel

theorem r_223 : recsK7OK T qscale den6 d14 lamN lamD l7 223 1 = true := recK7_of (n := 112) t_223 n_223 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_223_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_223_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_223_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_223_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_223_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_223_5 (v_223_6)))))))

theorem t_224 : treeK7OK l7 224 = true := by decide +kernel

theorem n_224 : (recAt l7 224).2.2.2.length ≤ 64 := by decide +kernel

theorem v_224_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 224 0 16 = true := by decide +kernel

theorem v_224_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 224 16 16 = true := by decide +kernel

theorem v_224_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 224 32 16 = true := by decide +kernel

theorem v_224_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 224 48 16 = true := by decide +kernel

theorem r_224 : recsK7OK T qscale den6 d14 lamN lamD l7 224 1 = true := recK7_of (n := 64) t_224 n_224 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_224_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_224_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_224_2 (v_224_3))))

theorem t_225 : treeK7OK l7 225 = true := by decide +kernel

theorem n_225 : (recAt l7 225).2.2.2.length ≤ 96 := by decide +kernel

theorem v_225_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 225 0 16 = true := by decide +kernel

theorem v_225_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 225 16 16 = true := by decide +kernel

theorem v_225_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 225 32 16 = true := by decide +kernel

theorem v_225_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 225 48 16 = true := by decide +kernel

theorem v_225_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 225 64 16 = true := by decide +kernel

theorem v_225_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 225 80 16 = true := by decide +kernel

theorem r_225 : recsK7OK T qscale den6 d14 lamN lamD l7 225 1 = true := recK7_of (n := 96) t_225 n_225 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_225_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_225_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_225_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_225_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_225_4 (v_225_5))))))

theorem t_226 : treeK7OK l7 226 = true := by decide +kernel

theorem n_226 : (recAt l7 226).2.2.2.length ≤ 48 := by decide +kernel

theorem v_226_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 226 0 16 = true := by decide +kernel

theorem v_226_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 226 16 16 = true := by decide +kernel

theorem v_226_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 226 32 16 = true := by decide +kernel

theorem r_226 : recsK7OK T qscale den6 d14 lamN lamD l7 226 1 = true := recK7_of (n := 48) t_226 n_226 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_226_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_226_1 (v_226_2)))

theorem t_227 : treeK7OK l7 227 = true := by decide +kernel

theorem n_227 : (recAt l7 227).2.2.2.length ≤ 64 := by decide +kernel

theorem v_227_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 227 0 16 = true := by decide +kernel

theorem v_227_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 227 16 16 = true := by decide +kernel

theorem v_227_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 227 32 16 = true := by decide +kernel

theorem v_227_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 227 48 16 = true := by decide +kernel

theorem r_227 : recsK7OK T qscale den6 d14 lamN lamD l7 227 1 = true := recK7_of (n := 64) t_227 n_227 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_227_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_227_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_227_2 (v_227_3))))

theorem t_228 : treeK7OK l7 228 = true := by decide +kernel

theorem n_228 : (recAt l7 228).2.2.2.length ≤ 48 := by decide +kernel

theorem v_228_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 228 0 16 = true := by decide +kernel

theorem v_228_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 228 16 16 = true := by decide +kernel

theorem v_228_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 228 32 16 = true := by decide +kernel

theorem r_228 : recsK7OK T qscale den6 d14 lamN lamD l7 228 1 = true := recK7_of (n := 48) t_228 n_228 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_228_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_228_1 (v_228_2)))

theorem rs_223 : recsK7OK T qscale den6 d14 lamN lamD l7 223 6 = true := recsK7OK_succ (lo := 223) (n := 5) r_223 (recsK7OK_succ (lo := 224) (n := 4) r_224 (recsK7OK_succ (lo := 225) (n := 3) r_225 (recsK7OK_succ (lo := 226) (n := 2) r_226 (recsK7OK_succ (lo := 227) (n := 1) r_227 (r_228)))))

end BeatAvg.K.K7
