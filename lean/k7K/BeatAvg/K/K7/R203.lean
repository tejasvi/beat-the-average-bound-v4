import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_700 : treeK7OK l7 700 = true := by decide +kernel

theorem n_700 : (recAt l7 700).2.2.2.length ≤ 80 := by decide +kernel

theorem v_700_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 700 0 16 = true := by decide +kernel

theorem v_700_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 700 16 16 = true := by decide +kernel

theorem v_700_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 700 32 16 = true := by decide +kernel

theorem v_700_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 700 48 16 = true := by decide +kernel

theorem v_700_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 700 64 16 = true := by decide +kernel

theorem r_700 : recsK7OK T qscale den6 d14 lamN lamD l7 700 1 = true := recK7_of (n := 80) t_700 n_700 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_700_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_700_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_700_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_700_3 (v_700_4)))))

theorem t_701 : treeK7OK l7 701 = true := by decide +kernel

theorem n_701 : (recAt l7 701).2.2.2.length ≤ 48 := by decide +kernel

theorem v_701_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 701 0 16 = true := by decide +kernel

theorem v_701_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 701 16 16 = true := by decide +kernel

theorem v_701_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 701 32 16 = true := by decide +kernel

theorem r_701 : recsK7OK T qscale den6 d14 lamN lamD l7 701 1 = true := recK7_of (n := 48) t_701 n_701 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_701_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_701_1 (v_701_2)))

theorem t_702 : treeK7OK l7 702 = true := by decide +kernel

theorem n_702 : (recAt l7 702).2.2.2.length ≤ 80 := by decide +kernel

theorem v_702_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 702 0 16 = true := by decide +kernel

theorem v_702_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 702 16 16 = true := by decide +kernel

theorem v_702_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 702 32 16 = true := by decide +kernel

theorem v_702_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 702 48 16 = true := by decide +kernel

theorem v_702_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 702 64 16 = true := by decide +kernel

theorem r_702 : recsK7OK T qscale den6 d14 lamN lamD l7 702 1 = true := recK7_of (n := 80) t_702 n_702 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_702_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_702_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_702_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_702_3 (v_702_4)))))

theorem t_703 : treeK7OK l7 703 = true := by decide +kernel

theorem n_703 : (recAt l7 703).2.2.2.length ≤ 48 := by decide +kernel

theorem v_703_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 703 0 16 = true := by decide +kernel

theorem v_703_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 703 16 16 = true := by decide +kernel

theorem v_703_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 703 32 16 = true := by decide +kernel

theorem r_703 : recsK7OK T qscale den6 d14 lamN lamD l7 703 1 = true := recK7_of (n := 48) t_703 n_703 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_703_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_703_1 (v_703_2)))

theorem t_704 : treeK7OK l7 704 = true := by decide +kernel

theorem n_704 : (recAt l7 704).2.2.2.length ≤ 160 := by decide +kernel

theorem v_704_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 0 16 = true := by decide +kernel

theorem v_704_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 16 16 = true := by decide +kernel

theorem v_704_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 32 16 = true := by decide +kernel

theorem v_704_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 48 16 = true := by decide +kernel

theorem v_704_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 64 16 = true := by decide +kernel

theorem v_704_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 80 16 = true := by decide +kernel

theorem v_704_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 96 16 = true := by decide +kernel

theorem v_704_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 112 16 = true := by decide +kernel

theorem v_704_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 128 16 = true := by decide +kernel

theorem v_704_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 704 144 16 = true := by decide +kernel

theorem r_704 : recsK7OK T qscale den6 d14 lamN lamD l7 704 1 = true := recK7_of (n := 160) t_704 n_704 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_704_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_704_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_704_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_704_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_704_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_704_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_704_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_704_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_704_8 (v_704_9))))))))))

theorem rs_700 : recsK7OK T qscale den6 d14 lamN lamD l7 700 5 = true := recsK7OK_succ (lo := 700) (n := 4) r_700 (recsK7OK_succ (lo := 701) (n := 3) r_701 (recsK7OK_succ (lo := 702) (n := 2) r_702 (recsK7OK_succ (lo := 703) (n := 1) r_703 (r_704))))

end BeatAvg.K.K7
