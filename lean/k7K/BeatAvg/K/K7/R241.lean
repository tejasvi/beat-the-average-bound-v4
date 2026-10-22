import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_793 : treeK7OK l7 793 = true := by decide +kernel

theorem n_793 : (recAt l7 793).2.2.2.length ≤ 160 := by decide +kernel

theorem v_793_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 0 16 = true := by decide +kernel

theorem v_793_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 16 16 = true := by decide +kernel

theorem v_793_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 32 16 = true := by decide +kernel

theorem v_793_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 48 16 = true := by decide +kernel

theorem v_793_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 64 16 = true := by decide +kernel

theorem v_793_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 80 16 = true := by decide +kernel

theorem v_793_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 96 16 = true := by decide +kernel

theorem v_793_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 112 16 = true := by decide +kernel

theorem v_793_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 128 16 = true := by decide +kernel

theorem v_793_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 793 144 16 = true := by decide +kernel

theorem r_793 : recsK7OK T qscale den6 d14 lamN lamD l7 793 1 = true := recK7_of (n := 160) t_793 n_793 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_793_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_793_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_793_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_793_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_793_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_793_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_793_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_793_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_793_8 (v_793_9))))))))))

theorem t_794 : treeK7OK l7 794 = true := by decide +kernel

theorem n_794 : (recAt l7 794).2.2.2.length ≤ 80 := by decide +kernel

theorem v_794_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 794 0 16 = true := by decide +kernel

theorem v_794_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 794 16 16 = true := by decide +kernel

theorem v_794_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 794 32 16 = true := by decide +kernel

theorem v_794_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 794 48 16 = true := by decide +kernel

theorem v_794_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 794 64 16 = true := by decide +kernel

theorem r_794 : recsK7OK T qscale den6 d14 lamN lamD l7 794 1 = true := recK7_of (n := 80) t_794 n_794 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_794_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_794_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_794_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_794_3 (v_794_4)))))

theorem t_795 : treeK7OK l7 795 = true := by decide +kernel

theorem n_795 : (recAt l7 795).2.2.2.length ≤ 128 := by decide +kernel

theorem v_795_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 0 16 = true := by decide +kernel

theorem v_795_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 16 16 = true := by decide +kernel

theorem v_795_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 32 16 = true := by decide +kernel

theorem v_795_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 48 16 = true := by decide +kernel

theorem v_795_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 64 16 = true := by decide +kernel

theorem v_795_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 80 16 = true := by decide +kernel

theorem v_795_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 96 16 = true := by decide +kernel

theorem v_795_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 795 112 16 = true := by decide +kernel

theorem r_795 : recsK7OK T qscale den6 d14 lamN lamD l7 795 1 = true := recK7_of (n := 128) t_795 n_795 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_795_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_795_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_795_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_795_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_795_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_795_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_795_6 (v_795_7))))))))

theorem rs_793 : recsK7OK T qscale den6 d14 lamN lamD l7 793 3 = true := recsK7OK_succ (lo := 793) (n := 2) r_793 (recsK7OK_succ (lo := 794) (n := 1) r_794 (r_795))

end BeatAvg.K.K7
