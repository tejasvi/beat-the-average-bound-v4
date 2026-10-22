import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_736 : treeK7OK l7 736 = true := by decide +kernel

theorem n_736 : (recAt l7 736).2.2.2.length ≤ 64 := by decide +kernel

theorem v_736_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 736 0 16 = true := by decide +kernel

theorem v_736_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 736 16 16 = true := by decide +kernel

theorem v_736_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 736 32 16 = true := by decide +kernel

theorem v_736_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 736 48 16 = true := by decide +kernel

theorem r_736 : recsK7OK T qscale den6 d14 lamN lamD l7 736 1 = true := recK7_of (n := 64) t_736 n_736 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_736_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_736_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_736_2 (v_736_3))))

theorem t_737 : treeK7OK l7 737 = true := by decide +kernel

theorem n_737 : (recAt l7 737).2.2.2.length ≤ 160 := by decide +kernel

theorem v_737_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 0 16 = true := by decide +kernel

theorem v_737_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 16 16 = true := by decide +kernel

theorem v_737_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 32 16 = true := by decide +kernel

theorem v_737_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 48 16 = true := by decide +kernel

theorem v_737_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 64 16 = true := by decide +kernel

theorem v_737_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 80 16 = true := by decide +kernel

theorem v_737_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 96 16 = true := by decide +kernel

theorem v_737_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 112 16 = true := by decide +kernel

theorem v_737_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 128 16 = true := by decide +kernel

theorem v_737_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 737 144 16 = true := by decide +kernel

theorem r_737 : recsK7OK T qscale den6 d14 lamN lamD l7 737 1 = true := recK7_of (n := 160) t_737 n_737 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_737_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_737_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_737_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_737_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_737_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_737_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_737_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_737_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_737_8 (v_737_9))))))))))

theorem t_738 : treeK7OK l7 738 = true := by decide +kernel

theorem n_738 : (recAt l7 738).2.2.2.length ≤ 96 := by decide +kernel

theorem v_738_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 738 0 16 = true := by decide +kernel

theorem v_738_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 738 16 16 = true := by decide +kernel

theorem v_738_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 738 32 16 = true := by decide +kernel

theorem v_738_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 738 48 16 = true := by decide +kernel

theorem v_738_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 738 64 16 = true := by decide +kernel

theorem v_738_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 738 80 16 = true := by decide +kernel

theorem r_738 : recsK7OK T qscale den6 d14 lamN lamD l7 738 1 = true := recK7_of (n := 96) t_738 n_738 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_738_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_738_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_738_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_738_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_738_4 (v_738_5))))))

theorem rs_736 : recsK7OK T qscale den6 d14 lamN lamD l7 736 3 = true := recsK7OK_succ (lo := 736) (n := 2) r_736 (recsK7OK_succ (lo := 737) (n := 1) r_737 (r_738))

end BeatAvg.K.K7
