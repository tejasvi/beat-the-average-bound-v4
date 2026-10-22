import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_832 : treeK7OK l7 832 = true := by decide +kernel

theorem n_832 : (recAt l7 832).2.2.2.length ≤ 160 := by decide +kernel

theorem v_832_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 0 16 = true := by decide +kernel

theorem v_832_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 16 16 = true := by decide +kernel

theorem v_832_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 32 16 = true := by decide +kernel

theorem v_832_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 48 16 = true := by decide +kernel

theorem v_832_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 64 16 = true := by decide +kernel

theorem v_832_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 80 16 = true := by decide +kernel

theorem v_832_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 96 16 = true := by decide +kernel

theorem v_832_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 112 16 = true := by decide +kernel

theorem v_832_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 128 16 = true := by decide +kernel

theorem v_832_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 832 144 16 = true := by decide +kernel

theorem r_832 : recsK7OK T qscale den6 d14 lamN lamD l7 832 1 = true := recK7_of (n := 160) t_832 n_832 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_832_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_832_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_832_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_832_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_832_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_832_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_832_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_832_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_832_8 (v_832_9))))))))))

theorem t_833 : treeK7OK l7 833 = true := by decide +kernel

theorem n_833 : (recAt l7 833).2.2.2.length ≤ 144 := by decide +kernel

theorem v_833_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 0 16 = true := by decide +kernel

theorem v_833_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 16 16 = true := by decide +kernel

theorem v_833_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 32 16 = true := by decide +kernel

theorem v_833_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 48 16 = true := by decide +kernel

theorem v_833_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 64 16 = true := by decide +kernel

theorem v_833_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 80 16 = true := by decide +kernel

theorem v_833_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 96 16 = true := by decide +kernel

theorem v_833_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 112 16 = true := by decide +kernel

theorem v_833_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 833 128 16 = true := by decide +kernel

theorem r_833 : recsK7OK T qscale den6 d14 lamN lamD l7 833 1 = true := recK7_of (n := 144) t_833 n_833 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_833_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_833_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_833_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_833_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_833_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_833_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_833_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_833_7 (v_833_8)))))))))

theorem t_834 : treeK7OK l7 834 = true := by decide +kernel

theorem n_834 : (recAt l7 834).2.2.2.length ≤ 80 := by decide +kernel

theorem v_834_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 834 0 16 = true := by decide +kernel

theorem v_834_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 834 16 16 = true := by decide +kernel

theorem v_834_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 834 32 16 = true := by decide +kernel

theorem v_834_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 834 48 16 = true := by decide +kernel

theorem v_834_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 834 64 16 = true := by decide +kernel

theorem r_834 : recsK7OK T qscale den6 d14 lamN lamD l7 834 1 = true := recK7_of (n := 80) t_834 n_834 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_834_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_834_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_834_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_834_3 (v_834_4)))))

theorem t_835 : treeK7OK l7 835 = true := by decide +kernel

theorem n_835 : (recAt l7 835).2.2.2.length ≤ 32 := by decide +kernel

theorem v_835_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 835 0 16 = true := by decide +kernel

theorem v_835_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 835 16 16 = true := by decide +kernel

theorem r_835 : recsK7OK T qscale den6 d14 lamN lamD l7 835 1 = true := recK7_of (n := 32) t_835 n_835 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_835_0 (v_835_1))

theorem rs_832 : recsK7OK T qscale den6 d14 lamN lamD l7 832 4 = true := recsK7OK_succ (lo := 832) (n := 3) r_832 (recsK7OK_succ (lo := 833) (n := 2) r_833 (recsK7OK_succ (lo := 834) (n := 1) r_834 (r_835)))

end BeatAvg.K.K7
