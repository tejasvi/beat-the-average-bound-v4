import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_783 : treeK7OK l7 783 = true := by decide +kernel

theorem n_783 : (recAt l7 783).2.2.2.length ≤ 144 := by decide +kernel

theorem v_783_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 0 16 = true := by decide +kernel

theorem v_783_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 16 16 = true := by decide +kernel

theorem v_783_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 32 16 = true := by decide +kernel

theorem v_783_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 48 16 = true := by decide +kernel

theorem v_783_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 64 16 = true := by decide +kernel

theorem v_783_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 80 16 = true := by decide +kernel

theorem v_783_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 96 16 = true := by decide +kernel

theorem v_783_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 112 16 = true := by decide +kernel

theorem v_783_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 783 128 16 = true := by decide +kernel

theorem r_783 : recsK7OK T qscale den6 d14 lamN lamD l7 783 1 = true := recK7_of (n := 144) t_783 n_783 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_783_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_783_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_783_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_783_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_783_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_783_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_783_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_783_7 (v_783_8)))))))))

theorem t_784 : treeK7OK l7 784 = true := by decide +kernel

theorem n_784 : (recAt l7 784).2.2.2.length ≤ 96 := by decide +kernel

theorem v_784_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 784 0 16 = true := by decide +kernel

theorem v_784_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 784 16 16 = true := by decide +kernel

theorem v_784_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 784 32 16 = true := by decide +kernel

theorem v_784_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 784 48 16 = true := by decide +kernel

theorem v_784_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 784 64 16 = true := by decide +kernel

theorem v_784_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 784 80 16 = true := by decide +kernel

theorem r_784 : recsK7OK T qscale den6 d14 lamN lamD l7 784 1 = true := recK7_of (n := 96) t_784 n_784 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_784_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_784_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_784_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_784_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_784_4 (v_784_5))))))

theorem t_785 : treeK7OK l7 785 = true := by decide +kernel

theorem n_785 : (recAt l7 785).2.2.2.length ≤ 80 := by decide +kernel

theorem v_785_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 785 0 16 = true := by decide +kernel

theorem v_785_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 785 16 16 = true := by decide +kernel

theorem v_785_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 785 32 16 = true := by decide +kernel

theorem v_785_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 785 48 16 = true := by decide +kernel

theorem v_785_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 785 64 16 = true := by decide +kernel

theorem r_785 : recsK7OK T qscale den6 d14 lamN lamD l7 785 1 = true := recK7_of (n := 80) t_785 n_785 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_785_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_785_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_785_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_785_3 (v_785_4)))))

theorem t_786 : treeK7OK l7 786 = true := by decide +kernel

theorem n_786 : (recAt l7 786).2.2.2.length ≤ 64 := by decide +kernel

theorem v_786_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 786 0 16 = true := by decide +kernel

theorem v_786_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 786 16 16 = true := by decide +kernel

theorem v_786_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 786 32 16 = true := by decide +kernel

theorem v_786_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 786 48 16 = true := by decide +kernel

theorem r_786 : recsK7OK T qscale den6 d14 lamN lamD l7 786 1 = true := recK7_of (n := 64) t_786 n_786 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_786_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_786_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_786_2 (v_786_3))))

theorem rs_783 : recsK7OK T qscale den6 d14 lamN lamD l7 783 4 = true := recsK7OK_succ (lo := 783) (n := 3) r_783 (recsK7OK_succ (lo := 784) (n := 2) r_784 (recsK7OK_succ (lo := 785) (n := 1) r_785 (r_786)))

end BeatAvg.K.K7
