import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_131 : treeK7OK l7 131 = true := by decide +kernel

theorem n_131 : (recAt l7 131).2.2.2.length ≤ 112 := by decide +kernel

theorem v_131_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 131 0 16 = true := by decide +kernel

theorem v_131_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 131 16 16 = true := by decide +kernel

theorem v_131_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 131 32 16 = true := by decide +kernel

theorem v_131_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 131 48 16 = true := by decide +kernel

theorem v_131_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 131 64 16 = true := by decide +kernel

theorem v_131_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 131 80 16 = true := by decide +kernel

theorem v_131_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 131 96 16 = true := by decide +kernel

theorem r_131 : recsK7OK T qscale den6 d14 lamN lamD l7 131 1 = true := recK7_of (n := 112) t_131 n_131 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_131_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_131_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_131_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_131_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_131_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_131_5 (v_131_6)))))))

theorem t_132 : treeK7OK l7 132 = true := by decide +kernel

theorem n_132 : (recAt l7 132).2.2.2.length ≤ 208 := by decide +kernel

theorem v_132_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 0 16 = true := by decide +kernel

theorem v_132_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 16 16 = true := by decide +kernel

theorem v_132_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 32 16 = true := by decide +kernel

theorem v_132_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 48 16 = true := by decide +kernel

theorem v_132_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 64 16 = true := by decide +kernel

theorem v_132_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 80 16 = true := by decide +kernel

theorem v_132_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 96 16 = true := by decide +kernel

theorem v_132_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 112 16 = true := by decide +kernel

theorem v_132_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 128 16 = true := by decide +kernel

theorem v_132_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 144 16 = true := by decide +kernel

theorem v_132_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 160 16 = true := by decide +kernel

theorem v_132_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 176 16 = true := by decide +kernel

theorem v_132_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 132 192 16 = true := by decide +kernel

theorem r_132 : recsK7OK T qscale den6 d14 lamN lamD l7 132 1 = true := recK7_of (n := 208) t_132 n_132 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_132_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_132_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_132_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_132_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_132_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_132_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_132_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_132_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_132_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_132_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_132_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_132_11 (v_132_12)))))))))))))

theorem t_133 : treeK7OK l7 133 = true := by decide +kernel

theorem n_133 : (recAt l7 133).2.2.2.length ≤ 32 := by decide +kernel

theorem v_133_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 133 0 16 = true := by decide +kernel

theorem v_133_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 133 16 16 = true := by decide +kernel

theorem r_133 : recsK7OK T qscale den6 d14 lamN lamD l7 133 1 = true := recK7_of (n := 32) t_133 n_133 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_133_0 (v_133_1))

theorem rs_131 : recsK7OK T qscale den6 d14 lamN lamD l7 131 3 = true := recsK7OK_succ (lo := 131) (n := 2) r_131 (recsK7OK_succ (lo := 132) (n := 1) r_132 (r_133))

end BeatAvg.K.K7
