import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_995 : treeK7OK l7 995 = true := by decide +kernel

theorem n_995 : (recAt l7 995).2.2.2.length ≤ 176 := by decide +kernel

theorem v_995_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 0 16 = true := by decide +kernel

theorem v_995_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 16 16 = true := by decide +kernel

theorem v_995_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 32 16 = true := by decide +kernel

theorem v_995_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 48 16 = true := by decide +kernel

theorem v_995_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 64 16 = true := by decide +kernel

theorem v_995_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 80 16 = true := by decide +kernel

theorem v_995_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 96 16 = true := by decide +kernel

theorem v_995_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 112 16 = true := by decide +kernel

theorem v_995_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 128 16 = true := by decide +kernel

theorem v_995_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 144 16 = true := by decide +kernel

theorem v_995_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 995 160 16 = true := by decide +kernel

theorem r_995 : recsK7OK T qscale den6 d14 lamN lamD l7 995 1 = true := recK7_of (n := 176) t_995 n_995 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_995_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_995_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_995_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_995_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_995_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_995_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_995_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_995_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_995_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_995_9 (v_995_10)))))))))))

theorem t_996 : treeK7OK l7 996 = true := by decide +kernel

theorem n_996 : (recAt l7 996).2.2.2.length ≤ 176 := by decide +kernel

theorem v_996_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 0 16 = true := by decide +kernel

theorem v_996_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 16 16 = true := by decide +kernel

theorem v_996_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 32 16 = true := by decide +kernel

theorem v_996_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 48 16 = true := by decide +kernel

theorem v_996_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 64 16 = true := by decide +kernel

theorem v_996_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 80 16 = true := by decide +kernel

theorem v_996_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 96 16 = true := by decide +kernel

theorem v_996_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 112 16 = true := by decide +kernel

theorem v_996_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 128 16 = true := by decide +kernel

theorem v_996_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 144 16 = true := by decide +kernel

theorem v_996_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 996 160 16 = true := by decide +kernel

theorem r_996 : recsK7OK T qscale den6 d14 lamN lamD l7 996 1 = true := recK7_of (n := 176) t_996 n_996 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_996_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_996_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_996_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_996_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_996_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_996_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_996_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_996_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_996_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_996_9 (v_996_10)))))))))))

theorem rs_995 : recsK7OK T qscale den6 d14 lamN lamD l7 995 2 = true := recsK7OK_succ (lo := 995) (n := 1) r_995 (r_996)

end BeatAvg.K.K7
