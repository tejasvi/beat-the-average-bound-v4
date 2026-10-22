import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_849 : treeK7OK l7 849 = true := by decide +kernel

theorem n_849 : (recAt l7 849).2.2.2.length ≤ 64 := by decide +kernel

theorem v_849_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 849 0 16 = true := by decide +kernel

theorem v_849_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 849 16 16 = true := by decide +kernel

theorem v_849_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 849 32 16 = true := by decide +kernel

theorem v_849_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 849 48 16 = true := by decide +kernel

theorem r_849 : recsK7OK T qscale den6 d14 lamN lamD l7 849 1 = true := recK7_of (n := 64) t_849 n_849 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_849_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_849_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_849_2 (v_849_3))))

theorem t_850 : treeK7OK l7 850 = true := by decide +kernel

theorem n_850 : (recAt l7 850).2.2.2.length ≤ 144 := by decide +kernel

theorem v_850_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 0 16 = true := by decide +kernel

theorem v_850_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 16 16 = true := by decide +kernel

theorem v_850_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 32 16 = true := by decide +kernel

theorem v_850_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 48 16 = true := by decide +kernel

theorem v_850_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 64 16 = true := by decide +kernel

theorem v_850_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 80 16 = true := by decide +kernel

theorem v_850_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 96 16 = true := by decide +kernel

theorem v_850_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 112 16 = true := by decide +kernel

theorem v_850_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 850 128 16 = true := by decide +kernel

theorem r_850 : recsK7OK T qscale den6 d14 lamN lamD l7 850 1 = true := recK7_of (n := 144) t_850 n_850 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_850_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_850_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_850_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_850_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_850_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_850_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_850_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_850_7 (v_850_8)))))))))

theorem t_851 : treeK7OK l7 851 = true := by decide +kernel

theorem n_851 : (recAt l7 851).2.2.2.length ≤ 96 := by decide +kernel

theorem v_851_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 851 0 16 = true := by decide +kernel

theorem v_851_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 851 16 16 = true := by decide +kernel

theorem v_851_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 851 32 16 = true := by decide +kernel

theorem v_851_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 851 48 16 = true := by decide +kernel

theorem v_851_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 851 64 16 = true := by decide +kernel

theorem v_851_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 851 80 16 = true := by decide +kernel

theorem r_851 : recsK7OK T qscale den6 d14 lamN lamD l7 851 1 = true := recK7_of (n := 96) t_851 n_851 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_851_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_851_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_851_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_851_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_851_4 (v_851_5))))))

theorem t_852 : treeK7OK l7 852 = true := by decide +kernel

theorem n_852 : (recAt l7 852).2.2.2.length ≤ 48 := by decide +kernel

theorem v_852_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 852 0 16 = true := by decide +kernel

theorem v_852_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 852 16 16 = true := by decide +kernel

theorem v_852_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 852 32 16 = true := by decide +kernel

theorem r_852 : recsK7OK T qscale den6 d14 lamN lamD l7 852 1 = true := recK7_of (n := 48) t_852 n_852 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_852_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_852_1 (v_852_2)))

theorem rs_849 : recsK7OK T qscale den6 d14 lamN lamD l7 849 4 = true := recsK7OK_succ (lo := 849) (n := 3) r_849 (recsK7OK_succ (lo := 850) (n := 2) r_850 (recsK7OK_succ (lo := 851) (n := 1) r_851 (r_852)))

end BeatAvg.K.K7
