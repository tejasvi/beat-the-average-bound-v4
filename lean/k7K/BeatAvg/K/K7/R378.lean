import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1151 : treeK7OK l7 1151 = true := by decide +kernel

theorem n_1151 : (recAt l7 1151).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1151_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 0 16 = true := by decide +kernel

theorem v_1151_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 16 16 = true := by decide +kernel

theorem v_1151_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 32 16 = true := by decide +kernel

theorem v_1151_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 48 16 = true := by decide +kernel

theorem v_1151_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 64 16 = true := by decide +kernel

theorem v_1151_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 80 16 = true := by decide +kernel

theorem v_1151_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 96 16 = true := by decide +kernel

theorem v_1151_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1151 112 16 = true := by decide +kernel

theorem r_1151 : recsK7OK T qscale den6 d14 lamN lamD l7 1151 1 = true := recK7_of (n := 128) t_1151 n_1151 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1151_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1151_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1151_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1151_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1151_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1151_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1151_6 (v_1151_7))))))))

theorem t_1152 : treeK7OK l7 1152 = true := by decide +kernel

theorem n_1152 : (recAt l7 1152).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1152_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1152 0 16 = true := by decide +kernel

theorem v_1152_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1152 16 16 = true := by decide +kernel

theorem v_1152_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1152 32 16 = true := by decide +kernel

theorem v_1152_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1152 48 16 = true := by decide +kernel

theorem v_1152_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1152 64 16 = true := by decide +kernel

theorem v_1152_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1152 80 16 = true := by decide +kernel

theorem r_1152 : recsK7OK T qscale den6 d14 lamN lamD l7 1152 1 = true := recK7_of (n := 96) t_1152 n_1152 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1152_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1152_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1152_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1152_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1152_4 (v_1152_5))))))

theorem t_1153 : treeK7OK l7 1153 = true := by decide +kernel

theorem n_1153 : (recAt l7 1153).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1153_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 0 16 = true := by decide +kernel

theorem v_1153_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 16 16 = true := by decide +kernel

theorem v_1153_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 32 16 = true := by decide +kernel

theorem v_1153_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 48 16 = true := by decide +kernel

theorem v_1153_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 64 16 = true := by decide +kernel

theorem v_1153_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 80 16 = true := by decide +kernel

theorem v_1153_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 96 16 = true := by decide +kernel

theorem v_1153_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1153 112 16 = true := by decide +kernel

theorem r_1153 : recsK7OK T qscale den6 d14 lamN lamD l7 1153 1 = true := recK7_of (n := 128) t_1153 n_1153 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1153_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1153_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1153_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1153_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1153_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1153_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1153_6 (v_1153_7))))))))

theorem rs_1151 : recsK7OK T qscale den6 d14 lamN lamD l7 1151 3 = true := recsK7OK_succ (lo := 1151) (n := 2) r_1151 (recsK7OK_succ (lo := 1152) (n := 1) r_1152 (r_1153))

end BeatAvg.K.K7
