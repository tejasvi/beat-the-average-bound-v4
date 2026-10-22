import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_824 : treeK7OK l7 824 = true := by decide +kernel

theorem n_824 : (recAt l7 824).2.2.2.length ≤ 224 := by decide +kernel

theorem v_824_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 0 16 = true := by decide +kernel

theorem v_824_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 16 16 = true := by decide +kernel

theorem v_824_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 32 16 = true := by decide +kernel

theorem v_824_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 48 16 = true := by decide +kernel

theorem v_824_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 64 16 = true := by decide +kernel

theorem v_824_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 80 16 = true := by decide +kernel

theorem v_824_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 96 16 = true := by decide +kernel

theorem v_824_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 112 16 = true := by decide +kernel

theorem v_824_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 128 16 = true := by decide +kernel

theorem v_824_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 144 16 = true := by decide +kernel

theorem v_824_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 160 16 = true := by decide +kernel

theorem v_824_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 176 16 = true := by decide +kernel

theorem v_824_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 192 16 = true := by decide +kernel

theorem v_824_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 824 208 16 = true := by decide +kernel

theorem r_824 : recsK7OK T qscale den6 d14 lamN lamD l7 824 1 = true := recK7_of (n := 224) t_824 n_824 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_824_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_824_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_824_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_824_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_824_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_824_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_824_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_824_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_824_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_824_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_824_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_824_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_824_12 (v_824_13))))))))))))))

theorem t_825 : treeK7OK l7 825 = true := by decide +kernel

theorem n_825 : (recAt l7 825).2.2.2.length ≤ 112 := by decide +kernel

theorem v_825_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 825 0 16 = true := by decide +kernel

theorem v_825_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 825 16 16 = true := by decide +kernel

theorem v_825_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 825 32 16 = true := by decide +kernel

theorem v_825_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 825 48 16 = true := by decide +kernel

theorem v_825_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 825 64 16 = true := by decide +kernel

theorem v_825_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 825 80 16 = true := by decide +kernel

theorem v_825_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 825 96 16 = true := by decide +kernel

theorem r_825 : recsK7OK T qscale den6 d14 lamN lamD l7 825 1 = true := recK7_of (n := 112) t_825 n_825 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_825_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_825_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_825_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_825_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_825_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_825_5 (v_825_6)))))))

theorem rs_824 : recsK7OK T qscale den6 d14 lamN lamD l7 824 2 = true := recsK7OK_succ (lo := 824) (n := 1) r_824 (r_825)

end BeatAvg.K.K7
