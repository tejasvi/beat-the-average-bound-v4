import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_887 : treeK7OK l7 887 = true := by decide +kernel

theorem n_887 : (recAt l7 887).2.2.2.length ≤ 176 := by decide +kernel

theorem v_887_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 0 16 = true := by decide +kernel

theorem v_887_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 16 16 = true := by decide +kernel

theorem v_887_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 32 16 = true := by decide +kernel

theorem v_887_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 48 16 = true := by decide +kernel

theorem v_887_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 64 16 = true := by decide +kernel

theorem v_887_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 80 16 = true := by decide +kernel

theorem v_887_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 96 16 = true := by decide +kernel

theorem v_887_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 112 16 = true := by decide +kernel

theorem v_887_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 128 16 = true := by decide +kernel

theorem v_887_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 144 16 = true := by decide +kernel

theorem v_887_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 887 160 16 = true := by decide +kernel

theorem r_887 : recsK7OK T qscale den6 d14 lamN lamD l7 887 1 = true := recK7_of (n := 176) t_887 n_887 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_887_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_887_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_887_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_887_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_887_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_887_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_887_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_887_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_887_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_887_9 (v_887_10)))))))))))

theorem t_888 : treeK7OK l7 888 = true := by decide +kernel

theorem n_888 : (recAt l7 888).2.2.2.length ≤ 112 := by decide +kernel

theorem v_888_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 888 0 16 = true := by decide +kernel

theorem v_888_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 888 16 16 = true := by decide +kernel

theorem v_888_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 888 32 16 = true := by decide +kernel

theorem v_888_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 888 48 16 = true := by decide +kernel

theorem v_888_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 888 64 16 = true := by decide +kernel

theorem v_888_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 888 80 16 = true := by decide +kernel

theorem v_888_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 888 96 16 = true := by decide +kernel

theorem r_888 : recsK7OK T qscale den6 d14 lamN lamD l7 888 1 = true := recK7_of (n := 112) t_888 n_888 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_888_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_888_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_888_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_888_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_888_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_888_5 (v_888_6)))))))

theorem rs_887 : recsK7OK T qscale den6 d14 lamN lamD l7 887 2 = true := recsK7OK_succ (lo := 887) (n := 1) r_887 (r_888)

end BeatAvg.K.K7
