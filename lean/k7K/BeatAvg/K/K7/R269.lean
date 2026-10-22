import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_846 : treeK7OK l7 846 = true := by decide +kernel

theorem n_846 : (recAt l7 846).2.2.2.length ≤ 144 := by decide +kernel

theorem v_846_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 0 16 = true := by decide +kernel

theorem v_846_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 16 16 = true := by decide +kernel

theorem v_846_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 32 16 = true := by decide +kernel

theorem v_846_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 48 16 = true := by decide +kernel

theorem v_846_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 64 16 = true := by decide +kernel

theorem v_846_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 80 16 = true := by decide +kernel

theorem v_846_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 96 16 = true := by decide +kernel

theorem v_846_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 112 16 = true := by decide +kernel

theorem v_846_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 846 128 16 = true := by decide +kernel

theorem r_846 : recsK7OK T qscale den6 d14 lamN lamD l7 846 1 = true := recK7_of (n := 144) t_846 n_846 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_846_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_846_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_846_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_846_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_846_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_846_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_846_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_846_7 (v_846_8)))))))))

theorem t_847 : treeK7OK l7 847 = true := by decide +kernel

theorem n_847 : (recAt l7 847).2.2.2.length ≤ 128 := by decide +kernel

theorem v_847_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 0 16 = true := by decide +kernel

theorem v_847_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 16 16 = true := by decide +kernel

theorem v_847_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 32 16 = true := by decide +kernel

theorem v_847_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 48 16 = true := by decide +kernel

theorem v_847_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 64 16 = true := by decide +kernel

theorem v_847_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 80 16 = true := by decide +kernel

theorem v_847_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 96 16 = true := by decide +kernel

theorem v_847_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 847 112 16 = true := by decide +kernel

theorem r_847 : recsK7OK T qscale den6 d14 lamN lamD l7 847 1 = true := recK7_of (n := 128) t_847 n_847 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_847_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_847_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_847_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_847_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_847_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_847_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_847_6 (v_847_7))))))))

theorem t_848 : treeK7OK l7 848 = true := by decide +kernel

theorem n_848 : (recAt l7 848).2.2.2.length ≤ 96 := by decide +kernel

theorem v_848_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 848 0 16 = true := by decide +kernel

theorem v_848_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 848 16 16 = true := by decide +kernel

theorem v_848_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 848 32 16 = true := by decide +kernel

theorem v_848_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 848 48 16 = true := by decide +kernel

theorem v_848_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 848 64 16 = true := by decide +kernel

theorem v_848_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 848 80 16 = true := by decide +kernel

theorem r_848 : recsK7OK T qscale den6 d14 lamN lamD l7 848 1 = true := recK7_of (n := 96) t_848 n_848 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_848_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_848_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_848_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_848_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_848_4 (v_848_5))))))

theorem rs_846 : recsK7OK T qscale den6 d14 lamN lamD l7 846 3 = true := recsK7OK_succ (lo := 846) (n := 2) r_846 (recsK7OK_succ (lo := 847) (n := 1) r_847 (r_848))

end BeatAvg.K.K7
