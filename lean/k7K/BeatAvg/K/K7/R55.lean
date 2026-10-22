import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_204 : treeK7OK l7 204 = true := by decide +kernel

theorem n_204 : (recAt l7 204).2.2.2.length ≤ 112 := by decide +kernel

theorem v_204_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 204 0 16 = true := by decide +kernel

theorem v_204_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 204 16 16 = true := by decide +kernel

theorem v_204_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 204 32 16 = true := by decide +kernel

theorem v_204_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 204 48 16 = true := by decide +kernel

theorem v_204_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 204 64 16 = true := by decide +kernel

theorem v_204_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 204 80 16 = true := by decide +kernel

theorem v_204_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 204 96 16 = true := by decide +kernel

theorem r_204 : recsK7OK T qscale den6 d14 lamN lamD l7 204 1 = true := recK7_of (n := 112) t_204 n_204 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_204_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_204_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_204_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_204_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_204_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_204_5 (v_204_6)))))))

theorem t_205 : treeK7OK l7 205 = true := by decide +kernel

theorem n_205 : (recAt l7 205).2.2.2.length ≤ 128 := by decide +kernel

theorem v_205_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 0 16 = true := by decide +kernel

theorem v_205_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 16 16 = true := by decide +kernel

theorem v_205_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 32 16 = true := by decide +kernel

theorem v_205_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 48 16 = true := by decide +kernel

theorem v_205_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 64 16 = true := by decide +kernel

theorem v_205_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 80 16 = true := by decide +kernel

theorem v_205_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 96 16 = true := by decide +kernel

theorem v_205_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 205 112 16 = true := by decide +kernel

theorem r_205 : recsK7OK T qscale den6 d14 lamN lamD l7 205 1 = true := recK7_of (n := 128) t_205 n_205 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_205_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_205_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_205_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_205_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_205_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_205_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_205_6 (v_205_7))))))))

theorem t_206 : treeK7OK l7 206 = true := by decide +kernel

theorem n_206 : (recAt l7 206).2.2.2.length ≤ 112 := by decide +kernel

theorem v_206_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 206 0 16 = true := by decide +kernel

theorem v_206_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 206 16 16 = true := by decide +kernel

theorem v_206_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 206 32 16 = true := by decide +kernel

theorem v_206_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 206 48 16 = true := by decide +kernel

theorem v_206_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 206 64 16 = true := by decide +kernel

theorem v_206_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 206 80 16 = true := by decide +kernel

theorem v_206_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 206 96 16 = true := by decide +kernel

theorem r_206 : recsK7OK T qscale den6 d14 lamN lamD l7 206 1 = true := recK7_of (n := 112) t_206 n_206 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_206_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_206_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_206_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_206_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_206_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_206_5 (v_206_6)))))))

theorem rs_204 : recsK7OK T qscale den6 d14 lamN lamD l7 204 3 = true := recsK7OK_succ (lo := 204) (n := 2) r_204 (recsK7OK_succ (lo := 205) (n := 1) r_205 (r_206))

end BeatAvg.K.K7
