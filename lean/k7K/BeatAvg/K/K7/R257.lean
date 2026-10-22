import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_822 : treeK7OK l7 822 = true := by decide +kernel

theorem n_822 : (recAt l7 822).2.2.2.length ≤ 256 := by decide +kernel

theorem v_822_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 0 16 = true := by decide +kernel

theorem v_822_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 16 16 = true := by decide +kernel

theorem v_822_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 32 16 = true := by decide +kernel

theorem v_822_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 48 16 = true := by decide +kernel

theorem v_822_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 64 16 = true := by decide +kernel

theorem v_822_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 80 16 = true := by decide +kernel

theorem v_822_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 96 16 = true := by decide +kernel

theorem v_822_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 112 16 = true := by decide +kernel

theorem v_822_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 128 16 = true := by decide +kernel

theorem v_822_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 144 16 = true := by decide +kernel

theorem v_822_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 160 16 = true := by decide +kernel

theorem v_822_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 176 16 = true := by decide +kernel

theorem v_822_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 192 16 = true := by decide +kernel

theorem v_822_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 208 16 = true := by decide +kernel

theorem v_822_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 224 16 = true := by decide +kernel

theorem v_822_15 : leavesK7OK T qscale den6 d14 lamN lamD l7 822 240 16 = true := by decide +kernel

theorem r_822 : recsK7OK T qscale den6 d14 lamN lamD l7 822 1 = true := recK7_of (n := 256) t_822 n_822 (leavesK7OK_add (lo := 0) (n := 16) (m := 240) v_822_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 224) v_822_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 208) v_822_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 192) v_822_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 176) v_822_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 160) v_822_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 144) v_822_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 128) v_822_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 112) v_822_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 96) v_822_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 80) v_822_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 64) v_822_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 48) v_822_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 32) v_822_13 (leavesK7OK_add (lo := 224) (n := 16) (m := 16) v_822_14 (v_822_15))))))))))))))))

theorem t_823 : treeK7OK l7 823 = true := by decide +kernel

theorem n_823 : (recAt l7 823).2.2.2.length ≤ 96 := by decide +kernel

theorem v_823_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 823 0 16 = true := by decide +kernel

theorem v_823_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 823 16 16 = true := by decide +kernel

theorem v_823_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 823 32 16 = true := by decide +kernel

theorem v_823_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 823 48 16 = true := by decide +kernel

theorem v_823_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 823 64 16 = true := by decide +kernel

theorem v_823_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 823 80 16 = true := by decide +kernel

theorem r_823 : recsK7OK T qscale den6 d14 lamN lamD l7 823 1 = true := recK7_of (n := 96) t_823 n_823 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_823_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_823_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_823_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_823_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_823_4 (v_823_5))))))

theorem rs_822 : recsK7OK T qscale den6 d14 lamN lamD l7 822 2 = true := recsK7OK_succ (lo := 822) (n := 1) r_822 (r_823)

end BeatAvg.K.K7
