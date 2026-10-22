import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_249 : treeK7OK l7 249 = true := by decide +kernel

theorem n_249 : (recAt l7 249).2.2.2.length ≤ 64 := by decide +kernel

theorem v_249_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 249 0 16 = true := by decide +kernel

theorem v_249_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 249 16 16 = true := by decide +kernel

theorem v_249_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 249 32 16 = true := by decide +kernel

theorem v_249_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 249 48 16 = true := by decide +kernel

theorem r_249 : recsK7OK T qscale den6 d14 lamN lamD l7 249 1 = true := recK7_of (n := 64) t_249 n_249 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_249_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_249_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_249_2 (v_249_3))))

theorem t_250 : treeK7OK l7 250 = true := by decide +kernel

theorem n_250 : (recAt l7 250).2.2.2.length ≤ 48 := by decide +kernel

theorem v_250_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 250 0 16 = true := by decide +kernel

theorem v_250_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 250 16 16 = true := by decide +kernel

theorem v_250_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 250 32 16 = true := by decide +kernel

theorem r_250 : recsK7OK T qscale den6 d14 lamN lamD l7 250 1 = true := recK7_of (n := 48) t_250 n_250 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_250_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_250_1 (v_250_2)))

theorem t_251 : treeK7OK l7 251 = true := by decide +kernel

theorem n_251 : (recAt l7 251).2.2.2.length ≤ 160 := by decide +kernel

theorem v_251_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 0 16 = true := by decide +kernel

theorem v_251_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 16 16 = true := by decide +kernel

theorem v_251_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 32 16 = true := by decide +kernel

theorem v_251_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 48 16 = true := by decide +kernel

theorem v_251_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 64 16 = true := by decide +kernel

theorem v_251_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 80 16 = true := by decide +kernel

theorem v_251_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 96 16 = true := by decide +kernel

theorem v_251_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 112 16 = true := by decide +kernel

theorem v_251_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 128 16 = true := by decide +kernel

theorem v_251_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 251 144 16 = true := by decide +kernel

theorem r_251 : recsK7OK T qscale den6 d14 lamN lamD l7 251 1 = true := recK7_of (n := 160) t_251 n_251 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_251_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_251_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_251_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_251_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_251_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_251_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_251_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_251_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_251_8 (v_251_9))))))))))

theorem t_252 : treeK7OK l7 252 = true := by decide +kernel

theorem n_252 : (recAt l7 252).2.2.2.length ≤ 48 := by decide +kernel

theorem v_252_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 252 0 16 = true := by decide +kernel

theorem v_252_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 252 16 16 = true := by decide +kernel

theorem v_252_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 252 32 16 = true := by decide +kernel

theorem r_252 : recsK7OK T qscale den6 d14 lamN lamD l7 252 1 = true := recK7_of (n := 48) t_252 n_252 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_252_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_252_1 (v_252_2)))

theorem t_253 : treeK7OK l7 253 = true := by decide +kernel

theorem n_253 : (recAt l7 253).2.2.2.length ≤ 32 := by decide +kernel

theorem v_253_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 253 0 16 = true := by decide +kernel

theorem v_253_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 253 16 16 = true := by decide +kernel

theorem r_253 : recsK7OK T qscale den6 d14 lamN lamD l7 253 1 = true := recK7_of (n := 32) t_253 n_253 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_253_0 (v_253_1))

theorem rs_249 : recsK7OK T qscale den6 d14 lamN lamD l7 249 5 = true := recsK7OK_succ (lo := 249) (n := 4) r_249 (recsK7OK_succ (lo := 250) (n := 3) r_250 (recsK7OK_succ (lo := 251) (n := 2) r_251 (recsK7OK_succ (lo := 252) (n := 1) r_252 (r_253))))

end BeatAvg.K.K7
