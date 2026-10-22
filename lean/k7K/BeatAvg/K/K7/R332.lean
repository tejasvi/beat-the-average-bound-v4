import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_991 : treeK7OK l7 991 = true := by decide +kernel

theorem n_991 : (recAt l7 991).2.2.2.length ≤ 144 := by decide +kernel

theorem v_991_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 0 16 = true := by decide +kernel

theorem v_991_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 16 16 = true := by decide +kernel

theorem v_991_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 32 16 = true := by decide +kernel

theorem v_991_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 48 16 = true := by decide +kernel

theorem v_991_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 64 16 = true := by decide +kernel

theorem v_991_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 80 16 = true := by decide +kernel

theorem v_991_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 96 16 = true := by decide +kernel

theorem v_991_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 112 16 = true := by decide +kernel

theorem v_991_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 991 128 16 = true := by decide +kernel

theorem r_991 : recsK7OK T qscale den6 d14 lamN lamD l7 991 1 = true := recK7_of (n := 144) t_991 n_991 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_991_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_991_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_991_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_991_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_991_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_991_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_991_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_991_7 (v_991_8)))))))))

theorem t_992 : treeK7OK l7 992 = true := by decide +kernel

theorem n_992 : (recAt l7 992).2.2.2.length ≤ 256 := by decide +kernel

theorem v_992_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 0 16 = true := by decide +kernel

theorem v_992_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 16 16 = true := by decide +kernel

theorem v_992_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 32 16 = true := by decide +kernel

theorem v_992_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 48 16 = true := by decide +kernel

theorem v_992_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 64 16 = true := by decide +kernel

theorem v_992_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 80 16 = true := by decide +kernel

theorem v_992_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 96 16 = true := by decide +kernel

theorem v_992_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 112 16 = true := by decide +kernel

theorem v_992_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 128 16 = true := by decide +kernel

theorem v_992_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 144 16 = true := by decide +kernel

theorem v_992_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 160 16 = true := by decide +kernel

theorem v_992_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 176 16 = true := by decide +kernel

theorem v_992_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 192 16 = true := by decide +kernel

theorem v_992_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 208 16 = true := by decide +kernel

theorem v_992_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 224 16 = true := by decide +kernel

theorem v_992_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 992 240 16 = true := by decide +kernel

theorem r_992 : recsK7OK T qscale den6 d14 lamN lamD l7 992 1 = true := recK7_of (n := 256) t_992 n_992 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_992_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_992_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_992_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_992_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_992_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_992_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_992_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_992_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_992_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_992_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_992_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_992_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_992_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_992_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_992_14 (v_992_15))))))))))))))))

theorem rs_991 : recsK7OK T qscale den6 d14 lamN lamD l7 991 2 = true := recsK7OK_succ (lo := 991) (n := 1) r_991 (r_992)

end BeatAvg.K.K7
