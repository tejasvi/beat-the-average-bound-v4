import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_814 : treeK7OK l7 814 = true := by decide +kernel

theorem n_814 : (recAt l7 814).2.2.2.length ≤ 192 := by decide +kernel

theorem v_814_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 0 16 = true := by decide +kernel

theorem v_814_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 16 16 = true := by decide +kernel

theorem v_814_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 32 16 = true := by decide +kernel

theorem v_814_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 48 16 = true := by decide +kernel

theorem v_814_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 64 16 = true := by decide +kernel

theorem v_814_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 80 16 = true := by decide +kernel

theorem v_814_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 96 16 = true := by decide +kernel

theorem v_814_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 112 16 = true := by decide +kernel

theorem v_814_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 128 16 = true := by decide +kernel

theorem v_814_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 144 16 = true := by decide +kernel

theorem v_814_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 160 16 = true := by decide +kernel

theorem v_814_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 814 176 16 = true := by decide +kernel

theorem r_814 : recsK7OK T qscale den6 d14 lamN lamD l7 814 1 = true := recK7_of (n := 192) t_814 n_814 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_814_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_814_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_814_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_814_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_814_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_814_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_814_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_814_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_814_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_814_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_814_10 (v_814_11))))))))))))

theorem t_815 : treeK7OK l7 815 = true := by decide +kernel

theorem n_815 : (recAt l7 815).2.2.2.length ≤ 224 := by decide +kernel

theorem v_815_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 0 16 = true := by decide +kernel

theorem v_815_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 16 16 = true := by decide +kernel

theorem v_815_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 32 16 = true := by decide +kernel

theorem v_815_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 48 16 = true := by decide +kernel

theorem v_815_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 64 16 = true := by decide +kernel

theorem v_815_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 80 16 = true := by decide +kernel

theorem v_815_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 96 16 = true := by decide +kernel

theorem v_815_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 112 16 = true := by decide +kernel

theorem v_815_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 128 16 = true := by decide +kernel

theorem v_815_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 144 16 = true := by decide +kernel

theorem v_815_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 160 16 = true := by decide +kernel

theorem v_815_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 176 16 = true := by decide +kernel

theorem v_815_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 192 16 = true := by decide +kernel

theorem v_815_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 815 208 16 = true := by decide +kernel

theorem r_815 : recsK7OK T qscale den6 d14 lamN lamD l7 815 1 = true := recK7_of (n := 224) t_815 n_815 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_815_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_815_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_815_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_815_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_815_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_815_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_815_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_815_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_815_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_815_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_815_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_815_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_815_12 (v_815_13))))))))))))))

theorem rs_814 : recsK7OK T qscale den6 d14 lamN lamD l7 814 2 = true := recsK7OK_succ (lo := 814) (n := 1) r_814 (r_815)

end BeatAvg.K.K7
