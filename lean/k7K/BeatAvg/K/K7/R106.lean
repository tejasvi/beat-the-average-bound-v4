import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_374 : treeK7OK l7 374 = true := by decide +kernel

theorem n_374 : (recAt l7 374).2.2.2.length ≤ 256 := by decide +kernel

theorem v_374_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 0 16 = true := by decide +kernel

theorem v_374_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 16 16 = true := by decide +kernel

theorem v_374_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 32 16 = true := by decide +kernel

theorem v_374_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 48 16 = true := by decide +kernel

theorem v_374_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 64 16 = true := by decide +kernel

theorem v_374_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 80 16 = true := by decide +kernel

theorem v_374_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 96 16 = true := by decide +kernel

theorem v_374_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 112 16 = true := by decide +kernel

theorem v_374_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 128 16 = true := by decide +kernel

theorem v_374_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 144 16 = true := by decide +kernel

theorem v_374_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 160 16 = true := by decide +kernel

theorem v_374_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 176 16 = true := by decide +kernel

theorem v_374_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 192 16 = true := by decide +kernel

theorem v_374_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 208 16 = true := by decide +kernel

theorem v_374_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 224 16 = true := by decide +kernel

theorem v_374_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 374 240 16 = true := by decide +kernel

theorem r_374 : recsK7OK T qscale den6 d14 lamN lamD l7 374 1 = true := recK7_of (n := 256) t_374 n_374 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_374_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_374_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_374_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_374_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_374_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_374_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_374_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_374_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_374_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_374_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_374_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_374_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_374_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_374_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_374_14 (v_374_15))))))))))))))))

theorem t_375 : treeK7OK l7 375 = true := by decide +kernel

theorem n_375 : (recAt l7 375).2.2.2.length ≤ 112 := by decide +kernel

theorem v_375_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 375 0 16 = true := by decide +kernel

theorem v_375_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 375 16 16 = true := by decide +kernel

theorem v_375_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 375 32 16 = true := by decide +kernel

theorem v_375_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 375 48 16 = true := by decide +kernel

theorem v_375_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 375 64 16 = true := by decide +kernel

theorem v_375_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 375 80 16 = true := by decide +kernel

theorem v_375_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 375 96 16 = true := by decide +kernel

theorem r_375 : recsK7OK T qscale den6 d14 lamN lamD l7 375 1 = true := recK7_of (n := 112) t_375 n_375 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_375_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_375_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_375_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_375_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_375_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_375_5 (v_375_6)))))))

theorem rs_374 : recsK7OK T qscale den6 d14 lamN lamD l7 374 2 = true := recsK7OK_succ (lo := 374) (n := 1) r_374 (r_375)

end BeatAvg.K.K7
