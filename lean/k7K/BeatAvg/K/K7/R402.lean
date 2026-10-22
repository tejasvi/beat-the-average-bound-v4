import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1232 : treeK7OK l7 1232 = true := by decide +kernel

theorem n_1232 : (recAt l7 1232).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1232_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1232 0 16 = true := by decide +kernel

theorem v_1232_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1232 16 16 = true := by decide +kernel

theorem v_1232_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1232 32 16 = true := by decide +kernel

theorem v_1232_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1232 48 16 = true := by decide +kernel

theorem v_1232_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1232 64 16 = true := by decide +kernel

theorem r_1232 : recsK7OK T qscale den6 d14 lamN lamD l7 1232 1 = true := recK7_of (n := 80) t_1232 n_1232 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1232_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1232_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1232_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1232_3 (v_1232_4)))))

theorem t_1233 : treeK7OK l7 1233 = true := by decide +kernel

theorem n_1233 : (recAt l7 1233).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1233_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1233 0 16 = true := by decide +kernel

theorem v_1233_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1233 16 16 = true := by decide +kernel

theorem v_1233_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1233 32 16 = true := by decide +kernel

theorem r_1233 : recsK7OK T qscale den6 d14 lamN lamD l7 1233 1 = true := recK7_of (n := 48) t_1233 n_1233 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1233_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1233_1 (v_1233_2)))

theorem t_1234 : treeK7OK l7 1234 = true := by decide +kernel

theorem n_1234 : (recAt l7 1234).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1234_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1234 0 16 = true := by decide +kernel

theorem v_1234_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1234 16 16 = true := by decide +kernel

theorem v_1234_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1234 32 16 = true := by decide +kernel

theorem r_1234 : recsK7OK T qscale den6 d14 lamN lamD l7 1234 1 = true := recK7_of (n := 48) t_1234 n_1234 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1234_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1234_1 (v_1234_2)))

theorem t_1235 : treeK7OK l7 1235 = true := by decide +kernel

theorem n_1235 : (recAt l7 1235).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1235_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1235 0 16 = true := by decide +kernel

theorem v_1235_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1235 16 16 = true := by decide +kernel

theorem r_1235 : recsK7OK T qscale den6 d14 lamN lamD l7 1235 1 = true := recK7_of (n := 32) t_1235 n_1235 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1235_0 (v_1235_1))

theorem t_1236 : treeK7OK l7 1236 = true := by decide +kernel

theorem n_1236 : (recAt l7 1236).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1236_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1236 0 16 = true := by decide +kernel

theorem v_1236_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1236 16 16 = true := by decide +kernel

theorem r_1236 : recsK7OK T qscale den6 d14 lamN lamD l7 1236 1 = true := recK7_of (n := 32) t_1236 n_1236 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1236_0 (v_1236_1))

theorem t_1237 : treeK7OK l7 1237 = true := by decide +kernel

theorem n_1237 : (recAt l7 1237).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1237_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1237 0 16 = true := by decide +kernel

theorem v_1237_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1237 16 16 = true := by decide +kernel

theorem v_1237_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1237 32 16 = true := by decide +kernel

theorem r_1237 : recsK7OK T qscale den6 d14 lamN lamD l7 1237 1 = true := recK7_of (n := 48) t_1237 n_1237 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1237_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1237_1 (v_1237_2)))

theorem t_1238 : treeK7OK l7 1238 = true := by decide +kernel

theorem n_1238 : (recAt l7 1238).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1238_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1238 0 16 = true := by decide +kernel

theorem v_1238_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1238 16 16 = true := by decide +kernel

theorem r_1238 : recsK7OK T qscale den6 d14 lamN lamD l7 1238 1 = true := recK7_of (n := 32) t_1238 n_1238 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1238_0 (v_1238_1))

theorem t_1239 : treeK7OK l7 1239 = true := by decide +kernel

theorem n_1239 : (recAt l7 1239).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1239_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1239 0 16 = true := by decide +kernel

theorem v_1239_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1239 16 16 = true := by decide +kernel

theorem v_1239_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1239 32 16 = true := by decide +kernel

theorem r_1239 : recsK7OK T qscale den6 d14 lamN lamD l7 1239 1 = true := recK7_of (n := 48) t_1239 n_1239 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1239_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1239_1 (v_1239_2)))

theorem t_1240 : treeK7OK l7 1240 = true := by decide +kernel

theorem n_1240 : (recAt l7 1240).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1240_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1240 0 16 = true := by decide +kernel

theorem v_1240_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1240 16 16 = true := by decide +kernel

theorem v_1240_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1240 32 16 = true := by decide +kernel

theorem v_1240_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1240 48 16 = true := by decide +kernel

theorem v_1240_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1240 64 16 = true := by decide +kernel

theorem r_1240 : recsK7OK T qscale den6 d14 lamN lamD l7 1240 1 = true := recK7_of (n := 80) t_1240 n_1240 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1240_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1240_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1240_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1240_3 (v_1240_4)))))

theorem t_1241 : treeK7OK l7 1241 = true := by decide +kernel

theorem n_1241 : (recAt l7 1241).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1241_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1241 0 16 = true := by decide +kernel

theorem v_1241_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1241 16 16 = true := by decide +kernel

theorem v_1241_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1241 32 16 = true := by decide +kernel

theorem r_1241 : recsK7OK T qscale den6 d14 lamN lamD l7 1241 1 = true := recK7_of (n := 48) t_1241 n_1241 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1241_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1241_1 (v_1241_2)))

theorem rs_1232 : recsK7OK T qscale den6 d14 lamN lamD l7 1232 10 = true := recsK7OK_succ (lo := 1232) (n := 9) r_1232 (recsK7OK_succ (lo := 1233) (n := 8) r_1233 (recsK7OK_succ (lo := 1234) (n := 7) r_1234 (recsK7OK_succ (lo := 1235) (n := 6) r_1235 (recsK7OK_succ (lo := 1236) (n := 5) r_1236 (recsK7OK_succ (lo := 1237) (n := 4) r_1237 (recsK7OK_succ (lo := 1238) (n := 3) r_1238 (recsK7OK_succ (lo := 1239) (n := 2) r_1239 (recsK7OK_succ (lo := 1240) (n := 1) r_1240 (r_1241)))))))))

end BeatAvg.K.K7
