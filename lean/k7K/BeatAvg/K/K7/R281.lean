import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_877 : treeK7OK l7 877 = true := by decide +kernel

theorem n_877 : (recAt l7 877).2.2.2.length ≤ 208 := by decide +kernel

theorem v_877_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 0 16 = true := by decide +kernel

theorem v_877_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 16 16 = true := by decide +kernel

theorem v_877_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 32 16 = true := by decide +kernel

theorem v_877_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 48 16 = true := by decide +kernel

theorem v_877_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 64 16 = true := by decide +kernel

theorem v_877_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 80 16 = true := by decide +kernel

theorem v_877_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 96 16 = true := by decide +kernel

theorem v_877_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 112 16 = true := by decide +kernel

theorem v_877_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 128 16 = true := by decide +kernel

theorem v_877_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 144 16 = true := by decide +kernel

theorem v_877_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 160 16 = true := by decide +kernel

theorem v_877_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 176 16 = true := by decide +kernel

theorem v_877_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 877 192 16 = true := by decide +kernel

theorem r_877 : recsK7OK T qscale den6 d14 lamN lamD l7 877 1 = true := recK7_of (n := 208) t_877 n_877 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_877_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_877_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_877_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_877_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_877_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_877_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_877_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_877_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_877_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_877_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_877_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_877_11 (v_877_12)))))))))))))

theorem t_878 : treeK7OK l7 878 = true := by decide +kernel

theorem n_878 : (recAt l7 878).2.2.2.length ≤ 80 := by decide +kernel

theorem v_878_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 878 0 16 = true := by decide +kernel

theorem v_878_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 878 16 16 = true := by decide +kernel

theorem v_878_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 878 32 16 = true := by decide +kernel

theorem v_878_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 878 48 16 = true := by decide +kernel

theorem v_878_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 878 64 16 = true := by decide +kernel

theorem r_878 : recsK7OK T qscale den6 d14 lamN lamD l7 878 1 = true := recK7_of (n := 80) t_878 n_878 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_878_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_878_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_878_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_878_3 (v_878_4)))))

theorem t_879 : treeK7OK l7 879 = true := by decide +kernel

theorem n_879 : (recAt l7 879).2.2.2.length ≤ 96 := by decide +kernel

theorem v_879_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 879 0 16 = true := by decide +kernel

theorem v_879_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 879 16 16 = true := by decide +kernel

theorem v_879_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 879 32 16 = true := by decide +kernel

theorem v_879_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 879 48 16 = true := by decide +kernel

theorem v_879_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 879 64 16 = true := by decide +kernel

theorem v_879_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 879 80 16 = true := by decide +kernel

theorem r_879 : recsK7OK T qscale den6 d14 lamN lamD l7 879 1 = true := recK7_of (n := 96) t_879 n_879 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_879_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_879_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_879_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_879_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_879_4 (v_879_5))))))

theorem rs_877 : recsK7OK T qscale den6 d14 lamN lamD l7 877 3 = true := recsK7OK_succ (lo := 877) (n := 2) r_877 (recsK7OK_succ (lo := 878) (n := 1) r_878 (r_879))

end BeatAvg.K.K7
