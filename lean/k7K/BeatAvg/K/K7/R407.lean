import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1259 : treeK7OK l7 1259 = true := by decide +kernel

theorem n_1259 : (recAt l7 1259).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1259_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 0 16 = true := by decide +kernel

theorem v_1259_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 16 16 = true := by decide +kernel

theorem v_1259_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 32 16 = true := by decide +kernel

theorem v_1259_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 48 16 = true := by decide +kernel

theorem v_1259_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 64 16 = true := by decide +kernel

theorem v_1259_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 80 16 = true := by decide +kernel

theorem v_1259_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 96 16 = true := by decide +kernel

theorem v_1259_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1259 112 16 = true := by decide +kernel

theorem r_1259 : recsK7OK T qscale den6 d14 lamN lamD l7 1259 1 = true := recK7_of (n := 128) t_1259 n_1259 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1259_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1259_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1259_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1259_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1259_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1259_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1259_6 (v_1259_7))))))))

theorem t_1260 : treeK7OK l7 1260 = true := by decide +kernel

theorem n_1260 : (recAt l7 1260).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1260_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1260 0 16 = true := by decide +kernel

theorem v_1260_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1260 16 16 = true := by decide +kernel

theorem v_1260_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1260 32 16 = true := by decide +kernel

theorem v_1260_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1260 48 16 = true := by decide +kernel

theorem v_1260_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1260 64 16 = true := by decide +kernel

theorem v_1260_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1260 80 16 = true := by decide +kernel

theorem r_1260 : recsK7OK T qscale den6 d14 lamN lamD l7 1260 1 = true := recK7_of (n := 96) t_1260 n_1260 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1260_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1260_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1260_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1260_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1260_4 (v_1260_5))))))

theorem t_1261 : treeK7OK l7 1261 = true := by decide +kernel

theorem n_1261 : (recAt l7 1261).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1261_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1261 0 16 = true := by decide +kernel

theorem v_1261_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1261 16 16 = true := by decide +kernel

theorem v_1261_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1261 32 16 = true := by decide +kernel

theorem v_1261_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1261 48 16 = true := by decide +kernel

theorem v_1261_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1261 64 16 = true := by decide +kernel

theorem v_1261_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1261 80 16 = true := by decide +kernel

theorem v_1261_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1261 96 16 = true := by decide +kernel

theorem r_1261 : recsK7OK T qscale den6 d14 lamN lamD l7 1261 1 = true := recK7_of (n := 112) t_1261 n_1261 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1261_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1261_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1261_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1261_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1261_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1261_5 (v_1261_6)))))))

theorem t_1262 : treeK7OK l7 1262 = true := by decide +kernel

theorem n_1262 : (recAt l7 1262).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1262_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1262 0 16 = true := by decide +kernel

theorem v_1262_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1262 16 16 = true := by decide +kernel

theorem v_1262_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1262 32 16 = true := by decide +kernel

theorem v_1262_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1262 48 16 = true := by decide +kernel

theorem r_1262 : recsK7OK T qscale den6 d14 lamN lamD l7 1262 1 = true := recK7_of (n := 64) t_1262 n_1262 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1262_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1262_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1262_2 (v_1262_3))))

theorem rs_1259 : recsK7OK T qscale den6 d14 lamN lamD l7 1259 4 = true := recsK7OK_succ (lo := 1259) (n := 3) r_1259 (recsK7OK_succ (lo := 1260) (n := 2) r_1260 (recsK7OK_succ (lo := 1261) (n := 1) r_1261 (r_1262)))

end BeatAvg.K.K7
