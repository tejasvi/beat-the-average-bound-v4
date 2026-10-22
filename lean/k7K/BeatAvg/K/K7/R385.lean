import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1173 : treeK7OK l7 1173 = true := by decide +kernel

theorem n_1173 : (recAt l7 1173).2.2.2.length ≤ 160 := by decide +kernel

theorem v_1173_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 0 16 = true := by decide +kernel

theorem v_1173_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 16 16 = true := by decide +kernel

theorem v_1173_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 32 16 = true := by decide +kernel

theorem v_1173_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 48 16 = true := by decide +kernel

theorem v_1173_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 64 16 = true := by decide +kernel

theorem v_1173_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 80 16 = true := by decide +kernel

theorem v_1173_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 96 16 = true := by decide +kernel

theorem v_1173_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 112 16 = true := by decide +kernel

theorem v_1173_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 128 16 = true := by decide +kernel

theorem v_1173_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1173 144 16 = true := by decide +kernel

theorem r_1173 : recsK7OK T qscale den6 d14 lamN lamD l7 1173 1 = true := recK7_of (n := 160) t_1173 n_1173 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_1173_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_1173_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_1173_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_1173_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_1173_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_1173_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_1173_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_1173_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_1173_8 (v_1173_9))))))))))

theorem t_1174 : treeK7OK l7 1174 = true := by decide +kernel

theorem n_1174 : (recAt l7 1174).2.2.2.length ≤ 144 := by decide +kernel

theorem v_1174_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 0 16 = true := by decide +kernel

theorem v_1174_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 16 16 = true := by decide +kernel

theorem v_1174_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 32 16 = true := by decide +kernel

theorem v_1174_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 48 16 = true := by decide +kernel

theorem v_1174_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 64 16 = true := by decide +kernel

theorem v_1174_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 80 16 = true := by decide +kernel

theorem v_1174_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 96 16 = true := by decide +kernel

theorem v_1174_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 112 16 = true := by decide +kernel

theorem v_1174_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1174 128 16 = true := by decide +kernel

theorem r_1174 : recsK7OK T qscale den6 d14 lamN lamD l7 1174 1 = true := recK7_of (n := 144) t_1174 n_1174 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_1174_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_1174_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_1174_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_1174_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_1174_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_1174_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_1174_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_1174_7 (v_1174_8)))))))))

theorem rs_1173 : recsK7OK T qscale den6 d14 lamN lamD l7 1173 2 = true := recsK7OK_succ (lo := 1173) (n := 1) r_1173 (r_1174)

end BeatAvg.K.K7
