import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_245 : treeK7OK l7 245 = true := by decide +kernel

theorem n_245 : (recAt l7 245).2.2.2.length ≤ 144 := by decide +kernel

theorem v_245_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 0 16 = true := by decide +kernel

theorem v_245_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 16 16 = true := by decide +kernel

theorem v_245_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 32 16 = true := by decide +kernel

theorem v_245_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 48 16 = true := by decide +kernel

theorem v_245_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 64 16 = true := by decide +kernel

theorem v_245_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 80 16 = true := by decide +kernel

theorem v_245_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 96 16 = true := by decide +kernel

theorem v_245_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 112 16 = true := by decide +kernel

theorem v_245_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 245 128 16 = true := by decide +kernel

theorem r_245 : recsK7OK T qscale den6 d14 lamN lamD l7 245 1 = true := recK7_of (n := 144) t_245 n_245 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_245_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_245_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_245_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_245_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_245_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_245_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_245_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_245_7 (v_245_8)))))))))

theorem t_246 : treeK7OK l7 246 = true := by decide +kernel

theorem n_246 : (recAt l7 246).2.2.2.length ≤ 96 := by decide +kernel

theorem v_246_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 246 0 16 = true := by decide +kernel

theorem v_246_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 246 16 16 = true := by decide +kernel

theorem v_246_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 246 32 16 = true := by decide +kernel

theorem v_246_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 246 48 16 = true := by decide +kernel

theorem v_246_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 246 64 16 = true := by decide +kernel

theorem v_246_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 246 80 16 = true := by decide +kernel

theorem r_246 : recsK7OK T qscale den6 d14 lamN lamD l7 246 1 = true := recK7_of (n := 96) t_246 n_246 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_246_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_246_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_246_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_246_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_246_4 (v_246_5))))))

theorem t_247 : treeK7OK l7 247 = true := by decide +kernel

theorem n_247 : (recAt l7 247).2.2.2.length ≤ 96 := by decide +kernel

theorem v_247_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 247 0 16 = true := by decide +kernel

theorem v_247_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 247 16 16 = true := by decide +kernel

theorem v_247_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 247 32 16 = true := by decide +kernel

theorem v_247_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 247 48 16 = true := by decide +kernel

theorem v_247_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 247 64 16 = true := by decide +kernel

theorem v_247_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 247 80 16 = true := by decide +kernel

theorem r_247 : recsK7OK T qscale den6 d14 lamN lamD l7 247 1 = true := recK7_of (n := 96) t_247 n_247 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_247_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_247_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_247_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_247_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_247_4 (v_247_5))))))

theorem t_248 : treeK7OK l7 248 = true := by decide +kernel

theorem n_248 : (recAt l7 248).2.2.2.length ≤ 80 := by decide +kernel

theorem v_248_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 248 0 16 = true := by decide +kernel

theorem v_248_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 248 16 16 = true := by decide +kernel

theorem v_248_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 248 32 16 = true := by decide +kernel

theorem v_248_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 248 48 16 = true := by decide +kernel

theorem v_248_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 248 64 16 = true := by decide +kernel

theorem r_248 : recsK7OK T qscale den6 d14 lamN lamD l7 248 1 = true := recK7_of (n := 80) t_248 n_248 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_248_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_248_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_248_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_248_3 (v_248_4)))))

theorem rs_245 : recsK7OK T qscale den6 d14 lamN lamD l7 245 4 = true := recsK7OK_succ (lo := 245) (n := 3) r_245 (recsK7OK_succ (lo := 246) (n := 2) r_246 (recsK7OK_succ (lo := 247) (n := 1) r_247 (r_248)))

end BeatAvg.K.K7
