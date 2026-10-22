import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_659 : treeK7OK l7 659 = true := by decide +kernel

theorem n_659 : (recAt l7 659).2.2.2.length ≤ 112 := by decide +kernel

theorem v_659_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 659 0 16 = true := by decide +kernel

theorem v_659_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 659 16 16 = true := by decide +kernel

theorem v_659_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 659 32 16 = true := by decide +kernel

theorem v_659_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 659 48 16 = true := by decide +kernel

theorem v_659_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 659 64 16 = true := by decide +kernel

theorem v_659_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 659 80 16 = true := by decide +kernel

theorem v_659_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 659 96 16 = true := by decide +kernel

theorem r_659 : recsK7OK T qscale den6 d14 lamN lamD l7 659 1 = true := recK7_of (n := 112) t_659 n_659 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_659_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_659_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_659_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_659_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_659_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_659_5 (v_659_6)))))))

theorem t_660 : treeK7OK l7 660 = true := by decide +kernel

theorem n_660 : (recAt l7 660).2.2.2.length ≤ 96 := by decide +kernel

theorem v_660_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 660 0 16 = true := by decide +kernel

theorem v_660_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 660 16 16 = true := by decide +kernel

theorem v_660_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 660 32 16 = true := by decide +kernel

theorem v_660_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 660 48 16 = true := by decide +kernel

theorem v_660_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 660 64 16 = true := by decide +kernel

theorem v_660_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 660 80 16 = true := by decide +kernel

theorem r_660 : recsK7OK T qscale den6 d14 lamN lamD l7 660 1 = true := recK7_of (n := 96) t_660 n_660 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_660_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_660_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_660_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_660_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_660_4 (v_660_5))))))

theorem t_661 : treeK7OK l7 661 = true := by decide +kernel

theorem n_661 : (recAt l7 661).2.2.2.length ≤ 128 := by decide +kernel

theorem v_661_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 0 16 = true := by decide +kernel

theorem v_661_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 16 16 = true := by decide +kernel

theorem v_661_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 32 16 = true := by decide +kernel

theorem v_661_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 48 16 = true := by decide +kernel

theorem v_661_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 64 16 = true := by decide +kernel

theorem v_661_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 80 16 = true := by decide +kernel

theorem v_661_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 96 16 = true := by decide +kernel

theorem v_661_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 661 112 16 = true := by decide +kernel

theorem r_661 : recsK7OK T qscale den6 d14 lamN lamD l7 661 1 = true := recK7_of (n := 128) t_661 n_661 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_661_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_661_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_661_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_661_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_661_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_661_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_661_6 (v_661_7))))))))

theorem t_662 : treeK7OK l7 662 = true := by decide +kernel

theorem n_662 : (recAt l7 662).2.2.2.length ≤ 64 := by decide +kernel

theorem v_662_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 662 0 16 = true := by decide +kernel

theorem v_662_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 662 16 16 = true := by decide +kernel

theorem v_662_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 662 32 16 = true := by decide +kernel

theorem v_662_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 662 48 16 = true := by decide +kernel

theorem r_662 : recsK7OK T qscale den6 d14 lamN lamD l7 662 1 = true := recK7_of (n := 64) t_662 n_662 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_662_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_662_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_662_2 (v_662_3))))

theorem rs_659 : recsK7OK T qscale den6 d14 lamN lamD l7 659 4 = true := recsK7OK_succ (lo := 659) (n := 3) r_659 (recsK7OK_succ (lo := 660) (n := 2) r_660 (recsK7OK_succ (lo := 661) (n := 1) r_661 (r_662)))

end BeatAvg.K.K7
