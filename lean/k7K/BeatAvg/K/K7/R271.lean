import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_853 : treeK7OK l7 853 = true := by decide +kernel

theorem n_853 : (recAt l7 853).2.2.2.length ≤ 96 := by decide +kernel

theorem v_853_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 853 0 16 = true := by decide +kernel

theorem v_853_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 853 16 16 = true := by decide +kernel

theorem v_853_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 853 32 16 = true := by decide +kernel

theorem v_853_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 853 48 16 = true := by decide +kernel

theorem v_853_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 853 64 16 = true := by decide +kernel

theorem v_853_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 853 80 16 = true := by decide +kernel

theorem r_853 : recsK7OK T qscale den6 d14 lamN lamD l7 853 1 = true := recK7_of (n := 96) t_853 n_853 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_853_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_853_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_853_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_853_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_853_4 (v_853_5))))))

theorem t_854 : treeK7OK l7 854 = true := by decide +kernel

theorem n_854 : (recAt l7 854).2.2.2.length ≤ 80 := by decide +kernel

theorem v_854_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 854 0 16 = true := by decide +kernel

theorem v_854_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 854 16 16 = true := by decide +kernel

theorem v_854_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 854 32 16 = true := by decide +kernel

theorem v_854_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 854 48 16 = true := by decide +kernel

theorem v_854_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 854 64 16 = true := by decide +kernel

theorem r_854 : recsK7OK T qscale den6 d14 lamN lamD l7 854 1 = true := recK7_of (n := 80) t_854 n_854 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_854_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_854_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_854_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_854_3 (v_854_4)))))

theorem t_855 : treeK7OK l7 855 = true := by decide +kernel

theorem n_855 : (recAt l7 855).2.2.2.length ≤ 48 := by decide +kernel

theorem v_855_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 855 0 16 = true := by decide +kernel

theorem v_855_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 855 16 16 = true := by decide +kernel

theorem v_855_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 855 32 16 = true := by decide +kernel

theorem r_855 : recsK7OK T qscale den6 d14 lamN lamD l7 855 1 = true := recK7_of (n := 48) t_855 n_855 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_855_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_855_1 (v_855_2)))

theorem t_856 : treeK7OK l7 856 = true := by decide +kernel

theorem n_856 : (recAt l7 856).2.2.2.length ≤ 144 := by decide +kernel

theorem v_856_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 0 16 = true := by decide +kernel

theorem v_856_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 16 16 = true := by decide +kernel

theorem v_856_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 32 16 = true := by decide +kernel

theorem v_856_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 48 16 = true := by decide +kernel

theorem v_856_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 64 16 = true := by decide +kernel

theorem v_856_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 80 16 = true := by decide +kernel

theorem v_856_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 96 16 = true := by decide +kernel

theorem v_856_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 112 16 = true := by decide +kernel

theorem v_856_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 856 128 16 = true := by decide +kernel

theorem r_856 : recsK7OK T qscale den6 d14 lamN lamD l7 856 1 = true := recK7_of (n := 144) t_856 n_856 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_856_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_856_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_856_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_856_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_856_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_856_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_856_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_856_7 (v_856_8)))))))))

theorem rs_853 : recsK7OK T qscale den6 d14 lamN lamD l7 853 4 = true := recsK7OK_succ (lo := 853) (n := 3) r_853 (recsK7OK_succ (lo := 854) (n := 2) r_854 (recsK7OK_succ (lo := 855) (n := 1) r_855 (r_856)))

end BeatAvg.K.K7
