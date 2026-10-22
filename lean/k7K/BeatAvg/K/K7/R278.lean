import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_873 : treeK7OK l7 873 = true := by decide +kernel

theorem n_873 : (recAt l7 873).2.2.2.length ≤ 176 := by decide +kernel

theorem v_873_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 0 16 = true := by decide +kernel

theorem v_873_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 16 16 = true := by decide +kernel

theorem v_873_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 32 16 = true := by decide +kernel

theorem v_873_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 48 16 = true := by decide +kernel

theorem v_873_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 64 16 = true := by decide +kernel

theorem v_873_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 80 16 = true := by decide +kernel

theorem v_873_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 96 16 = true := by decide +kernel

theorem v_873_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 112 16 = true := by decide +kernel

theorem v_873_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 128 16 = true := by decide +kernel

theorem v_873_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 144 16 = true := by decide +kernel

theorem v_873_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 873 160 16 = true := by decide +kernel

theorem r_873 : recsK7OK T qscale den6 d14 lamN lamD l7 873 1 = true := recK7_of (n := 176) t_873 n_873 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_873_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_873_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_873_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_873_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_873_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_873_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_873_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_873_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_873_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_873_9 (v_873_10)))))))))))

theorem t_874 : treeK7OK l7 874 = true := by decide +kernel

theorem n_874 : (recAt l7 874).2.2.2.length ≤ 80 := by decide +kernel

theorem v_874_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 874 0 16 = true := by decide +kernel

theorem v_874_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 874 16 16 = true := by decide +kernel

theorem v_874_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 874 32 16 = true := by decide +kernel

theorem v_874_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 874 48 16 = true := by decide +kernel

theorem v_874_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 874 64 16 = true := by decide +kernel

theorem r_874 : recsK7OK T qscale den6 d14 lamN lamD l7 874 1 = true := recK7_of (n := 80) t_874 n_874 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_874_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_874_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_874_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_874_3 (v_874_4)))))

theorem rs_873 : recsK7OK T qscale den6 d14 lamN lamD l7 873 2 = true := recsK7OK_succ (lo := 873) (n := 1) r_873 (r_874)

end BeatAvg.K.K7
