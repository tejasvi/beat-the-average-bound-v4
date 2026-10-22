import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_762 : treeK7OK l7 762 = true := by decide +kernel

theorem n_762 : (recAt l7 762).2.2.2.length ≤ 160 := by decide +kernel

theorem v_762_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 0 16 = true := by decide +kernel

theorem v_762_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 16 16 = true := by decide +kernel

theorem v_762_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 32 16 = true := by decide +kernel

theorem v_762_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 48 16 = true := by decide +kernel

theorem v_762_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 64 16 = true := by decide +kernel

theorem v_762_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 80 16 = true := by decide +kernel

theorem v_762_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 96 16 = true := by decide +kernel

theorem v_762_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 112 16 = true := by decide +kernel

theorem v_762_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 128 16 = true := by decide +kernel

theorem v_762_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 762 144 16 = true := by decide +kernel

theorem r_762 : recsK7OK T qscale den6 d14 lamN lamD l7 762 1 = true := recK7_of (n := 160) t_762 n_762 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_762_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_762_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_762_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_762_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_762_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_762_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_762_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_762_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_762_8 (v_762_9))))))))))

theorem t_763 : treeK7OK l7 763 = true := by decide +kernel

theorem n_763 : (recAt l7 763).2.2.2.length ≤ 112 := by decide +kernel

theorem v_763_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 763 0 16 = true := by decide +kernel

theorem v_763_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 763 16 16 = true := by decide +kernel

theorem v_763_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 763 32 16 = true := by decide +kernel

theorem v_763_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 763 48 16 = true := by decide +kernel

theorem v_763_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 763 64 16 = true := by decide +kernel

theorem v_763_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 763 80 16 = true := by decide +kernel

theorem v_763_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 763 96 16 = true := by decide +kernel

theorem r_763 : recsK7OK T qscale den6 d14 lamN lamD l7 763 1 = true := recK7_of (n := 112) t_763 n_763 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_763_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_763_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_763_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_763_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_763_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_763_5 (v_763_6)))))))

theorem t_764 : treeK7OK l7 764 = true := by decide +kernel

theorem n_764 : (recAt l7 764).2.2.2.length ≤ 64 := by decide +kernel

theorem v_764_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 764 0 16 = true := by decide +kernel

theorem v_764_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 764 16 16 = true := by decide +kernel

theorem v_764_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 764 32 16 = true := by decide +kernel

theorem v_764_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 764 48 16 = true := by decide +kernel

theorem r_764 : recsK7OK T qscale den6 d14 lamN lamD l7 764 1 = true := recK7_of (n := 64) t_764 n_764 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_764_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_764_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_764_2 (v_764_3))))

theorem t_765 : treeK7OK l7 765 = true := by decide +kernel

theorem n_765 : (recAt l7 765).2.2.2.length ≤ 48 := by decide +kernel

theorem v_765_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 765 0 16 = true := by decide +kernel

theorem v_765_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 765 16 16 = true := by decide +kernel

theorem v_765_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 765 32 16 = true := by decide +kernel

theorem r_765 : recsK7OK T qscale den6 d14 lamN lamD l7 765 1 = true := recK7_of (n := 48) t_765 n_765 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_765_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_765_1 (v_765_2)))

theorem t_766 : treeK7OK l7 766 = true := by decide +kernel

theorem n_766 : (recAt l7 766).2.2.2.length ≤ 32 := by decide +kernel

theorem v_766_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 766 0 16 = true := by decide +kernel

theorem v_766_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 766 16 16 = true := by decide +kernel

theorem r_766 : recsK7OK T qscale den6 d14 lamN lamD l7 766 1 = true := recK7_of (n := 32) t_766 n_766 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_766_0 (v_766_1))

theorem rs_762 : recsK7OK T qscale den6 d14 lamN lamD l7 762 5 = true := recsK7OK_succ (lo := 762) (n := 4) r_762 (recsK7OK_succ (lo := 763) (n := 3) r_763 (recsK7OK_succ (lo := 764) (n := 2) r_764 (recsK7OK_succ (lo := 765) (n := 1) r_765 (r_766))))

end BeatAvg.K.K7
