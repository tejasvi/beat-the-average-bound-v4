import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1273 : treeK7OK l7 1273 = true := by decide +kernel

theorem n_1273 : (recAt l7 1273).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1273_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1273 0 16 = true := by decide +kernel

theorem v_1273_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1273 16 16 = true := by decide +kernel

theorem v_1273_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1273 32 16 = true := by decide +kernel

theorem v_1273_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1273 48 16 = true := by decide +kernel

theorem r_1273 : recsK7OK T qscale den6 d14 lamN lamD l7 1273 1 = true := recK7_of (n := 64) t_1273 n_1273 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1273_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1273_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1273_2 (v_1273_3))))

theorem t_1274 : treeK7OK l7 1274 = true := by decide +kernel

theorem n_1274 : (recAt l7 1274).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1274_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 0 16 = true := by decide +kernel

theorem v_1274_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 16 16 = true := by decide +kernel

theorem v_1274_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 32 16 = true := by decide +kernel

theorem v_1274_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 48 16 = true := by decide +kernel

theorem v_1274_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 64 16 = true := by decide +kernel

theorem v_1274_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 80 16 = true := by decide +kernel

theorem v_1274_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 96 16 = true := by decide +kernel

theorem v_1274_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1274 112 16 = true := by decide +kernel

theorem r_1274 : recsK7OK T qscale den6 d14 lamN lamD l7 1274 1 = true := recK7_of (n := 128) t_1274 n_1274 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1274_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1274_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1274_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1274_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1274_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1274_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1274_6 (v_1274_7))))))))

theorem t_1275 : treeK7OK l7 1275 = true := by decide +kernel

theorem n_1275 : (recAt l7 1275).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1275_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1275 0 16 = true := by decide +kernel

theorem v_1275_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1275 16 16 = true := by decide +kernel

theorem v_1275_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1275 32 16 = true := by decide +kernel

theorem v_1275_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1275 48 16 = true := by decide +kernel

theorem v_1275_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1275 64 16 = true := by decide +kernel

theorem v_1275_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1275 80 16 = true := by decide +kernel

theorem r_1275 : recsK7OK T qscale den6 d14 lamN lamD l7 1275 1 = true := recK7_of (n := 96) t_1275 n_1275 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1275_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1275_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1275_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1275_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1275_4 (v_1275_5))))))

theorem t_1276 : treeK7OK l7 1276 = true := by decide +kernel

theorem n_1276 : (recAt l7 1276).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1276_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1276 0 16 = true := by decide +kernel

theorem v_1276_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1276 16 16 = true := by decide +kernel

theorem v_1276_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1276 32 16 = true := by decide +kernel

theorem v_1276_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1276 48 16 = true := by decide +kernel

theorem v_1276_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1276 64 16 = true := by decide +kernel

theorem v_1276_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1276 80 16 = true := by decide +kernel

theorem v_1276_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1276 96 16 = true := by decide +kernel

theorem r_1276 : recsK7OK T qscale den6 d14 lamN lamD l7 1276 1 = true := recK7_of (n := 112) t_1276 n_1276 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1276_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1276_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1276_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1276_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1276_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1276_5 (v_1276_6)))))))

theorem rs_1273 : recsK7OK T qscale den6 d14 lamN lamD l7 1273 4 = true := recsK7OK_succ (lo := 1273) (n := 3) r_1273 (recsK7OK_succ (lo := 1274) (n := 2) r_1274 (recsK7OK_succ (lo := 1275) (n := 1) r_1275 (r_1276)))

end BeatAvg.K.K7
