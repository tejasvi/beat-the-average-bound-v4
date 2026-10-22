import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_960 : treeK7OK l7 960 = true := by decide +kernel

theorem n_960 : (recAt l7 960).2.2.2.length ≤ 144 := by decide +kernel

theorem v_960_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 0 16 = true := by decide +kernel

theorem v_960_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 16 16 = true := by decide +kernel

theorem v_960_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 32 16 = true := by decide +kernel

theorem v_960_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 48 16 = true := by decide +kernel

theorem v_960_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 64 16 = true := by decide +kernel

theorem v_960_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 80 16 = true := by decide +kernel

theorem v_960_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 96 16 = true := by decide +kernel

theorem v_960_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 112 16 = true := by decide +kernel

theorem v_960_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 960 128 16 = true := by decide +kernel

theorem r_960 : recsK7OK T qscale den6 d14 lamN lamD l7 960 1 = true := recK7_of (n := 144) t_960 n_960 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_960_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_960_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_960_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_960_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_960_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_960_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_960_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_960_7 (v_960_8)))))))))

theorem t_961 : treeK7OK l7 961 = true := by decide +kernel

theorem n_961 : (recAt l7 961).2.2.2.length ≤ 80 := by decide +kernel

theorem v_961_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 961 0 16 = true := by decide +kernel

theorem v_961_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 961 16 16 = true := by decide +kernel

theorem v_961_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 961 32 16 = true := by decide +kernel

theorem v_961_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 961 48 16 = true := by decide +kernel

theorem v_961_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 961 64 16 = true := by decide +kernel

theorem r_961 : recsK7OK T qscale den6 d14 lamN lamD l7 961 1 = true := recK7_of (n := 80) t_961 n_961 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_961_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_961_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_961_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_961_3 (v_961_4)))))

theorem t_962 : treeK7OK l7 962 = true := by decide +kernel

theorem n_962 : (recAt l7 962).2.2.2.length ≤ 128 := by decide +kernel

theorem v_962_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 0 16 = true := by decide +kernel

theorem v_962_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 16 16 = true := by decide +kernel

theorem v_962_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 32 16 = true := by decide +kernel

theorem v_962_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 48 16 = true := by decide +kernel

theorem v_962_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 64 16 = true := by decide +kernel

theorem v_962_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 80 16 = true := by decide +kernel

theorem v_962_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 96 16 = true := by decide +kernel

theorem v_962_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 962 112 16 = true := by decide +kernel

theorem r_962 : recsK7OK T qscale den6 d14 lamN lamD l7 962 1 = true := recK7_of (n := 128) t_962 n_962 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_962_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_962_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_962_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_962_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_962_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_962_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_962_6 (v_962_7))))))))

theorem rs_960 : recsK7OK T qscale den6 d14 lamN lamD l7 960 3 = true := recsK7OK_succ (lo := 960) (n := 2) r_960 (recsK7OK_succ (lo := 961) (n := 1) r_961 (r_962))

end BeatAvg.K.K7
