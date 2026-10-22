import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_254 : treeK7OK l7 254 = true := by decide +kernel

theorem n_254 : (recAt l7 254).2.2.2.length ≤ 128 := by decide +kernel

theorem v_254_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 0 16 = true := by decide +kernel

theorem v_254_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 16 16 = true := by decide +kernel

theorem v_254_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 32 16 = true := by decide +kernel

theorem v_254_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 48 16 = true := by decide +kernel

theorem v_254_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 64 16 = true := by decide +kernel

theorem v_254_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 80 16 = true := by decide +kernel

theorem v_254_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 96 16 = true := by decide +kernel

theorem v_254_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 254 112 16 = true := by decide +kernel

theorem r_254 : recsK7OK T qscale den6 d14 lamN lamD l7 254 1 = true := recK7_of (n := 128) t_254 n_254 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_254_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_254_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_254_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_254_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_254_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_254_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_254_6 (v_254_7))))))))

theorem t_255 : treeK7OK l7 255 = true := by decide +kernel

theorem n_255 : (recAt l7 255).2.2.2.length ≤ 128 := by decide +kernel

theorem v_255_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 0 16 = true := by decide +kernel

theorem v_255_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 16 16 = true := by decide +kernel

theorem v_255_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 32 16 = true := by decide +kernel

theorem v_255_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 48 16 = true := by decide +kernel

theorem v_255_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 64 16 = true := by decide +kernel

theorem v_255_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 80 16 = true := by decide +kernel

theorem v_255_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 96 16 = true := by decide +kernel

theorem v_255_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 255 112 16 = true := by decide +kernel

theorem r_255 : recsK7OK T qscale den6 d14 lamN lamD l7 255 1 = true := recK7_of (n := 128) t_255 n_255 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_255_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_255_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_255_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_255_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_255_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_255_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_255_6 (v_255_7))))))))

theorem t_256 : treeK7OK l7 256 = true := by decide +kernel

theorem n_256 : (recAt l7 256).2.2.2.length ≤ 48 := by decide +kernel

theorem v_256_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 256 0 16 = true := by decide +kernel

theorem v_256_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 256 16 16 = true := by decide +kernel

theorem v_256_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 256 32 16 = true := by decide +kernel

theorem r_256 : recsK7OK T qscale den6 d14 lamN lamD l7 256 1 = true := recK7_of (n := 48) t_256 n_256 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_256_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_256_1 (v_256_2)))

theorem t_257 : treeK7OK l7 257 = true := by decide +kernel

theorem n_257 : (recAt l7 257).2.2.2.length ≤ 32 := by decide +kernel

theorem v_257_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 257 0 16 = true := by decide +kernel

theorem v_257_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 257 16 16 = true := by decide +kernel

theorem r_257 : recsK7OK T qscale den6 d14 lamN lamD l7 257 1 = true := recK7_of (n := 32) t_257 n_257 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_257_0 (v_257_1))

theorem t_258 : treeK7OK l7 258 = true := by decide +kernel

theorem n_258 : (recAt l7 258).2.2.2.length ≤ 96 := by decide +kernel

theorem v_258_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 258 0 16 = true := by decide +kernel

theorem v_258_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 258 16 16 = true := by decide +kernel

theorem v_258_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 258 32 16 = true := by decide +kernel

theorem v_258_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 258 48 16 = true := by decide +kernel

theorem v_258_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 258 64 16 = true := by decide +kernel

theorem v_258_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 258 80 16 = true := by decide +kernel

theorem r_258 : recsK7OK T qscale den6 d14 lamN lamD l7 258 1 = true := recK7_of (n := 96) t_258 n_258 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_258_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_258_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_258_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_258_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_258_4 (v_258_5))))))

theorem rs_254 : recsK7OK T qscale den6 d14 lamN lamD l7 254 5 = true := recsK7OK_succ (lo := 254) (n := 4) r_254 (recsK7OK_succ (lo := 255) (n := 3) r_255 (recsK7OK_succ (lo := 256) (n := 2) r_256 (recsK7OK_succ (lo := 257) (n := 1) r_257 (r_258))))

end BeatAvg.K.K7
