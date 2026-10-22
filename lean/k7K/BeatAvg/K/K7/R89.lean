import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_337 : treeK7OK l7 337 = true := by decide +kernel

theorem n_337 : (recAt l7 337).2.2.2.length ≤ 160 := by decide +kernel

theorem v_337_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 0 16 = true := by decide +kernel

theorem v_337_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 16 16 = true := by decide +kernel

theorem v_337_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 32 16 = true := by decide +kernel

theorem v_337_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 48 16 = true := by decide +kernel

theorem v_337_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 64 16 = true := by decide +kernel

theorem v_337_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 80 16 = true := by decide +kernel

theorem v_337_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 96 16 = true := by decide +kernel

theorem v_337_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 112 16 = true := by decide +kernel

theorem v_337_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 128 16 = true := by decide +kernel

theorem v_337_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 337 144 16 = true := by decide +kernel

theorem r_337 : recsK7OK T qscale den6 d14 lamN lamD l7 337 1 = true := recK7_of (n := 160) t_337 n_337 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_337_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_337_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_337_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_337_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_337_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_337_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_337_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_337_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_337_8 (v_337_9))))))))))

theorem t_338 : treeK7OK l7 338 = true := by decide +kernel

theorem n_338 : (recAt l7 338).2.2.2.length ≤ 64 := by decide +kernel

theorem v_338_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 338 0 16 = true := by decide +kernel

theorem v_338_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 338 16 16 = true := by decide +kernel

theorem v_338_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 338 32 16 = true := by decide +kernel

theorem v_338_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 338 48 16 = true := by decide +kernel

theorem r_338 : recsK7OK T qscale den6 d14 lamN lamD l7 338 1 = true := recK7_of (n := 64) t_338 n_338 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_338_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_338_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_338_2 (v_338_3))))

theorem rs_337 : recsK7OK T qscale den6 d14 lamN lamD l7 337 2 = true := recsK7OK_succ (lo := 337) (n := 1) r_337 (r_338)

end BeatAvg.K.K7
