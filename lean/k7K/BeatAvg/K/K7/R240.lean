import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_791 : treeK7OK l7 791 = true := by decide +kernel

theorem n_791 : (recAt l7 791).2.2.2.length ≤ 128 := by decide +kernel

theorem v_791_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 0 16 = true := by decide +kernel

theorem v_791_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 16 16 = true := by decide +kernel

theorem v_791_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 32 16 = true := by decide +kernel

theorem v_791_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 48 16 = true := by decide +kernel

theorem v_791_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 64 16 = true := by decide +kernel

theorem v_791_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 80 16 = true := by decide +kernel

theorem v_791_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 96 16 = true := by decide +kernel

theorem v_791_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 791 112 16 = true := by decide +kernel

theorem r_791 : recsK7OK T qscale den6 d14 lamN lamD l7 791 1 = true := recK7_of (n := 128) t_791 n_791 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_791_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_791_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_791_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_791_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_791_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_791_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_791_6 (v_791_7))))))))

theorem t_792 : treeK7OK l7 792 = true := by decide +kernel

theorem n_792 : (recAt l7 792).2.2.2.length ≤ 160 := by decide +kernel

theorem v_792_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 0 16 = true := by decide +kernel

theorem v_792_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 16 16 = true := by decide +kernel

theorem v_792_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 32 16 = true := by decide +kernel

theorem v_792_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 48 16 = true := by decide +kernel

theorem v_792_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 64 16 = true := by decide +kernel

theorem v_792_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 80 16 = true := by decide +kernel

theorem v_792_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 96 16 = true := by decide +kernel

theorem v_792_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 112 16 = true := by decide +kernel

theorem v_792_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 128 16 = true := by decide +kernel

theorem v_792_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 792 144 16 = true := by decide +kernel

theorem r_792 : recsK7OK T qscale den6 d14 lamN lamD l7 792 1 = true := recK7_of (n := 160) t_792 n_792 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_792_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_792_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_792_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_792_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_792_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_792_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_792_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_792_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_792_8 (v_792_9))))))))))

theorem rs_791 : recsK7OK T qscale den6 d14 lamN lamD l7 791 2 = true := recsK7OK_succ (lo := 791) (n := 1) r_791 (r_792)

end BeatAvg.K.K7
