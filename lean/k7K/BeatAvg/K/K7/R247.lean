import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_804 : treeK7OK l7 804 = true := by decide +kernel

theorem n_804 : (recAt l7 804).2.2.2.length ≤ 256 := by decide +kernel

theorem v_804_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 0 16 = true := by decide +kernel

theorem v_804_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 16 16 = true := by decide +kernel

theorem v_804_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 32 16 = true := by decide +kernel

theorem v_804_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 48 16 = true := by decide +kernel

theorem v_804_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 64 16 = true := by decide +kernel

theorem v_804_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 80 16 = true := by decide +kernel

theorem v_804_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 96 16 = true := by decide +kernel

theorem v_804_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 112 16 = true := by decide +kernel

theorem v_804_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 128 16 = true := by decide +kernel

theorem v_804_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 144 16 = true := by decide +kernel

theorem v_804_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 160 16 = true := by decide +kernel

theorem v_804_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 176 16 = true := by decide +kernel

theorem v_804_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 192 16 = true := by decide +kernel

theorem v_804_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 208 16 = true := by decide +kernel

theorem v_804_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 224 16 = true := by decide +kernel

theorem v_804_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 804 240 16 = true := by decide +kernel

theorem r_804 : recsK7OK T qscale den6 d14 lamN lamD l7 804 1 = true := recK7_of (n := 256) t_804 n_804 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_804_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_804_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_804_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_804_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_804_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_804_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_804_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_804_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_804_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_804_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_804_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_804_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_804_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_804_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_804_14 (v_804_15))))))))))))))))

theorem t_805 : treeK7OK l7 805 = true := by decide +kernel

theorem n_805 : (recAt l7 805).2.2.2.length ≤ 80 := by decide +kernel

theorem v_805_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 805 0 16 = true := by decide +kernel

theorem v_805_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 805 16 16 = true := by decide +kernel

theorem v_805_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 805 32 16 = true := by decide +kernel

theorem v_805_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 805 48 16 = true := by decide +kernel

theorem v_805_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 805 64 16 = true := by decide +kernel

theorem r_805 : recsK7OK T qscale den6 d14 lamN lamD l7 805 1 = true := recK7_of (n := 80) t_805 n_805 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_805_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_805_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_805_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_805_3 (v_805_4)))))

theorem rs_804 : recsK7OK T qscale den6 d14 lamN lamD l7 804 2 = true := recsK7OK_succ (lo := 804) (n := 1) r_804 (r_805)

end BeatAvg.K.K7
