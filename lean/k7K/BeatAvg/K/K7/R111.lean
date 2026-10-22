import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_387 : treeK7OK l7 387 = true := by decide +kernel

theorem n_387 : (recAt l7 387).2.2.2.length ≤ 176 := by decide +kernel

theorem v_387_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 0 16 = true := by decide +kernel

theorem v_387_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 16 16 = true := by decide +kernel

theorem v_387_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 32 16 = true := by decide +kernel

theorem v_387_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 48 16 = true := by decide +kernel

theorem v_387_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 64 16 = true := by decide +kernel

theorem v_387_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 80 16 = true := by decide +kernel

theorem v_387_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 96 16 = true := by decide +kernel

theorem v_387_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 112 16 = true := by decide +kernel

theorem v_387_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 128 16 = true := by decide +kernel

theorem v_387_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 144 16 = true := by decide +kernel

theorem v_387_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 387 160 16 = true := by decide +kernel

theorem r_387 : recsK7OK T qscale den6 d14 lamN lamD l7 387 1 = true := recK7_of (n := 176) t_387 n_387 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_387_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_387_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_387_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_387_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_387_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_387_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_387_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_387_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_387_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_387_9 (v_387_10)))))))))))

theorem t_388 : treeK7OK l7 388 = true := by decide +kernel

theorem n_388 : (recAt l7 388).2.2.2.length ≤ 128 := by decide +kernel

theorem v_388_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 0 16 = true := by decide +kernel

theorem v_388_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 16 16 = true := by decide +kernel

theorem v_388_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 32 16 = true := by decide +kernel

theorem v_388_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 48 16 = true := by decide +kernel

theorem v_388_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 64 16 = true := by decide +kernel

theorem v_388_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 80 16 = true := by decide +kernel

theorem v_388_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 96 16 = true := by decide +kernel

theorem v_388_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 388 112 16 = true := by decide +kernel

theorem r_388 : recsK7OK T qscale den6 d14 lamN lamD l7 388 1 = true := recK7_of (n := 128) t_388 n_388 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_388_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_388_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_388_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_388_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_388_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_388_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_388_6 (v_388_7))))))))

theorem rs_387 : recsK7OK T qscale den6 d14 lamN lamD l7 387 2 = true := recsK7OK_succ (lo := 387) (n := 1) r_387 (r_388)

end BeatAvg.K.K7
