import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_1038 : treeK7OK l7 1038 = true := by decide +kernel

theorem n_1038 : (recAt l7 1038).2.2.2.length ≤ 176 := by decide +kernel

theorem v_1038_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 0 16 = true := by decide +kernel

theorem v_1038_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 16 16 = true := by decide +kernel

theorem v_1038_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 32 16 = true := by decide +kernel

theorem v_1038_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 48 16 = true := by decide +kernel

theorem v_1038_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 64 16 = true := by decide +kernel

theorem v_1038_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 80 16 = true := by decide +kernel

theorem v_1038_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 96 16 = true := by decide +kernel

theorem v_1038_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 112 16 = true := by decide +kernel

theorem v_1038_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 128 16 = true := by decide +kernel

theorem v_1038_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 144 16 = true := by decide +kernel

theorem v_1038_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 1038 160 16 = true := by decide +kernel

theorem r_1038 : recsK7OK T qscale den6 d14 lamN lamD l7 1038 1 = true := recK7_of (n := 176) t_1038 n_1038 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_1038_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_1038_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_1038_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_1038_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_1038_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_1038_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_1038_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_1038_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_1038_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_1038_9 (v_1038_10)))))))))))

theorem t_1039 : treeK7OK l7 1039 = true := by decide +kernel

theorem n_1039 : (recAt l7 1039).2.2.2.length ≤ 112 := by decide +kernel

theorem v_1039_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1039 0 16 = true := by decide +kernel

theorem v_1039_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1039 16 16 = true := by decide +kernel

theorem v_1039_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1039 32 16 = true := by decide +kernel

theorem v_1039_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1039 48 16 = true := by decide +kernel

theorem v_1039_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1039 64 16 = true := by decide +kernel

theorem v_1039_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1039 80 16 = true := by decide +kernel

theorem v_1039_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1039 96 16 = true := by decide +kernel

theorem r_1039 : recsK7OK T qscale den6 d14 lamN lamD l7 1039 1 = true := recK7_of (n := 112) t_1039 n_1039 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_1039_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_1039_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_1039_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_1039_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_1039_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_1039_5 (v_1039_6)))))))

theorem t_1040 : treeK7OK l7 1040 = true := by decide +kernel

theorem n_1040 : (recAt l7 1040).2.2.2.length ≤ 128 := by decide +kernel

theorem v_1040_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 0 16 = true := by decide +kernel

theorem v_1040_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 16 16 = true := by decide +kernel

theorem v_1040_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 32 16 = true := by decide +kernel

theorem v_1040_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 48 16 = true := by decide +kernel

theorem v_1040_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 64 16 = true := by decide +kernel

theorem v_1040_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 80 16 = true := by decide +kernel

theorem v_1040_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 96 16 = true := by decide +kernel

theorem v_1040_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 1040 112 16 = true := by decide +kernel

theorem r_1040 : recsK7OK T qscale den6 d14 lamN lamD l7 1040 1 = true := recK7_of (n := 128) t_1040 n_1040 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_1040_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_1040_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_1040_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_1040_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_1040_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_1040_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_1040_6 (v_1040_7))))))))

theorem rs_1038 : recsK7OK T qscale den6 d14 lamN lamD l7 1038 3 = true := recsK7OK_succ (lo := 1038) (n := 2) r_1038 (recsK7OK_succ (lo := 1039) (n := 1) r_1039 (r_1040))

end BeatAvg.K.K7
