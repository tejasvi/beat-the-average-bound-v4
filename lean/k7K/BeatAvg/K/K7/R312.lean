import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_952 : treeK7OK l7 952 = true := by decide +kernel

theorem n_952 : (recAt l7 952).2.2.2.length ≤ 208 := by decide +kernel

theorem v_952_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 0 16 = true := by decide +kernel

theorem v_952_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 16 16 = true := by decide +kernel

theorem v_952_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 32 16 = true := by decide +kernel

theorem v_952_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 48 16 = true := by decide +kernel

theorem v_952_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 64 16 = true := by decide +kernel

theorem v_952_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 80 16 = true := by decide +kernel

theorem v_952_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 96 16 = true := by decide +kernel

theorem v_952_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 112 16 = true := by decide +kernel

theorem v_952_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 128 16 = true := by decide +kernel

theorem v_952_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 144 16 = true := by decide +kernel

theorem v_952_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 160 16 = true := by decide +kernel

theorem v_952_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 176 16 = true := by decide +kernel

theorem v_952_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 952 192 16 = true := by decide +kernel

theorem r_952 : recsK7OK T qscale den6 d14 lamN lamD l7 952 1 = true := recK7_of (n := 208) t_952 n_952 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_952_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_952_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_952_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_952_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_952_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_952_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_952_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_952_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_952_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_952_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_952_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_952_11 (v_952_12)))))))))))))

theorem t_953 : treeK7OK l7 953 = true := by decide +kernel

theorem n_953 : (recAt l7 953).2.2.2.length ≤ 128 := by decide +kernel

theorem v_953_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 0 16 = true := by decide +kernel

theorem v_953_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 16 16 = true := by decide +kernel

theorem v_953_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 32 16 = true := by decide +kernel

theorem v_953_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 48 16 = true := by decide +kernel

theorem v_953_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 64 16 = true := by decide +kernel

theorem v_953_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 80 16 = true := by decide +kernel

theorem v_953_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 96 16 = true := by decide +kernel

theorem v_953_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 953 112 16 = true := by decide +kernel

theorem r_953 : recsK7OK T qscale den6 d14 lamN lamD l7 953 1 = true := recK7_of (n := 128) t_953 n_953 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_953_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_953_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_953_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_953_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_953_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_953_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_953_6 (v_953_7))))))))

theorem t_954 : treeK7OK l7 954 = true := by decide +kernel

theorem n_954 : (recAt l7 954).2.2.2.length ≤ 48 := by decide +kernel

theorem v_954_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 954 0 16 = true := by decide +kernel

theorem v_954_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 954 16 16 = true := by decide +kernel

theorem v_954_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 954 32 16 = true := by decide +kernel

theorem r_954 : recsK7OK T qscale den6 d14 lamN lamD l7 954 1 = true := recK7_of (n := 48) t_954 n_954 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_954_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_954_1 (v_954_2)))

theorem rs_952 : recsK7OK T qscale den6 d14 lamN lamD l7 952 3 = true := recsK7OK_succ (lo := 952) (n := 2) r_952 (recsK7OK_succ (lo := 953) (n := 1) r_953 (r_954))

end BeatAvg.K.K7
