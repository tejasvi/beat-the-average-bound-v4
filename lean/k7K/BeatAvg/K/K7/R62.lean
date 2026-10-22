import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_235 : treeK7OK l7 235 = true := by decide +kernel

theorem n_235 : (recAt l7 235).2.2.2.length ≤ 240 := by decide +kernel

theorem v_235_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 0 16 = true := by decide +kernel

theorem v_235_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 16 16 = true := by decide +kernel

theorem v_235_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 32 16 = true := by decide +kernel

theorem v_235_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 48 16 = true := by decide +kernel

theorem v_235_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 64 16 = true := by decide +kernel

theorem v_235_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 80 16 = true := by decide +kernel

theorem v_235_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 96 16 = true := by decide +kernel

theorem v_235_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 112 16 = true := by decide +kernel

theorem v_235_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 128 16 = true := by decide +kernel

theorem v_235_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 144 16 = true := by decide +kernel

theorem v_235_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 160 16 = true := by decide +kernel

theorem v_235_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 176 16 = true := by decide +kernel

theorem v_235_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 192 16 = true := by decide +kernel

theorem v_235_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 208 16 = true := by decide +kernel

theorem v_235_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 235 224 16 = true := by decide +kernel

theorem r_235 : recsK7OK T qscale den6 d14 lamN lamD l7 235 1 = true := recK7_of (n := 240) t_235 n_235 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_235_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_235_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_235_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_235_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_235_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_235_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_235_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_235_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_235_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_235_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_235_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_235_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_235_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_235_13 (v_235_14)))))))))))))))

theorem t_236 : treeK7OK l7 236 = true := by decide +kernel

theorem n_236 : (recAt l7 236).2.2.2.length ≤ 144 := by decide +kernel

theorem v_236_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 0 16 = true := by decide +kernel

theorem v_236_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 16 16 = true := by decide +kernel

theorem v_236_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 32 16 = true := by decide +kernel

theorem v_236_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 48 16 = true := by decide +kernel

theorem v_236_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 64 16 = true := by decide +kernel

theorem v_236_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 80 16 = true := by decide +kernel

theorem v_236_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 96 16 = true := by decide +kernel

theorem v_236_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 112 16 = true := by decide +kernel

theorem v_236_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 236 128 16 = true := by decide +kernel

theorem r_236 : recsK7OK T qscale den6 d14 lamN lamD l7 236 1 = true := recK7_of (n := 144) t_236 n_236 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_236_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_236_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_236_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_236_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_236_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_236_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_236_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_236_7 (v_236_8)))))))))

theorem rs_235 : recsK7OK T qscale den6 d14 lamN lamD l7 235 2 = true := recsK7OK_succ (lo := 235) (n := 1) r_235 (r_236)

end BeatAvg.K.K7
