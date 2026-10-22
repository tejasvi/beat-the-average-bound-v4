import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_760 : treeK7OK l7 760 = true := by decide +kernel

theorem n_760 : (recAt l7 760).2.2.2.length ≤ 176 := by decide +kernel

theorem v_760_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 0 16 = true := by decide +kernel

theorem v_760_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 16 16 = true := by decide +kernel

theorem v_760_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 32 16 = true := by decide +kernel

theorem v_760_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 48 16 = true := by decide +kernel

theorem v_760_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 64 16 = true := by decide +kernel

theorem v_760_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 80 16 = true := by decide +kernel

theorem v_760_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 96 16 = true := by decide +kernel

theorem v_760_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 112 16 = true := by decide +kernel

theorem v_760_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 128 16 = true := by decide +kernel

theorem v_760_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 144 16 = true := by decide +kernel

theorem v_760_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 760 160 16 = true := by decide +kernel

theorem r_760 : recsK7OK T qscale den6 d14 lamN lamD l7 760 1 = true := recK7_of (n := 176) t_760 n_760 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_760_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_760_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_760_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_760_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_760_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_760_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_760_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_760_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_760_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_760_9 (v_760_10)))))))))))

theorem t_761 : treeK7OK l7 761 = true := by decide +kernel

theorem n_761 : (recAt l7 761).2.2.2.length ≤ 240 := by decide +kernel

theorem v_761_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 0 16 = true := by decide +kernel

theorem v_761_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 16 16 = true := by decide +kernel

theorem v_761_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 32 16 = true := by decide +kernel

theorem v_761_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 48 16 = true := by decide +kernel

theorem v_761_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 64 16 = true := by decide +kernel

theorem v_761_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 80 16 = true := by decide +kernel

theorem v_761_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 96 16 = true := by decide +kernel

theorem v_761_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 112 16 = true := by decide +kernel

theorem v_761_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 128 16 = true := by decide +kernel

theorem v_761_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 144 16 = true := by decide +kernel

theorem v_761_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 160 16 = true := by decide +kernel

theorem v_761_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 176 16 = true := by decide +kernel

theorem v_761_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 192 16 = true := by decide +kernel

theorem v_761_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 208 16 = true := by decide +kernel

theorem v_761_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 761 224 16 = true := by decide +kernel

theorem r_761 : recsK7OK T qscale den6 d14 lamN lamD l7 761 1 = true := recK7_of (n := 240) t_761 n_761 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_761_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_761_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_761_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_761_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_761_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_761_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_761_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_761_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_761_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_761_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_761_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_761_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_761_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_761_13 (v_761_14)))))))))))))))

theorem rs_760 : recsK7OK T qscale den6 d14 lamN lamD l7 760 2 = true := recsK7OK_succ (lo := 760) (n := 1) r_760 (r_761)

end BeatAvg.K.K7
