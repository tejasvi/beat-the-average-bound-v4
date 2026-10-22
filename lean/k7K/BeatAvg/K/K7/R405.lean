import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1250 : treeK7OK l7 1250 = true := by decide +kernel

theorem n_1250 : (recAt l7 1250).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1250_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1250 0 16 = true := by decide +kernel

theorem v_1250_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1250 16 16 = true := by decide +kernel

theorem v_1250_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1250 32 16 = true := by decide +kernel

theorem v_1250_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1250 48 16 = true := by decide +kernel

theorem v_1250_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1250 64 16 = true := by decide +kernel

theorem r_1250 : recsK7OK T qscale den6 d14 lamN lamD l7 1250 1 = true := recK7_of (n := 80) t_1250 n_1250 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1250_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1250_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1250_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1250_3 (v_1250_4)))))

theorem t_1251 : treeK7OK l7 1251 = true := by decide +kernel

theorem n_1251 : (recAt l7 1251).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1251_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1251 0 16 = true := by decide +kernel

theorem v_1251_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1251 16 16 = true := by decide +kernel

theorem v_1251_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1251 32 16 = true := by decide +kernel

theorem v_1251_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1251 48 16 = true := by decide +kernel

theorem v_1251_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1251 64 16 = true := by decide +kernel

theorem r_1251 : recsK7OK T qscale den6 d14 lamN lamD l7 1251 1 = true := recK7_of (n := 80) t_1251 n_1251 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1251_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1251_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1251_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1251_3 (v_1251_4)))))

theorem t_1252 : treeK7OK l7 1252 = true := by decide +kernel

theorem n_1252 : (recAt l7 1252).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1252_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1252 0 16 = true := by decide +kernel

theorem v_1252_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1252 16 16 = true := by decide +kernel

theorem v_1252_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1252 32 16 = true := by decide +kernel

theorem v_1252_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1252 48 16 = true := by decide +kernel

theorem v_1252_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1252 64 16 = true := by decide +kernel

theorem v_1252_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1252 80 16 = true := by decide +kernel

theorem v_1252_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1252 96 16 = true := by decide +kernel

theorem r_1252 : recsK7OK T qscale den6 d14 lamN lamD l7 1252 1 = true := recK7_of (n := 112) t_1252 n_1252 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1252_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1252_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1252_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1252_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1252_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1252_5 (v_1252_6)))))))

theorem t_1253 : treeK7OK l7 1253 = true := by decide +kernel

theorem n_1253 : (recAt l7 1253).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1253_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1253 0 16 = true := by decide +kernel

theorem v_1253_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1253 16 16 = true := by decide +kernel

theorem v_1253_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1253 32 16 = true := by decide +kernel

theorem v_1253_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1253 48 16 = true := by decide +kernel

theorem v_1253_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1253 64 16 = true := by decide +kernel

theorem r_1253 : recsK7OK T qscale den6 d14 lamN lamD l7 1253 1 = true := recK7_of (n := 80) t_1253 n_1253 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1253_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1253_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1253_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1253_3 (v_1253_4)))))

theorem rs_1250 : recsK7OK T qscale den6 d14 lamN lamD l7 1250 4 = true := recsK7OK_succ (lo := 1250) (n := 3) r_1250 (recsK7OK_succ (lo := 1251) (n := 2) r_1251 (recsK7OK_succ (lo := 1252) (n := 1) r_1252 (r_1253)))

end BeatAvg.K.K7
