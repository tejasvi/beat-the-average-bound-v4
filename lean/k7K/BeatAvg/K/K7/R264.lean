import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_838 : treeK7OK l7 838 = true := by decide +kernel

theorem n_838 : (recAt l7 838).2.2.2.length ≤ 160 := by decide +kernel

theorem v_838_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 0 16 = true := by decide +kernel

theorem v_838_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 16 16 = true := by decide +kernel

theorem v_838_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 32 16 = true := by decide +kernel

theorem v_838_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 48 16 = true := by decide +kernel

theorem v_838_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 64 16 = true := by decide +kernel

theorem v_838_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 80 16 = true := by decide +kernel

theorem v_838_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 96 16 = true := by decide +kernel

theorem v_838_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 112 16 = true := by decide +kernel

theorem v_838_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 128 16 = true := by decide +kernel

theorem v_838_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 838 144 16 = true := by decide +kernel

theorem r_838 : recsK7OK T qscale den6 d14 lamN lamD l7 838 1 = true := recK7_of (n := 160) t_838 n_838 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_838_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_838_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_838_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_838_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_838_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_838_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_838_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_838_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_838_8 (v_838_9))))))))))

theorem t_839 : treeK7OK l7 839 = true := by decide +kernel

theorem n_839 : (recAt l7 839).2.2.2.length ≤ 64 := by decide +kernel

theorem v_839_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 839 0 16 = true := by decide +kernel

theorem v_839_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 839 16 16 = true := by decide +kernel

theorem v_839_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 839 32 16 = true := by decide +kernel

theorem v_839_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 839 48 16 = true := by decide +kernel

theorem r_839 : recsK7OK T qscale den6 d14 lamN lamD l7 839 1 = true := recK7_of (n := 64) t_839 n_839 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_839_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_839_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_839_2 (v_839_3))))

theorem t_840 : treeK7OK l7 840 = true := by decide +kernel

theorem n_840 : (recAt l7 840).2.2.2.length ≤ 32 := by decide +kernel

theorem v_840_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 840 0 16 = true := by decide +kernel

theorem v_840_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 840 16 16 = true := by decide +kernel

theorem r_840 : recsK7OK T qscale den6 d14 lamN lamD l7 840 1 = true := recK7_of (n := 32) t_840 n_840 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_840_0 (v_840_1))

theorem rs_838 : recsK7OK T qscale den6 d14 lamN lamD l7 838 3 = true := recsK7OK_succ (lo := 838) (n := 2) r_838 (recsK7OK_succ (lo := 839) (n := 1) r_839 (r_840))

end BeatAvg.K.K7
