import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_444 : treeK7OK l7 444 = true := by decide +kernel

theorem n_444 : (recAt l7 444).2.2.2.length ≤ 208 := by decide +kernel

theorem v_444_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 0 16 = true := by decide +kernel

theorem v_444_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 16 16 = true := by decide +kernel

theorem v_444_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 32 16 = true := by decide +kernel

theorem v_444_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 48 16 = true := by decide +kernel

theorem v_444_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 64 16 = true := by decide +kernel

theorem v_444_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 80 16 = true := by decide +kernel

theorem v_444_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 96 16 = true := by decide +kernel

theorem v_444_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 112 16 = true := by decide +kernel

theorem v_444_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 128 16 = true := by decide +kernel

theorem v_444_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 144 16 = true := by decide +kernel

theorem v_444_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 160 16 = true := by decide +kernel

theorem v_444_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 176 16 = true := by decide +kernel

theorem v_444_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 444 192 16 = true := by decide +kernel

theorem r_444 : recsK7OK T qscale den6 d14 lamN lamD l7 444 1 = true := recK7_of (n := 208) t_444 n_444 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_444_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_444_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_444_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_444_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_444_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_444_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_444_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_444_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_444_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_444_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_444_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_444_11 (v_444_12)))))))))))))

theorem t_445 : treeK7OK l7 445 = true := by decide +kernel

theorem n_445 : (recAt l7 445).2.2.2.length ≤ 144 := by decide +kernel

theorem v_445_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 0 16 = true := by decide +kernel

theorem v_445_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 16 16 = true := by decide +kernel

theorem v_445_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 32 16 = true := by decide +kernel

theorem v_445_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 48 16 = true := by decide +kernel

theorem v_445_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 64 16 = true := by decide +kernel

theorem v_445_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 80 16 = true := by decide +kernel

theorem v_445_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 96 16 = true := by decide +kernel

theorem v_445_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 112 16 = true := by decide +kernel

theorem v_445_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 445 128 16 = true := by decide +kernel

theorem r_445 : recsK7OK T qscale den6 d14 lamN lamD l7 445 1 = true := recK7_of (n := 144) t_445 n_445 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_445_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_445_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_445_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_445_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_445_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_445_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_445_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_445_7 (v_445_8)))))))))

theorem rs_444 : recsK7OK T qscale den6 d14 lamN lamD l7 444 2 = true := recsK7OK_succ (lo := 444) (n := 1) r_444 (r_445)

end BeatAvg.K.K7
