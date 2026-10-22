import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1216 : treeK7OK l7 1216 = true := by decide +kernel

theorem n_1216 : (recAt l7 1216).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1216_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 0 16 = true := by decide +kernel

theorem v_1216_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 16 16 = true := by decide +kernel

theorem v_1216_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 32 16 = true := by decide +kernel

theorem v_1216_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 48 16 = true := by decide +kernel

theorem v_1216_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 64 16 = true := by decide +kernel

theorem v_1216_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 80 16 = true := by decide +kernel

theorem v_1216_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 96 16 = true := by decide +kernel

theorem v_1216_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 112 16 = true := by decide +kernel

theorem v_1216_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 128 16 = true := by decide +kernel

theorem v_1216_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1216 144 16 = true := by decide +kernel

theorem r_1216 : recsK7OK T qscale den6 d14 lamN lamD l7 1216 1 = true := recK7_of (n := 160) t_1216 n_1216 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1216_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1216_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1216_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1216_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1216_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1216_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1216_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1216_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1216_8 (v_1216_9))))))))))

theorem t_1217 : treeK7OK l7 1217 = true := by decide +kernel

theorem n_1217 : (recAt l7 1217).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1217_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1217 0 16 = true := by decide +kernel

theorem v_1217_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1217 16 16 = true := by decide +kernel

theorem r_1217 : recsK7OK T qscale den6 d14 lamN lamD l7 1217 1 = true := recK7_of (n := 32) t_1217 n_1217 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1217_0 (v_1217_1))

theorem t_1218 : treeK7OK l7 1218 = true := by decide +kernel

theorem n_1218 : (recAt l7 1218).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1218_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1218 0 16 = true := by decide +kernel

theorem v_1218_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1218 16 16 = true := by decide +kernel

theorem v_1218_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1218 32 16 = true := by decide +kernel

theorem v_1218_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1218 48 16 = true := by decide +kernel

theorem v_1218_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1218 64 16 = true := by decide +kernel

theorem r_1218 : recsK7OK T qscale den6 d14 lamN lamD l7 1218 1 = true := recK7_of (n := 80) t_1218 n_1218 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1218_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1218_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1218_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1218_3 (v_1218_4)))))

theorem t_1219 : treeK7OK l7 1219 = true := by decide +kernel

theorem n_1219 : (recAt l7 1219).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1219_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 0 16 = true := by decide +kernel

theorem v_1219_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 16 16 = true := by decide +kernel

theorem v_1219_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 32 16 = true := by decide +kernel

theorem v_1219_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 48 16 = true := by decide +kernel

theorem v_1219_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 64 16 = true := by decide +kernel

theorem v_1219_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 80 16 = true := by decide +kernel

theorem v_1219_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 96 16 = true := by decide +kernel

theorem v_1219_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1219 112 16 = true := by decide +kernel

theorem r_1219 : recsK7OK T qscale den6 d14 lamN lamD l7 1219 1 = true := recK7_of (n := 128) t_1219 n_1219 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1219_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1219_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1219_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1219_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1219_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1219_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1219_6 (v_1219_7))))))))

theorem rs_1216 : recsK7OK T qscale den6 d14 lamN lamD l7 1216 4 = true := recsK7OK_succ (lo := 1216) (n := 3) r_1216 (recsK7OK_succ (lo := 1217) (n := 2) r_1217 (recsK7OK_succ (lo := 1218) (n := 1) r_1218 (r_1219)))

end BeatAvg.K.K7
