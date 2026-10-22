import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_945 : treeK7OK l7 945 = true := by decide +kernel

theorem n_945 : (recAt l7 945).2.2.2.length ≤ 176 := by decide +kernel

theorem v_945_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 0 16 = true := by decide +kernel

theorem v_945_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 16 16 = true := by decide +kernel

theorem v_945_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 32 16 = true := by decide +kernel

theorem v_945_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 48 16 = true := by decide +kernel

theorem v_945_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 64 16 = true := by decide +kernel

theorem v_945_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 80 16 = true := by decide +kernel

theorem v_945_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 96 16 = true := by decide +kernel

theorem v_945_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 112 16 = true := by decide +kernel

theorem v_945_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 128 16 = true := by decide +kernel

theorem v_945_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 144 16 = true := by decide +kernel

theorem v_945_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 945 160 16 = true := by decide +kernel

theorem r_945 : recsK7OK T qscale den6 d14 lamN lamD l7 945 1 = true := recK7_of (n := 176) t_945 n_945 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_945_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_945_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_945_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_945_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_945_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_945_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_945_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_945_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_945_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_945_9 (v_945_10)))))))))))

theorem t_946 : treeK7OK l7 946 = true := by decide +kernel

theorem n_946 : (recAt l7 946).2.2.2.length ≤ 192 := by decide +kernel

theorem v_946_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 0 16 = true := by decide +kernel

theorem v_946_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 16 16 = true := by decide +kernel

theorem v_946_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 32 16 = true := by decide +kernel

theorem v_946_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 48 16 = true := by decide +kernel

theorem v_946_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 64 16 = true := by decide +kernel

theorem v_946_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 80 16 = true := by decide +kernel

theorem v_946_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 96 16 = true := by decide +kernel

theorem v_946_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 112 16 = true := by decide +kernel

theorem v_946_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 128 16 = true := by decide +kernel

theorem v_946_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 144 16 = true := by decide +kernel

theorem v_946_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 160 16 = true := by decide +kernel

theorem v_946_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 946 176 16 = true := by decide +kernel

theorem r_946 : recsK7OK T qscale den6 d14 lamN lamD l7 946 1 = true := recK7_of (n := 192) t_946 n_946 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_946_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_946_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_946_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_946_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_946_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_946_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_946_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_946_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_946_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_946_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_946_10 (v_946_11))))))))))))

theorem rs_945 : recsK7OK T qscale den6 d14 lamN lamD l7 945 2 = true := recsK7OK_succ (lo := 945) (n := 1) r_945 (r_946)

end BeatAvg.K.K7
