import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_931 : treeK7OK l7 931 = true := by decide +kernel

theorem n_931 : (recAt l7 931).2.2.2.length ≤ 176 := by decide +kernel

theorem v_931_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 0 16 = true := by decide +kernel

theorem v_931_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 16 16 = true := by decide +kernel

theorem v_931_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 32 16 = true := by decide +kernel

theorem v_931_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 48 16 = true := by decide +kernel

theorem v_931_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 64 16 = true := by decide +kernel

theorem v_931_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 80 16 = true := by decide +kernel

theorem v_931_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 96 16 = true := by decide +kernel

theorem v_931_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 112 16 = true := by decide +kernel

theorem v_931_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 128 16 = true := by decide +kernel

theorem v_931_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 144 16 = true := by decide +kernel

theorem v_931_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 931 160 16 = true := by decide +kernel

theorem r_931 : recsK7OK T qscale den6 d14 lamN lamD l7 931 1 = true := recK7_of (n := 176) t_931 n_931 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_931_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_931_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_931_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_931_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_931_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_931_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_931_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_931_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_931_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_931_9 (v_931_10)))))))))))

theorem t_932 : treeK7OK l7 932 = true := by decide +kernel

theorem n_932 : (recAt l7 932).2.2.2.length ≤ 176 := by decide +kernel

theorem v_932_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 0 16 = true := by decide +kernel

theorem v_932_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 16 16 = true := by decide +kernel

theorem v_932_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 32 16 = true := by decide +kernel

theorem v_932_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 48 16 = true := by decide +kernel

theorem v_932_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 64 16 = true := by decide +kernel

theorem v_932_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 80 16 = true := by decide +kernel

theorem v_932_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 96 16 = true := by decide +kernel

theorem v_932_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 112 16 = true := by decide +kernel

theorem v_932_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 128 16 = true := by decide +kernel

theorem v_932_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 144 16 = true := by decide +kernel

theorem v_932_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 932 160 16 = true := by decide +kernel

theorem r_932 : recsK7OK T qscale den6 d14 lamN lamD l7 932 1 = true := recK7_of (n := 176) t_932 n_932 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_932_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_932_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_932_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_932_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_932_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_932_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_932_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_932_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_932_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_932_9 (v_932_10)))))))))))

theorem rs_931 : recsK7OK T qscale den6 d14 lamN lamD l7 931 2 = true := recsK7OK_succ (lo := 931) (n := 1) r_931 (r_932)

end BeatAvg.K.K7
