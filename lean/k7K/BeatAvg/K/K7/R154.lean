import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_516 : treeK7OK l7 516 = true := by decide +kernel

theorem n_516 : (recAt l7 516).2.2.2.length ≤ 208 := by decide +kernel

theorem v_516_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 0 16 = true := by decide +kernel

theorem v_516_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 16 16 = true := by decide +kernel

theorem v_516_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 32 16 = true := by decide +kernel

theorem v_516_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 48 16 = true := by decide +kernel

theorem v_516_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 64 16 = true := by decide +kernel

theorem v_516_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 80 16 = true := by decide +kernel

theorem v_516_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 96 16 = true := by decide +kernel

theorem v_516_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 112 16 = true := by decide +kernel

theorem v_516_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 128 16 = true := by decide +kernel

theorem v_516_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 144 16 = true := by decide +kernel

theorem v_516_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 160 16 = true := by decide +kernel

theorem v_516_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 176 16 = true := by decide +kernel

theorem v_516_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 516 192 16 = true := by decide +kernel

theorem r_516 : recsK7OK T qscale den6 d14 lamN lamD l7 516 1 = true := recK7_of (n := 208) t_516 n_516 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_516_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_516_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_516_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_516_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_516_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_516_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_516_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_516_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_516_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_516_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_516_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_516_11 (v_516_12)))))))))))))

theorem t_517 : treeK7OK l7 517 = true := by decide +kernel

theorem n_517 : (recAt l7 517).2.2.2.length ≤ 176 := by decide +kernel

theorem v_517_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 0 16 = true := by decide +kernel

theorem v_517_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 16 16 = true := by decide +kernel

theorem v_517_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 32 16 = true := by decide +kernel

theorem v_517_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 48 16 = true := by decide +kernel

theorem v_517_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 64 16 = true := by decide +kernel

theorem v_517_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 80 16 = true := by decide +kernel

theorem v_517_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 96 16 = true := by decide +kernel

theorem v_517_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 112 16 = true := by decide +kernel

theorem v_517_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 128 16 = true := by decide +kernel

theorem v_517_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 144 16 = true := by decide +kernel

theorem v_517_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 517 160 16 = true := by decide +kernel

theorem r_517 : recsK7OK T qscale den6 d14 lamN lamD l7 517 1 = true := recK7_of (n := 176) t_517 n_517 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_517_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_517_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_517_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_517_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_517_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_517_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_517_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_517_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_517_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_517_9 (v_517_10)))))))))))

theorem rs_516 : recsK7OK T qscale den6 d14 lamN lamD l7 516 2 = true := recsK7OK_succ (lo := 516) (n := 1) r_516 (r_517)

end BeatAvg.K.K7
