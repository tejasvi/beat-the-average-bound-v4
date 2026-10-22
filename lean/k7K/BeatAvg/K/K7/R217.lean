import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_744 : treeK7OK l7 744 = true := by decide +kernel

theorem n_744 : (recAt l7 744).2.2.2.length ≤ 208 := by decide +kernel

theorem v_744_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 0 16 = true := by decide +kernel

theorem v_744_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 16 16 = true := by decide +kernel

theorem v_744_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 32 16 = true := by decide +kernel

theorem v_744_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 48 16 = true := by decide +kernel

theorem v_744_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 64 16 = true := by decide +kernel

theorem v_744_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 80 16 = true := by decide +kernel

theorem v_744_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 96 16 = true := by decide +kernel

theorem v_744_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 112 16 = true := by decide +kernel

theorem v_744_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 128 16 = true := by decide +kernel

theorem v_744_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 144 16 = true := by decide +kernel

theorem v_744_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 160 16 = true := by decide +kernel

theorem v_744_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 176 16 = true := by decide +kernel

theorem v_744_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 744 192 16 = true := by decide +kernel

theorem r_744 : recsK7OK T qscale den6 d14 lamN lamD l7 744 1 = true := recK7_of (n := 208) t_744 n_744 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_744_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_744_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_744_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_744_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_744_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_744_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_744_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_744_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_744_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_744_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_744_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_744_11 (v_744_12)))))))))))))

theorem t_745 : treeK7OK l7 745 = true := by decide +kernel

theorem n_745 : (recAt l7 745).2.2.2.length ≤ 80 := by decide +kernel

theorem v_745_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 745 0 16 = true := by decide +kernel

theorem v_745_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 745 16 16 = true := by decide +kernel

theorem v_745_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 745 32 16 = true := by decide +kernel

theorem v_745_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 745 48 16 = true := by decide +kernel

theorem v_745_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 745 64 16 = true := by decide +kernel

theorem r_745 : recsK7OK T qscale den6 d14 lamN lamD l7 745 1 = true := recK7_of (n := 80) t_745 n_745 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_745_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_745_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_745_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_745_3 (v_745_4)))))

theorem rs_744 : recsK7OK T qscale den6 d14 lamN lamD l7 744 2 = true := recsK7OK_succ (lo := 744) (n := 1) r_744 (r_745)

end BeatAvg.K.K7
