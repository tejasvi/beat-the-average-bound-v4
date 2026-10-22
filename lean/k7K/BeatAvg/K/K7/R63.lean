import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_237 : treeK7OK l7 237 = true := by decide +kernel

theorem n_237 : (recAt l7 237).2.2.2.length ≤ 96 := by decide +kernel

theorem v_237_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 237 0 16 = true := by decide +kernel

theorem v_237_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 237 16 16 = true := by decide +kernel

theorem v_237_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 237 32 16 = true := by decide +kernel

theorem v_237_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 237 48 16 = true := by decide +kernel

theorem v_237_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 237 64 16 = true := by decide +kernel

theorem v_237_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 237 80 16 = true := by decide +kernel

theorem r_237 : recsK7OK T qscale den6 d14 lamN lamD l7 237 1 = true := recK7_of (n := 96) t_237 n_237 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_237_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_237_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_237_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_237_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_237_4 (v_237_5))))))

theorem t_238 : treeK7OK l7 238 = true := by decide +kernel

theorem n_238 : (recAt l7 238).2.2.2.length ≤ 64 := by decide +kernel

theorem v_238_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 238 0 16 = true := by decide +kernel

theorem v_238_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 238 16 16 = true := by decide +kernel

theorem v_238_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 238 32 16 = true := by decide +kernel

theorem v_238_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 238 48 16 = true := by decide +kernel

theorem r_238 : recsK7OK T qscale den6 d14 lamN lamD l7 238 1 = true := recK7_of (n := 64) t_238 n_238 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_238_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_238_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_238_2 (v_238_3))))

theorem t_239 : treeK7OK l7 239 = true := by decide +kernel

theorem n_239 : (recAt l7 239).2.2.2.length ≤ 192 := by decide +kernel

theorem v_239_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 0 16 = true := by decide +kernel

theorem v_239_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 16 16 = true := by decide +kernel

theorem v_239_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 32 16 = true := by decide +kernel

theorem v_239_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 48 16 = true := by decide +kernel

theorem v_239_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 64 16 = true := by decide +kernel

theorem v_239_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 80 16 = true := by decide +kernel

theorem v_239_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 96 16 = true := by decide +kernel

theorem v_239_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 112 16 = true := by decide +kernel

theorem v_239_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 128 16 = true := by decide +kernel

theorem v_239_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 144 16 = true := by decide +kernel

theorem v_239_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 160 16 = true := by decide +kernel

theorem v_239_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 239 176 16 = true := by decide +kernel

theorem r_239 : recsK7OK T qscale den6 d14 lamN lamD l7 239 1 = true := recK7_of (n := 192) t_239 n_239 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_239_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_239_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_239_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_239_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_239_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_239_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_239_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_239_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_239_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_239_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_239_10 (v_239_11))))))))))))

theorem rs_237 : recsK7OK T qscale den6 d14 lamN lamD l7 237 3 = true := recsK7OK_succ (lo := 237) (n := 2) r_237 (recsK7OK_succ (lo := 238) (n := 1) r_238 (r_239))

end BeatAvg.K.K7
