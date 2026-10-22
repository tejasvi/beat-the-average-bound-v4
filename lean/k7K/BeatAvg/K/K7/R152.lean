import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_508 : treeK7OK l7 508 = true := by decide +kernel

theorem n_508 : (recAt l7 508).2.2.2.length ≤ 48 := by decide +kernel

theorem v_508_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 508 0 16 = true := by decide +kernel

theorem v_508_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 508 16 16 = true := by decide +kernel

theorem v_508_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 508 32 16 = true := by decide +kernel

theorem r_508 : recsK7OK T qscale den6 d14 lamN lamD l7 508 1 = true := recK7_of (n := 48) t_508 n_508 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_508_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_508_1 (v_508_2)))

theorem t_509 : treeK7OK l7 509 = true := by decide +kernel

theorem n_509 : (recAt l7 509).2.2.2.length ≤ 192 := by decide +kernel

theorem v_509_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 0 16 = true := by decide +kernel

theorem v_509_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 16 16 = true := by decide +kernel

theorem v_509_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 32 16 = true := by decide +kernel

theorem v_509_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 48 16 = true := by decide +kernel

theorem v_509_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 64 16 = true := by decide +kernel

theorem v_509_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 80 16 = true := by decide +kernel

theorem v_509_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 96 16 = true := by decide +kernel

theorem v_509_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 112 16 = true := by decide +kernel

theorem v_509_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 128 16 = true := by decide +kernel

theorem v_509_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 144 16 = true := by decide +kernel

theorem v_509_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 160 16 = true := by decide +kernel

theorem v_509_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 509 176 16 = true := by decide +kernel

theorem r_509 : recsK7OK T qscale den6 d14 lamN lamD l7 509 1 = true := recK7_of (n := 192) t_509 n_509 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_509_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_509_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_509_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_509_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_509_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_509_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_509_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_509_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_509_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_509_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_509_10 (v_509_11))))))))))))

theorem t_510 : treeK7OK l7 510 = true := by decide +kernel

theorem n_510 : (recAt l7 510).2.2.2.length ≤ 144 := by decide +kernel

theorem v_510_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 0 16 = true := by decide +kernel

theorem v_510_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 16 16 = true := by decide +kernel

theorem v_510_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 32 16 = true := by decide +kernel

theorem v_510_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 48 16 = true := by decide +kernel

theorem v_510_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 64 16 = true := by decide +kernel

theorem v_510_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 80 16 = true := by decide +kernel

theorem v_510_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 96 16 = true := by decide +kernel

theorem v_510_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 112 16 = true := by decide +kernel

theorem v_510_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 510 128 16 = true := by decide +kernel

theorem r_510 : recsK7OK T qscale den6 d14 lamN lamD l7 510 1 = true := recK7_of (n := 144) t_510 n_510 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_510_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_510_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_510_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_510_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_510_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_510_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_510_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_510_7 (v_510_8)))))))))

theorem rs_508 : recsK7OK T qscale den6 d14 lamN lamD l7 508 3 = true := recsK7OK_succ (lo := 508) (n := 2) r_508 (recsK7OK_succ (lo := 509) (n := 1) r_509 (r_510))

end BeatAvg.K.K7
