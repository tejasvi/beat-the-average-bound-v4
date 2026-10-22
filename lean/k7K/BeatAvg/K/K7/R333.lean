import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_993 : treeK7OK l7 993 = true := by decide +kernel

theorem n_993 : (recAt l7 993).2.2.2.length ≤ 176 := by decide +kernel

theorem v_993_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 0 16 = true := by decide +kernel

theorem v_993_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 16 16 = true := by decide +kernel

theorem v_993_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 32 16 = true := by decide +kernel

theorem v_993_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 48 16 = true := by decide +kernel

theorem v_993_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 64 16 = true := by decide +kernel

theorem v_993_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 80 16 = true := by decide +kernel

theorem v_993_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 96 16 = true := by decide +kernel

theorem v_993_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 112 16 = true := by decide +kernel

theorem v_993_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 128 16 = true := by decide +kernel

theorem v_993_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 144 16 = true := by decide +kernel

theorem v_993_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 993 160 16 = true := by decide +kernel

theorem r_993 : recsK7OK T qscale den6 d14 lamN lamD l7 993 1 = true := recK7_of (n := 176) t_993 n_993 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_993_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_993_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_993_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_993_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_993_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_993_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_993_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_993_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_993_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_993_9 (v_993_10)))))))))))

theorem t_994 : treeK7OK l7 994 = true := by decide +kernel

theorem n_994 : (recAt l7 994).2.2.2.length ≤ 96 := by decide +kernel

theorem v_994_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 994 0 16 = true := by decide +kernel

theorem v_994_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 994 16 16 = true := by decide +kernel

theorem v_994_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 994 32 16 = true := by decide +kernel

theorem v_994_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 994 48 16 = true := by decide +kernel

theorem v_994_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 994 64 16 = true := by decide +kernel

theorem v_994_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 994 80 16 = true := by decide +kernel

theorem r_994 : recsK7OK T qscale den6 d14 lamN lamD l7 994 1 = true := recK7_of (n := 96) t_994 n_994 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_994_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_994_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_994_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_994_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_994_4 (v_994_5))))))

theorem rs_993 : recsK7OK T qscale den6 d14 lamN lamD l7 993 2 = true := recsK7OK_succ (lo := 993) (n := 1) r_993 (r_994)

end BeatAvg.K.K7
