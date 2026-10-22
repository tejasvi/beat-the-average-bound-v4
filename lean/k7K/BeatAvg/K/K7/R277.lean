import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_871 : treeK7OK l7 871 = true := by decide +kernel

theorem n_871 : (recAt l7 871).2.2.2.length ≤ 176 := by decide +kernel

theorem v_871_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 0 16 = true := by decide +kernel

theorem v_871_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 16 16 = true := by decide +kernel

theorem v_871_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 32 16 = true := by decide +kernel

theorem v_871_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 48 16 = true := by decide +kernel

theorem v_871_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 64 16 = true := by decide +kernel

theorem v_871_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 80 16 = true := by decide +kernel

theorem v_871_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 96 16 = true := by decide +kernel

theorem v_871_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 112 16 = true := by decide +kernel

theorem v_871_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 128 16 = true := by decide +kernel

theorem v_871_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 144 16 = true := by decide +kernel

theorem v_871_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 871 160 16 = true := by decide +kernel

theorem r_871 : recsK7OK T qscale den6 d14 lamN lamD l7 871 1 = true := recK7_of (n := 176) t_871 n_871 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_871_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_871_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_871_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_871_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_871_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_871_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_871_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_871_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_871_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_871_9 (v_871_10)))))))))))

theorem t_872 : treeK7OK l7 872 = true := by decide +kernel

theorem n_872 : (recAt l7 872).2.2.2.length ≤ 80 := by decide +kernel

theorem v_872_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 872 0 16 = true := by decide +kernel

theorem v_872_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 872 16 16 = true := by decide +kernel

theorem v_872_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 872 32 16 = true := by decide +kernel

theorem v_872_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 872 48 16 = true := by decide +kernel

theorem v_872_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 872 64 16 = true := by decide +kernel

theorem r_872 : recsK7OK T qscale den6 d14 lamN lamD l7 872 1 = true := recK7_of (n := 80) t_872 n_872 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_872_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_872_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_872_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_872_3 (v_872_4)))))

theorem rs_871 : recsK7OK T qscale den6 d14 lamN lamD l7 871 2 = true := recsK7OK_succ (lo := 871) (n := 1) r_871 (r_872)

end BeatAvg.K.K7
