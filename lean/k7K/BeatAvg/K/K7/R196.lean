import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_670 : treeK7OK l7 670 = true := by decide +kernel

theorem n_670 : (recAt l7 670).2.2.2.length ≤ 208 := by decide +kernel

theorem v_670_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 0 16 = true := by decide +kernel

theorem v_670_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 16 16 = true := by decide +kernel

theorem v_670_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 32 16 = true := by decide +kernel

theorem v_670_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 48 16 = true := by decide +kernel

theorem v_670_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 64 16 = true := by decide +kernel

theorem v_670_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 80 16 = true := by decide +kernel

theorem v_670_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 96 16 = true := by decide +kernel

theorem v_670_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 112 16 = true := by decide +kernel

theorem v_670_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 128 16 = true := by decide +kernel

theorem v_670_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 144 16 = true := by decide +kernel

theorem v_670_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 160 16 = true := by decide +kernel

theorem v_670_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 176 16 = true := by decide +kernel

theorem v_670_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 670 192 16 = true := by decide +kernel

theorem r_670 : recsK7OK T qscale den6 d14 lamN lamD l7 670 1 = true := recK7_of (n := 208) t_670 n_670 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_670_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_670_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_670_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_670_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_670_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_670_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_670_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_670_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_670_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_670_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_670_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_670_11 (v_670_12)))))))))))))

theorem t_671 : treeK7OK l7 671 = true := by decide +kernel

theorem n_671 : (recAt l7 671).2.2.2.length ≤ 160 := by decide +kernel

theorem v_671_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 0 16 = true := by decide +kernel

theorem v_671_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 16 16 = true := by decide +kernel

theorem v_671_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 32 16 = true := by decide +kernel

theorem v_671_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 48 16 = true := by decide +kernel

theorem v_671_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 64 16 = true := by decide +kernel

theorem v_671_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 80 16 = true := by decide +kernel

theorem v_671_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 96 16 = true := by decide +kernel

theorem v_671_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 112 16 = true := by decide +kernel

theorem v_671_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 128 16 = true := by decide +kernel

theorem v_671_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 671 144 16 = true := by decide +kernel

theorem r_671 : recsK7OK T qscale den6 d14 lamN lamD l7 671 1 = true := recK7_of (n := 160) t_671 n_671 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_671_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_671_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_671_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_671_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_671_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_671_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_671_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_671_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_671_8 (v_671_9))))))))))

theorem rs_670 : recsK7OK T qscale den6 d14 lamN lamD l7 670 2 = true := recsK7OK_succ (lo := 670) (n := 1) r_670 (r_671)

end BeatAvg.K.K7
