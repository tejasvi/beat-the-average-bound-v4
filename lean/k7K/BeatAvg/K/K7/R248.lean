import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_806 : treeK7OK l7 806 = true := by decide +kernel

theorem n_806 : (recAt l7 806).2.2.2.length ≤ 272 := by decide +kernel

theorem v_806_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 0 16 = true := by decide +kernel

theorem v_806_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 16 16 = true := by decide +kernel

theorem v_806_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 32 16 = true := by decide +kernel

theorem v_806_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 48 16 = true := by decide +kernel

theorem v_806_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 64 16 = true := by decide +kernel

theorem v_806_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 80 16 = true := by decide +kernel

theorem v_806_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 96 16 = true := by decide +kernel

theorem v_806_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 112 16 = true := by decide +kernel

theorem v_806_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 128 16 = true := by decide +kernel

theorem v_806_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 144 16 = true := by decide +kernel

theorem v_806_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 160 16 = true := by decide +kernel

theorem v_806_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 176 16 = true := by decide +kernel

theorem v_806_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 192 16 = true := by decide +kernel

theorem v_806_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 208 16 = true := by decide +kernel

theorem v_806_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 224 16 = true := by decide +kernel

theorem v_806_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 240 16 = true := by decide +kernel

theorem v_806_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 806 256 16 = true := by decide +kernel

theorem r_806 : recsK7OK T qscale den6 d14 lamN lamD l7 806 1 = true := recK7_of (n := 272) t_806 n_806 (leavesK7OK_add (lo := 0) (n := 16) (m := 256) v_806_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 240) v_806_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 224) v_806_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 208) v_806_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 192) v_806_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 176) v_806_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 160) v_806_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 144) v_806_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 128) v_806_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 112) v_806_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 96) v_806_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 80) v_806_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 64) v_806_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 48) v_806_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 32) v_806_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 16) v_806_15 (v_806_16)))))))))))))))))

theorem t_807 : treeK7OK l7 807 = true := by decide +kernel

theorem n_807 : (recAt l7 807).2.2.2.length ≤ 128 := by decide +kernel

theorem v_807_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 0 16 = true := by decide +kernel

theorem v_807_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 16 16 = true := by decide +kernel

theorem v_807_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 32 16 = true := by decide +kernel

theorem v_807_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 48 16 = true := by decide +kernel

theorem v_807_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 64 16 = true := by decide +kernel

theorem v_807_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 80 16 = true := by decide +kernel

theorem v_807_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 96 16 = true := by decide +kernel

theorem v_807_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 807 112 16 = true := by decide +kernel

theorem r_807 : recsK7OK T qscale den6 d14 lamN lamD l7 807 1 = true := recK7_of (n := 128) t_807 n_807 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_807_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_807_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_807_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_807_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_807_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_807_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_807_6 (v_807_7))))))))

theorem rs_806 : recsK7OK T qscale den6 d14 lamN lamD l7 806 2 = true := recsK7OK_succ (lo := 806) (n := 1) r_806 (r_807)

end BeatAvg.K.K7
