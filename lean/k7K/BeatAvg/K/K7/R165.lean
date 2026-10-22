import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_551 : treeK7OK l7 551 = true := by decide +kernel

theorem n_551 : (recAt l7 551).2.2.2.length ≤ 64 := by decide +kernel

theorem v_551_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 551 0 16 = true := by decide +kernel

theorem v_551_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 551 16 16 = true := by decide +kernel

theorem v_551_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 551 32 16 = true := by decide +kernel

theorem v_551_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 551 48 16 = true := by decide +kernel

theorem r_551 : recsK7OK T qscale den6 d14 lamN lamD l7 551 1 = true := recK7_of (n := 64) t_551 n_551 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_551_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_551_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_551_2 (v_551_3))))

theorem t_552 : treeK7OK l7 552 = true := by decide +kernel

theorem n_552 : (recAt l7 552).2.2.2.length ≤ 32 := by decide +kernel

theorem v_552_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 552 0 16 = true := by decide +kernel

theorem v_552_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 552 16 16 = true := by decide +kernel

theorem r_552 : recsK7OK T qscale den6 d14 lamN lamD l7 552 1 = true := recK7_of (n := 32) t_552 n_552 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_552_0 (v_552_1))

theorem t_553 : treeK7OK l7 553 = true := by decide +kernel

theorem n_553 : (recAt l7 553).2.2.2.length ≤ 128 := by decide +kernel

theorem v_553_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 0 16 = true := by decide +kernel

theorem v_553_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 16 16 = true := by decide +kernel

theorem v_553_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 32 16 = true := by decide +kernel

theorem v_553_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 48 16 = true := by decide +kernel

theorem v_553_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 64 16 = true := by decide +kernel

theorem v_553_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 80 16 = true := by decide +kernel

theorem v_553_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 96 16 = true := by decide +kernel

theorem v_553_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 553 112 16 = true := by decide +kernel

theorem r_553 : recsK7OK T qscale den6 d14 lamN lamD l7 553 1 = true := recK7_of (n := 128) t_553 n_553 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_553_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_553_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_553_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_553_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_553_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_553_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_553_6 (v_553_7))))))))

theorem t_554 : treeK7OK l7 554 = true := by decide +kernel

theorem n_554 : (recAt l7 554).2.2.2.length ≤ 96 := by decide +kernel

theorem v_554_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 554 0 16 = true := by decide +kernel

theorem v_554_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 554 16 16 = true := by decide +kernel

theorem v_554_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 554 32 16 = true := by decide +kernel

theorem v_554_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 554 48 16 = true := by decide +kernel

theorem v_554_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 554 64 16 = true := by decide +kernel

theorem v_554_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 554 80 16 = true := by decide +kernel

theorem r_554 : recsK7OK T qscale den6 d14 lamN lamD l7 554 1 = true := recK7_of (n := 96) t_554 n_554 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_554_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_554_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_554_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_554_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_554_4 (v_554_5))))))

theorem t_555 : treeK7OK l7 555 = true := by decide +kernel

theorem n_555 : (recAt l7 555).2.2.2.length ≤ 48 := by decide +kernel

theorem v_555_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 555 0 16 = true := by decide +kernel

theorem v_555_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 555 16 16 = true := by decide +kernel

theorem v_555_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 555 32 16 = true := by decide +kernel

theorem r_555 : recsK7OK T qscale den6 d14 lamN lamD l7 555 1 = true := recK7_of (n := 48) t_555 n_555 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_555_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_555_1 (v_555_2)))

theorem t_556 : treeK7OK l7 556 = true := by decide +kernel

theorem n_556 : (recAt l7 556).2.2.2.length ≤ 32 := by decide +kernel

theorem v_556_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 556 0 16 = true := by decide +kernel

theorem v_556_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 556 16 16 = true := by decide +kernel

theorem r_556 : recsK7OK T qscale den6 d14 lamN lamD l7 556 1 = true := recK7_of (n := 32) t_556 n_556 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_556_0 (v_556_1))

theorem rs_551 : recsK7OK T qscale den6 d14 lamN lamD l7 551 6 = true := recsK7OK_succ (lo := 551) (n := 5) r_551 (recsK7OK_succ (lo := 552) (n := 4) r_552 (recsK7OK_succ (lo := 553) (n := 3) r_553 (recsK7OK_succ (lo := 554) (n := 2) r_554 (recsK7OK_succ (lo := 555) (n := 1) r_555 (r_556)))))

end BeatAvg.K.K7
