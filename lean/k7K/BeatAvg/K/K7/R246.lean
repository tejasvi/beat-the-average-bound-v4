import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_802 : treeK7OK l7 802 = true := by decide +kernel

theorem n_802 : (recAt l7 802).2.2.2.length ≤ 240 := by decide +kernel

theorem v_802_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 0 16 = true := by decide +kernel

theorem v_802_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 16 16 = true := by decide +kernel

theorem v_802_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 32 16 = true := by decide +kernel

theorem v_802_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 48 16 = true := by decide +kernel

theorem v_802_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 64 16 = true := by decide +kernel

theorem v_802_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 80 16 = true := by decide +kernel

theorem v_802_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 96 16 = true := by decide +kernel

theorem v_802_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 112 16 = true := by decide +kernel

theorem v_802_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 128 16 = true := by decide +kernel

theorem v_802_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 144 16 = true := by decide +kernel

theorem v_802_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 160 16 = true := by decide +kernel

theorem v_802_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 176 16 = true := by decide +kernel

theorem v_802_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 192 16 = true := by decide +kernel

theorem v_802_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 208 16 = true := by decide +kernel

theorem v_802_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 802 224 16 = true := by decide +kernel

theorem r_802 : recsK7OK T qscale den6 d14 lamN lamD l7 802 1 = true := recK7_of (n := 240) t_802 n_802 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_802_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_802_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_802_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_802_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_802_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_802_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_802_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_802_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_802_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_802_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_802_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_802_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_802_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_802_13 (v_802_14)))))))))))))))

theorem t_803 : treeK7OK l7 803 = true := by decide +kernel

theorem n_803 : (recAt l7 803).2.2.2.length ≤ 160 := by decide +kernel

theorem v_803_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 0 16 = true := by decide +kernel

theorem v_803_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 16 16 = true := by decide +kernel

theorem v_803_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 32 16 = true := by decide +kernel

theorem v_803_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 48 16 = true := by decide +kernel

theorem v_803_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 64 16 = true := by decide +kernel

theorem v_803_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 80 16 = true := by decide +kernel

theorem v_803_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 96 16 = true := by decide +kernel

theorem v_803_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 112 16 = true := by decide +kernel

theorem v_803_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 128 16 = true := by decide +kernel

theorem v_803_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 803 144 16 = true := by decide +kernel

theorem r_803 : recsK7OK T qscale den6 d14 lamN lamD l7 803 1 = true := recK7_of (n := 160) t_803 n_803 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_803_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_803_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_803_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_803_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_803_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_803_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_803_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_803_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_803_8 (v_803_9))))))))))

theorem rs_802 : recsK7OK T qscale den6 d14 lamN lamD l7 802 2 = true := recsK7OK_succ (lo := 802) (n := 1) r_802 (r_803)

end BeatAvg.K.K7
