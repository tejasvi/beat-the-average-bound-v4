import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_672 : treeK7OK l7 672 = true := by decide +kernel

theorem n_672 : (recAt l7 672).2.2.2.length ≤ 96 := by decide +kernel

theorem v_672_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 672 0 16 = true := by decide +kernel

theorem v_672_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 672 16 16 = true := by decide +kernel

theorem v_672_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 672 32 16 = true := by decide +kernel

theorem v_672_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 672 48 16 = true := by decide +kernel

theorem v_672_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 672 64 16 = true := by decide +kernel

theorem v_672_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 672 80 16 = true := by decide +kernel

theorem r_672 : recsK7OK T qscale den6 d14 lamN lamD l7 672 1 = true := recK7_of (n := 96) t_672 n_672 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_672_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_672_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_672_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_672_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_672_4 (v_672_5))))))

theorem t_673 : treeK7OK l7 673 = true := by decide +kernel

theorem n_673 : (recAt l7 673).2.2.2.length ≤ 64 := by decide +kernel

theorem v_673_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 673 0 16 = true := by decide +kernel

theorem v_673_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 673 16 16 = true := by decide +kernel

theorem v_673_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 673 32 16 = true := by decide +kernel

theorem v_673_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 673 48 16 = true := by decide +kernel

theorem r_673 : recsK7OK T qscale den6 d14 lamN lamD l7 673 1 = true := recK7_of (n := 64) t_673 n_673 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_673_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_673_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_673_2 (v_673_3))))

theorem t_674 : treeK7OK l7 674 = true := by decide +kernel

theorem n_674 : (recAt l7 674).2.2.2.length ≤ 32 := by decide +kernel

theorem v_674_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 674 0 16 = true := by decide +kernel

theorem v_674_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 674 16 16 = true := by decide +kernel

theorem r_674 : recsK7OK T qscale den6 d14 lamN lamD l7 674 1 = true := recK7_of (n := 32) t_674 n_674 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_674_0 (v_674_1))

theorem t_675 : treeK7OK l7 675 = true := by decide +kernel

theorem n_675 : (recAt l7 675).2.2.2.length ≤ 192 := by decide +kernel

theorem v_675_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 0 16 = true := by decide +kernel

theorem v_675_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 16 16 = true := by decide +kernel

theorem v_675_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 32 16 = true := by decide +kernel

theorem v_675_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 48 16 = true := by decide +kernel

theorem v_675_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 64 16 = true := by decide +kernel

theorem v_675_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 80 16 = true := by decide +kernel

theorem v_675_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 96 16 = true := by decide +kernel

theorem v_675_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 112 16 = true := by decide +kernel

theorem v_675_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 128 16 = true := by decide +kernel

theorem v_675_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 144 16 = true := by decide +kernel

theorem v_675_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 160 16 = true := by decide +kernel

theorem v_675_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 675 176 16 = true := by decide +kernel

theorem r_675 : recsK7OK T qscale den6 d14 lamN lamD l7 675 1 = true := recK7_of (n := 192) t_675 n_675 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_675_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_675_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_675_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_675_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_675_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_675_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_675_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_675_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_675_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_675_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_675_10 (v_675_11))))))))))))

theorem rs_672 : recsK7OK T qscale den6 d14 lamN lamD l7 672 4 = true := recsK7OK_succ (lo := 672) (n := 3) r_672 (recsK7OK_succ (lo := 673) (n := 2) r_673 (recsK7OK_succ (lo := 674) (n := 1) r_674 (r_675)))

end BeatAvg.K.K7
