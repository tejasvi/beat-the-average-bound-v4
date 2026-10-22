import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_632 : treeK7OK l7 632 = true := by decide +kernel

theorem n_632 : (recAt l7 632).2.2.2.length ≤ 176 := by decide +kernel

theorem v_632_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 0 16 = true := by decide +kernel

theorem v_632_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 16 16 = true := by decide +kernel

theorem v_632_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 32 16 = true := by decide +kernel

theorem v_632_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 48 16 = true := by decide +kernel

theorem v_632_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 64 16 = true := by decide +kernel

theorem v_632_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 80 16 = true := by decide +kernel

theorem v_632_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 96 16 = true := by decide +kernel

theorem v_632_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 112 16 = true := by decide +kernel

theorem v_632_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 128 16 = true := by decide +kernel

theorem v_632_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 144 16 = true := by decide +kernel

theorem v_632_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 632 160 16 = true := by decide +kernel

theorem r_632 : recsK7OK T qscale den6 d14 lamN lamD l7 632 1 = true := recK7_of (n := 176) t_632 n_632 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_632_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_632_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_632_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_632_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_632_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_632_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_632_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_632_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_632_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_632_9 (v_632_10)))))))))))

theorem t_633 : treeK7OK l7 633 = true := by decide +kernel

theorem n_633 : (recAt l7 633).2.2.2.length ≤ 176 := by decide +kernel

theorem v_633_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 0 16 = true := by decide +kernel

theorem v_633_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 16 16 = true := by decide +kernel

theorem v_633_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 32 16 = true := by decide +kernel

theorem v_633_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 48 16 = true := by decide +kernel

theorem v_633_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 64 16 = true := by decide +kernel

theorem v_633_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 80 16 = true := by decide +kernel

theorem v_633_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 96 16 = true := by decide +kernel

theorem v_633_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 112 16 = true := by decide +kernel

theorem v_633_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 128 16 = true := by decide +kernel

theorem v_633_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 144 16 = true := by decide +kernel

theorem v_633_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 633 160 16 = true := by decide +kernel

theorem r_633 : recsK7OK T qscale den6 d14 lamN lamD l7 633 1 = true := recK7_of (n := 176) t_633 n_633 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_633_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_633_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_633_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_633_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_633_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_633_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_633_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_633_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_633_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_633_9 (v_633_10)))))))))))

theorem rs_632 : recsK7OK T qscale den6 d14 lamN lamD l7 632 2 = true := recsK7OK_succ (lo := 632) (n := 1) r_632 (r_633)

end BeatAvg.K.K7
