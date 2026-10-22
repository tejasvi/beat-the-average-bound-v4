import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_617 : treeK7OK l7 617 = true := by decide +kernel

theorem n_617 : (recAt l7 617).2.2.2.length ≤ 80 := by decide +kernel

theorem v_617_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 617 0 16 = true := by decide +kernel

theorem v_617_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 617 16 16 = true := by decide +kernel

theorem v_617_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 617 32 16 = true := by decide +kernel

theorem v_617_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 617 48 16 = true := by decide +kernel

theorem v_617_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 617 64 16 = true := by decide +kernel

theorem r_617 : recsK7OK T qscale den6 d14 lamN lamD l7 617 1 = true := recK7_of (n := 80) t_617 n_617 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_617_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_617_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_617_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_617_3 (v_617_4)))))

theorem t_618 : treeK7OK l7 618 = true := by decide +kernel

theorem n_618 : (recAt l7 618).2.2.2.length ≤ 80 := by decide +kernel

theorem v_618_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 618 0 16 = true := by decide +kernel

theorem v_618_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 618 16 16 = true := by decide +kernel

theorem v_618_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 618 32 16 = true := by decide +kernel

theorem v_618_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 618 48 16 = true := by decide +kernel

theorem v_618_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 618 64 16 = true := by decide +kernel

theorem r_618 : recsK7OK T qscale den6 d14 lamN lamD l7 618 1 = true := recK7_of (n := 80) t_618 n_618 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_618_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_618_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_618_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_618_3 (v_618_4)))))

theorem t_619 : treeK7OK l7 619 = true := by decide +kernel

theorem n_619 : (recAt l7 619).2.2.2.length ≤ 112 := by decide +kernel

theorem v_619_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 619 0 16 = true := by decide +kernel

theorem v_619_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 619 16 16 = true := by decide +kernel

theorem v_619_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 619 32 16 = true := by decide +kernel

theorem v_619_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 619 48 16 = true := by decide +kernel

theorem v_619_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 619 64 16 = true := by decide +kernel

theorem v_619_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 619 80 16 = true := by decide +kernel

theorem v_619_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 619 96 16 = true := by decide +kernel

theorem r_619 : recsK7OK T qscale den6 d14 lamN lamD l7 619 1 = true := recK7_of (n := 112) t_619 n_619 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_619_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_619_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_619_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_619_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_619_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_619_5 (v_619_6)))))))

theorem t_620 : treeK7OK l7 620 = true := by decide +kernel

theorem n_620 : (recAt l7 620).2.2.2.length ≤ 48 := by decide +kernel

theorem v_620_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 620 0 16 = true := by decide +kernel

theorem v_620_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 620 16 16 = true := by decide +kernel

theorem v_620_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 620 32 16 = true := by decide +kernel

theorem r_620 : recsK7OK T qscale den6 d14 lamN lamD l7 620 1 = true := recK7_of (n := 48) t_620 n_620 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_620_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_620_1 (v_620_2)))

theorem rs_617 : recsK7OK T qscale den6 d14 lamN lamD l7 617 4 = true := recsK7OK_succ (lo := 617) (n := 3) r_617 (recsK7OK_succ (lo := 618) (n := 2) r_618 (recsK7OK_succ (lo := 619) (n := 1) r_619 (r_620)))

end BeatAvg.K.K7
