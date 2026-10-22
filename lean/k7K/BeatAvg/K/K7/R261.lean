import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_830 : treeK7OK l7 830 = true := by decide +kernel

theorem n_830 : (recAt l7 830).2.2.2.length ≤ 80 := by decide +kernel

theorem v_830_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 830 0 16 = true := by decide +kernel

theorem v_830_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 830 16 16 = true := by decide +kernel

theorem v_830_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 830 32 16 = true := by decide +kernel

theorem v_830_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 830 48 16 = true := by decide +kernel

theorem v_830_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 830 64 16 = true := by decide +kernel

theorem r_830 : recsK7OK T qscale den6 d14 lamN lamD l7 830 1 = true := recK7_of (n := 80) t_830 n_830 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_830_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_830_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_830_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_830_3 (v_830_4)))))

theorem t_831 : treeK7OK l7 831 = true := by decide +kernel

theorem n_831 : (recAt l7 831).2.2.2.length ≤ 288 := by decide +kernel

theorem v_831_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 0 16 = true := by decide +kernel

theorem v_831_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 16 16 = true := by decide +kernel

theorem v_831_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 32 16 = true := by decide +kernel

theorem v_831_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 48 16 = true := by decide +kernel

theorem v_831_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 64 16 = true := by decide +kernel

theorem v_831_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 80 16 = true := by decide +kernel

theorem v_831_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 96 16 = true := by decide +kernel

theorem v_831_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 112 16 = true := by decide +kernel

theorem v_831_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 128 16 = true := by decide +kernel

theorem v_831_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 144 16 = true := by decide +kernel

theorem v_831_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 160 16 = true := by decide +kernel

theorem v_831_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 176 16 = true := by decide +kernel

theorem v_831_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 192 16 = true := by decide +kernel

theorem v_831_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 208 16 = true := by decide +kernel

theorem v_831_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 224 16 = true := by decide +kernel

theorem v_831_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 240 16 = true := by decide +kernel

theorem v_831_16 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 256 16 = true := by decide +kernel

theorem v_831_17 : leavesK7OK T qscale den6 d14 lamN lamD l7 831 272 16 = true := by decide +kernel

theorem r_831 : recsK7OK T qscale den6 d14 lamN lamD l7 831 1 = true := recK7_of (n := 288) t_831 n_831 (leavesK7OK_add (lo := 0) (n := 16) (m := 272) v_831_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 256) v_831_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 240) v_831_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 224) v_831_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 208) v_831_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 192) v_831_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 176) v_831_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 160) v_831_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 144) v_831_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 128) v_831_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 112) v_831_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 96) v_831_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 80) v_831_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 64) v_831_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 48) v_831_14 (leavesK7OK_add (lo := 240) (n := 16) (m := 32) v_831_15 (leavesK7OK_add (lo := 256) (n := 16) (m := 16) v_831_16 (v_831_17))))))))))))))))))

theorem rs_830 : recsK7OK T qscale den6 d14 lamN lamD l7 830 2 = true := recsK7OK_succ (lo := 830) (n := 1) r_830 (r_831)

end BeatAvg.K.K7
