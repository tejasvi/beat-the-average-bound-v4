import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_826 : treeK7OK l7 826 = true := by decide +kernel

theorem n_826 : (recAt l7 826).2.2.2.length ≤ 192 := by decide +kernel

theorem v_826_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 0 16 = true := by decide +kernel

theorem v_826_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 16 16 = true := by decide +kernel

theorem v_826_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 32 16 = true := by decide +kernel

theorem v_826_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 48 16 = true := by decide +kernel

theorem v_826_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 64 16 = true := by decide +kernel

theorem v_826_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 80 16 = true := by decide +kernel

theorem v_826_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 96 16 = true := by decide +kernel

theorem v_826_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 112 16 = true := by decide +kernel

theorem v_826_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 128 16 = true := by decide +kernel

theorem v_826_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 144 16 = true := by decide +kernel

theorem v_826_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 160 16 = true := by decide +kernel

theorem v_826_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 826 176 16 = true := by decide +kernel

theorem r_826 : recsK7OK T qscale den6 d14 lamN lamD l7 826 1 = true := recK7_of (n := 192) t_826 n_826 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_826_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_826_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_826_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_826_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_826_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_826_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_826_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_826_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_826_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_826_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_826_10 (v_826_11))))))))))))

theorem t_827 : treeK7OK l7 827 = true := by decide +kernel

theorem n_827 : (recAt l7 827).2.2.2.length ≤ 112 := by decide +kernel

theorem v_827_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 827 0 16 = true := by decide +kernel

theorem v_827_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 827 16 16 = true := by decide +kernel

theorem v_827_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 827 32 16 = true := by decide +kernel

theorem v_827_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 827 48 16 = true := by decide +kernel

theorem v_827_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 827 64 16 = true := by decide +kernel

theorem v_827_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 827 80 16 = true := by decide +kernel

theorem v_827_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 827 96 16 = true := by decide +kernel

theorem r_827 : recsK7OK T qscale den6 d14 lamN lamD l7 827 1 = true := recK7_of (n := 112) t_827 n_827 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_827_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_827_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_827_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_827_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_827_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_827_5 (v_827_6)))))))

theorem rs_826 : recsK7OK T qscale den6 d14 lamN lamD l7 826 2 = true := recsK7OK_succ (lo := 826) (n := 1) r_826 (r_827)

end BeatAvg.K.K7
