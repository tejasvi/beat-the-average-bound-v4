import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_464 : treeK7OK l7 464 = true := by decide +kernel

theorem n_464 : (recAt l7 464).2.2.2.length ≤ 208 := by decide +kernel

theorem v_464_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 0 16 = true := by decide +kernel

theorem v_464_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 16 16 = true := by decide +kernel

theorem v_464_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 32 16 = true := by decide +kernel

theorem v_464_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 48 16 = true := by decide +kernel

theorem v_464_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 64 16 = true := by decide +kernel

theorem v_464_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 80 16 = true := by decide +kernel

theorem v_464_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 96 16 = true := by decide +kernel

theorem v_464_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 112 16 = true := by decide +kernel

theorem v_464_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 128 16 = true := by decide +kernel

theorem v_464_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 144 16 = true := by decide +kernel

theorem v_464_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 160 16 = true := by decide +kernel

theorem v_464_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 176 16 = true := by decide +kernel

theorem v_464_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 464 192 16 = true := by decide +kernel

theorem r_464 : recsK7OK T qscale den6 d14 lamN lamD l7 464 1 = true := recK7_of (n := 208) t_464 n_464 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_464_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_464_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_464_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_464_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_464_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_464_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_464_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_464_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_464_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_464_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_464_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_464_11 (v_464_12)))))))))))))

theorem t_465 : treeK7OK l7 465 = true := by decide +kernel

theorem n_465 : (recAt l7 465).2.2.2.length ≤ 208 := by decide +kernel

theorem v_465_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 0 16 = true := by decide +kernel

theorem v_465_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 16 16 = true := by decide +kernel

theorem v_465_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 32 16 = true := by decide +kernel

theorem v_465_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 48 16 = true := by decide +kernel

theorem v_465_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 64 16 = true := by decide +kernel

theorem v_465_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 80 16 = true := by decide +kernel

theorem v_465_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 96 16 = true := by decide +kernel

theorem v_465_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 112 16 = true := by decide +kernel

theorem v_465_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 128 16 = true := by decide +kernel

theorem v_465_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 144 16 = true := by decide +kernel

theorem v_465_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 160 16 = true := by decide +kernel

theorem v_465_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 176 16 = true := by decide +kernel

theorem v_465_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 465 192 16 = true := by decide +kernel

theorem r_465 : recsK7OK T qscale den6 d14 lamN lamD l7 465 1 = true := recK7_of (n := 208) t_465 n_465 (leavesK7OK_add (lo := 0) (n := 16) (m := 192) v_465_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 176) v_465_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 160) v_465_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 144) v_465_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 128) v_465_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 112) v_465_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 96) v_465_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 80) v_465_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 64) v_465_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 48) v_465_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 32) v_465_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 16) v_465_11 (v_465_12)))))))))))))

theorem rs_464 : recsK7OK T qscale den6 d14 lamN lamD l7 464 2 = true := recsK7OK_succ (lo := 464) (n := 1) r_464 (r_465)

end BeatAvg.K.K7
