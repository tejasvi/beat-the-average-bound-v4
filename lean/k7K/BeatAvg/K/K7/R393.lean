import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1192 : treeK7OK l7 1192 = true := by decide +kernel

theorem n_1192 : (recAt l7 1192).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1192_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 0 16 = true := by decide +kernel

theorem v_1192_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 16 16 = true := by decide +kernel

theorem v_1192_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 32 16 = true := by decide +kernel

theorem v_1192_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 48 16 = true := by decide +kernel

theorem v_1192_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 64 16 = true := by decide +kernel

theorem v_1192_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 80 16 = true := by decide +kernel

theorem v_1192_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 96 16 = true := by decide +kernel

theorem v_1192_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1192 112 16 = true := by decide +kernel

theorem r_1192 : recsK7OK T qscale den6 d14 lamN lamD l7 1192 1 = true := recK7_of (n := 128) t_1192 n_1192 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1192_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1192_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1192_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1192_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1192_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1192_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1192_6 (v_1192_7))))))))

theorem t_1193 : treeK7OK l7 1193 = true := by decide +kernel

theorem n_1193 : (recAt l7 1193).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1193_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1193 0 16 = true := by decide +kernel

theorem v_1193_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1193 16 16 = true := by decide +kernel

theorem v_1193_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1193 32 16 = true := by decide +kernel

theorem v_1193_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1193 48 16 = true := by decide +kernel

theorem v_1193_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1193 64 16 = true := by decide +kernel

theorem v_1193_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1193 80 16 = true := by decide +kernel

theorem r_1193 : recsK7OK T qscale den6 d14 lamN lamD l7 1193 1 = true := recK7_of (n := 96) t_1193 n_1193 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1193_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1193_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1193_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1193_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1193_4 (v_1193_5))))))

theorem t_1194 : treeK7OK l7 1194 = true := by decide +kernel

theorem n_1194 : (recAt l7 1194).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1194_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1194 0 16 = true := by decide +kernel

theorem v_1194_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1194 16 16 = true := by decide +kernel

theorem v_1194_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1194 32 16 = true := by decide +kernel

theorem v_1194_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1194 48 16 = true := by decide +kernel

theorem v_1194_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1194 64 16 = true := by decide +kernel

theorem v_1194_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1194 80 16 = true := by decide +kernel

theorem v_1194_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1194 96 16 = true := by decide +kernel

theorem r_1194 : recsK7OK T qscale den6 d14 lamN lamD l7 1194 1 = true := recK7_of (n := 112) t_1194 n_1194 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1194_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1194_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1194_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1194_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1194_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1194_5 (v_1194_6)))))))

theorem rs_1192 : recsK7OK T qscale den6 d14 lamN lamD l7 1192 3 = true := recsK7OK_succ (lo := 1192) (n := 2) r_1192 (recsK7OK_succ (lo := 1193) (n := 1) r_1193 (r_1194))

end BeatAvg.K.K7
