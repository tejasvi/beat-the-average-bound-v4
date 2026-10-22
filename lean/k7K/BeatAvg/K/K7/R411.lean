import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1277 : treeK7OK l7 1277 = true := by decide +kernel

theorem n_1277 : (recAt l7 1277).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1277_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1277 0 16 = true := by decide +kernel

theorem v_1277_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1277 16 16 = true := by decide +kernel

theorem v_1277_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1277 32 16 = true := by decide +kernel

theorem v_1277_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1277 48 16 = true := by decide +kernel

theorem v_1277_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1277 64 16 = true := by decide +kernel

theorem v_1277_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1277 80 16 = true := by decide +kernel

theorem v_1277_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1277 96 16 = true := by decide +kernel

theorem r_1277 : recsK7OK T qscale den6 d14 lamN lamD l7 1277 1 = true := recK7_of (n := 112) t_1277 n_1277 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1277_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1277_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1277_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1277_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1277_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1277_5 (v_1277_6)))))))

theorem t_1278 : treeK7OK l7 1278 = true := by decide +kernel

theorem n_1278 : (recAt l7 1278).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1278_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1278 0 16 = true := by decide +kernel

theorem v_1278_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1278 16 16 = true := by decide +kernel

theorem v_1278_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1278 32 16 = true := by decide +kernel

theorem r_1278 : recsK7OK T qscale den6 d14 lamN lamD l7 1278 1 = true := recK7_of (n := 48) t_1278 n_1278 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1278_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1278_1 (v_1278_2)))

theorem t_1279 : treeK7OK l7 1279 = true := by decide +kernel

theorem n_1279 : (recAt l7 1279).2.2.2.length ≤ 64 := by decide +kernel

theorem v_1279_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1279 0 16 = true := by decide +kernel

theorem v_1279_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1279 16 16 = true := by decide +kernel

theorem v_1279_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1279 32 16 = true := by decide +kernel

theorem v_1279_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1279 48 16 = true := by decide +kernel

theorem r_1279 : recsK7OK T qscale den6 d14 lamN lamD l7 1279 1 = true := recK7_of (n := 64) t_1279 n_1279 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_1279_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_1279_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_1279_2 (v_1279_3))))

theorem t_1280 : treeK7OK l7 1280 = true := by decide +kernel

theorem n_1280 : (recAt l7 1280).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1280_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1280 0 16 = true := by decide +kernel

theorem v_1280_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1280 16 16 = true := by decide +kernel

theorem v_1280_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1280 32 16 = true := by decide +kernel

theorem v_1280_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1280 48 16 = true := by decide +kernel

theorem v_1280_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1280 64 16 = true := by decide +kernel

theorem v_1280_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1280 80 16 = true := by decide +kernel

theorem v_1280_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1280 96 16 = true := by decide +kernel

theorem r_1280 : recsK7OK T qscale den6 d14 lamN lamD l7 1280 1 = true := recK7_of (n := 112) t_1280 n_1280 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1280_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1280_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1280_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1280_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1280_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1280_5 (v_1280_6)))))))

theorem t_1281 : treeK7OK l7 1281 = true := by decide +kernel

theorem n_1281 : (recAt l7 1281).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1281_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1281 0 16 = true := by decide +kernel

theorem v_1281_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1281 16 16 = true := by decide +kernel

theorem v_1281_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1281 32 16 = true := by decide +kernel

theorem v_1281_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1281 48 16 = true := by decide +kernel

theorem v_1281_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1281 64 16 = true := by decide +kernel

theorem r_1281 : recsK7OK T qscale den6 d14 lamN lamD l7 1281 1 = true := recK7_of (n := 80) t_1281 n_1281 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1281_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1281_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1281_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1281_3 (v_1281_4)))))

theorem rs_1277 : recsK7OK T qscale den6 d14 lamN lamD l7 1277 5 = true := recsK7OK_succ (lo := 1277) (n := 4) r_1277 (recsK7OK_succ (lo := 1278) (n := 3) r_1278 (recsK7OK_succ (lo := 1279) (n := 2) r_1279 (recsK7OK_succ (lo := 1280) (n := 1) r_1280 (r_1281))))

end BeatAvg.K.K7
