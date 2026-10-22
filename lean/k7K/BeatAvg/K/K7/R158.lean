import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_527 : treeK7OK l7 527 = true := by decide +kernel

theorem n_527 : (recAt l7 527).2.2.2.length ≤ 240 := by decide +kernel

theorem v_527_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 0 16 = true := by decide +kernel

theorem v_527_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 16 16 = true := by decide +kernel

theorem v_527_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 32 16 = true := by decide +kernel

theorem v_527_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 48 16 = true := by decide +kernel

theorem v_527_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 64 16 = true := by decide +kernel

theorem v_527_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 80 16 = true := by decide +kernel

theorem v_527_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 96 16 = true := by decide +kernel

theorem v_527_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 112 16 = true := by decide +kernel

theorem v_527_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 128 16 = true := by decide +kernel

theorem v_527_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 144 16 = true := by decide +kernel

theorem v_527_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 160 16 = true := by decide +kernel

theorem v_527_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 176 16 = true := by decide +kernel

theorem v_527_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 192 16 = true := by decide +kernel

theorem v_527_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 208 16 = true := by decide +kernel

theorem v_527_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 527 224 16 = true := by decide +kernel

theorem r_527 : recsK7OK T qscale den6 d14 lamN lamD l7 527 1 = true := recK7_of (n := 240) t_527 n_527 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_527_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_527_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_527_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_527_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_527_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_527_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_527_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_527_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_527_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_527_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_527_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_527_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_527_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_527_13 (v_527_14)))))))))))))))

theorem t_528 : treeK7OK l7 528 = true := by decide +kernel

theorem n_528 : (recAt l7 528).2.2.2.length ≤ 160 := by decide +kernel

theorem v_528_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 0 16 = true := by decide +kernel

theorem v_528_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 16 16 = true := by decide +kernel

theorem v_528_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 32 16 = true := by decide +kernel

theorem v_528_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 48 16 = true := by decide +kernel

theorem v_528_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 64 16 = true := by decide +kernel

theorem v_528_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 80 16 = true := by decide +kernel

theorem v_528_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 96 16 = true := by decide +kernel

theorem v_528_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 112 16 = true := by decide +kernel

theorem v_528_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 128 16 = true := by decide +kernel

theorem v_528_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 528 144 16 = true := by decide +kernel

theorem r_528 : recsK7OK T qscale den6 d14 lamN lamD l7 528 1 = true := recK7_of (n := 160) t_528 n_528 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_528_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_528_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_528_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_528_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_528_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_528_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_528_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_528_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_528_8 (v_528_9))))))))))

theorem rs_527 : recsK7OK T qscale den6 d14 lamN lamD l7 527 2 = true := recsK7OK_succ (lo := 527) (n := 1) r_527 (r_528)

end BeatAvg.K.K7
