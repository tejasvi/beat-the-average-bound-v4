import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_799 : treeK7OK l7 799 = true := by decide +kernel

theorem n_799 : (recAt l7 799).2.2.2.length ≤ 32 := by decide +kernel

theorem v_799_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 799 0 16 = true := by decide +kernel

theorem v_799_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 799 16 16 = true := by decide +kernel

theorem r_799 : recsK7OK T qscale den6 d14 lamN lamD l7 799 1 = true := recK7_of (n := 32) t_799 n_799 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_799_0 (v_799_1))

theorem t_800 : treeK7OK l7 800 = true := by decide +kernel

theorem n_800 : (recAt l7 800).2.2.2.length ≤ 64 := by decide +kernel

theorem v_800_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 800 0 16 = true := by decide +kernel

theorem v_800_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 800 16 16 = true := by decide +kernel

theorem v_800_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 800 32 16 = true := by decide +kernel

theorem v_800_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 800 48 16 = true := by decide +kernel

theorem r_800 : recsK7OK T qscale den6 d14 lamN lamD l7 800 1 = true := recK7_of (n := 64) t_800 n_800 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_800_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_800_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_800_2 (v_800_3))))

theorem t_801 : treeK7OK l7 801 = true := by decide +kernel

theorem n_801 : (recAt l7 801).2.2.2.length ≤ 224 := by decide +kernel

theorem v_801_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 0 16 = true := by decide +kernel

theorem v_801_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 16 16 = true := by decide +kernel

theorem v_801_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 32 16 = true := by decide +kernel

theorem v_801_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 48 16 = true := by decide +kernel

theorem v_801_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 64 16 = true := by decide +kernel

theorem v_801_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 80 16 = true := by decide +kernel

theorem v_801_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 96 16 = true := by decide +kernel

theorem v_801_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 112 16 = true := by decide +kernel

theorem v_801_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 128 16 = true := by decide +kernel

theorem v_801_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 144 16 = true := by decide +kernel

theorem v_801_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 160 16 = true := by decide +kernel

theorem v_801_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 176 16 = true := by decide +kernel

theorem v_801_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 192 16 = true := by decide +kernel

theorem v_801_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 801 208 16 = true := by decide +kernel

theorem r_801 : recsK7OK T qscale den6 d14 lamN lamD l7 801 1 = true := recK7_of (n := 224) t_801 n_801 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_801_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_801_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_801_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_801_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_801_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_801_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_801_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_801_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_801_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_801_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_801_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_801_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_801_12 (v_801_13))))))))))))))

theorem rs_799 : recsK7OK T qscale den6 d14 lamN lamD l7 799 3 = true := recsK7OK_succ (lo := 799) (n := 2) r_799 (recsK7OK_succ (lo := 800) (n := 1) r_800 (r_801))

end BeatAvg.K.K7
