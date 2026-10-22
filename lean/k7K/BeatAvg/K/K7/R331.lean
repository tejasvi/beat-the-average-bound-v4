import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_989 : treeK7OK l7 989 = true := by decide +kernel

theorem n_989 : (recAt l7 989).2.2.2.length ≤ 192 := by decide +kernel

theorem v_989_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 0 16 = true := by decide +kernel

theorem v_989_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 16 16 = true := by decide +kernel

theorem v_989_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 32 16 = true := by decide +kernel

theorem v_989_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 48 16 = true := by decide +kernel

theorem v_989_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 64 16 = true := by decide +kernel

theorem v_989_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 80 16 = true := by decide +kernel

theorem v_989_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 96 16 = true := by decide +kernel

theorem v_989_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 112 16 = true := by decide +kernel

theorem v_989_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 128 16 = true := by decide +kernel

theorem v_989_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 144 16 = true := by decide +kernel

theorem v_989_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 160 16 = true := by decide +kernel

theorem v_989_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 989 176 16 = true := by decide +kernel

theorem r_989 : recsK7OK T qscale den6 d14 lamN lamD l7 989 1 = true := recK7_of (n := 192) t_989 n_989 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_989_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_989_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_989_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_989_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_989_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_989_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_989_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_989_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_989_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_989_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_989_10 (v_989_11))))))))))))

theorem t_990 : treeK7OK l7 990 = true := by decide +kernel

theorem n_990 : (recAt l7 990).2.2.2.length ≤ 176 := by decide +kernel

theorem v_990_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 0 16 = true := by decide +kernel

theorem v_990_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 16 16 = true := by decide +kernel

theorem v_990_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 32 16 = true := by decide +kernel

theorem v_990_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 48 16 = true := by decide +kernel

theorem v_990_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 64 16 = true := by decide +kernel

theorem v_990_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 80 16 = true := by decide +kernel

theorem v_990_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 96 16 = true := by decide +kernel

theorem v_990_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 112 16 = true := by decide +kernel

theorem v_990_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 128 16 = true := by decide +kernel

theorem v_990_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 144 16 = true := by decide +kernel

theorem v_990_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 990 160 16 = true := by decide +kernel

theorem r_990 : recsK7OK T qscale den6 d14 lamN lamD l7 990 1 = true := recK7_of (n := 176) t_990 n_990 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_990_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_990_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_990_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_990_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_990_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_990_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_990_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_990_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_990_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_990_9 (v_990_10)))))))))))

theorem rs_989 : recsK7OK T qscale den6 d14 lamN lamD l7 989 2 = true := recsK7OK_succ (lo := 989) (n := 1) r_989 (r_990)

end BeatAvg.K.K7
