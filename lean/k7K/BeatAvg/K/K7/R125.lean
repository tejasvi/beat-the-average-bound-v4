import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_423 : treeK7OK l7 423 = true := by decide +kernel

theorem n_423 : (recAt l7 423).2.2.2.length ≤ 192 := by decide +kernel

theorem v_423_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 0 16 = true := by decide +kernel

theorem v_423_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 16 16 = true := by decide +kernel

theorem v_423_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 32 16 = true := by decide +kernel

theorem v_423_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 48 16 = true := by decide +kernel

theorem v_423_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 64 16 = true := by decide +kernel

theorem v_423_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 80 16 = true := by decide +kernel

theorem v_423_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 96 16 = true := by decide +kernel

theorem v_423_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 112 16 = true := by decide +kernel

theorem v_423_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 128 16 = true := by decide +kernel

theorem v_423_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 144 16 = true := by decide +kernel

theorem v_423_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 160 16 = true := by decide +kernel

theorem v_423_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 423 176 16 = true := by decide +kernel

theorem r_423 : recsK7OK T qscale den6 d14 lamN lamD l7 423 1 = true := recK7_of (n := 192) t_423 n_423 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_423_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_423_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_423_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_423_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_423_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_423_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_423_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_423_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_423_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_423_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_423_10 (v_423_11))))))))))))

theorem t_424 : treeK7OK l7 424 = true := by decide +kernel

theorem n_424 : (recAt l7 424).2.2.2.length ≤ 112 := by decide +kernel

theorem v_424_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 424 0 16 = true := by decide +kernel

theorem v_424_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 424 16 16 = true := by decide +kernel

theorem v_424_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 424 32 16 = true := by decide +kernel

theorem v_424_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 424 48 16 = true := by decide +kernel

theorem v_424_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 424 64 16 = true := by decide +kernel

theorem v_424_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 424 80 16 = true := by decide +kernel

theorem v_424_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 424 96 16 = true := by decide +kernel

theorem r_424 : recsK7OK T qscale den6 d14 lamN lamD l7 424 1 = true := recK7_of (n := 112) t_424 n_424 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_424_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_424_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_424_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_424_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_424_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_424_5 (v_424_6)))))))

theorem rs_423 : recsK7OK T qscale den6 d14 lamN lamD l7 423 2 = true := recsK7OK_succ (lo := 423) (n := 1) r_423 (r_424)

end BeatAvg.K.K7
