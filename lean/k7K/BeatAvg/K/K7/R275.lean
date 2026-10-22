import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_867 : treeK7OK l7 867 = true := by decide +kernel

theorem n_867 : (recAt l7 867).2.2.2.length ≤ 96 := by decide +kernel

theorem v_867_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 867 0 16 = true := by decide +kernel

theorem v_867_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 867 16 16 = true := by decide +kernel

theorem v_867_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 867 32 16 = true := by decide +kernel

theorem v_867_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 867 48 16 = true := by decide +kernel

theorem v_867_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 867 64 16 = true := by decide +kernel

theorem v_867_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 867 80 16 = true := by decide +kernel

theorem r_867 : recsK7OK T qscale den6 d14 lamN lamD l7 867 1 = true := recK7_of (n := 96) t_867 n_867 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_867_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_867_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_867_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_867_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_867_4 (v_867_5))))))

theorem t_868 : treeK7OK l7 868 = true := by decide +kernel

theorem n_868 : (recAt l7 868).2.2.2.length ≤ 80 := by decide +kernel

theorem v_868_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 868 0 16 = true := by decide +kernel

theorem v_868_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 868 16 16 = true := by decide +kernel

theorem v_868_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 868 32 16 = true := by decide +kernel

theorem v_868_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 868 48 16 = true := by decide +kernel

theorem v_868_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 868 64 16 = true := by decide +kernel

theorem r_868 : recsK7OK T qscale den6 d14 lamN lamD l7 868 1 = true := recK7_of (n := 80) t_868 n_868 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_868_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_868_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_868_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_868_3 (v_868_4)))))

theorem t_869 : treeK7OK l7 869 = true := by decide +kernel

theorem n_869 : (recAt l7 869).2.2.2.length ≤ 160 := by decide +kernel

theorem v_869_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 0 16 = true := by decide +kernel

theorem v_869_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 16 16 = true := by decide +kernel

theorem v_869_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 32 16 = true := by decide +kernel

theorem v_869_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 48 16 = true := by decide +kernel

theorem v_869_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 64 16 = true := by decide +kernel

theorem v_869_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 80 16 = true := by decide +kernel

theorem v_869_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 96 16 = true := by decide +kernel

theorem v_869_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 112 16 = true := by decide +kernel

theorem v_869_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 128 16 = true := by decide +kernel

theorem v_869_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 869 144 16 = true := by decide +kernel

theorem r_869 : recsK7OK T qscale den6 d14 lamN lamD l7 869 1 = true := recK7_of (n := 160) t_869 n_869 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_869_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_869_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_869_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_869_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_869_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_869_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_869_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_869_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_869_8 (v_869_9))))))))))

theorem rs_867 : recsK7OK T qscale den6 d14 lamN lamD l7 867 3 = true := recsK7OK_succ (lo := 867) (n := 2) r_867 (recsK7OK_succ (lo := 868) (n := 1) r_868 (r_869))

end BeatAvg.K.K7
