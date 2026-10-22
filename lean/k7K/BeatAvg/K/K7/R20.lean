import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_66 : treeK7OK l7 66 = true := by decide +kernel

theorem n_66 : (recAt l7 66).2.2.2.length ≤ 192 := by decide +kernel

theorem v_66_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 0 16 = true := by decide +kernel

theorem v_66_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 16 16 = true := by decide +kernel

theorem v_66_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 32 16 = true := by decide +kernel

theorem v_66_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 48 16 = true := by decide +kernel

theorem v_66_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 64 16 = true := by decide +kernel

theorem v_66_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 80 16 = true := by decide +kernel

theorem v_66_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 96 16 = true := by decide +kernel

theorem v_66_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 112 16 = true := by decide +kernel

theorem v_66_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 128 16 = true := by decide +kernel

theorem v_66_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 144 16 = true := by decide +kernel

theorem v_66_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 160 16 = true := by decide +kernel

theorem v_66_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 66 176 16 = true := by decide +kernel

theorem r_66 : recsK7OK T qscale den6 d14 lamN lamD l7 66 1 = true := recK7_of (n := 192) t_66 n_66 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_66_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_66_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_66_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_66_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_66_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_66_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_66_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_66_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_66_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_66_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_66_10 (v_66_11))))))))))))

theorem t_67 : treeK7OK l7 67 = true := by decide +kernel

theorem n_67 : (recAt l7 67).2.2.2.length ≤ 48 := by decide +kernel

theorem v_67_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 67 0 16 = true := by decide +kernel

theorem v_67_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 67 16 16 = true := by decide +kernel

theorem v_67_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 67 32 16 = true := by decide +kernel

theorem r_67 : recsK7OK T qscale den6 d14 lamN lamD l7 67 1 = true := recK7_of (n := 48) t_67 n_67 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_67_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_67_1 (v_67_2)))

theorem t_68 : treeK7OK l7 68 = true := by decide +kernel

theorem n_68 : (recAt l7 68).2.2.2.length ≤ 112 := by decide +kernel

theorem v_68_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 68 0 16 = true := by decide +kernel

theorem v_68_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 68 16 16 = true := by decide +kernel

theorem v_68_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 68 32 16 = true := by decide +kernel

theorem v_68_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 68 48 16 = true := by decide +kernel

theorem v_68_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 68 64 16 = true := by decide +kernel

theorem v_68_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 68 80 16 = true := by decide +kernel

theorem v_68_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 68 96 16 = true := by decide +kernel

theorem r_68 : recsK7OK T qscale den6 d14 lamN lamD l7 68 1 = true := recK7_of (n := 112) t_68 n_68 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_68_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_68_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_68_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_68_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_68_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_68_5 (v_68_6)))))))

theorem rs_66 : recsK7OK T qscale den6 d14 lamN lamD l7 66 3 = true := recsK7OK_succ (lo := 66) (n := 2) r_66 (recsK7OK_succ (lo := 67) (n := 1) r_67 (r_68))

end BeatAvg.K.K7
