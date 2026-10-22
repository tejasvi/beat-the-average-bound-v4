import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_421 : treeK7OK l7 421 = true := by decide +kernel

theorem n_421 : (recAt l7 421).2.2.2.length ≤ 176 := by decide +kernel

theorem v_421_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 0 16 = true := by decide +kernel

theorem v_421_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 16 16 = true := by decide +kernel

theorem v_421_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 32 16 = true := by decide +kernel

theorem v_421_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 48 16 = true := by decide +kernel

theorem v_421_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 64 16 = true := by decide +kernel

theorem v_421_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 80 16 = true := by decide +kernel

theorem v_421_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 96 16 = true := by decide +kernel

theorem v_421_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 112 16 = true := by decide +kernel

theorem v_421_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 128 16 = true := by decide +kernel

theorem v_421_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 144 16 = true := by decide +kernel

theorem v_421_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 421 160 16 = true := by decide +kernel

theorem r_421 : recsK7OK T qscale den6 d14 lamN lamD l7 421 1 = true := recK7_of (n := 176) t_421 n_421 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_421_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_421_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_421_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_421_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_421_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_421_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_421_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_421_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_421_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_421_9 (v_421_10)))))))))))

theorem t_422 : treeK7OK l7 422 = true := by decide +kernel

theorem n_422 : (recAt l7 422).2.2.2.length ≤ 160 := by decide +kernel

theorem v_422_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 0 16 = true := by decide +kernel

theorem v_422_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 16 16 = true := by decide +kernel

theorem v_422_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 32 16 = true := by decide +kernel

theorem v_422_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 48 16 = true := by decide +kernel

theorem v_422_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 64 16 = true := by decide +kernel

theorem v_422_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 80 16 = true := by decide +kernel

theorem v_422_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 96 16 = true := by decide +kernel

theorem v_422_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 112 16 = true := by decide +kernel

theorem v_422_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 128 16 = true := by decide +kernel

theorem v_422_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 422 144 16 = true := by decide +kernel

theorem r_422 : recsK7OK T qscale den6 d14 lamN lamD l7 422 1 = true := recK7_of (n := 160) t_422 n_422 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_422_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_422_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_422_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_422_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_422_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_422_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_422_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_422_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_422_8 (v_422_9))))))))))

theorem rs_421 : recsK7OK T qscale den6 d14 lamN lamD l7 421 2 = true := recsK7OK_succ (lo := 421) (n := 1) r_421 (r_422)

end BeatAvg.K.K7
