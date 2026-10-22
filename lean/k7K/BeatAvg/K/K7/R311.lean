import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_949 : treeK7OK l7 949 = true := by decide +kernel

theorem n_949 : (recAt l7 949).2.2.2.length ≤ 160 := by decide +kernel

theorem v_949_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 0 16 = true := by decide +kernel

theorem v_949_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 16 16 = true := by decide +kernel

theorem v_949_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 32 16 = true := by decide +kernel

theorem v_949_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 48 16 = true := by decide +kernel

theorem v_949_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 64 16 = true := by decide +kernel

theorem v_949_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 80 16 = true := by decide +kernel

theorem v_949_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 96 16 = true := by decide +kernel

theorem v_949_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 112 16 = true := by decide +kernel

theorem v_949_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 128 16 = true := by decide +kernel

theorem v_949_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 949 144 16 = true := by decide +kernel

theorem r_949 : recsK7OK T qscale den6 d14 lamN lamD l7 949 1 = true := recK7_of (n := 160) t_949 n_949 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_949_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_949_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_949_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_949_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_949_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_949_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_949_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_949_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_949_8 (v_949_9))))))))))

theorem t_950 : treeK7OK l7 950 = true := by decide +kernel

theorem n_950 : (recAt l7 950).2.2.2.length ≤ 128 := by decide +kernel

theorem v_950_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 0 16 = true := by decide +kernel

theorem v_950_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 16 16 = true := by decide +kernel

theorem v_950_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 32 16 = true := by decide +kernel

theorem v_950_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 48 16 = true := by decide +kernel

theorem v_950_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 64 16 = true := by decide +kernel

theorem v_950_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 80 16 = true := by decide +kernel

theorem v_950_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 96 16 = true := by decide +kernel

theorem v_950_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 950 112 16 = true := by decide +kernel

theorem r_950 : recsK7OK T qscale den6 d14 lamN lamD l7 950 1 = true := recK7_of (n := 128) t_950 n_950 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_950_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_950_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_950_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_950_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_950_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_950_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_950_6 (v_950_7))))))))

theorem t_951 : treeK7OK l7 951 = true := by decide +kernel

theorem n_951 : (recAt l7 951).2.2.2.length ≤ 144 := by decide +kernel

theorem v_951_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 0 16 = true := by decide +kernel

theorem v_951_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 16 16 = true := by decide +kernel

theorem v_951_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 32 16 = true := by decide +kernel

theorem v_951_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 48 16 = true := by decide +kernel

theorem v_951_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 64 16 = true := by decide +kernel

theorem v_951_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 80 16 = true := by decide +kernel

theorem v_951_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 96 16 = true := by decide +kernel

theorem v_951_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 112 16 = true := by decide +kernel

theorem v_951_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 951 128 16 = true := by decide +kernel

theorem r_951 : recsK7OK T qscale den6 d14 lamN lamD l7 951 1 = true := recK7_of (n := 144) t_951 n_951 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_951_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_951_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_951_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_951_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_951_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_951_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_951_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_951_7 (v_951_8)))))))))

theorem rs_949 : recsK7OK T qscale den6 d14 lamN lamD l7 949 3 = true := recsK7OK_succ (lo := 949) (n := 2) r_949 (recsK7OK_succ (lo := 950) (n := 1) r_950 (r_951))

end BeatAvg.K.K7
