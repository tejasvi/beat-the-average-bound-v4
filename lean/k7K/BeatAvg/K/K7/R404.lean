import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1246 : treeK7OK l7 1246 = true := by decide +kernel

theorem n_1246 : (recAt l7 1246).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1246_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 0 16 = true := by decide +kernel

theorem v_1246_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 16 16 = true := by decide +kernel

theorem v_1246_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 32 16 = true := by decide +kernel

theorem v_1246_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 48 16 = true := by decide +kernel

theorem v_1246_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 64 16 = true := by decide +kernel

theorem v_1246_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 80 16 = true := by decide +kernel

theorem v_1246_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 96 16 = true := by decide +kernel

theorem v_1246_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1246 112 16 = true := by decide +kernel

theorem r_1246 : recsK7OK T qscale den6 d14 lamN lamD l7 1246 1 = true := recK7_of (n := 128) t_1246 n_1246 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1246_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1246_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1246_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1246_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1246_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1246_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1246_6 (v_1246_7))))))))

theorem t_1247 : treeK7OK l7 1247 = true := by decide +kernel

theorem n_1247 : (recAt l7 1247).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1247_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1247 0 16 = true := by decide +kernel

theorem v_1247_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1247 16 16 = true := by decide +kernel

theorem v_1247_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1247 32 16 = true := by decide +kernel

theorem v_1247_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1247 48 16 = true := by decide +kernel

theorem v_1247_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1247 64 16 = true := by decide +kernel

theorem v_1247_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1247 80 16 = true := by decide +kernel

theorem v_1247_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1247 96 16 = true := by decide +kernel

theorem r_1247 : recsK7OK T qscale den6 d14 lamN lamD l7 1247 1 = true := recK7_of (n := 112) t_1247 n_1247 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1247_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1247_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1247_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1247_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1247_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1247_5 (v_1247_6)))))))

theorem t_1248 : treeK7OK l7 1248 = true := by decide +kernel

theorem n_1248 : (recAt l7 1248).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1248_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1248 0 16 = true := by decide +kernel

theorem v_1248_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1248 16 16 = true := by decide +kernel

theorem v_1248_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1248 32 16 = true := by decide +kernel

theorem v_1248_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1248 48 16 = true := by decide +kernel

theorem v_1248_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1248 64 16 = true := by decide +kernel

theorem v_1248_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1248 80 16 = true := by decide +kernel

theorem v_1248_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1248 96 16 = true := by decide +kernel

theorem r_1248 : recsK7OK T qscale den6 d14 lamN lamD l7 1248 1 = true := recK7_of (n := 112) t_1248 n_1248 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1248_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1248_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1248_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1248_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1248_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1248_5 (v_1248_6)))))))

theorem t_1249 : treeK7OK l7 1249 = true := by decide +kernel

theorem n_1249 : (recAt l7 1249).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1249_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1249 0 16 = true := by decide +kernel

theorem v_1249_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1249 16 16 = true := by decide +kernel

theorem v_1249_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1249 32 16 = true := by decide +kernel

theorem v_1249_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1249 48 16 = true := by decide +kernel

theorem r_1249 : recsK7OK T qscale den6 d14 lamN lamD l7 1249 1 = true := recK7_of (n := 64) t_1249 n_1249 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1249_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1249_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1249_2 (v_1249_3))))

theorem rs_1246 : recsK7OK T qscale den6 d14 lamN lamD l7 1246 4 = true := recsK7OK_succ (lo := 1246) (n := 3) r_1246 (recsK7OK_succ (lo := 1247) (n := 2) r_1247 (recsK7OK_succ (lo := 1248) (n := 1) r_1248 (r_1249)))

end BeatAvg.K.K7
