import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1025 : treeK7OK l7 1025 = true := by decide +kernel

theorem n_1025 : (recAt l7 1025).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1025_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 0 16 = true := by decide +kernel

theorem v_1025_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 16 16 = true := by decide +kernel

theorem v_1025_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 32 16 = true := by decide +kernel

theorem v_1025_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 48 16 = true := by decide +kernel

theorem v_1025_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 64 16 = true := by decide +kernel

theorem v_1025_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 80 16 = true := by decide +kernel

theorem v_1025_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 96 16 = true := by decide +kernel

theorem v_1025_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1025 112 16 = true := by decide +kernel

theorem r_1025 : recsK7OK T qscale den6 d14 lamN lamD l7 1025 1 = true := recK7_of (n := 128) t_1025 n_1025 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1025_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1025_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1025_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1025_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1025_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1025_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1025_6 (v_1025_7))))))))

theorem t_1026 : treeK7OK l7 1026 = true := by decide +kernel

theorem n_1026 : (recAt l7 1026).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1026_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1026 0 16 = true := by decide +kernel

theorem v_1026_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1026 16 16 = true := by decide +kernel

theorem v_1026_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1026 32 16 = true := by decide +kernel

theorem v_1026_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1026 48 16 = true := by decide +kernel

theorem v_1026_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1026 64 16 = true := by decide +kernel

theorem v_1026_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1026 80 16 = true := by decide +kernel

theorem r_1026 : recsK7OK T qscale den6 d14 lamN lamD l7 1026 1 = true := recK7_of (n := 96) t_1026 n_1026 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1026_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1026_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1026_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1026_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1026_4 (v_1026_5))))))

theorem t_1027 : treeK7OK l7 1027 = true := by decide +kernel

theorem n_1027 : (recAt l7 1027).2.2.2.length ≤ 176 := by decide +kernel

theorem v_1027_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 0 16 = true := by decide +kernel

theorem v_1027_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 16 16 = true := by decide +kernel

theorem v_1027_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 32 16 = true := by decide +kernel

theorem v_1027_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 48 16 = true := by decide +kernel

theorem v_1027_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 64 16 = true := by decide +kernel

theorem v_1027_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 80 16 = true := by decide +kernel

theorem v_1027_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 96 16 = true := by decide +kernel

theorem v_1027_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 112 16 = true := by decide +kernel

theorem v_1027_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 128 16 = true := by decide +kernel

theorem v_1027_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 144 16 = true := by decide +kernel

theorem v_1027_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1027 160 16 = true := by decide +kernel

theorem r_1027 : recsK7OK T qscale den6 d14 lamN lamD l7 1027 1 = true := recK7_of (n := 176) t_1027 n_1027 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_1027_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_1027_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_1027_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_1027_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_1027_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_1027_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_1027_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_1027_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_1027_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_1027_9 (v_1027_10)))))))))))

theorem rs_1025 : recsK7OK T qscale den6 d14 lamN lamD l7 1025 3 = true := recsK7OK_succ (lo := 1025) (n := 2) r_1025 (recsK7OK_succ (lo := 1026) (n := 1) r_1026 (r_1027))

end BeatAvg.K.K7
