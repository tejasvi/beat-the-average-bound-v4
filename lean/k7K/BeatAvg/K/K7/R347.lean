import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1035 : treeK7OK l7 1035 = true := by decide +kernel

theorem n_1035 : (recAt l7 1035).2.2.2.length ≤ 192 := by decide +kernel

theorem v_1035_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 0 16 = true := by decide +kernel

theorem v_1035_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 16 16 = true := by decide +kernel

theorem v_1035_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 32 16 = true := by decide +kernel

theorem v_1035_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 48 16 = true := by decide +kernel

theorem v_1035_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 64 16 = true := by decide +kernel

theorem v_1035_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 80 16 = true := by decide +kernel

theorem v_1035_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 96 16 = true := by decide +kernel

theorem v_1035_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 112 16 = true := by decide +kernel

theorem v_1035_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 128 16 = true := by decide +kernel

theorem v_1035_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 144 16 = true := by decide +kernel

theorem v_1035_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 160 16 = true := by decide +kernel

theorem v_1035_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 1035 176 16 = true := by decide +kernel

theorem r_1035 : recsK7OK T qscale den6 d14 lamN lamD l7 1035 1 = true := recK7_of (n := 192) t_1035 n_1035 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_1035_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_1035_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_1035_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_1035_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_1035_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_1035_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_1035_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_1035_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_1035_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_1035_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_1035_10 (v_1035_11))))))))))))

theorem t_1036 : treeK7OK l7 1036 = true := by decide +kernel

theorem n_1036 : (recAt l7 1036).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1036_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1036 0 16 = true := by decide +kernel

theorem v_1036_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1036 16 16 = true := by decide +kernel

theorem v_1036_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1036 32 16 = true := by decide +kernel

theorem v_1036_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1036 48 16 = true := by decide +kernel

theorem v_1036_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1036 64 16 = true := by decide +kernel

theorem r_1036 : recsK7OK T qscale den6 d14 lamN lamD l7 1036 1 = true := recK7_of (n := 80) t_1036 n_1036 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1036_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1036_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1036_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1036_3 (v_1036_4)))))

theorem t_1037 : treeK7OK l7 1037 = true := by decide +kernel

theorem n_1037 : (recAt l7 1037).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1037_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1037 0 16 = true := by decide +kernel

theorem v_1037_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1037 16 16 = true := by decide +kernel

theorem v_1037_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1037 32 16 = true := by decide +kernel

theorem v_1037_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1037 48 16 = true := by decide +kernel

theorem v_1037_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1037 64 16 = true := by decide +kernel

theorem v_1037_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1037 80 16 = true := by decide +kernel

theorem r_1037 : recsK7OK T qscale den6 d14 lamN lamD l7 1037 1 = true := recK7_of (n := 96) t_1037 n_1037 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1037_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1037_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1037_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1037_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1037_4 (v_1037_5))))))

theorem rs_1035 : recsK7OK T qscale den6 d14 lamN lamD l7 1035 3 = true := recsK7OK_succ (lo := 1035) (n := 2) r_1035 (recsK7OK_succ (lo := 1036) (n := 1) r_1036 (r_1037))

end BeatAvg.K.K7
