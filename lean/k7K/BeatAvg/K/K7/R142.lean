import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_472 : treeK7OK l7 472 = true := by decide +kernel

theorem n_472 : (recAt l7 472).2.2.2.length ≤ 224 := by decide +kernel

theorem v_472_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 0 16 = true := by decide +kernel

theorem v_472_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 16 16 = true := by decide +kernel

theorem v_472_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 32 16 = true := by decide +kernel

theorem v_472_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 48 16 = true := by decide +kernel

theorem v_472_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 64 16 = true := by decide +kernel

theorem v_472_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 80 16 = true := by decide +kernel

theorem v_472_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 96 16 = true := by decide +kernel

theorem v_472_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 112 16 = true := by decide +kernel

theorem v_472_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 128 16 = true := by decide +kernel

theorem v_472_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 144 16 = true := by decide +kernel

theorem v_472_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 160 16 = true := by decide +kernel

theorem v_472_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 176 16 = true := by decide +kernel

theorem v_472_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 192 16 = true := by decide +kernel

theorem v_472_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 472 208 16 = true := by decide +kernel

theorem r_472 : recsK7OK T qscale den6 d14 lamN lamD l7 472 1 = true := recK7_of (n := 224) t_472 n_472 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_472_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_472_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_472_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_472_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_472_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_472_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_472_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_472_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_472_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_472_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_472_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_472_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_472_12 (v_472_13))))))))))))))

theorem t_473 : treeK7OK l7 473 = true := by decide +kernel

theorem n_473 : (recAt l7 473).2.2.2.length ≤ 112 := by decide +kernel

theorem v_473_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 473 0 16 = true := by decide +kernel

theorem v_473_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 473 16 16 = true := by decide +kernel

theorem v_473_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 473 32 16 = true := by decide +kernel

theorem v_473_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 473 48 16 = true := by decide +kernel

theorem v_473_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 473 64 16 = true := by decide +kernel

theorem v_473_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 473 80 16 = true := by decide +kernel

theorem v_473_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 473 96 16 = true := by decide +kernel

theorem r_473 : recsK7OK T qscale den6 d14 lamN lamD l7 473 1 = true := recK7_of (n := 112) t_473 n_473 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_473_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_473_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_473_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_473_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_473_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_473_5 (v_473_6)))))))

theorem rs_472 : recsK7OK T qscale den6 d14 lamN lamD l7 472 2 = true := recsK7OK_succ (lo := 472) (n := 1) r_472 (r_473)

end BeatAvg.K.K7
