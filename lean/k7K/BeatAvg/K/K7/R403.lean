import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1242 : treeK7OK l7 1242 = true := by decide +kernel

theorem n_1242 : (recAt l7 1242).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1242_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1242 0 16 = true := by decide +kernel

theorem v_1242_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1242 16 16 = true := by decide +kernel

theorem v_1242_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1242 32 16 = true := by decide +kernel

theorem r_1242 : recsK7OK T qscale den6 d14 lamN lamD l7 1242 1 = true := recK7_of (n := 48) t_1242 n_1242 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1242_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1242_1 (v_1242_2)))

theorem t_1243 : treeK7OK l7 1243 = true := by decide +kernel

theorem n_1243 : (recAt l7 1243).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1243_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1243 0 16 = true := by decide +kernel

theorem v_1243_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1243 16 16 = true := by decide +kernel

theorem v_1243_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1243 32 16 = true := by decide +kernel

theorem v_1243_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1243 48 16 = true := by decide +kernel

theorem v_1243_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1243 64 16 = true := by decide +kernel

theorem v_1243_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1243 80 16 = true := by decide +kernel

theorem v_1243_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1243 96 16 = true := by decide +kernel

theorem r_1243 : recsK7OK T qscale den6 d14 lamN lamD l7 1243 1 = true := recK7_of (n := 112) t_1243 n_1243 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1243_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1243_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1243_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1243_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1243_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1243_5 (v_1243_6)))))))

theorem t_1244 : treeK7OK l7 1244 = true := by decide +kernel

theorem n_1244 : (recAt l7 1244).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1244_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1244 0 16 = true := by decide +kernel

theorem v_1244_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1244 16 16 = true := by decide +kernel

theorem v_1244_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1244 32 16 = true := by decide +kernel

theorem v_1244_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1244 48 16 = true := by decide +kernel

theorem v_1244_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1244 64 16 = true := by decide +kernel

theorem v_1244_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1244 80 16 = true := by decide +kernel

theorem v_1244_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1244 96 16 = true := by decide +kernel

theorem r_1244 : recsK7OK T qscale den6 d14 lamN lamD l7 1244 1 = true := recK7_of (n := 112) t_1244 n_1244 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1244_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1244_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1244_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1244_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1244_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1244_5 (v_1244_6)))))))

theorem t_1245 : treeK7OK l7 1245 = true := by decide +kernel

theorem n_1245 : (recAt l7 1245).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1245_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 0 16 = true := by decide +kernel

theorem v_1245_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 16 16 = true := by decide +kernel

theorem v_1245_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 32 16 = true := by decide +kernel

theorem v_1245_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 48 16 = true := by decide +kernel

theorem v_1245_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 64 16 = true := by decide +kernel

theorem v_1245_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 80 16 = true := by decide +kernel

theorem v_1245_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 96 16 = true := by decide +kernel

theorem v_1245_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1245 112 16 = true := by decide +kernel

theorem r_1245 : recsK7OK T qscale den6 d14 lamN lamD l7 1245 1 = true := recK7_of (n := 128) t_1245 n_1245 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1245_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1245_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1245_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1245_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1245_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1245_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1245_6 (v_1245_7))))))))

theorem rs_1242 : recsK7OK T qscale den6 d14 lamN lamD l7 1242 4 = true := recsK7OK_succ (lo := 1242) (n := 3) r_1242 (recsK7OK_succ (lo := 1243) (n := 2) r_1243 (recsK7OK_succ (lo := 1244) (n := 1) r_1244 (r_1245)))

end BeatAvg.K.K7
