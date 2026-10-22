import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1056 : treeK7OK l7 1056 = true := by decide +kernel

theorem n_1056 : (recAt l7 1056).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1056_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1056 0 16 = true := by decide +kernel

theorem v_1056_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1056 16 16 = true := by decide +kernel

theorem v_1056_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1056 32 16 = true := by decide +kernel

theorem r_1056 : recsK7OK T qscale den6 d14 lamN lamD l7 1056 1 = true := recK7_of (n := 48) t_1056 n_1056 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1056_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1056_1 (v_1056_2)))

theorem t_1057 : treeK7OK l7 1057 = true := by decide +kernel

theorem n_1057 : (recAt l7 1057).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1057_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1057 0 16 = true := by decide +kernel

theorem v_1057_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1057 16 16 = true := by decide +kernel

theorem v_1057_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1057 32 16 = true := by decide +kernel

theorem v_1057_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1057 48 16 = true := by decide +kernel

theorem v_1057_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1057 64 16 = true := by decide +kernel

theorem v_1057_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1057 80 16 = true := by decide +kernel

theorem v_1057_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1057 96 16 = true := by decide +kernel

theorem r_1057 : recsK7OK T qscale den6 d14 lamN lamD l7 1057 1 = true := recK7_of (n := 112) t_1057 n_1057 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1057_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1057_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1057_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1057_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1057_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1057_5 (v_1057_6)))))))

theorem t_1058 : treeK7OK l7 1058 = true := by decide +kernel

theorem n_1058 : (recAt l7 1058).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1058_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1058 0 16 = true := by decide +kernel

theorem v_1058_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1058 16 16 = true := by decide +kernel

theorem v_1058_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1058 32 16 = true := by decide +kernel

theorem v_1058_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1058 48 16 = true := by decide +kernel

theorem v_1058_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1058 64 16 = true := by decide +kernel

theorem r_1058 : recsK7OK T qscale den6 d14 lamN lamD l7 1058 1 = true := recK7_of (n := 80) t_1058 n_1058 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1058_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1058_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1058_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1058_3 (v_1058_4)))))

theorem t_1059 : treeK7OK l7 1059 = true := by decide +kernel

theorem n_1059 : (recAt l7 1059).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1059_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1059 0 16 = true := by decide +kernel

theorem v_1059_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1059 16 16 = true := by decide +kernel

theorem r_1059 : recsK7OK T qscale den6 d14 lamN lamD l7 1059 1 = true := recK7_of (n := 32) t_1059 n_1059 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1059_0 (v_1059_1))

theorem t_1060 : treeK7OK l7 1060 = true := by decide +kernel

theorem n_1060 : (recAt l7 1060).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1060_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1060 0 16 = true := by decide +kernel

theorem v_1060_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1060 16 16 = true := by decide +kernel

theorem v_1060_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1060 32 16 = true := by decide +kernel

theorem r_1060 : recsK7OK T qscale den6 d14 lamN lamD l7 1060 1 = true := recK7_of (n := 48) t_1060 n_1060 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1060_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1060_1 (v_1060_2)))

theorem t_1061 : treeK7OK l7 1061 = true := by decide +kernel

theorem n_1061 : (recAt l7 1061).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1061_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1061 0 16 = true := by decide +kernel

theorem v_1061_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1061 16 16 = true := by decide +kernel

theorem v_1061_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1061 32 16 = true := by decide +kernel

theorem v_1061_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1061 48 16 = true := by decide +kernel

theorem v_1061_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1061 64 16 = true := by decide +kernel

theorem r_1061 : recsK7OK T qscale den6 d14 lamN lamD l7 1061 1 = true := recK7_of (n := 80) t_1061 n_1061 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1061_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1061_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1061_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1061_3 (v_1061_4)))))

theorem rs_1056 : recsK7OK T qscale den6 d14 lamN lamD l7 1056 6 = true := recsK7OK_succ (lo := 1056) (n := 5) r_1056 (recsK7OK_succ (lo := 1057) (n := 4) r_1057 (recsK7OK_succ (lo := 1058) (n := 3) r_1058 (recsK7OK_succ (lo := 1059) (n := 2) r_1059 (recsK7OK_succ (lo := 1060) (n := 1) r_1060 (r_1061)))))

end BeatAvg.K.K7
