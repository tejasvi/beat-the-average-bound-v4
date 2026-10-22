import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1211 : treeK7OK l7 1211 = true := by decide +kernel

theorem n_1211 : (recAt l7 1211).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1211_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1211 0 16 = true := by decide +kernel

theorem v_1211_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1211 16 16 = true := by decide +kernel

theorem v_1211_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1211 32 16 = true := by decide +kernel

theorem v_1211_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1211 48 16 = true := by decide +kernel

theorem v_1211_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1211 64 16 = true := by decide +kernel

theorem v_1211_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1211 80 16 = true := by decide +kernel

theorem v_1211_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1211 96 16 = true := by decide +kernel

theorem r_1211 : recsK7OK T qscale den6 d14 lamN lamD l7 1211 1 = true := recK7_of (n := 112) t_1211 n_1211 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1211_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1211_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1211_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1211_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1211_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1211_5 (v_1211_6)))))))

theorem t_1212 : treeK7OK l7 1212 = true := by decide +kernel

theorem n_1212 : (recAt l7 1212).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1212_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1212 0 16 = true := by decide +kernel

theorem v_1212_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1212 16 16 = true := by decide +kernel

theorem v_1212_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1212 32 16 = true := by decide +kernel

theorem v_1212_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1212 48 16 = true := by decide +kernel

theorem v_1212_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1212 64 16 = true := by decide +kernel

theorem r_1212 : recsK7OK T qscale den6 d14 lamN lamD l7 1212 1 = true := recK7_of (n := 80) t_1212 n_1212 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1212_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1212_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1212_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1212_3 (v_1212_4)))))

theorem t_1213 : treeK7OK l7 1213 = true := by decide +kernel

theorem n_1213 : (recAt l7 1213).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1213_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1213 0 16 = true := by decide +kernel

theorem v_1213_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1213 16 16 = true := by decide +kernel

theorem r_1213 : recsK7OK T qscale den6 d14 lamN lamD l7 1213 1 = true := recK7_of (n := 32) t_1213 n_1213 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1213_0 (v_1213_1))

theorem t_1214 : treeK7OK l7 1214 = true := by decide +kernel

theorem n_1214 : (recAt l7 1214).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1214_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1214 0 16 = true := by decide +kernel

theorem v_1214_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1214 16 16 = true := by decide +kernel

theorem v_1214_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1214 32 16 = true := by decide +kernel

theorem v_1214_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1214 48 16 = true := by decide +kernel

theorem v_1214_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1214 64 16 = true := by decide +kernel

theorem r_1214 : recsK7OK T qscale den6 d14 lamN lamD l7 1214 1 = true := recK7_of (n := 80) t_1214 n_1214 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1214_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1214_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1214_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1214_3 (v_1214_4)))))

theorem t_1215 : treeK7OK l7 1215 = true := by decide +kernel

theorem n_1215 : (recAt l7 1215).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1215_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1215 0 16 = true := by decide +kernel

theorem v_1215_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1215 16 16 = true := by decide +kernel

theorem v_1215_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1215 32 16 = true := by decide +kernel

theorem v_1215_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1215 48 16 = true := by decide +kernel

theorem v_1215_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1215 64 16 = true := by decide +kernel

theorem v_1215_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1215 80 16 = true := by decide +kernel

theorem r_1215 : recsK7OK T qscale den6 d14 lamN lamD l7 1215 1 = true := recK7_of (n := 96) t_1215 n_1215 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1215_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1215_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1215_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1215_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1215_4 (v_1215_5))))))

theorem rs_1211 : recsK7OK T qscale den6 d14 lamN lamD l7 1211 5 = true := recsK7OK_succ (lo := 1211) (n := 4) r_1211 (recsK7OK_succ (lo := 1212) (n := 3) r_1212 (recsK7OK_succ (lo := 1213) (n := 2) r_1213 (recsK7OK_succ (lo := 1214) (n := 1) r_1214 (r_1215))))

end BeatAvg.K.K7
