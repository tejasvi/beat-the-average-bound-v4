import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_437 : treeK7OK l7 437 = true := by decide +kernel

theorem n_437 : (recAt l7 437).2.2.2.length ≤ 208 := by decide +kernel

theorem v_437_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 0 16 = true := by decide +kernel

theorem v_437_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 16 16 = true := by decide +kernel

theorem v_437_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 32 16 = true := by decide +kernel

theorem v_437_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 48 16 = true := by decide +kernel

theorem v_437_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 64 16 = true := by decide +kernel

theorem v_437_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 80 16 = true := by decide +kernel

theorem v_437_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 96 16 = true := by decide +kernel

theorem v_437_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 112 16 = true := by decide +kernel

theorem v_437_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 128 16 = true := by decide +kernel

theorem v_437_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 144 16 = true := by decide +kernel

theorem v_437_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 160 16 = true := by decide +kernel

theorem v_437_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 176 16 = true := by decide +kernel

theorem v_437_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 437 192 16 = true := by decide +kernel

theorem r_437 : recsK7OK T qscale den6 d14 lamN lamD l7 437 1 = true := recK7_of (n := 208) t_437 n_437 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_437_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_437_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_437_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_437_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_437_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_437_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_437_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_437_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_437_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_437_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_437_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_437_11 (v_437_12)))))))))))))

theorem t_438 : treeK7OK l7 438 = true := by decide +kernel

theorem n_438 : (recAt l7 438).2.2.2.length ≤ 112 := by decide +kernel

theorem v_438_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 438 0 16 = true := by decide +kernel

theorem v_438_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 438 16 16 = true := by decide +kernel

theorem v_438_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 438 32 16 = true := by decide +kernel

theorem v_438_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 438 48 16 = true := by decide +kernel

theorem v_438_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 438 64 16 = true := by decide +kernel

theorem v_438_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 438 80 16 = true := by decide +kernel

theorem v_438_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 438 96 16 = true := by decide +kernel

theorem r_438 : recsK7OK T qscale den6 d14 lamN lamD l7 438 1 = true := recK7_of (n := 112) t_438 n_438 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_438_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_438_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_438_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_438_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_438_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_438_5 (v_438_6)))))))

theorem t_439 : treeK7OK l7 439 = true := by decide +kernel

theorem n_439 : (recAt l7 439).2.2.2.length ≤ 96 := by decide +kernel

theorem v_439_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 439 0 16 = true := by decide +kernel

theorem v_439_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 439 16 16 = true := by decide +kernel

theorem v_439_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 439 32 16 = true := by decide +kernel

theorem v_439_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 439 48 16 = true := by decide +kernel

theorem v_439_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 439 64 16 = true := by decide +kernel

theorem v_439_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 439 80 16 = true := by decide +kernel

theorem r_439 : recsK7OK T qscale den6 d14 lamN lamD l7 439 1 = true := recK7_of (n := 96) t_439 n_439 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_439_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_439_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_439_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_439_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_439_4 (v_439_5))))))

theorem rs_437 : recsK7OK T qscale den6 d14 lamN lamD l7 437 3 = true := recsK7OK_succ (lo := 437) (n := 2) r_437 (recsK7OK_succ (lo := 438) (n := 1) r_438 (r_439))

end BeatAvg.K.K7
