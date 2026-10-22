import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_148 : treeK7OK l7 148 = true := by decide +kernel

theorem n_148 : (recAt l7 148).2.2.2.length ≤ 64 := by decide +kernel

theorem v_148_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 148 0 16 = true := by decide +kernel

theorem v_148_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 148 16 16 = true := by decide +kernel

theorem v_148_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 148 32 16 = true := by decide +kernel

theorem v_148_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 148 48 16 = true := by decide +kernel

theorem r_148 : recsK7OK T qscale den6 d14 lamN lamD l7 148 1 = true := recK7_of (n := 64) t_148 n_148 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_148_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_148_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_148_2 (v_148_3))))

theorem t_149 : treeK7OK l7 149 = true := by decide +kernel

theorem n_149 : (recAt l7 149).2.2.2.length ≤ 80 := by decide +kernel

theorem v_149_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 149 0 16 = true := by decide +kernel

theorem v_149_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 149 16 16 = true := by decide +kernel

theorem v_149_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 149 32 16 = true := by decide +kernel

theorem v_149_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 149 48 16 = true := by decide +kernel

theorem v_149_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 149 64 16 = true := by decide +kernel

theorem r_149 : recsK7OK T qscale den6 d14 lamN lamD l7 149 1 = true := recK7_of (n := 80) t_149 n_149 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_149_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_149_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_149_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_149_3 (v_149_4)))))

theorem t_150 : treeK7OK l7 150 = true := by decide +kernel

theorem n_150 : (recAt l7 150).2.2.2.length ≤ 144 := by decide +kernel

theorem v_150_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 0 16 = true := by decide +kernel

theorem v_150_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 16 16 = true := by decide +kernel

theorem v_150_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 32 16 = true := by decide +kernel

theorem v_150_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 48 16 = true := by decide +kernel

theorem v_150_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 64 16 = true := by decide +kernel

theorem v_150_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 80 16 = true := by decide +kernel

theorem v_150_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 96 16 = true := by decide +kernel

theorem v_150_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 112 16 = true := by decide +kernel

theorem v_150_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 150 128 16 = true := by decide +kernel

theorem r_150 : recsK7OK T qscale den6 d14 lamN lamD l7 150 1 = true := recK7_of (n := 144) t_150 n_150 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_150_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_150_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_150_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_150_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_150_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_150_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_150_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_150_7 (v_150_8)))))))))

theorem t_151 : treeK7OK l7 151 = true := by decide +kernel

theorem n_151 : (recAt l7 151).2.2.2.length ≤ 96 := by decide +kernel

theorem v_151_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 151 0 16 = true := by decide +kernel

theorem v_151_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 151 16 16 = true := by decide +kernel

theorem v_151_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 151 32 16 = true := by decide +kernel

theorem v_151_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 151 48 16 = true := by decide +kernel

theorem v_151_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 151 64 16 = true := by decide +kernel

theorem v_151_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 151 80 16 = true := by decide +kernel

theorem r_151 : recsK7OK T qscale den6 d14 lamN lamD l7 151 1 = true := recK7_of (n := 96) t_151 n_151 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_151_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_151_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_151_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_151_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_151_4 (v_151_5))))))

theorem rs_148 : recsK7OK T qscale den6 d14 lamN lamD l7 148 4 = true := recsK7OK_succ (lo := 148) (n := 3) r_148 (recsK7OK_succ (lo := 149) (n := 2) r_149 (recsK7OK_succ (lo := 150) (n := 1) r_150 (r_151)))

end BeatAvg.K.K7
