import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_54 : treeK7OK l7 54 = true := by decide +kernel

theorem n_54 : (recAt l7 54).2.2.2.length ≤ 192 := by decide +kernel

theorem v_54_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 0 16 = true := by decide +kernel

theorem v_54_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 16 16 = true := by decide +kernel

theorem v_54_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 32 16 = true := by decide +kernel

theorem v_54_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 48 16 = true := by decide +kernel

theorem v_54_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 64 16 = true := by decide +kernel

theorem v_54_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 80 16 = true := by decide +kernel

theorem v_54_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 96 16 = true := by decide +kernel

theorem v_54_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 112 16 = true := by decide +kernel

theorem v_54_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 128 16 = true := by decide +kernel

theorem v_54_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 144 16 = true := by decide +kernel

theorem v_54_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 160 16 = true := by decide +kernel

theorem v_54_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 54 176 16 = true := by decide +kernel

theorem r_54 : recsK7OK T qscale den6 d14 lamN lamD l7 54 1 = true := recK7_of (n := 192) t_54 n_54 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_54_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_54_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_54_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_54_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_54_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_54_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_54_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_54_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_54_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_54_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_54_10 (v_54_11))))))))))))

theorem t_55 : treeK7OK l7 55 = true := by decide +kernel

theorem n_55 : (recAt l7 55).2.2.2.length ≤ 144 := by decide +kernel

theorem v_55_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 0 16 = true := by decide +kernel

theorem v_55_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 16 16 = true := by decide +kernel

theorem v_55_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 32 16 = true := by decide +kernel

theorem v_55_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 48 16 = true := by decide +kernel

theorem v_55_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 64 16 = true := by decide +kernel

theorem v_55_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 80 16 = true := by decide +kernel

theorem v_55_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 96 16 = true := by decide +kernel

theorem v_55_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 112 16 = true := by decide +kernel

theorem v_55_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 55 128 16 = true := by decide +kernel

theorem r_55 : recsK7OK T qscale den6 d14 lamN lamD l7 55 1 = true := recK7_of (n := 144) t_55 n_55 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_55_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_55_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_55_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_55_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_55_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_55_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_55_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_55_7 (v_55_8)))))))))

theorem t_56 : treeK7OK l7 56 = true := by decide +kernel

theorem n_56 : (recAt l7 56).2.2.2.length ≤ 96 := by decide +kernel

theorem v_56_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 56 0 16 = true := by decide +kernel

theorem v_56_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 56 16 16 = true := by decide +kernel

theorem v_56_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 56 32 16 = true := by decide +kernel

theorem v_56_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 56 48 16 = true := by decide +kernel

theorem v_56_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 56 64 16 = true := by decide +kernel

theorem v_56_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 56 80 16 = true := by decide +kernel

theorem r_56 : recsK7OK T qscale den6 d14 lamN lamD l7 56 1 = true := recK7_of (n := 96) t_56 n_56 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_56_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_56_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_56_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_56_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_56_4 (v_56_5))))))

theorem rs_54 : recsK7OK T qscale den6 d14 lamN lamD l7 54 3 = true := recsK7OK_succ (lo := 54) (n := 2) r_54 (recsK7OK_succ (lo := 55) (n := 1) r_55 (r_56))

end BeatAvg.K.K7
