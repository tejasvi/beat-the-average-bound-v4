import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1022 : treeK7OK l7 1022 = true := by decide +kernel

theorem n_1022 : (recAt l7 1022).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1022_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 0 16 = true := by decide +kernel

theorem v_1022_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 16 16 = true := by decide +kernel

theorem v_1022_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 32 16 = true := by decide +kernel

theorem v_1022_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 48 16 = true := by decide +kernel

theorem v_1022_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 64 16 = true := by decide +kernel

theorem v_1022_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 80 16 = true := by decide +kernel

theorem v_1022_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 96 16 = true := by decide +kernel

theorem v_1022_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 112 16 = true := by decide +kernel

theorem v_1022_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1022 128 16 = true := by decide +kernel

theorem r_1022 : recsK7OK T qscale den6 d14 lamN lamD l7 1022 1 = true := recK7_of (n := 144) t_1022 n_1022 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1022_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1022_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1022_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1022_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1022_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1022_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1022_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1022_7 (v_1022_8)))))))))

theorem t_1023 : treeK7OK l7 1023 = true := by decide +kernel

theorem n_1023 : (recAt l7 1023).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1023_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1023 0 16 = true := by decide +kernel

theorem v_1023_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1023 16 16 = true := by decide +kernel

theorem v_1023_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1023 32 16 = true := by decide +kernel

theorem v_1023_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1023 48 16 = true := by decide +kernel

theorem v_1023_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1023 64 16 = true := by decide +kernel

theorem v_1023_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1023 80 16 = true := by decide +kernel

theorem v_1023_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1023 96 16 = true := by decide +kernel

theorem r_1023 : recsK7OK T qscale den6 d14 lamN lamD l7 1023 1 = true := recK7_of (n := 112) t_1023 n_1023 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1023_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1023_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1023_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1023_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1023_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1023_5 (v_1023_6)))))))

theorem t_1024 : treeK7OK l7 1024 = true := by decide +kernel

theorem n_1024 : (recAt l7 1024).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1024_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1024 0 16 = true := by decide +kernel

theorem v_1024_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1024 16 16 = true := by decide +kernel

theorem v_1024_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1024 32 16 = true := by decide +kernel

theorem v_1024_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1024 48 16 = true := by decide +kernel

theorem v_1024_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1024 64 16 = true := by decide +kernel

theorem r_1024 : recsK7OK T qscale den6 d14 lamN lamD l7 1024 1 = true := recK7_of (n := 80) t_1024 n_1024 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1024_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1024_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1024_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1024_3 (v_1024_4)))))

theorem rs_1022 : recsK7OK T qscale den6 d14 lamN lamD l7 1022 3 = true := recsK7OK_succ (lo := 1022) (n := 2) r_1022 (recsK7OK_succ (lo := 1023) (n := 1) r_1023 (r_1024))

end BeatAvg.K.K7
