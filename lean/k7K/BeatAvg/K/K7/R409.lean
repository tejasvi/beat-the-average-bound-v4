import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1267 : treeK7OK l7 1267 = true := by decide +kernel

theorem n_1267 : (recAt l7 1267).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1267_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1267 0 16 = true := by decide +kernel

theorem v_1267_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1267 16 16 = true := by decide +kernel

theorem v_1267_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1267 32 16 = true := by decide +kernel

theorem v_1267_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1267 48 16 = true := by decide +kernel

theorem r_1267 : recsK7OK T qscale den6 d14 lamN lamD l7 1267 1 = true := recK7_of (n := 64) t_1267 n_1267 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1267_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1267_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1267_2 (v_1267_3))))

theorem t_1268 : treeK7OK l7 1268 = true := by decide +kernel

theorem n_1268 : (recAt l7 1268).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1268_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1268 0 16 = true := by decide +kernel

theorem v_1268_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1268 16 16 = true := by decide +kernel

theorem v_1268_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1268 32 16 = true := by decide +kernel

theorem v_1268_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1268 48 16 = true := by decide +kernel

theorem v_1268_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1268 64 16 = true := by decide +kernel

theorem r_1268 : recsK7OK T qscale den6 d14 lamN lamD l7 1268 1 = true := recK7_of (n := 80) t_1268 n_1268 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1268_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1268_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1268_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1268_3 (v_1268_4)))))

theorem t_1269 : treeK7OK l7 1269 = true := by decide +kernel

theorem n_1269 : (recAt l7 1269).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1269_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1269 0 16 = true := by decide +kernel

theorem v_1269_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1269 16 16 = true := by decide +kernel

theorem v_1269_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1269 32 16 = true := by decide +kernel

theorem v_1269_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1269 48 16 = true := by decide +kernel

theorem v_1269_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1269 64 16 = true := by decide +kernel

theorem r_1269 : recsK7OK T qscale den6 d14 lamN lamD l7 1269 1 = true := recK7_of (n := 80) t_1269 n_1269 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1269_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1269_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1269_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1269_3 (v_1269_4)))))

theorem t_1270 : treeK7OK l7 1270 = true := by decide +kernel

theorem n_1270 : (recAt l7 1270).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1270_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1270 0 16 = true := by decide +kernel

theorem v_1270_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1270 16 16 = true := by decide +kernel

theorem v_1270_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1270 32 16 = true := by decide +kernel

theorem r_1270 : recsK7OK T qscale den6 d14 lamN lamD l7 1270 1 = true := recK7_of (n := 48) t_1270 n_1270 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1270_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1270_1 (v_1270_2)))

theorem t_1271 : treeK7OK l7 1271 = true := by decide +kernel

theorem n_1271 : (recAt l7 1271).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1271_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1271 0 16 = true := by decide +kernel

theorem v_1271_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1271 16 16 = true := by decide +kernel

theorem v_1271_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1271 32 16 = true := by decide +kernel

theorem v_1271_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1271 48 16 = true := by decide +kernel

theorem r_1271 : recsK7OK T qscale den6 d14 lamN lamD l7 1271 1 = true := recK7_of (n := 64) t_1271 n_1271 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1271_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1271_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1271_2 (v_1271_3))))

theorem t_1272 : treeK7OK l7 1272 = true := by decide +kernel

theorem n_1272 : (recAt l7 1272).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1272_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1272 0 16 = true := by decide +kernel

theorem v_1272_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1272 16 16 = true := by decide +kernel

theorem v_1272_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1272 32 16 = true := by decide +kernel

theorem v_1272_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1272 48 16 = true := by decide +kernel

theorem r_1272 : recsK7OK T qscale den6 d14 lamN lamD l7 1272 1 = true := recK7_of (n := 64) t_1272 n_1272 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1272_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1272_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1272_2 (v_1272_3))))

theorem rs_1267 : recsK7OK T qscale den6 d14 lamN lamD l7 1267 6 = true := recsK7OK_succ (lo := 1267) (n := 5) r_1267 (recsK7OK_succ (lo := 1268) (n := 4) r_1268 (recsK7OK_succ (lo := 1269) (n := 3) r_1269 (recsK7OK_succ (lo := 1270) (n := 2) r_1270 (recsK7OK_succ (lo := 1271) (n := 1) r_1271 (r_1272)))))

end BeatAvg.K.K7
