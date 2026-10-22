import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_87 : treeK7OK l7 87 = true := by decide +kernel

theorem n_87 : (recAt l7 87).2.2.2.length ≤ 96 := by decide +kernel

theorem v_87_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 87 0 16 = true := by decide +kernel

theorem v_87_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 87 16 16 = true := by decide +kernel

theorem v_87_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 87 32 16 = true := by decide +kernel

theorem v_87_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 87 48 16 = true := by decide +kernel

theorem v_87_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 87 64 16 = true := by decide +kernel

theorem v_87_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 87 80 16 = true := by decide +kernel

theorem r_87 : recsK7OK T qscale den6 d14 lamN lamD l7 87 1 = true := recK7_of (n := 96) t_87 n_87 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_87_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_87_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_87_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_87_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_87_4 (v_87_5))))))

theorem t_88 : treeK7OK l7 88 = true := by decide +kernel

theorem n_88 : (recAt l7 88).2.2.2.length ≤ 32 := by decide +kernel

theorem v_88_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 88 0 16 = true := by decide +kernel

theorem v_88_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 88 16 16 = true := by decide +kernel

theorem r_88 : recsK7OK T qscale den6 d14 lamN lamD l7 88 1 = true := recK7_of (n := 32) t_88 n_88 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_88_0 (v_88_1))

theorem t_89 : treeK7OK l7 89 = true := by decide +kernel

theorem n_89 : (recAt l7 89).2.2.2.length ≤ 32 := by decide +kernel

theorem v_89_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 89 0 16 = true := by decide +kernel

theorem v_89_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 89 16 16 = true := by decide +kernel

theorem r_89 : recsK7OK T qscale den6 d14 lamN lamD l7 89 1 = true := recK7_of (n := 32) t_89 n_89 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_89_0 (v_89_1))

theorem t_90 : treeK7OK l7 90 = true := by decide +kernel

theorem n_90 : (recAt l7 90).2.2.2.length ≤ 144 := by decide +kernel

theorem v_90_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 0 16 = true := by decide +kernel

theorem v_90_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 16 16 = true := by decide +kernel

theorem v_90_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 32 16 = true := by decide +kernel

theorem v_90_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 48 16 = true := by decide +kernel

theorem v_90_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 64 16 = true := by decide +kernel

theorem v_90_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 80 16 = true := by decide +kernel

theorem v_90_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 96 16 = true := by decide +kernel

theorem v_90_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 112 16 = true := by decide +kernel

theorem v_90_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 90 128 16 = true := by decide +kernel

theorem r_90 : recsK7OK T qscale den6 d14 lamN lamD l7 90 1 = true := recK7_of (n := 144) t_90 n_90 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_90_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_90_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_90_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_90_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_90_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_90_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_90_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_90_7 (v_90_8)))))))))

theorem t_91 : treeK7OK l7 91 = true := by decide +kernel

theorem n_91 : (recAt l7 91).2.2.2.length ≤ 96 := by decide +kernel

theorem v_91_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 91 0 16 = true := by decide +kernel

theorem v_91_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 91 16 16 = true := by decide +kernel

theorem v_91_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 91 32 16 = true := by decide +kernel

theorem v_91_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 91 48 16 = true := by decide +kernel

theorem v_91_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 91 64 16 = true := by decide +kernel

theorem v_91_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 91 80 16 = true := by decide +kernel

theorem r_91 : recsK7OK T qscale den6 d14 lamN lamD l7 91 1 = true := recK7_of (n := 96) t_91 n_91 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_91_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_91_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_91_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_91_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_91_4 (v_91_5))))))

theorem rs_87 : recsK7OK T qscale den6 d14 lamN lamD l7 87 5 = true := recsK7OK_succ (lo := 87) (n := 4) r_87 (recsK7OK_succ (lo := 88) (n := 3) r_88 (recsK7OK_succ (lo := 89) (n := 2) r_89 (recsK7OK_succ (lo := 90) (n := 1) r_90 (r_91))))

end BeatAvg.K.K7
