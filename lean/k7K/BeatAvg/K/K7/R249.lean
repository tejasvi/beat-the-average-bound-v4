import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_808 : treeK7OK l7 808 = true := by decide +kernel

theorem n_808 : (recAt l7 808).2.2.2.length ≤ 48 := by decide +kernel

theorem v_808_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 808 0 16 = true := by decide +kernel

theorem v_808_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 808 16 16 = true := by decide +kernel

theorem v_808_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 808 32 16 = true := by decide +kernel

theorem r_808 : recsK7OK T qscale den6 d14 lamN lamD l7 808 1 = true := recK7_of (n := 48) t_808 n_808 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_808_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_808_1 (v_808_2)))

theorem t_809 : treeK7OK l7 809 = true := by decide +kernel

theorem n_809 : (recAt l7 809).2.2.2.length ≤ 64 := by decide +kernel

theorem v_809_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 809 0 16 = true := by decide +kernel

theorem v_809_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 809 16 16 = true := by decide +kernel

theorem v_809_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 809 32 16 = true := by decide +kernel

theorem v_809_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 809 48 16 = true := by decide +kernel

theorem r_809 : recsK7OK T qscale den6 d14 lamN lamD l7 809 1 = true := recK7_of (n := 64) t_809 n_809 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_809_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_809_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_809_2 (v_809_3))))

theorem t_810 : treeK7OK l7 810 = true := by decide +kernel

theorem n_810 : (recAt l7 810).2.2.2.length ≤ 112 := by decide +kernel

theorem v_810_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 810 0 16 = true := by decide +kernel

theorem v_810_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 810 16 16 = true := by decide +kernel

theorem v_810_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 810 32 16 = true := by decide +kernel

theorem v_810_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 810 48 16 = true := by decide +kernel

theorem v_810_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 810 64 16 = true := by decide +kernel

theorem v_810_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 810 80 16 = true := by decide +kernel

theorem v_810_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 810 96 16 = true := by decide +kernel

theorem r_810 : recsK7OK T qscale den6 d14 lamN lamD l7 810 1 = true := recK7_of (n := 112) t_810 n_810 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_810_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_810_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_810_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_810_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_810_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_810_5 (v_810_6)))))))

theorem t_811 : treeK7OK l7 811 = true := by decide +kernel

theorem n_811 : (recAt l7 811).2.2.2.length ≤ 48 := by decide +kernel

theorem v_811_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 811 0 16 = true := by decide +kernel

theorem v_811_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 811 16 16 = true := by decide +kernel

theorem v_811_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 811 32 16 = true := by decide +kernel

theorem r_811 : recsK7OK T qscale den6 d14 lamN lamD l7 811 1 = true := recK7_of (n := 48) t_811 n_811 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_811_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_811_1 (v_811_2)))

theorem rs_808 : recsK7OK T qscale den6 d14 lamN lamD l7 808 4 = true := recsK7OK_succ (lo := 808) (n := 3) r_808 (recsK7OK_succ (lo := 809) (n := 2) r_809 (recsK7OK_succ (lo := 810) (n := 1) r_810 (r_811)))

end BeatAvg.K.K7
