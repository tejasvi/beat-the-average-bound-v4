import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_755 : treeK7OK l7 755 = true := by decide +kernel

theorem n_755 : (recAt l7 755).2.2.2.length ≤ 224 := by decide +kernel

theorem v_755_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 0 16 = true := by decide +kernel

theorem v_755_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 16 16 = true := by decide +kernel

theorem v_755_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 32 16 = true := by decide +kernel

theorem v_755_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 48 16 = true := by decide +kernel

theorem v_755_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 64 16 = true := by decide +kernel

theorem v_755_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 80 16 = true := by decide +kernel

theorem v_755_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 96 16 = true := by decide +kernel

theorem v_755_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 112 16 = true := by decide +kernel

theorem v_755_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 128 16 = true := by decide +kernel

theorem v_755_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 144 16 = true := by decide +kernel

theorem v_755_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 160 16 = true := by decide +kernel

theorem v_755_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 176 16 = true := by decide +kernel

theorem v_755_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 192 16 = true := by decide +kernel

theorem v_755_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 755 208 16 = true := by decide +kernel

theorem r_755 : recsK7OK T qscale den6 d14 lamN lamD l7 755 1 = true := recK7_of (n := 224) t_755 n_755 (leavesK7OK_add (lo := 0) (n := 16) (m := 208) v_755_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 192) v_755_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 176) v_755_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 160) v_755_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 144) v_755_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 128) v_755_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 112) v_755_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 96) v_755_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 80) v_755_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 64) v_755_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 48) v_755_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 32) v_755_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 16) v_755_12 (v_755_13))))))))))))))

theorem t_756 : treeK7OK l7 756 = true := by decide +kernel

theorem n_756 : (recAt l7 756).2.2.2.length ≤ 176 := by decide +kernel

theorem v_756_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 0 16 = true := by decide +kernel

theorem v_756_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 16 16 = true := by decide +kernel

theorem v_756_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 32 16 = true := by decide +kernel

theorem v_756_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 48 16 = true := by decide +kernel

theorem v_756_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 64 16 = true := by decide +kernel

theorem v_756_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 80 16 = true := by decide +kernel

theorem v_756_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 96 16 = true := by decide +kernel

theorem v_756_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 112 16 = true := by decide +kernel

theorem v_756_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 128 16 = true := by decide +kernel

theorem v_756_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 144 16 = true := by decide +kernel

theorem v_756_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 756 160 16 = true := by decide +kernel

theorem r_756 : recsK7OK T qscale den6 d14 lamN lamD l7 756 1 = true := recK7_of (n := 176) t_756 n_756 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_756_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_756_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_756_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_756_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_756_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_756_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_756_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_756_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_756_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_756_9 (v_756_10)))))))))))

theorem rs_755 : recsK7OK T qscale den6 d14 lamN lamD l7 755 2 = true := recsK7OK_succ (lo := 755) (n := 1) r_755 (r_756)

end BeatAvg.K.K7
