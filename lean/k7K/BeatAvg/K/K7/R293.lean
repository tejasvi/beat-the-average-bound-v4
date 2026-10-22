import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_911 : treeK7OK l7 911 = true := by decide +kernel

theorem n_911 : (recAt l7 911).2.2.2.length ≤ 208 := by decide +kernel

theorem v_911_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 0 16 = true := by decide +kernel

theorem v_911_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 16 16 = true := by decide +kernel

theorem v_911_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 32 16 = true := by decide +kernel

theorem v_911_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 48 16 = true := by decide +kernel

theorem v_911_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 64 16 = true := by decide +kernel

theorem v_911_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 80 16 = true := by decide +kernel

theorem v_911_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 96 16 = true := by decide +kernel

theorem v_911_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 112 16 = true := by decide +kernel

theorem v_911_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 128 16 = true := by decide +kernel

theorem v_911_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 144 16 = true := by decide +kernel

theorem v_911_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 160 16 = true := by decide +kernel

theorem v_911_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 176 16 = true := by decide +kernel

theorem v_911_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 911 192 16 = true := by decide +kernel

theorem r_911 : recsK7OK T qscale den6 d14 lamN lamD l7 911 1 = true := recK7_of (n := 208) t_911 n_911 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_911_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_911_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_911_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_911_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_911_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_911_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_911_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_911_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_911_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_911_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_911_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_911_11 (v_911_12)))))))))))))

theorem t_912 : treeK7OK l7 912 = true := by decide +kernel

theorem n_912 : (recAt l7 912).2.2.2.length ≤ 160 := by decide +kernel

theorem v_912_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 0 16 = true := by decide +kernel

theorem v_912_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 16 16 = true := by decide +kernel

theorem v_912_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 32 16 = true := by decide +kernel

theorem v_912_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 48 16 = true := by decide +kernel

theorem v_912_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 64 16 = true := by decide +kernel

theorem v_912_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 80 16 = true := by decide +kernel

theorem v_912_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 96 16 = true := by decide +kernel

theorem v_912_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 112 16 = true := by decide +kernel

theorem v_912_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 128 16 = true := by decide +kernel

theorem v_912_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 912 144 16 = true := by decide +kernel

theorem r_912 : recsK7OK T qscale den6 d14 lamN lamD l7 912 1 = true := recK7_of (n := 160) t_912 n_912 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_912_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_912_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_912_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_912_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_912_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_912_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_912_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_912_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_912_8 (v_912_9))))))))))

theorem rs_911 : recsK7OK T qscale den6 d14 lamN lamD l7 911 2 = true := recsK7OK_succ (lo := 911) (n := 1) r_911 (r_912)

end BeatAvg.K.K7
