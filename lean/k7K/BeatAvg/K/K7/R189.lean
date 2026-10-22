import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_641 : treeK7OK l7 641 = true := by decide +kernel

theorem n_641 : (recAt l7 641).2.2.2.length ≤ 240 := by decide +kernel

theorem v_641_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 0 16 = true := by decide +kernel

theorem v_641_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 16 16 = true := by decide +kernel

theorem v_641_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 32 16 = true := by decide +kernel

theorem v_641_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 48 16 = true := by decide +kernel

theorem v_641_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 64 16 = true := by decide +kernel

theorem v_641_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 80 16 = true := by decide +kernel

theorem v_641_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 96 16 = true := by decide +kernel

theorem v_641_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 112 16 = true := by decide +kernel

theorem v_641_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 128 16 = true := by decide +kernel

theorem v_641_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 144 16 = true := by decide +kernel

theorem v_641_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 160 16 = true := by decide +kernel

theorem v_641_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 176 16 = true := by decide +kernel

theorem v_641_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 192 16 = true := by decide +kernel

theorem v_641_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 208 16 = true := by decide +kernel

theorem v_641_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 641 224 16 = true := by decide +kernel

theorem r_641 : recsK7OK T qscale den6 d14 lamN lamD l7 641 1 = true := recK7_of (n := 240) t_641 n_641 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_641_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_641_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_641_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_641_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_641_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_641_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_641_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_641_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_641_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_641_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_641_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_641_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_641_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_641_13 (v_641_14)))))))))))))))

theorem t_642 : treeK7OK l7 642 = true := by decide +kernel

theorem n_642 : (recAt l7 642).2.2.2.length ≤ 48 := by decide +kernel

theorem v_642_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 642 0 16 = true := by decide +kernel

theorem v_642_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 642 16 16 = true := by decide +kernel

theorem v_642_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 642 32 16 = true := by decide +kernel

theorem r_642 : recsK7OK T qscale den6 d14 lamN lamD l7 642 1 = true := recK7_of (n := 48) t_642 n_642 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_642_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_642_1 (v_642_2)))

theorem rs_641 : recsK7OK T qscale den6 d14 lamN lamD l7 641 2 = true := recsK7OK_succ (lo := 641) (n := 1) r_641 (r_642)

end BeatAvg.K.K7
