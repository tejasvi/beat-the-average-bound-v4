import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_734 : treeK7OK l7 734 = true := by decide +kernel

theorem n_734 : (recAt l7 734).2.2.2.length ≤ 192 := by decide +kernel

theorem v_734_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 0 16 = true := by decide +kernel

theorem v_734_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 16 16 = true := by decide +kernel

theorem v_734_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 32 16 = true := by decide +kernel

theorem v_734_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 48 16 = true := by decide +kernel

theorem v_734_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 64 16 = true := by decide +kernel

theorem v_734_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 80 16 = true := by decide +kernel

theorem v_734_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 96 16 = true := by decide +kernel

theorem v_734_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 112 16 = true := by decide +kernel

theorem v_734_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 128 16 = true := by decide +kernel

theorem v_734_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 144 16 = true := by decide +kernel

theorem v_734_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 160 16 = true := by decide +kernel

theorem v_734_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 734 176 16 = true := by decide +kernel

theorem r_734 : recsK7OK T qscale den6 d14 lamN lamD l7 734 1 = true := recK7_of (n := 192) t_734 n_734 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_734_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_734_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_734_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_734_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_734_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_734_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_734_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_734_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_734_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_734_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_734_10 (v_734_11))))))))))))

theorem t_735 : treeK7OK l7 735 = true := by decide +kernel

theorem n_735 : (recAt l7 735).2.2.2.length ≤ 160 := by decide +kernel

theorem v_735_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 0 16 = true := by decide +kernel

theorem v_735_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 16 16 = true := by decide +kernel

theorem v_735_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 32 16 = true := by decide +kernel

theorem v_735_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 48 16 = true := by decide +kernel

theorem v_735_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 64 16 = true := by decide +kernel

theorem v_735_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 80 16 = true := by decide +kernel

theorem v_735_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 96 16 = true := by decide +kernel

theorem v_735_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 112 16 = true := by decide +kernel

theorem v_735_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 128 16 = true := by decide +kernel

theorem v_735_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 735 144 16 = true := by decide +kernel

theorem r_735 : recsK7OK T qscale den6 d14 lamN lamD l7 735 1 = true := recK7_of (n := 160) t_735 n_735 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_735_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_735_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_735_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_735_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_735_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_735_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_735_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_735_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_735_8 (v_735_9))))))))))

theorem rs_734 : recsK7OK T qscale den6 d14 lamN lamD l7 734 2 = true := recsK7OK_succ (lo := 734) (n := 1) r_734 (r_735)

end BeatAvg.K.K7
