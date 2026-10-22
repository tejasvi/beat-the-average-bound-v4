import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_216 : treeK7OK l7 216 = true := by decide +kernel

theorem n_216 : (recAt l7 216).2.2.2.length ≤ 80 := by decide +kernel

theorem v_216_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 216 0 16 = true := by decide +kernel

theorem v_216_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 216 16 16 = true := by decide +kernel

theorem v_216_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 216 32 16 = true := by decide +kernel

theorem v_216_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 216 48 16 = true := by decide +kernel

theorem v_216_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 216 64 16 = true := by decide +kernel

theorem r_216 : recsK7OK T qscale den6 d14 lamN lamD l7 216 1 = true := recK7_of (n := 80) t_216 n_216 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_216_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_216_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_216_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_216_3 (v_216_4)))))

theorem t_217 : treeK7OK l7 217 = true := by decide +kernel

theorem n_217 : (recAt l7 217).2.2.2.length ≤ 48 := by decide +kernel

theorem v_217_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 217 0 16 = true := by decide +kernel

theorem v_217_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 217 16 16 = true := by decide +kernel

theorem v_217_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 217 32 16 = true := by decide +kernel

theorem r_217 : recsK7OK T qscale den6 d14 lamN lamD l7 217 1 = true := recK7_of (n := 48) t_217 n_217 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_217_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_217_1 (v_217_2)))

theorem t_218 : treeK7OK l7 218 = true := by decide +kernel

theorem n_218 : (recAt l7 218).2.2.2.length ≤ 64 := by decide +kernel

theorem v_218_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 218 0 16 = true := by decide +kernel

theorem v_218_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 218 16 16 = true := by decide +kernel

theorem v_218_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 218 32 16 = true := by decide +kernel

theorem v_218_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 218 48 16 = true := by decide +kernel

theorem r_218 : recsK7OK T qscale den6 d14 lamN lamD l7 218 1 = true := recK7_of (n := 64) t_218 n_218 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_218_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_218_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_218_2 (v_218_3))))

theorem t_219 : treeK7OK l7 219 = true := by decide +kernel

theorem n_219 : (recAt l7 219).2.2.2.length ≤ 48 := by decide +kernel

theorem v_219_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 219 0 16 = true := by decide +kernel

theorem v_219_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 219 16 16 = true := by decide +kernel

theorem v_219_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 219 32 16 = true := by decide +kernel

theorem r_219 : recsK7OK T qscale den6 d14 lamN lamD l7 219 1 = true := recK7_of (n := 48) t_219 n_219 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_219_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_219_1 (v_219_2)))

theorem t_220 : treeK7OK l7 220 = true := by decide +kernel

theorem n_220 : (recAt l7 220).2.2.2.length ≤ 64 := by decide +kernel

theorem v_220_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 220 0 16 = true := by decide +kernel

theorem v_220_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 220 16 16 = true := by decide +kernel

theorem v_220_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 220 32 16 = true := by decide +kernel

theorem v_220_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 220 48 16 = true := by decide +kernel

theorem r_220 : recsK7OK T qscale den6 d14 lamN lamD l7 220 1 = true := recK7_of (n := 64) t_220 n_220 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_220_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_220_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_220_2 (v_220_3))))

theorem t_221 : treeK7OK l7 221 = true := by decide +kernel

theorem n_221 : (recAt l7 221).2.2.2.length ≤ 48 := by decide +kernel

theorem v_221_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 221 0 16 = true := by decide +kernel

theorem v_221_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 221 16 16 = true := by decide +kernel

theorem v_221_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 221 32 16 = true := by decide +kernel

theorem r_221 : recsK7OK T qscale den6 d14 lamN lamD l7 221 1 = true := recK7_of (n := 48) t_221 n_221 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_221_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_221_1 (v_221_2)))

theorem t_222 : treeK7OK l7 222 = true := by decide +kernel

theorem n_222 : (recAt l7 222).2.2.2.length ≤ 80 := by decide +kernel

theorem v_222_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 222 0 16 = true := by decide +kernel

theorem v_222_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 222 16 16 = true := by decide +kernel

theorem v_222_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 222 32 16 = true := by decide +kernel

theorem v_222_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 222 48 16 = true := by decide +kernel

theorem v_222_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 222 64 16 = true := by decide +kernel

theorem r_222 : recsK7OK T qscale den6 d14 lamN lamD l7 222 1 = true := recK7_of (n := 80) t_222 n_222 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_222_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_222_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_222_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_222_3 (v_222_4)))))

theorem rs_216 : recsK7OK T qscale den6 d14 lamN lamD l7 216 7 = true := recsK7OK_succ (lo := 216) (n := 6) r_216 (recsK7OK_succ (lo := 217) (n := 5) r_217 (recsK7OK_succ (lo := 218) (n := 4) r_218 (recsK7OK_succ (lo := 219) (n := 3) r_219 (recsK7OK_succ (lo := 220) (n := 2) r_220 (recsK7OK_succ (lo := 221) (n := 1) r_221 (r_222))))))

end BeatAvg.K.K7
