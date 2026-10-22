import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_812 : treeK7OK l7 812 = true := by decide +kernel

theorem n_812 : (recAt l7 812).2.2.2.length ≤ 176 := by decide +kernel

theorem v_812_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 0 16 = true := by decide +kernel

theorem v_812_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 16 16 = true := by decide +kernel

theorem v_812_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 32 16 = true := by decide +kernel

theorem v_812_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 48 16 = true := by decide +kernel

theorem v_812_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 64 16 = true := by decide +kernel

theorem v_812_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 80 16 = true := by decide +kernel

theorem v_812_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 96 16 = true := by decide +kernel

theorem v_812_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 112 16 = true := by decide +kernel

theorem v_812_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 128 16 = true := by decide +kernel

theorem v_812_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 144 16 = true := by decide +kernel

theorem v_812_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 812 160 16 = true := by decide +kernel

theorem r_812 : recsK7OK T qscale den6 d14 lamN lamD l7 812 1 = true := recK7_of (n := 176) t_812 n_812 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_812_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_812_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_812_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_812_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_812_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_812_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_812_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_812_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_812_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_812_9 (v_812_10)))))))))))

theorem t_813 : treeK7OK l7 813 = true := by decide +kernel

theorem n_813 : (recAt l7 813).2.2.2.length ≤ 80 := by decide +kernel

theorem v_813_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 813 0 16 = true := by decide +kernel

theorem v_813_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 813 16 16 = true := by decide +kernel

theorem v_813_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 813 32 16 = true := by decide +kernel

theorem v_813_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 813 48 16 = true := by decide +kernel

theorem v_813_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 813 64 16 = true := by decide +kernel

theorem r_813 : recsK7OK T qscale den6 d14 lamN lamD l7 813 1 = true := recK7_of (n := 80) t_813 n_813 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_813_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_813_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_813_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_813_3 (v_813_4)))))

theorem rs_812 : recsK7OK T qscale den6 d14 lamN lamD l7 812 2 = true := recsK7OK_succ (lo := 812) (n := 1) r_812 (r_813)

end BeatAvg.K.K7
