import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_111 : treeK7OK l7 111 = true := by decide +kernel

theorem n_111 : (recAt l7 111).2.2.2.length ≤ 96 := by decide +kernel

theorem v_111_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 111 0 16 = true := by decide +kernel

theorem v_111_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 111 16 16 = true := by decide +kernel

theorem v_111_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 111 32 16 = true := by decide +kernel

theorem v_111_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 111 48 16 = true := by decide +kernel

theorem v_111_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 111 64 16 = true := by decide +kernel

theorem v_111_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 111 80 16 = true := by decide +kernel

theorem r_111 : recsK7OK T qscale den6 d14 lamN lamD l7 111 1 = true := recK7_of (n := 96) t_111 n_111 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_111_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_111_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_111_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_111_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_111_4 (v_111_5))))))

theorem t_112 : treeK7OK l7 112 = true := by decide +kernel

theorem n_112 : (recAt l7 112).2.2.2.length ≤ 208 := by decide +kernel

theorem v_112_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 0 16 = true := by decide +kernel

theorem v_112_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 16 16 = true := by decide +kernel

theorem v_112_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 32 16 = true := by decide +kernel

theorem v_112_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 48 16 = true := by decide +kernel

theorem v_112_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 64 16 = true := by decide +kernel

theorem v_112_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 80 16 = true := by decide +kernel

theorem v_112_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 96 16 = true := by decide +kernel

theorem v_112_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 112 16 = true := by decide +kernel

theorem v_112_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 128 16 = true := by decide +kernel

theorem v_112_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 144 16 = true := by decide +kernel

theorem v_112_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 160 16 = true := by decide +kernel

theorem v_112_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 176 16 = true := by decide +kernel

theorem v_112_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 112 192 16 = true := by decide +kernel

theorem r_112 : recsK7OK T qscale den6 d14 lamN lamD l7 112 1 = true := recK7_of (n := 208) t_112 n_112 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_112_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_112_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_112_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_112_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_112_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_112_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_112_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_112_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_112_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_112_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_112_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_112_11 (v_112_12)))))))))))))

theorem rs_111 : recsK7OK T qscale den6 d14 lamN lamD l7 111 2 = true := recsK7OK_succ (lo := 111) (n := 1) r_111 (r_112)

end BeatAvg.K.K7
