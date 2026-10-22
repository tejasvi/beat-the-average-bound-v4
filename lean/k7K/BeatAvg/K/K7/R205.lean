import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_709 : treeK7OK l7 709 = true := by decide +kernel

theorem n_709 : (recAt l7 709).2.2.2.length ≤ 96 := by decide +kernel

theorem v_709_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 709 0 16 = true := by decide +kernel

theorem v_709_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 709 16 16 = true := by decide +kernel

theorem v_709_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 709 32 16 = true := by decide +kernel

theorem v_709_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 709 48 16 = true := by decide +kernel

theorem v_709_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 709 64 16 = true := by decide +kernel

theorem v_709_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 709 80 16 = true := by decide +kernel

theorem r_709 : recsK7OK T qscale den6 d14 lamN lamD l7 709 1 = true := recK7_of (n := 96) t_709 n_709 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_709_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_709_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_709_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_709_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_709_4 (v_709_5))))))

theorem t_710 : treeK7OK l7 710 = true := by decide +kernel

theorem n_710 : (recAt l7 710).2.2.2.length ≤ 64 := by decide +kernel

theorem v_710_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 710 0 16 = true := by decide +kernel

theorem v_710_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 710 16 16 = true := by decide +kernel

theorem v_710_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 710 32 16 = true := by decide +kernel

theorem v_710_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 710 48 16 = true := by decide +kernel

theorem r_710 : recsK7OK T qscale den6 d14 lamN lamD l7 710 1 = true := recK7_of (n := 64) t_710 n_710 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_710_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_710_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_710_2 (v_710_3))))

theorem t_711 : treeK7OK l7 711 = true := by decide +kernel

theorem n_711 : (recAt l7 711).2.2.2.length ≤ 64 := by decide +kernel

theorem v_711_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 711 0 16 = true := by decide +kernel

theorem v_711_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 711 16 16 = true := by decide +kernel

theorem v_711_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 711 32 16 = true := by decide +kernel

theorem v_711_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 711 48 16 = true := by decide +kernel

theorem r_711 : recsK7OK T qscale den6 d14 lamN lamD l7 711 1 = true := recK7_of (n := 64) t_711 n_711 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_711_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_711_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_711_2 (v_711_3))))

theorem t_712 : treeK7OK l7 712 = true := by decide +kernel

theorem n_712 : (recAt l7 712).2.2.2.length ≤ 80 := by decide +kernel

theorem v_712_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 712 0 16 = true := by decide +kernel

theorem v_712_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 712 16 16 = true := by decide +kernel

theorem v_712_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 712 32 16 = true := by decide +kernel

theorem v_712_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 712 48 16 = true := by decide +kernel

theorem v_712_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 712 64 16 = true := by decide +kernel

theorem r_712 : recsK7OK T qscale den6 d14 lamN lamD l7 712 1 = true := recK7_of (n := 80) t_712 n_712 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_712_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_712_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_712_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_712_3 (v_712_4)))))

theorem t_713 : treeK7OK l7 713 = true := by decide +kernel

theorem n_713 : (recAt l7 713).2.2.2.length ≤ 80 := by decide +kernel

theorem v_713_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 713 0 16 = true := by decide +kernel

theorem v_713_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 713 16 16 = true := by decide +kernel

theorem v_713_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 713 32 16 = true := by decide +kernel

theorem v_713_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 713 48 16 = true := by decide +kernel

theorem v_713_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 713 64 16 = true := by decide +kernel

theorem r_713 : recsK7OK T qscale den6 d14 lamN lamD l7 713 1 = true := recK7_of (n := 80) t_713 n_713 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_713_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_713_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_713_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_713_3 (v_713_4)))))

theorem t_714 : treeK7OK l7 714 = true := by decide +kernel

theorem n_714 : (recAt l7 714).2.2.2.length ≤ 32 := by decide +kernel

theorem v_714_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 714 0 16 = true := by decide +kernel

theorem v_714_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 714 16 16 = true := by decide +kernel

theorem r_714 : recsK7OK T qscale den6 d14 lamN lamD l7 714 1 = true := recK7_of (n := 32) t_714 n_714 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_714_0 (v_714_1))

theorem t_715 : treeK7OK l7 715 = true := by decide +kernel

theorem n_715 : (recAt l7 715).2.2.2.length ≤ 16 := by decide +kernel

theorem v_715_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 715 0 16 = true := by decide +kernel

theorem r_715 : recsK7OK T qscale den6 d14 lamN lamD l7 715 1 = true := recK7_of (n := 16) t_715 n_715 (v_715_0)

theorem rs_709 : recsK7OK T qscale den6 d14 lamN lamD l7 709 7 = true := recsK7OK_succ (lo := 709) (n := 6) r_709 (recsK7OK_succ (lo := 710) (n := 5) r_710 (recsK7OK_succ (lo := 711) (n := 4) r_711 (recsK7OK_succ (lo := 712) (n := 3) r_712 (recsK7OK_succ (lo := 713) (n := 2) r_713 (recsK7OK_succ (lo := 714) (n := 1) r_714 (r_715))))))

end BeatAvg.K.K7
