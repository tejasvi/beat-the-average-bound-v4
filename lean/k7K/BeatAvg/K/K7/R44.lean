import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_157 : treeK7OK l7 157 = true := by decide +kernel

theorem n_157 : (recAt l7 157).2.2.2.length ≤ 176 := by decide +kernel

theorem v_157_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 0 16 = true := by decide +kernel

theorem v_157_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 16 16 = true := by decide +kernel

theorem v_157_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 32 16 = true := by decide +kernel

theorem v_157_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 48 16 = true := by decide +kernel

theorem v_157_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 64 16 = true := by decide +kernel

theorem v_157_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 80 16 = true := by decide +kernel

theorem v_157_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 96 16 = true := by decide +kernel

theorem v_157_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 112 16 = true := by decide +kernel

theorem v_157_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 128 16 = true := by decide +kernel

theorem v_157_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 144 16 = true := by decide +kernel

theorem v_157_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 157 160 16 = true := by decide +kernel

theorem r_157 : recsK7OK T qscale den6 d14 lamN lamD l7 157 1 = true := recK7_of (n := 176) t_157 n_157 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_157_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_157_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_157_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_157_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_157_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_157_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_157_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_157_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_157_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_157_9 (v_157_10)))))))))))

theorem t_158 : treeK7OK l7 158 = true := by decide +kernel

theorem n_158 : (recAt l7 158).2.2.2.length ≤ 128 := by decide +kernel

theorem v_158_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 0 16 = true := by decide +kernel

theorem v_158_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 16 16 = true := by decide +kernel

theorem v_158_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 32 16 = true := by decide +kernel

theorem v_158_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 48 16 = true := by decide +kernel

theorem v_158_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 64 16 = true := by decide +kernel

theorem v_158_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 80 16 = true := by decide +kernel

theorem v_158_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 96 16 = true := by decide +kernel

theorem v_158_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 158 112 16 = true := by decide +kernel

theorem r_158 : recsK7OK T qscale den6 d14 lamN lamD l7 158 1 = true := recK7_of (n := 128) t_158 n_158 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_158_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_158_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_158_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_158_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_158_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_158_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_158_6 (v_158_7))))))))

theorem rs_157 : recsK7OK T qscale den6 d14 lamN lamD l7 157 2 = true := recsK7OK_succ (lo := 157) (n := 1) r_157 (r_158)

end BeatAvg.K.K7
