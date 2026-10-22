import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_836 : treeK7OK l7 836 = true := by decide +kernel

theorem n_836 : (recAt l7 836).2.2.2.length ≤ 288 := by decide +kernel

theorem v_836_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 0 16 = true := by decide +kernel

theorem v_836_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 16 16 = true := by decide +kernel

theorem v_836_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 32 16 = true := by decide +kernel

theorem v_836_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 48 16 = true := by decide +kernel

theorem v_836_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 64 16 = true := by decide +kernel

theorem v_836_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 80 16 = true := by decide +kernel

theorem v_836_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 96 16 = true := by decide +kernel

theorem v_836_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 112 16 = true := by decide +kernel

theorem v_836_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 128 16 = true := by decide +kernel

theorem v_836_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 144 16 = true := by decide +kernel

theorem v_836_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 160 16 = true := by decide +kernel

theorem v_836_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 176 16 = true := by decide +kernel

theorem v_836_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 192 16 = true := by decide +kernel

theorem v_836_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 208 16 = true := by decide +kernel

theorem v_836_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 224 16 = true := by decide +kernel

theorem v_836_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 240 16 = true := by decide +kernel

theorem v_836_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 256 16 = true := by decide +kernel

theorem v_836_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 836 272 16 = true := by decide +kernel

theorem r_836 : recsK7OK T qscale den6 d14 lamN lamD l7 836 1 = true := recK7_of (n := 288) t_836 n_836 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_836_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_836_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_836_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_836_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_836_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_836_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_836_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_836_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_836_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_836_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_836_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_836_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_836_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_836_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_836_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_836_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_836_16 (v_836_17))))))))))))))))))

theorem t_837 : treeK7OK l7 837 = true := by decide +kernel

theorem n_837 : (recAt l7 837).2.2.2.length ≤ 96 := by decide +kernel

theorem v_837_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 837 0 16 = true := by decide +kernel

theorem v_837_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 837 16 16 = true := by decide +kernel

theorem v_837_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 837 32 16 = true := by decide +kernel

theorem v_837_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 837 48 16 = true := by decide +kernel

theorem v_837_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 837 64 16 = true := by decide +kernel

theorem v_837_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 837 80 16 = true := by decide +kernel

theorem r_837 : recsK7OK T qscale den6 d14 lamN lamD l7 837 1 = true := recK7_of (n := 96) t_837 n_837 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_837_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_837_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_837_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_837_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_837_4 (v_837_5))))))

theorem rs_836 : recsK7OK T qscale den6 d14 lamN lamD l7 836 2 = true := recsK7OK_succ (lo := 836) (n := 1) r_836 (r_837)

end BeatAvg.K.K7
