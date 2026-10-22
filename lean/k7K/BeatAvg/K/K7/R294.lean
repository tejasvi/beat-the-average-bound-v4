import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_913 : treeK7OK l7 913 = true := by decide +kernel

theorem n_913 : (recAt l7 913).2.2.2.length ≤ 112 := by decide +kernel

theorem v_913_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 913 0 16 = true := by decide +kernel

theorem v_913_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 913 16 16 = true := by decide +kernel

theorem v_913_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 913 32 16 = true := by decide +kernel

theorem v_913_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 913 48 16 = true := by decide +kernel

theorem v_913_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 913 64 16 = true := by decide +kernel

theorem v_913_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 913 80 16 = true := by decide +kernel

theorem v_913_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 913 96 16 = true := by decide +kernel

theorem r_913 : recsK7OK T qscale den6 d14 lamN lamD l7 913 1 = true := recK7_of (n := 112) t_913 n_913 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_913_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_913_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_913_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_913_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_913_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_913_5 (v_913_6)))))))

theorem t_914 : treeK7OK l7 914 = true := by decide +kernel

theorem n_914 : (recAt l7 914).2.2.2.length ≤ 80 := by decide +kernel

theorem v_914_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 914 0 16 = true := by decide +kernel

theorem v_914_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 914 16 16 = true := by decide +kernel

theorem v_914_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 914 32 16 = true := by decide +kernel

theorem v_914_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 914 48 16 = true := by decide +kernel

theorem v_914_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 914 64 16 = true := by decide +kernel

theorem r_914 : recsK7OK T qscale den6 d14 lamN lamD l7 914 1 = true := recK7_of (n := 80) t_914 n_914 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_914_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_914_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_914_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_914_3 (v_914_4)))))

theorem t_915 : treeK7OK l7 915 = true := by decide +kernel

theorem n_915 : (recAt l7 915).2.2.2.length ≤ 64 := by decide +kernel

theorem v_915_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 915 0 16 = true := by decide +kernel

theorem v_915_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 915 16 16 = true := by decide +kernel

theorem v_915_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 915 32 16 = true := by decide +kernel

theorem v_915_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 915 48 16 = true := by decide +kernel

theorem r_915 : recsK7OK T qscale den6 d14 lamN lamD l7 915 1 = true := recK7_of (n := 64) t_915 n_915 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_915_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_915_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_915_2 (v_915_3))))

theorem t_916 : treeK7OK l7 916 = true := by decide +kernel

theorem n_916 : (recAt l7 916).2.2.2.length ≤ 96 := by decide +kernel

theorem v_916_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 916 0 16 = true := by decide +kernel

theorem v_916_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 916 16 16 = true := by decide +kernel

theorem v_916_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 916 32 16 = true := by decide +kernel

theorem v_916_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 916 48 16 = true := by decide +kernel

theorem v_916_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 916 64 16 = true := by decide +kernel

theorem v_916_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 916 80 16 = true := by decide +kernel

theorem r_916 : recsK7OK T qscale den6 d14 lamN lamD l7 916 1 = true := recK7_of (n := 96) t_916 n_916 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_916_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_916_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_916_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_916_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_916_4 (v_916_5))))))

theorem rs_913 : recsK7OK T qscale den6 d14 lamN lamD l7 913 4 = true := recsK7OK_succ (lo := 913) (n := 3) r_913 (recsK7OK_succ (lo := 914) (n := 2) r_914 (recsK7OK_succ (lo := 915) (n := 1) r_915 (r_916)))

end BeatAvg.K.K7
