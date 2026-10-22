import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_144 : treeK7OK l7 144 = true := by decide +kernel

theorem n_144 : (recAt l7 144).2.2.2.length ≤ 96 := by decide +kernel

theorem v_144_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 144 0 16 = true := by decide +kernel

theorem v_144_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 144 16 16 = true := by decide +kernel

theorem v_144_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 144 32 16 = true := by decide +kernel

theorem v_144_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 144 48 16 = true := by decide +kernel

theorem v_144_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 144 64 16 = true := by decide +kernel

theorem v_144_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 144 80 16 = true := by decide +kernel

theorem r_144 : recsK7OK T qscale den6 d14 lamN lamD l7 144 1 = true := recK7_of (n := 96) t_144 n_144 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_144_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_144_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_144_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_144_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_144_4 (v_144_5))))))

theorem t_145 : treeK7OK l7 145 = true := by decide +kernel

theorem n_145 : (recAt l7 145).2.2.2.length ≤ 112 := by decide +kernel

theorem v_145_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 145 0 16 = true := by decide +kernel

theorem v_145_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 145 16 16 = true := by decide +kernel

theorem v_145_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 145 32 16 = true := by decide +kernel

theorem v_145_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 145 48 16 = true := by decide +kernel

theorem v_145_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 145 64 16 = true := by decide +kernel

theorem v_145_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 145 80 16 = true := by decide +kernel

theorem v_145_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 145 96 16 = true := by decide +kernel

theorem r_145 : recsK7OK T qscale den6 d14 lamN lamD l7 145 1 = true := recK7_of (n := 112) t_145 n_145 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_145_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_145_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_145_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_145_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_145_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_145_5 (v_145_6)))))))

theorem t_146 : treeK7OK l7 146 = true := by decide +kernel

theorem n_146 : (recAt l7 146).2.2.2.length ≤ 64 := by decide +kernel

theorem v_146_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 146 0 16 = true := by decide +kernel

theorem v_146_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 146 16 16 = true := by decide +kernel

theorem v_146_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 146 32 16 = true := by decide +kernel

theorem v_146_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 146 48 16 = true := by decide +kernel

theorem r_146 : recsK7OK T qscale den6 d14 lamN lamD l7 146 1 = true := recK7_of (n := 64) t_146 n_146 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_146_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_146_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_146_2 (v_146_3))))

theorem t_147 : treeK7OK l7 147 = true := by decide +kernel

theorem n_147 : (recAt l7 147).2.2.2.length ≤ 144 := by decide +kernel

theorem v_147_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 0 16 = true := by decide +kernel

theorem v_147_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 16 16 = true := by decide +kernel

theorem v_147_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 32 16 = true := by decide +kernel

theorem v_147_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 48 16 = true := by decide +kernel

theorem v_147_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 64 16 = true := by decide +kernel

theorem v_147_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 80 16 = true := by decide +kernel

theorem v_147_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 96 16 = true := by decide +kernel

theorem v_147_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 112 16 = true := by decide +kernel

theorem v_147_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 147 128 16 = true := by decide +kernel

theorem r_147 : recsK7OK T qscale den6 d14 lamN lamD l7 147 1 = true := recK7_of (n := 144) t_147 n_147 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_147_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_147_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_147_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_147_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_147_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_147_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_147_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_147_7 (v_147_8)))))))))

theorem rs_144 : recsK7OK T qscale den6 d14 lamN lamD l7 144 4 = true := recsK7OK_succ (lo := 144) (n := 3) r_144 (recsK7OK_succ (lo := 145) (n := 2) r_145 (recsK7OK_succ (lo := 146) (n := 1) r_146 (r_147)))

end BeatAvg.K.K7
