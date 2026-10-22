import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_96 : treeK7OK l7 96 = true := by decide +kernel

theorem n_96 : (recAt l7 96).2.2.2.length ≤ 96 := by decide +kernel

theorem v_96_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 96 0 16 = true := by decide +kernel

theorem v_96_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 96 16 16 = true := by decide +kernel

theorem v_96_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 96 32 16 = true := by decide +kernel

theorem v_96_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 96 48 16 = true := by decide +kernel

theorem v_96_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 96 64 16 = true := by decide +kernel

theorem v_96_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 96 80 16 = true := by decide +kernel

theorem r_96 : recsK7OK T qscale den6 d14 lamN lamD l7 96 1 = true := recK7_of (n := 96) t_96 n_96 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_96_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_96_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_96_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_96_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_96_4 (v_96_5))))))

theorem t_97 : treeK7OK l7 97 = true := by decide +kernel

theorem n_97 : (recAt l7 97).2.2.2.length ≤ 64 := by decide +kernel

theorem v_97_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 97 0 16 = true := by decide +kernel

theorem v_97_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 97 16 16 = true := by decide +kernel

theorem v_97_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 97 32 16 = true := by decide +kernel

theorem v_97_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 97 48 16 = true := by decide +kernel

theorem r_97 : recsK7OK T qscale den6 d14 lamN lamD l7 97 1 = true := recK7_of (n := 64) t_97 n_97 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_97_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_97_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_97_2 (v_97_3))))

theorem t_98 : treeK7OK l7 98 = true := by decide +kernel

theorem n_98 : (recAt l7 98).2.2.2.length ≤ 48 := by decide +kernel

theorem v_98_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 98 0 16 = true := by decide +kernel

theorem v_98_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 98 16 16 = true := by decide +kernel

theorem v_98_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 98 32 16 = true := by decide +kernel

theorem r_98 : recsK7OK T qscale den6 d14 lamN lamD l7 98 1 = true := recK7_of (n := 48) t_98 n_98 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_98_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_98_1 (v_98_2)))

theorem t_99 : treeK7OK l7 99 = true := by decide +kernel

theorem n_99 : (recAt l7 99).2.2.2.length ≤ 32 := by decide +kernel

theorem v_99_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 99 0 16 = true := by decide +kernel

theorem v_99_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 99 16 16 = true := by decide +kernel

theorem r_99 : recsK7OK T qscale den6 d14 lamN lamD l7 99 1 = true := recK7_of (n := 32) t_99 n_99 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_99_0 (v_99_1))

theorem t_100 : treeK7OK l7 100 = true := by decide +kernel

theorem n_100 : (recAt l7 100).2.2.2.length ≤ 32 := by decide +kernel

theorem v_100_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 100 0 16 = true := by decide +kernel

theorem v_100_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 100 16 16 = true := by decide +kernel

theorem r_100 : recsK7OK T qscale den6 d14 lamN lamD l7 100 1 = true := recK7_of (n := 32) t_100 n_100 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_100_0 (v_100_1))

theorem t_101 : treeK7OK l7 101 = true := by decide +kernel

theorem n_101 : (recAt l7 101).2.2.2.length ≤ 144 := by decide +kernel

theorem v_101_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 0 16 = true := by decide +kernel

theorem v_101_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 16 16 = true := by decide +kernel

theorem v_101_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 32 16 = true := by decide +kernel

theorem v_101_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 48 16 = true := by decide +kernel

theorem v_101_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 64 16 = true := by decide +kernel

theorem v_101_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 80 16 = true := by decide +kernel

theorem v_101_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 96 16 = true := by decide +kernel

theorem v_101_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 112 16 = true := by decide +kernel

theorem v_101_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 101 128 16 = true := by decide +kernel

theorem r_101 : recsK7OK T qscale den6 d14 lamN lamD l7 101 1 = true := recK7_of (n := 144) t_101 n_101 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_101_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_101_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_101_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_101_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_101_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_101_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_101_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_101_7 (v_101_8)))))))))

theorem rs_96 : recsK7OK T qscale den6 d14 lamN lamD l7 96 6 = true := recsK7OK_succ (lo := 96) (n := 5) r_96 (recsK7OK_succ (lo := 97) (n := 4) r_97 (recsK7OK_succ (lo := 98) (n := 3) r_98 (recsK7OK_succ (lo := 99) (n := 2) r_99 (recsK7OK_succ (lo := 100) (n := 1) r_100 (r_101)))))

end BeatAvg.K.K7
