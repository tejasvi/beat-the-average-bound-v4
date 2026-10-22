import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_211 : treeK7OK l7 211 = true := by decide +kernel

theorem n_211 : (recAt l7 211).2.2.2.length ≤ 96 := by decide +kernel

theorem v_211_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 211 0 16 = true := by decide +kernel

theorem v_211_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 211 16 16 = true := by decide +kernel

theorem v_211_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 211 32 16 = true := by decide +kernel

theorem v_211_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 211 48 16 = true := by decide +kernel

theorem v_211_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 211 64 16 = true := by decide +kernel

theorem v_211_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 211 80 16 = true := by decide +kernel

theorem r_211 : recsK7OK T qscale den6 d14 lamN lamD l7 211 1 = true := recK7_of (n := 96) t_211 n_211 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_211_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_211_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_211_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_211_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_211_4 (v_211_5))))))

theorem t_212 : treeK7OK l7 212 = true := by decide +kernel

theorem n_212 : (recAt l7 212).2.2.2.length ≤ 64 := by decide +kernel

theorem v_212_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 212 0 16 = true := by decide +kernel

theorem v_212_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 212 16 16 = true := by decide +kernel

theorem v_212_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 212 32 16 = true := by decide +kernel

theorem v_212_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 212 48 16 = true := by decide +kernel

theorem r_212 : recsK7OK T qscale den6 d14 lamN lamD l7 212 1 = true := recK7_of (n := 64) t_212 n_212 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_212_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_212_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_212_2 (v_212_3))))

theorem t_213 : treeK7OK l7 213 = true := by decide +kernel

theorem n_213 : (recAt l7 213).2.2.2.length ≤ 80 := by decide +kernel

theorem v_213_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 213 0 16 = true := by decide +kernel

theorem v_213_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 213 16 16 = true := by decide +kernel

theorem v_213_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 213 32 16 = true := by decide +kernel

theorem v_213_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 213 48 16 = true := by decide +kernel

theorem v_213_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 213 64 16 = true := by decide +kernel

theorem r_213 : recsK7OK T qscale den6 d14 lamN lamD l7 213 1 = true := recK7_of (n := 80) t_213 n_213 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_213_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_213_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_213_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_213_3 (v_213_4)))))

theorem t_214 : treeK7OK l7 214 = true := by decide +kernel

theorem n_214 : (recAt l7 214).2.2.2.length ≤ 64 := by decide +kernel

theorem v_214_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 214 0 16 = true := by decide +kernel

theorem v_214_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 214 16 16 = true := by decide +kernel

theorem v_214_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 214 32 16 = true := by decide +kernel

theorem v_214_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 214 48 16 = true := by decide +kernel

theorem r_214 : recsK7OK T qscale den6 d14 lamN lamD l7 214 1 = true := recK7_of (n := 64) t_214 n_214 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_214_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_214_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_214_2 (v_214_3))))

theorem t_215 : treeK7OK l7 215 = true := by decide +kernel

theorem n_215 : (recAt l7 215).2.2.2.length ≤ 48 := by decide +kernel

theorem v_215_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 215 0 16 = true := by decide +kernel

theorem v_215_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 215 16 16 = true := by decide +kernel

theorem v_215_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 215 32 16 = true := by decide +kernel

theorem r_215 : recsK7OK T qscale den6 d14 lamN lamD l7 215 1 = true := recK7_of (n := 48) t_215 n_215 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_215_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_215_1 (v_215_2)))

theorem rs_211 : recsK7OK T qscale den6 d14 lamN lamD l7 211 5 = true := recsK7OK_succ (lo := 211) (n := 4) r_211 (recsK7OK_succ (lo := 212) (n := 3) r_212 (recsK7OK_succ (lo := 213) (n := 2) r_213 (recsK7OK_succ (lo := 214) (n := 1) r_214 (r_215))))

end BeatAvg.K.K7
