import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_958 : treeK7OK l7 958 = true := by decide +kernel

theorem n_958 : (recAt l7 958).2.2.2.length ≤ 208 := by decide +kernel

theorem v_958_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 0 16 = true := by decide +kernel

theorem v_958_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 16 16 = true := by decide +kernel

theorem v_958_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 32 16 = true := by decide +kernel

theorem v_958_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 48 16 = true := by decide +kernel

theorem v_958_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 64 16 = true := by decide +kernel

theorem v_958_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 80 16 = true := by decide +kernel

theorem v_958_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 96 16 = true := by decide +kernel

theorem v_958_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 112 16 = true := by decide +kernel

theorem v_958_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 128 16 = true := by decide +kernel

theorem v_958_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 144 16 = true := by decide +kernel

theorem v_958_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 160 16 = true := by decide +kernel

theorem v_958_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 176 16 = true := by decide +kernel

theorem v_958_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 958 192 16 = true := by decide +kernel

theorem r_958 : recsK7OK T qscale den6 d14 lamN lamD l7 958 1 = true := recK7_of (n := 208) t_958 n_958 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_958_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_958_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_958_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_958_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_958_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_958_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_958_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_958_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_958_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_958_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_958_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_958_11 (v_958_12)))))))))))))

theorem t_959 : treeK7OK l7 959 = true := by decide +kernel

theorem n_959 : (recAt l7 959).2.2.2.length ≤ 176 := by decide +kernel

theorem v_959_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 0 16 = true := by decide +kernel

theorem v_959_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 16 16 = true := by decide +kernel

theorem v_959_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 32 16 = true := by decide +kernel

theorem v_959_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 48 16 = true := by decide +kernel

theorem v_959_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 64 16 = true := by decide +kernel

theorem v_959_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 80 16 = true := by decide +kernel

theorem v_959_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 96 16 = true := by decide +kernel

theorem v_959_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 112 16 = true := by decide +kernel

theorem v_959_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 128 16 = true := by decide +kernel

theorem v_959_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 144 16 = true := by decide +kernel

theorem v_959_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 959 160 16 = true := by decide +kernel

theorem r_959 : recsK7OK T qscale den6 d14 lamN lamD l7 959 1 = true := recK7_of (n := 176) t_959 n_959 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_959_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_959_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_959_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_959_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_959_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_959_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_959_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_959_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_959_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_959_9 (v_959_10)))))))))))

theorem rs_958 : recsK7OK T qscale den6 d14 lamN lamD l7 958 2 = true := recsK7OK_succ (lo := 958) (n := 1) r_958 (r_959)

end BeatAvg.K.K7
