import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_884 : treeK7OK l7 884 = true := by decide +kernel

theorem n_884 : (recAt l7 884).2.2.2.length ≤ 176 := by decide +kernel

theorem v_884_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 0 16 = true := by decide +kernel

theorem v_884_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 16 16 = true := by decide +kernel

theorem v_884_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 32 16 = true := by decide +kernel

theorem v_884_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 48 16 = true := by decide +kernel

theorem v_884_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 64 16 = true := by decide +kernel

theorem v_884_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 80 16 = true := by decide +kernel

theorem v_884_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 96 16 = true := by decide +kernel

theorem v_884_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 112 16 = true := by decide +kernel

theorem v_884_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 128 16 = true := by decide +kernel

theorem v_884_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 144 16 = true := by decide +kernel

theorem v_884_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 884 160 16 = true := by decide +kernel

theorem r_884 : recsK7OK T qscale den6 d14 lamN lamD l7 884 1 = true := recK7_of (n := 176) t_884 n_884 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_884_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_884_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_884_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_884_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_884_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_884_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_884_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_884_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_884_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_884_9 (v_884_10)))))))))))

theorem t_885 : treeK7OK l7 885 = true := by decide +kernel

theorem n_885 : (recAt l7 885).2.2.2.length ≤ 128 := by decide +kernel

theorem v_885_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 0 16 = true := by decide +kernel

theorem v_885_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 16 16 = true := by decide +kernel

theorem v_885_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 32 16 = true := by decide +kernel

theorem v_885_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 48 16 = true := by decide +kernel

theorem v_885_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 64 16 = true := by decide +kernel

theorem v_885_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 80 16 = true := by decide +kernel

theorem v_885_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 96 16 = true := by decide +kernel

theorem v_885_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 885 112 16 = true := by decide +kernel

theorem r_885 : recsK7OK T qscale den6 d14 lamN lamD l7 885 1 = true := recK7_of (n := 128) t_885 n_885 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_885_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_885_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_885_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_885_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_885_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_885_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_885_6 (v_885_7))))))))

theorem t_886 : treeK7OK l7 886 = true := by decide +kernel

theorem n_886 : (recAt l7 886).2.2.2.length ≤ 96 := by decide +kernel

theorem v_886_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 886 0 16 = true := by decide +kernel

theorem v_886_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 886 16 16 = true := by decide +kernel

theorem v_886_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 886 32 16 = true := by decide +kernel

theorem v_886_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 886 48 16 = true := by decide +kernel

theorem v_886_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 886 64 16 = true := by decide +kernel

theorem v_886_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 886 80 16 = true := by decide +kernel

theorem r_886 : recsK7OK T qscale den6 d14 lamN lamD l7 886 1 = true := recK7_of (n := 96) t_886 n_886 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_886_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_886_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_886_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_886_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_886_4 (v_886_5))))))

theorem rs_884 : recsK7OK T qscale den6 d14 lamN lamD l7 884 3 = true := recsK7OK_succ (lo := 884) (n := 2) r_884 (recsK7OK_succ (lo := 885) (n := 1) r_885 (r_886))

end BeatAvg.K.K7
