import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_77 : treeK7OK l7 77 = true := by decide +kernel

theorem n_77 : (recAt l7 77).2.2.2.length ≤ 64 := by decide +kernel

theorem v_77_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 77 0 16 = true := by decide +kernel

theorem v_77_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 77 16 16 = true := by decide +kernel

theorem v_77_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 77 32 16 = true := by decide +kernel

theorem v_77_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 77 48 16 = true := by decide +kernel

theorem r_77 : recsK7OK T qscale den6 d14 lamN lamD l7 77 1 = true := recK7_of (n := 64) t_77 n_77 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_77_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_77_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_77_2 (v_77_3))))

theorem t_78 : treeK7OK l7 78 = true := by decide +kernel

theorem n_78 : (recAt l7 78).2.2.2.length ≤ 80 := by decide +kernel

theorem v_78_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 78 0 16 = true := by decide +kernel

theorem v_78_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 78 16 16 = true := by decide +kernel

theorem v_78_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 78 32 16 = true := by decide +kernel

theorem v_78_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 78 48 16 = true := by decide +kernel

theorem v_78_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 78 64 16 = true := by decide +kernel

theorem r_78 : recsK7OK T qscale den6 d14 lamN lamD l7 78 1 = true := recK7_of (n := 80) t_78 n_78 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_78_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_78_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_78_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_78_3 (v_78_4)))))

theorem t_79 : treeK7OK l7 79 = true := by decide +kernel

theorem n_79 : (recAt l7 79).2.2.2.length ≤ 64 := by decide +kernel

theorem v_79_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 79 0 16 = true := by decide +kernel

theorem v_79_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 79 16 16 = true := by decide +kernel

theorem v_79_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 79 32 16 = true := by decide +kernel

theorem v_79_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 79 48 16 = true := by decide +kernel

theorem r_79 : recsK7OK T qscale den6 d14 lamN lamD l7 79 1 = true := recK7_of (n := 64) t_79 n_79 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_79_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_79_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_79_2 (v_79_3))))

theorem t_80 : treeK7OK l7 80 = true := by decide +kernel

theorem n_80 : (recAt l7 80).2.2.2.length ≤ 32 := by decide +kernel

theorem v_80_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 80 0 16 = true := by decide +kernel

theorem v_80_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 80 16 16 = true := by decide +kernel

theorem r_80 : recsK7OK T qscale den6 d14 lamN lamD l7 80 1 = true := recK7_of (n := 32) t_80 n_80 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_80_0 (v_80_1))

theorem t_81 : treeK7OK l7 81 = true := by decide +kernel

theorem n_81 : (recAt l7 81).2.2.2.length ≤ 176 := by decide +kernel

theorem v_81_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 0 16 = true := by decide +kernel

theorem v_81_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 16 16 = true := by decide +kernel

theorem v_81_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 32 16 = true := by decide +kernel

theorem v_81_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 48 16 = true := by decide +kernel

theorem v_81_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 64 16 = true := by decide +kernel

theorem v_81_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 80 16 = true := by decide +kernel

theorem v_81_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 96 16 = true := by decide +kernel

theorem v_81_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 112 16 = true := by decide +kernel

theorem v_81_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 128 16 = true := by decide +kernel

theorem v_81_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 144 16 = true := by decide +kernel

theorem v_81_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 81 160 16 = true := by decide +kernel

theorem r_81 : recsK7OK T qscale den6 d14 lamN lamD l7 81 1 = true := recK7_of (n := 176) t_81 n_81 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_81_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_81_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_81_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_81_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_81_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_81_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_81_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_81_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_81_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_81_9 (v_81_10)))))))))))

theorem rs_77 : recsK7OK T qscale den6 d14 lamN lamD l7 77 5 = true := recsK7OK_succ (lo := 77) (n := 4) r_77 (recsK7OK_succ (lo := 78) (n := 3) r_78 (recsK7OK_succ (lo := 79) (n := 2) r_79 (recsK7OK_succ (lo := 80) (n := 1) r_80 (r_81))))

end BeatAvg.K.K7
