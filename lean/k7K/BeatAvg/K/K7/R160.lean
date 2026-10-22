import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_533 : treeK7OK l7 533 = true := by decide +kernel

theorem n_533 : (recAt l7 533).2.2.2.length ≤ 208 := by decide +kernel

theorem v_533_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 0 16 = true := by decide +kernel

theorem v_533_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 16 16 = true := by decide +kernel

theorem v_533_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 32 16 = true := by decide +kernel

theorem v_533_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 48 16 = true := by decide +kernel

theorem v_533_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 64 16 = true := by decide +kernel

theorem v_533_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 80 16 = true := by decide +kernel

theorem v_533_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 96 16 = true := by decide +kernel

theorem v_533_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 112 16 = true := by decide +kernel

theorem v_533_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 128 16 = true := by decide +kernel

theorem v_533_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 144 16 = true := by decide +kernel

theorem v_533_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 160 16 = true := by decide +kernel

theorem v_533_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 176 16 = true := by decide +kernel

theorem v_533_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 533 192 16 = true := by decide +kernel

theorem r_533 : recsK7OK T qscale den6 d14 lamN lamD l7 533 1 = true := recK7_of (n := 208) t_533 n_533 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_533_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_533_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_533_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_533_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_533_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_533_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_533_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_533_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_533_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_533_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_533_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_533_11 (v_533_12)))))))))))))

theorem t_534 : treeK7OK l7 534 = true := by decide +kernel

theorem n_534 : (recAt l7 534).2.2.2.length ≤ 160 := by decide +kernel

theorem v_534_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 0 16 = true := by decide +kernel

theorem v_534_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 16 16 = true := by decide +kernel

theorem v_534_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 32 16 = true := by decide +kernel

theorem v_534_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 48 16 = true := by decide +kernel

theorem v_534_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 64 16 = true := by decide +kernel

theorem v_534_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 80 16 = true := by decide +kernel

theorem v_534_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 96 16 = true := by decide +kernel

theorem v_534_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 112 16 = true := by decide +kernel

theorem v_534_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 128 16 = true := by decide +kernel

theorem v_534_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 534 144 16 = true := by decide +kernel

theorem r_534 : recsK7OK T qscale den6 d14 lamN lamD l7 534 1 = true := recK7_of (n := 160) t_534 n_534 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_534_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_534_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_534_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_534_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_534_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_534_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_534_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_534_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_534_8 (v_534_9))))))))))

theorem rs_533 : recsK7OK T qscale den6 d14 lamN lamD l7 533 2 = true := recsK7OK_succ (lo := 533) (n := 1) r_533 (r_534)

end BeatAvg.K.K7
