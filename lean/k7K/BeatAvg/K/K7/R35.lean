import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_124 : treeK7OK l7 124 = true := by decide +kernel

theorem n_124 : (recAt l7 124).2.2.2.length ≤ 32 := by decide +kernel

theorem v_124_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 124 0 16 = true := by decide +kernel

theorem v_124_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 124 16 16 = true := by decide +kernel

theorem r_124 : recsK7OK T qscale den6 d14 lamN lamD l7 124 1 = true := recK7_of (n := 32) t_124 n_124 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_124_0 (v_124_1))

theorem t_125 : treeK7OK l7 125 = true := by decide +kernel

theorem n_125 : (recAt l7 125).2.2.2.length ≤ 128 := by decide +kernel

theorem v_125_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 0 16 = true := by decide +kernel

theorem v_125_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 16 16 = true := by decide +kernel

theorem v_125_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 32 16 = true := by decide +kernel

theorem v_125_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 48 16 = true := by decide +kernel

theorem v_125_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 64 16 = true := by decide +kernel

theorem v_125_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 80 16 = true := by decide +kernel

theorem v_125_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 96 16 = true := by decide +kernel

theorem v_125_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 125 112 16 = true := by decide +kernel

theorem r_125 : recsK7OK T qscale den6 d14 lamN lamD l7 125 1 = true := recK7_of (n := 128) t_125 n_125 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_125_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_125_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_125_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_125_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_125_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_125_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_125_6 (v_125_7))))))))

theorem t_126 : treeK7OK l7 126 = true := by decide +kernel

theorem n_126 : (recAt l7 126).2.2.2.length ≤ 96 := by decide +kernel

theorem v_126_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 126 0 16 = true := by decide +kernel

theorem v_126_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 126 16 16 = true := by decide +kernel

theorem v_126_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 126 32 16 = true := by decide +kernel

theorem v_126_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 126 48 16 = true := by decide +kernel

theorem v_126_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 126 64 16 = true := by decide +kernel

theorem v_126_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 126 80 16 = true := by decide +kernel

theorem r_126 : recsK7OK T qscale den6 d14 lamN lamD l7 126 1 = true := recK7_of (n := 96) t_126 n_126 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_126_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_126_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_126_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_126_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_126_4 (v_126_5))))))

theorem t_127 : treeK7OK l7 127 = true := by decide +kernel

theorem n_127 : (recAt l7 127).2.2.2.length ≤ 64 := by decide +kernel

theorem v_127_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 127 0 16 = true := by decide +kernel

theorem v_127_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 127 16 16 = true := by decide +kernel

theorem v_127_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 127 32 16 = true := by decide +kernel

theorem v_127_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 127 48 16 = true := by decide +kernel

theorem r_127 : recsK7OK T qscale den6 d14 lamN lamD l7 127 1 = true := recK7_of (n := 64) t_127 n_127 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_127_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_127_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_127_2 (v_127_3))))

theorem t_128 : treeK7OK l7 128 = true := by decide +kernel

theorem n_128 : (recAt l7 128).2.2.2.length ≤ 80 := by decide +kernel

theorem v_128_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 128 0 16 = true := by decide +kernel

theorem v_128_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 128 16 16 = true := by decide +kernel

theorem v_128_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 128 32 16 = true := by decide +kernel

theorem v_128_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 128 48 16 = true := by decide +kernel

theorem v_128_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 128 64 16 = true := by decide +kernel

theorem r_128 : recsK7OK T qscale den6 d14 lamN lamD l7 128 1 = true := recK7_of (n := 80) t_128 n_128 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_128_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_128_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_128_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_128_3 (v_128_4)))))

theorem rs_124 : recsK7OK T qscale den6 d14 lamN lamD l7 124 5 = true := recsK7OK_succ (lo := 124) (n := 4) r_124 (recsK7OK_succ (lo := 125) (n := 3) r_125 (recsK7OK_succ (lo := 126) (n := 2) r_126 (recsK7OK_succ (lo := 127) (n := 1) r_127 (r_128))))

end BeatAvg.K.K7
