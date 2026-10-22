import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1282 : treeK7OK l7 1282 = true := by decide +kernel

theorem n_1282 : (recAt l7 1282).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1282_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1282 0 16 = true := by decide +kernel

theorem v_1282_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1282 16 16 = true := by decide +kernel

theorem v_1282_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1282 32 16 = true := by decide +kernel

theorem v_1282_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1282 48 16 = true := by decide +kernel

theorem r_1282 : recsK7OK T qscale den6 d14 lamN lamD l7 1282 1 = true := recK7_of (n := 64) t_1282 n_1282 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1282_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1282_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1282_2 (v_1282_3))))

theorem t_1283 : treeK7OK l7 1283 = true := by decide +kernel

theorem n_1283 : (recAt l7 1283).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1283_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1283 0 16 = true := by decide +kernel

theorem v_1283_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1283 16 16 = true := by decide +kernel

theorem v_1283_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1283 32 16 = true := by decide +kernel

theorem v_1283_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1283 48 16 = true := by decide +kernel

theorem v_1283_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1283 64 16 = true := by decide +kernel

theorem v_1283_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1283 80 16 = true := by decide +kernel

theorem r_1283 : recsK7OK T qscale den6 d14 lamN lamD l7 1283 1 = true := recK7_of (n := 96) t_1283 n_1283 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1283_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1283_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1283_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1283_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1283_4 (v_1283_5))))))

theorem t_1284 : treeK7OK l7 1284 = true := by decide +kernel

theorem n_1284 : (recAt l7 1284).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1284_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1284 0 16 = true := by decide +kernel

theorem v_1284_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1284 16 16 = true := by decide +kernel

theorem v_1284_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1284 32 16 = true := by decide +kernel

theorem v_1284_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1284 48 16 = true := by decide +kernel

theorem v_1284_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1284 64 16 = true := by decide +kernel

theorem v_1284_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1284 80 16 = true := by decide +kernel

theorem r_1284 : recsK7OK T qscale den6 d14 lamN lamD l7 1284 1 = true := recK7_of (n := 96) t_1284 n_1284 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1284_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1284_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1284_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1284_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1284_4 (v_1284_5))))))

theorem t_1285 : treeK7OK l7 1285 = true := by decide +kernel

theorem n_1285 : (recAt l7 1285).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1285_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1285 0 16 = true := by decide +kernel

theorem v_1285_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1285 16 16 = true := by decide +kernel

theorem v_1285_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1285 32 16 = true := by decide +kernel

theorem r_1285 : recsK7OK T qscale den6 d14 lamN lamD l7 1285 1 = true := recK7_of (n := 48) t_1285 n_1285 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1285_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1285_1 (v_1285_2)))

theorem t_1286 : treeK7OK l7 1286 = true := by decide +kernel

theorem n_1286 : (recAt l7 1286).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1286_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1286 0 16 = true := by decide +kernel

theorem v_1286_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1286 16 16 = true := by decide +kernel

theorem v_1286_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1286 32 16 = true := by decide +kernel

theorem v_1286_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1286 48 16 = true := by decide +kernel

theorem r_1286 : recsK7OK T qscale den6 d14 lamN lamD l7 1286 1 = true := recK7_of (n := 64) t_1286 n_1286 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1286_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1286_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1286_2 (v_1286_3))))

theorem t_1287 : treeK7OK l7 1287 = true := by decide +kernel

theorem n_1287 : (recAt l7 1287).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1287_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1287 0 16 = true := by decide +kernel

theorem v_1287_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1287 16 16 = true := by decide +kernel

theorem v_1287_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1287 32 16 = true := by decide +kernel

theorem v_1287_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1287 48 16 = true := by decide +kernel

theorem r_1287 : recsK7OK T qscale den6 d14 lamN lamD l7 1287 1 = true := recK7_of (n := 64) t_1287 n_1287 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1287_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1287_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1287_2 (v_1287_3))))

theorem rs_1282 : recsK7OK T qscale den6 d14 lamN lamD l7 1282 6 = true := recsK7OK_succ (lo := 1282) (n := 5) r_1282 (recsK7OK_succ (lo := 1283) (n := 4) r_1283 (recsK7OK_succ (lo := 1284) (n := 3) r_1284 (recsK7OK_succ (lo := 1285) (n := 2) r_1285 (recsK7OK_succ (lo := 1286) (n := 1) r_1286 (r_1287)))))

end BeatAvg.K.K7
