import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_900 : treeK7OK l7 900 = true := by decide +kernel

theorem n_900 : (recAt l7 900).2.2.2.length ≤ 128 := by decide +kernel

theorem v_900_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 0 16 = true := by decide +kernel

theorem v_900_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 16 16 = true := by decide +kernel

theorem v_900_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 32 16 = true := by decide +kernel

theorem v_900_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 48 16 = true := by decide +kernel

theorem v_900_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 64 16 = true := by decide +kernel

theorem v_900_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 80 16 = true := by decide +kernel

theorem v_900_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 96 16 = true := by decide +kernel

theorem v_900_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 900 112 16 = true := by decide +kernel

theorem r_900 : recsK7OK T qscale den6 d14 lamN lamD l7 900 1 = true := recK7_of (n := 128) t_900 n_900 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_900_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_900_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_900_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_900_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_900_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_900_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_900_6 (v_900_7))))))))

theorem t_901 : treeK7OK l7 901 = true := by decide +kernel

theorem n_901 : (recAt l7 901).2.2.2.length ≤ 128 := by decide +kernel

theorem v_901_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 0 16 = true := by decide +kernel

theorem v_901_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 16 16 = true := by decide +kernel

theorem v_901_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 32 16 = true := by decide +kernel

theorem v_901_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 48 16 = true := by decide +kernel

theorem v_901_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 64 16 = true := by decide +kernel

theorem v_901_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 80 16 = true := by decide +kernel

theorem v_901_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 96 16 = true := by decide +kernel

theorem v_901_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 901 112 16 = true := by decide +kernel

theorem r_901 : recsK7OK T qscale den6 d14 lamN lamD l7 901 1 = true := recK7_of (n := 128) t_901 n_901 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_901_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_901_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_901_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_901_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_901_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_901_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_901_6 (v_901_7))))))))

theorem t_902 : treeK7OK l7 902 = true := by decide +kernel

theorem n_902 : (recAt l7 902).2.2.2.length ≤ 80 := by decide +kernel

theorem v_902_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 902 0 16 = true := by decide +kernel

theorem v_902_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 902 16 16 = true := by decide +kernel

theorem v_902_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 902 32 16 = true := by decide +kernel

theorem v_902_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 902 48 16 = true := by decide +kernel

theorem v_902_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 902 64 16 = true := by decide +kernel

theorem r_902 : recsK7OK T qscale den6 d14 lamN lamD l7 902 1 = true := recK7_of (n := 80) t_902 n_902 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_902_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_902_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_902_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_902_3 (v_902_4)))))

theorem t_903 : treeK7OK l7 903 = true := by decide +kernel

theorem n_903 : (recAt l7 903).2.2.2.length ≤ 80 := by decide +kernel

theorem v_903_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 903 0 16 = true := by decide +kernel

theorem v_903_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 903 16 16 = true := by decide +kernel

theorem v_903_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 903 32 16 = true := by decide +kernel

theorem v_903_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 903 48 16 = true := by decide +kernel

theorem v_903_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 903 64 16 = true := by decide +kernel

theorem r_903 : recsK7OK T qscale den6 d14 lamN lamD l7 903 1 = true := recK7_of (n := 80) t_903 n_903 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_903_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_903_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_903_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_903_3 (v_903_4)))))

theorem rs_900 : recsK7OK T qscale den6 d14 lamN lamD l7 900 4 = true := recsK7OK_succ (lo := 900) (n := 3) r_900 (recsK7OK_succ (lo := 901) (n := 2) r_901 (recsK7OK_succ (lo := 902) (n := 1) r_902 (r_903)))

end BeatAvg.K.K7
