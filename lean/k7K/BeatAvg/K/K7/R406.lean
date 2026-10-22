import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1254 : treeK7OK l7 1254 = true := by decide +kernel

theorem n_1254 : (recAt l7 1254).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1254_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1254 0 16 = true := by decide +kernel

theorem v_1254_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1254 16 16 = true := by decide +kernel

theorem v_1254_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1254 32 16 = true := by decide +kernel

theorem v_1254_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1254 48 16 = true := by decide +kernel

theorem v_1254_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1254 64 16 = true := by decide +kernel

theorem v_1254_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1254 80 16 = true := by decide +kernel

theorem r_1254 : recsK7OK T qscale den6 d14 lamN lamD l7 1254 1 = true := recK7_of (n := 96) t_1254 n_1254 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1254_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1254_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1254_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1254_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1254_4 (v_1254_5))))))

theorem t_1255 : treeK7OK l7 1255 = true := by decide +kernel

theorem n_1255 : (recAt l7 1255).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1255_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1255 0 16 = true := by decide +kernel

theorem v_1255_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1255 16 16 = true := by decide +kernel

theorem v_1255_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1255 32 16 = true := by decide +kernel

theorem v_1255_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1255 48 16 = true := by decide +kernel

theorem v_1255_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1255 64 16 = true := by decide +kernel

theorem r_1255 : recsK7OK T qscale den6 d14 lamN lamD l7 1255 1 = true := recK7_of (n := 80) t_1255 n_1255 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1255_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1255_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1255_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1255_3 (v_1255_4)))))

theorem t_1256 : treeK7OK l7 1256 = true := by decide +kernel

theorem n_1256 : (recAt l7 1256).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1256_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1256 0 16 = true := by decide +kernel

theorem v_1256_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1256 16 16 = true := by decide +kernel

theorem v_1256_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1256 32 16 = true := by decide +kernel

theorem r_1256 : recsK7OK T qscale den6 d14 lamN lamD l7 1256 1 = true := recK7_of (n := 48) t_1256 n_1256 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1256_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1256_1 (v_1256_2)))

theorem t_1257 : treeK7OK l7 1257 = true := by decide +kernel

theorem n_1257 : (recAt l7 1257).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1257_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1257 0 16 = true := by decide +kernel

theorem v_1257_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1257 16 16 = true := by decide +kernel

theorem v_1257_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1257 32 16 = true := by decide +kernel

theorem v_1257_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1257 48 16 = true := by decide +kernel

theorem r_1257 : recsK7OK T qscale den6 d14 lamN lamD l7 1257 1 = true := recK7_of (n := 64) t_1257 n_1257 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1257_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1257_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1257_2 (v_1257_3))))

theorem t_1258 : treeK7OK l7 1258 = true := by decide +kernel

theorem n_1258 : (recAt l7 1258).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1258_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1258 0 16 = true := by decide +kernel

theorem v_1258_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1258 16 16 = true := by decide +kernel

theorem v_1258_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1258 32 16 = true := by decide +kernel

theorem v_1258_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1258 48 16 = true := by decide +kernel

theorem r_1258 : recsK7OK T qscale den6 d14 lamN lamD l7 1258 1 = true := recK7_of (n := 64) t_1258 n_1258 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1258_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1258_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1258_2 (v_1258_3))))

theorem rs_1254 : recsK7OK T qscale den6 d14 lamN lamD l7 1254 5 = true := recsK7OK_succ (lo := 1254) (n := 4) r_1254 (recsK7OK_succ (lo := 1255) (n := 3) r_1255 (recsK7OK_succ (lo := 1256) (n := 2) r_1256 (recsK7OK_succ (lo := 1257) (n := 1) r_1257 (r_1258))))

end BeatAvg.K.K7
