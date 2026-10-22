import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1200 : treeK7OK l7 1200 = true := by decide +kernel

theorem n_1200 : (recAt l7 1200).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1200_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1200 0 16 = true := by decide +kernel

theorem v_1200_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1200 16 16 = true := by decide +kernel

theorem v_1200_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1200 32 16 = true := by decide +kernel

theorem r_1200 : recsK7OK T qscale den6 d14 lamN lamD l7 1200 1 = true := recK7_of (n := 48) t_1200 n_1200 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1200_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1200_1 (v_1200_2)))

theorem t_1201 : treeK7OK l7 1201 = true := by decide +kernel

theorem n_1201 : (recAt l7 1201).2.2.2.length ≤ 32 := by decide +kernel

theorem v_1201_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1201 0 16 = true := by decide +kernel

theorem v_1201_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1201 16 16 = true := by decide +kernel

theorem r_1201 : recsK7OK T qscale den6 d14 lamN lamD l7 1201 1 = true := recK7_of (n := 32) t_1201 n_1201 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_1201_0 (v_1201_1))

theorem t_1202 : treeK7OK l7 1202 = true := by decide +kernel

theorem n_1202 : (recAt l7 1202).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1202_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1202 0 16 = true := by decide +kernel

theorem v_1202_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1202 16 16 = true := by decide +kernel

theorem v_1202_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1202 32 16 = true := by decide +kernel

theorem r_1202 : recsK7OK T qscale den6 d14 lamN lamD l7 1202 1 = true := recK7_of (n := 48) t_1202 n_1202 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1202_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1202_1 (v_1202_2)))

theorem t_1203 : treeK7OK l7 1203 = true := by decide +kernel

theorem n_1203 : (recAt l7 1203).2.2.2.length ≤ 48 := by decide +kernel

theorem v_1203_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1203 0 16 = true := by decide +kernel

theorem v_1203_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1203 16 16 = true := by decide +kernel

theorem v_1203_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1203 32 16 = true := by decide +kernel

theorem r_1203 : recsK7OK T qscale den6 d14 lamN lamD l7 1203 1 = true := recK7_of (n := 48) t_1203 n_1203 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_1203_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_1203_1 (v_1203_2)))

theorem t_1204 : treeK7OK l7 1204 = true := by decide +kernel

theorem n_1204 : (recAt l7 1204).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1204_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 0 16 = true := by decide +kernel

theorem v_1204_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 16 16 = true := by decide +kernel

theorem v_1204_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 32 16 = true := by decide +kernel

theorem v_1204_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 48 16 = true := by decide +kernel

theorem v_1204_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 64 16 = true := by decide +kernel

theorem v_1204_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 80 16 = true := by decide +kernel

theorem v_1204_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 96 16 = true := by decide +kernel

theorem v_1204_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 112 16 = true := by decide +kernel

theorem v_1204_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 128 16 = true := by decide +kernel

theorem v_1204_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1204 144 16 = true := by decide +kernel

theorem r_1204 : recsK7OK T qscale den6 d14 lamN lamD l7 1204 1 = true := recK7_of (n := 160) t_1204 n_1204 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1204_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1204_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1204_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1204_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1204_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1204_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1204_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1204_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1204_8 (v_1204_9))))))))))

theorem rs_1200 : recsK7OK T qscale den6 d14 lamN lamD l7 1200 5 = true := recsK7OK_succ (lo := 1200) (n := 4) r_1200 (recsK7OK_succ (lo := 1201) (n := 3) r_1201 (recsK7OK_succ (lo := 1202) (n := 2) r_1202 (recsK7OK_succ (lo := 1203) (n := 1) r_1203 (r_1204))))

end BeatAvg.K.K7
