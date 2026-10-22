import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1044 : treeK7OK l7 1044 = true := by decide +kernel

theorem n_1044 : (recAt l7 1044).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1044_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1044 0 16 = true := by decide +kernel

theorem v_1044_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1044 16 16 = true := by decide +kernel

theorem v_1044_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1044 32 16 = true := by decide +kernel

theorem v_1044_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1044 48 16 = true := by decide +kernel

theorem v_1044_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1044 64 16 = true := by decide +kernel

theorem v_1044_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1044 80 16 = true := by decide +kernel

theorem v_1044_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1044 96 16 = true := by decide +kernel

theorem r_1044 : recsK7OK T qscale den6 d14 lamN lamD l7 1044 1 = true := recK7_of (n := 112) t_1044 n_1044 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1044_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1044_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1044_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1044_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1044_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1044_5 (v_1044_6)))))))

theorem t_1045 : treeK7OK l7 1045 = true := by decide +kernel

theorem n_1045 : (recAt l7 1045).2.2.2.length ≤ 80 := by decide +kernel

theorem v_1045_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1045 0 16 = true := by decide +kernel

theorem v_1045_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1045 16 16 = true := by decide +kernel

theorem v_1045_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1045 32 16 = true := by decide +kernel

theorem v_1045_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1045 48 16 = true := by decide +kernel

theorem v_1045_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1045 64 16 = true := by decide +kernel

theorem r_1045 : recsK7OK T qscale den6 d14 lamN lamD l7 1045 1 = true := recK7_of (n := 80) t_1045 n_1045 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_1045_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_1045_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_1045_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_1045_3 (v_1045_4)))))

theorem t_1046 : treeK7OK l7 1046 = true := by decide +kernel

theorem n_1046 : (recAt l7 1046).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1046_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1046 0 16 = true := by decide +kernel

theorem v_1046_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1046 16 16 = true := by decide +kernel

theorem v_1046_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1046 32 16 = true := by decide +kernel

theorem v_1046_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1046 48 16 = true := by decide +kernel

theorem v_1046_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1046 64 16 = true := by decide +kernel

theorem v_1046_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1046 80 16 = true := by decide +kernel

theorem v_1046_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1046 96 16 = true := by decide +kernel

theorem r_1046 : recsK7OK T qscale den6 d14 lamN lamD l7 1046 1 = true := recK7_of (n := 112) t_1046 n_1046 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1046_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1046_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1046_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1046_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1046_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1046_5 (v_1046_6)))))))

theorem t_1047 : treeK7OK l7 1047 = true := by decide +kernel

theorem n_1047 : (recAt l7 1047).2.2.2.length ≤ 96 := by decide +kernel

theorem v_1047_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1047 0 16 = true := by decide +kernel

theorem v_1047_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1047 16 16 = true := by decide +kernel

theorem v_1047_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1047 32 16 = true := by decide +kernel

theorem v_1047_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1047 48 16 = true := by decide +kernel

theorem v_1047_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1047 64 16 = true := by decide +kernel

theorem v_1047_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1047 80 16 = true := by decide +kernel

theorem r_1047 : recsK7OK T qscale den6 d14 lamN lamD l7 1047 1 = true := recK7_of (n := 96) t_1047 n_1047 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_1047_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_1047_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_1047_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_1047_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_1047_4 (v_1047_5))))))

theorem t_1048 : treeK7OK l7 1048 = true := by decide +kernel

theorem n_1048 : (recAt l7 1048).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1048_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1048 0 16 = true := by decide +kernel

theorem v_1048_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1048 16 16 = true := by decide +kernel

theorem v_1048_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1048 32 16 = true := by decide +kernel

theorem r_1048 : recsK7OK T qscale den6 d14 lamN lamD l7 1048 1 = true := recK7_of (n := 48) t_1048 n_1048 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1048_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1048_1 (v_1048_2)))

theorem rs_1044 : recsK7OK T qscale den6 d14 lamN lamD l7 1044 5 = true := recsK7OK_succ (lo := 1044) (n := 4) r_1044 (recsK7OK_succ (lo := 1045) (n := 3) r_1045 (recsK7OK_succ (lo := 1046) (n := 2) r_1046 (recsK7OK_succ (lo := 1047) (n := 1) r_1047 (r_1048))))

end BeatAvg.K.K7
