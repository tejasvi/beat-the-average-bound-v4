import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_69 : treeK7OK l7 69 = true := by decide +kernel

theorem n_69 : (recAt l7 69).2.2.2.length ≤ 80 := by decide +kernel

theorem v_69_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 69 0 16 = true := by decide +kernel

theorem v_69_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 69 16 16 = true := by decide +kernel

theorem v_69_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 69 32 16 = true := by decide +kernel

theorem v_69_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 69 48 16 = true := by decide +kernel

theorem v_69_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 69 64 16 = true := by decide +kernel

theorem r_69 : recsK7OK T qscale den6 d14 lamN lamD l7 69 1 = true := recK7_of (n := 80) t_69 n_69 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_69_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_69_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_69_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_69_3 (v_69_4)))))

theorem t_70 : treeK7OK l7 70 = true := by decide +kernel

theorem n_70 : (recAt l7 70).2.2.2.length ≤ 96 := by decide +kernel

theorem v_70_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 70 0 16 = true := by decide +kernel

theorem v_70_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 70 16 16 = true := by decide +kernel

theorem v_70_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 70 32 16 = true := by decide +kernel

theorem v_70_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 70 48 16 = true := by decide +kernel

theorem v_70_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 70 64 16 = true := by decide +kernel

theorem v_70_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 70 80 16 = true := by decide +kernel

theorem r_70 : recsK7OK T qscale den6 d14 lamN lamD l7 70 1 = true := recK7_of (n := 96) t_70 n_70 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_70_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_70_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_70_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_70_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_70_4 (v_70_5))))))

theorem t_71 : treeK7OK l7 71 = true := by decide +kernel

theorem n_71 : (recAt l7 71).2.2.2.length ≤ 32 := by decide +kernel

theorem v_71_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 71 0 16 = true := by decide +kernel

theorem v_71_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 71 16 16 = true := by decide +kernel

theorem r_71 : recsK7OK T qscale den6 d14 lamN lamD l7 71 1 = true := recK7_of (n := 32) t_71 n_71 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_71_0 (v_71_1))

theorem t_72 : treeK7OK l7 72 = true := by decide +kernel

theorem n_72 : (recAt l7 72).2.2.2.length ≤ 160 := by decide +kernel

theorem v_72_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 0 16 = true := by decide +kernel

theorem v_72_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 16 16 = true := by decide +kernel

theorem v_72_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 32 16 = true := by decide +kernel

theorem v_72_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 48 16 = true := by decide +kernel

theorem v_72_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 64 16 = true := by decide +kernel

theorem v_72_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 80 16 = true := by decide +kernel

theorem v_72_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 96 16 = true := by decide +kernel

theorem v_72_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 112 16 = true := by decide +kernel

theorem v_72_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 128 16 = true := by decide +kernel

theorem v_72_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 72 144 16 = true := by decide +kernel

theorem r_72 : recsK7OK T qscale den6 d14 lamN lamD l7 72 1 = true := recK7_of (n := 160) t_72 n_72 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_72_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_72_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_72_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_72_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_72_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_72_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_72_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_72_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_72_8 (v_72_9))))))))))

theorem t_73 : treeK7OK l7 73 = true := by decide +kernel

theorem n_73 : (recAt l7 73).2.2.2.length ≤ 64 := by decide +kernel

theorem v_73_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 73 0 16 = true := by decide +kernel

theorem v_73_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 73 16 16 = true := by decide +kernel

theorem v_73_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 73 32 16 = true := by decide +kernel

theorem v_73_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 73 48 16 = true := by decide +kernel

theorem r_73 : recsK7OK T qscale den6 d14 lamN lamD l7 73 1 = true := recK7_of (n := 64) t_73 n_73 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_73_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_73_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_73_2 (v_73_3))))

theorem rs_69 : recsK7OK T qscale den6 d14 lamN lamD l7 69 5 = true := recsK7OK_succ (lo := 69) (n := 4) r_69 (recsK7OK_succ (lo := 70) (n := 3) r_70 (recsK7OK_succ (lo := 71) (n := 2) r_71 (recsK7OK_succ (lo := 72) (n := 1) r_72 (r_73))))

end BeatAvg.K.K7
