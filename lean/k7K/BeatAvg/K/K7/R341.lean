import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1020 : treeK7OK l7 1020 = true := by decide +kernel

theorem n_1020 : (recAt l7 1020).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1020_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 0 16 = true := by decide +kernel

theorem v_1020_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 16 16 = true := by decide +kernel

theorem v_1020_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 32 16 = true := by decide +kernel

theorem v_1020_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 48 16 = true := by decide +kernel

theorem v_1020_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 64 16 = true := by decide +kernel

theorem v_1020_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 80 16 = true := by decide +kernel

theorem v_1020_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 96 16 = true := by decide +kernel

theorem v_1020_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 112 16 = true := by decide +kernel

theorem v_1020_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 128 16 = true := by decide +kernel

theorem v_1020_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1020 144 16 = true := by decide +kernel

theorem r_1020 : recsK7OK T qscale den6 d14 lamN lamD l7 1020 1 = true := recK7_of (n := 160) t_1020 n_1020 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1020_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1020_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1020_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1020_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1020_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1020_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1020_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1020_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1020_8 (v_1020_9))))))))))

theorem t_1021 : treeK7OK l7 1021 = true := by decide +kernel

theorem n_1021 : (recAt l7 1021).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1021_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 0 16 = true := by decide +kernel

theorem v_1021_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 16 16 = true := by decide +kernel

theorem v_1021_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 32 16 = true := by decide +kernel

theorem v_1021_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 48 16 = true := by decide +kernel

theorem v_1021_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 64 16 = true := by decide +kernel

theorem v_1021_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 80 16 = true := by decide +kernel

theorem v_1021_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 96 16 = true := by decide +kernel

theorem v_1021_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 112 16 = true := by decide +kernel

theorem v_1021_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 128 16 = true := by decide +kernel

theorem v_1021_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1021 144 16 = true := by decide +kernel

theorem r_1021 : recsK7OK T qscale den6 d14 lamN lamD l7 1021 1 = true := recK7_of (n := 160) t_1021 n_1021 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1021_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1021_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1021_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1021_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1021_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1021_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1021_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1021_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1021_8 (v_1021_9))))))))))

theorem rs_1020 : recsK7OK T qscale den6 d14 lamN lamD l7 1020 2 = true := recsK7OK_succ (lo := 1020) (n := 1) r_1020 (r_1021)

end BeatAvg.K.K7
