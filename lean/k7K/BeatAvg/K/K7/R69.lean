import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_259 : treeK7OK l7 259 = true := by decide +kernel

theorem n_259 : (recAt l7 259).2.2.2.length ≤ 96 := by decide +kernel

theorem v_259_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 259 0 16 = true := by decide +kernel

theorem v_259_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 259 16 16 = true := by decide +kernel

theorem v_259_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 259 32 16 = true := by decide +kernel

theorem v_259_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 259 48 16 = true := by decide +kernel

theorem v_259_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 259 64 16 = true := by decide +kernel

theorem v_259_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 259 80 16 = true := by decide +kernel

theorem r_259 : recsK7OK T qscale den6 d14 lamN lamD l7 259 1 = true := recK7_of (n := 96) t_259 n_259 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_259_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_259_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_259_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_259_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_259_4 (v_259_5))))))

theorem t_260 : treeK7OK l7 260 = true := by decide +kernel

theorem n_260 : (recAt l7 260).2.2.2.length ≤ 48 := by decide +kernel

theorem v_260_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 260 0 16 = true := by decide +kernel

theorem v_260_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 260 16 16 = true := by decide +kernel

theorem v_260_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 260 32 16 = true := by decide +kernel

theorem r_260 : recsK7OK T qscale den6 d14 lamN lamD l7 260 1 = true := recK7_of (n := 48) t_260 n_260 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_260_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_260_1 (v_260_2)))

theorem t_261 : treeK7OK l7 261 = true := by decide +kernel

theorem n_261 : (recAt l7 261).2.2.2.length ≤ 32 := by decide +kernel

theorem v_261_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 261 0 16 = true := by decide +kernel

theorem v_261_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 261 16 16 = true := by decide +kernel

theorem r_261 : recsK7OK T qscale den6 d14 lamN lamD l7 261 1 = true := recK7_of (n := 32) t_261 n_261 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_261_0 (v_261_1))

theorem t_262 : treeK7OK l7 262 = true := by decide +kernel

theorem n_262 : (recAt l7 262).2.2.2.length ≤ 208 := by decide +kernel

theorem v_262_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 0 16 = true := by decide +kernel

theorem v_262_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 16 16 = true := by decide +kernel

theorem v_262_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 32 16 = true := by decide +kernel

theorem v_262_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 48 16 = true := by decide +kernel

theorem v_262_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 64 16 = true := by decide +kernel

theorem v_262_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 80 16 = true := by decide +kernel

theorem v_262_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 96 16 = true := by decide +kernel

theorem v_262_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 112 16 = true := by decide +kernel

theorem v_262_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 128 16 = true := by decide +kernel

theorem v_262_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 144 16 = true := by decide +kernel

theorem v_262_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 160 16 = true := by decide +kernel

theorem v_262_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 176 16 = true := by decide +kernel

theorem v_262_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 262 192 16 = true := by decide +kernel

theorem r_262 : recsK7OK T qscale den6 d14 lamN lamD l7 262 1 = true := recK7_of (n := 208) t_262 n_262 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_262_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_262_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_262_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_262_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_262_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_262_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_262_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_262_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_262_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_262_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_262_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_262_11 (v_262_12)))))))))))))

theorem rs_259 : recsK7OK T qscale den6 d14 lamN lamD l7 259 4 = true := recsK7OK_succ (lo := 259) (n := 3) r_259 (recsK7OK_succ (lo := 260) (n := 2) r_260 (recsK7OK_succ (lo := 261) (n := 1) r_261 (r_262)))

end BeatAvg.K.K7
