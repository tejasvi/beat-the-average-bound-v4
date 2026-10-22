import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_57 : treeK7OK l7 57 = true := by decide +kernel

theorem n_57 : (recAt l7 57).2.2.2.length ≤ 80 := by decide +kernel

theorem v_57_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 57 0 16 = true := by decide +kernel

theorem v_57_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 57 16 16 = true := by decide +kernel

theorem v_57_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 57 32 16 = true := by decide +kernel

theorem v_57_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 57 48 16 = true := by decide +kernel

theorem v_57_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 57 64 16 = true := by decide +kernel

theorem r_57 : recsK7OK T qscale den6 d14 lamN lamD l7 57 1 = true := recK7_of (n := 80) t_57 n_57 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_57_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_57_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_57_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_57_3 (v_57_4)))))

theorem t_58 : treeK7OK l7 58 = true := by decide +kernel

theorem n_58 : (recAt l7 58).2.2.2.length ≤ 64 := by decide +kernel

theorem v_58_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 58 0 16 = true := by decide +kernel

theorem v_58_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 58 16 16 = true := by decide +kernel

theorem v_58_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 58 32 16 = true := by decide +kernel

theorem v_58_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 58 48 16 = true := by decide +kernel

theorem r_58 : recsK7OK T qscale den6 d14 lamN lamD l7 58 1 = true := recK7_of (n := 64) t_58 n_58 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_58_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_58_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_58_2 (v_58_3))))

theorem t_59 : treeK7OK l7 59 = true := by decide +kernel

theorem n_59 : (recAt l7 59).2.2.2.length ≤ 144 := by decide +kernel

theorem v_59_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 0 16 = true := by decide +kernel

theorem v_59_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 16 16 = true := by decide +kernel

theorem v_59_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 32 16 = true := by decide +kernel

theorem v_59_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 48 16 = true := by decide +kernel

theorem v_59_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 64 16 = true := by decide +kernel

theorem v_59_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 80 16 = true := by decide +kernel

theorem v_59_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 96 16 = true := by decide +kernel

theorem v_59_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 112 16 = true := by decide +kernel

theorem v_59_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 59 128 16 = true := by decide +kernel

theorem r_59 : recsK7OK T qscale den6 d14 lamN lamD l7 59 1 = true := recK7_of (n := 144) t_59 n_59 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_59_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_59_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_59_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_59_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_59_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_59_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_59_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_59_7 (v_59_8)))))))))

theorem t_60 : treeK7OK l7 60 = true := by decide +kernel

theorem n_60 : (recAt l7 60).2.2.2.length ≤ 96 := by decide +kernel

theorem v_60_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 60 0 16 = true := by decide +kernel

theorem v_60_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 60 16 16 = true := by decide +kernel

theorem v_60_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 60 32 16 = true := by decide +kernel

theorem v_60_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 60 48 16 = true := by decide +kernel

theorem v_60_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 60 64 16 = true := by decide +kernel

theorem v_60_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 60 80 16 = true := by decide +kernel

theorem r_60 : recsK7OK T qscale den6 d14 lamN lamD l7 60 1 = true := recK7_of (n := 96) t_60 n_60 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_60_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_60_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_60_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_60_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_60_4 (v_60_5))))))

theorem rs_57 : recsK7OK T qscale den6 d14 lamN lamD l7 57 4 = true := recsK7OK_succ (lo := 57) (n := 3) r_57 (recsK7OK_succ (lo := 58) (n := 2) r_58 (recsK7OK_succ (lo := 59) (n := 1) r_59 (r_60)))

end BeatAvg.K.K7
