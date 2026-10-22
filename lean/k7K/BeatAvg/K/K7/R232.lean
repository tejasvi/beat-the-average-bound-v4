import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_770 : treeK7OK l7 770 = true := by decide +kernel

theorem n_770 : (recAt l7 770).2.2.2.length ≤ 176 := by decide +kernel

theorem v_770_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 0 16 = true := by decide +kernel

theorem v_770_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 16 16 = true := by decide +kernel

theorem v_770_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 32 16 = true := by decide +kernel

theorem v_770_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 48 16 = true := by decide +kernel

theorem v_770_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 64 16 = true := by decide +kernel

theorem v_770_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 80 16 = true := by decide +kernel

theorem v_770_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 96 16 = true := by decide +kernel

theorem v_770_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 112 16 = true := by decide +kernel

theorem v_770_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 128 16 = true := by decide +kernel

theorem v_770_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 144 16 = true := by decide +kernel

theorem v_770_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 770 160 16 = true := by decide +kernel

theorem r_770 : recsK7OK T qscale den6 d14 lamN lamD l7 770 1 = true := recK7_of (n := 176) t_770 n_770 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_770_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_770_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_770_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_770_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_770_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_770_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_770_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_770_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_770_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_770_9 (v_770_10)))))))))))

theorem t_771 : treeK7OK l7 771 = true := by decide +kernel

theorem n_771 : (recAt l7 771).2.2.2.length ≤ 128 := by decide +kernel

theorem v_771_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 0 16 = true := by decide +kernel

theorem v_771_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 16 16 = true := by decide +kernel

theorem v_771_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 32 16 = true := by decide +kernel

theorem v_771_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 48 16 = true := by decide +kernel

theorem v_771_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 64 16 = true := by decide +kernel

theorem v_771_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 80 16 = true := by decide +kernel

theorem v_771_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 96 16 = true := by decide +kernel

theorem v_771_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 771 112 16 = true := by decide +kernel

theorem r_771 : recsK7OK T qscale den6 d14 lamN lamD l7 771 1 = true := recK7_of (n := 128) t_771 n_771 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_771_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_771_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_771_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_771_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_771_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_771_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_771_6 (v_771_7))))))))

theorem t_772 : treeK7OK l7 772 = true := by decide +kernel

theorem n_772 : (recAt l7 772).2.2.2.length ≤ 96 := by decide +kernel

theorem v_772_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 772 0 16 = true := by decide +kernel

theorem v_772_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 772 16 16 = true := by decide +kernel

theorem v_772_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 772 32 16 = true := by decide +kernel

theorem v_772_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 772 48 16 = true := by decide +kernel

theorem v_772_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 772 64 16 = true := by decide +kernel

theorem v_772_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 772 80 16 = true := by decide +kernel

theorem r_772 : recsK7OK T qscale den6 d14 lamN lamD l7 772 1 = true := recK7_of (n := 96) t_772 n_772 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_772_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_772_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_772_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_772_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_772_4 (v_772_5))))))

theorem rs_770 : recsK7OK T qscale den6 d14 lamN lamD l7 770 3 = true := recsK7OK_succ (lo := 770) (n := 2) r_770 (recsK7OK_succ (lo := 771) (n := 1) r_771 (r_772))

end BeatAvg.K.K7
