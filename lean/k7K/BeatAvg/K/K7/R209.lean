import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_729 : treeK7OK l7 729 = true := by decide +kernel

theorem n_729 : (recAt l7 729).2.2.2.length ≤ 176 := by decide +kernel

theorem v_729_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 0 16 = true := by decide +kernel

theorem v_729_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 16 16 = true := by decide +kernel

theorem v_729_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 32 16 = true := by decide +kernel

theorem v_729_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 48 16 = true := by decide +kernel

theorem v_729_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 64 16 = true := by decide +kernel

theorem v_729_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 80 16 = true := by decide +kernel

theorem v_729_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 96 16 = true := by decide +kernel

theorem v_729_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 112 16 = true := by decide +kernel

theorem v_729_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 128 16 = true := by decide +kernel

theorem v_729_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 144 16 = true := by decide +kernel

theorem v_729_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 729 160 16 = true := by decide +kernel

theorem r_729 : recsK7OK T qscale den6 d14 lamN lamD l7 729 1 = true := recK7_of (n := 176) t_729 n_729 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_729_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_729_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_729_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_729_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_729_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_729_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_729_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_729_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_729_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_729_9 (v_729_10)))))))))))

theorem t_730 : treeK7OK l7 730 = true := by decide +kernel

theorem n_730 : (recAt l7 730).2.2.2.length ≤ 112 := by decide +kernel

theorem v_730_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 730 0 16 = true := by decide +kernel

theorem v_730_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 730 16 16 = true := by decide +kernel

theorem v_730_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 730 32 16 = true := by decide +kernel

theorem v_730_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 730 48 16 = true := by decide +kernel

theorem v_730_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 730 64 16 = true := by decide +kernel

theorem v_730_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 730 80 16 = true := by decide +kernel

theorem v_730_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 730 96 16 = true := by decide +kernel

theorem r_730 : recsK7OK T qscale den6 d14 lamN lamD l7 730 1 = true := recK7_of (n := 112) t_730 n_730 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_730_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_730_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_730_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_730_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_730_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_730_5 (v_730_6)))))))

theorem t_731 : treeK7OK l7 731 = true := by decide +kernel

theorem n_731 : (recAt l7 731).2.2.2.length ≤ 96 := by decide +kernel

theorem v_731_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 731 0 16 = true := by decide +kernel

theorem v_731_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 731 16 16 = true := by decide +kernel

theorem v_731_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 731 32 16 = true := by decide +kernel

theorem v_731_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 731 48 16 = true := by decide +kernel

theorem v_731_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 731 64 16 = true := by decide +kernel

theorem v_731_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 731 80 16 = true := by decide +kernel

theorem r_731 : recsK7OK T qscale den6 d14 lamN lamD l7 731 1 = true := recK7_of (n := 96) t_731 n_731 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_731_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_731_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_731_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_731_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_731_4 (v_731_5))))))

theorem rs_729 : recsK7OK T qscale den6 d14 lamN lamD l7 729 3 = true := recsK7OK_succ (lo := 729) (n := 2) r_729 (recsK7OK_succ (lo := 730) (n := 1) r_730 (r_731))

end BeatAvg.K.K7
