import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_987 : treeK7OK l7 987 = true := by decide +kernel

theorem n_987 : (recAt l7 987).2.2.2.length ≤ 208 := by decide +kernel

theorem v_987_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 0 16 = true := by decide +kernel

theorem v_987_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 16 16 = true := by decide +kernel

theorem v_987_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 32 16 = true := by decide +kernel

theorem v_987_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 48 16 = true := by decide +kernel

theorem v_987_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 64 16 = true := by decide +kernel

theorem v_987_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 80 16 = true := by decide +kernel

theorem v_987_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 96 16 = true := by decide +kernel

theorem v_987_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 112 16 = true := by decide +kernel

theorem v_987_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 128 16 = true := by decide +kernel

theorem v_987_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 144 16 = true := by decide +kernel

theorem v_987_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 160 16 = true := by decide +kernel

theorem v_987_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 176 16 = true := by decide +kernel

theorem v_987_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 987 192 16 = true := by decide +kernel

theorem r_987 : recsK7OK T qscale den6 d14 lamN lamD l7 987 1 = true := recK7_of (n := 208) t_987 n_987 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_987_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_987_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_987_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_987_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_987_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_987_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_987_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_987_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_987_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_987_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_987_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_987_11 (v_987_12)))))))))))))

theorem t_988 : treeK7OK l7 988 = true := by decide +kernel

theorem n_988 : (recAt l7 988).2.2.2.length ≤ 80 := by decide +kernel

theorem v_988_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 988 0 16 = true := by decide +kernel

theorem v_988_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 988 16 16 = true := by decide +kernel

theorem v_988_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 988 32 16 = true := by decide +kernel

theorem v_988_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 988 48 16 = true := by decide +kernel

theorem v_988_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 988 64 16 = true := by decide +kernel

theorem r_988 : recsK7OK T qscale den6 d14 lamN lamD l7 988 1 = true := recK7_of (n := 80) t_988 n_988 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_988_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_988_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_988_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_988_3 (v_988_4)))))

theorem rs_987 : recsK7OK T qscale den6 d14 lamN lamD l7 987 2 = true := recsK7OK_succ (lo := 987) (n := 1) r_987 (r_988)

end BeatAvg.K.K7
