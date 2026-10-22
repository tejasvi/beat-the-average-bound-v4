import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_501 : treeK7OK l7 501 = true := by decide +kernel

theorem n_501 : (recAt l7 501).2.2.2.length ≤ 176 := by decide +kernel

theorem v_501_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 0 16 = true := by decide +kernel

theorem v_501_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 16 16 = true := by decide +kernel

theorem v_501_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 32 16 = true := by decide +kernel

theorem v_501_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 48 16 = true := by decide +kernel

theorem v_501_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 64 16 = true := by decide +kernel

theorem v_501_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 80 16 = true := by decide +kernel

theorem v_501_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 96 16 = true := by decide +kernel

theorem v_501_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 112 16 = true := by decide +kernel

theorem v_501_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 128 16 = true := by decide +kernel

theorem v_501_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 144 16 = true := by decide +kernel

theorem v_501_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 501 160 16 = true := by decide +kernel

theorem r_501 : recsK7OK T qscale den6 d14 lamN lamD l7 501 1 = true := recK7_of (n := 176) t_501 n_501 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_501_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_501_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_501_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_501_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_501_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_501_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_501_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_501_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_501_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_501_9 (v_501_10)))))))))))

theorem t_502 : treeK7OK l7 502 = true := by decide +kernel

theorem n_502 : (recAt l7 502).2.2.2.length ≤ 112 := by decide +kernel

theorem v_502_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 502 0 16 = true := by decide +kernel

theorem v_502_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 502 16 16 = true := by decide +kernel

theorem v_502_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 502 32 16 = true := by decide +kernel

theorem v_502_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 502 48 16 = true := by decide +kernel

theorem v_502_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 502 64 16 = true := by decide +kernel

theorem v_502_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 502 80 16 = true := by decide +kernel

theorem v_502_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 502 96 16 = true := by decide +kernel

theorem r_502 : recsK7OK T qscale den6 d14 lamN lamD l7 502 1 = true := recK7_of (n := 112) t_502 n_502 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_502_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_502_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_502_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_502_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_502_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_502_5 (v_502_6)))))))

theorem t_503 : treeK7OK l7 503 = true := by decide +kernel

theorem n_503 : (recAt l7 503).2.2.2.length ≤ 96 := by decide +kernel

theorem v_503_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 503 0 16 = true := by decide +kernel

theorem v_503_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 503 16 16 = true := by decide +kernel

theorem v_503_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 503 32 16 = true := by decide +kernel

theorem v_503_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 503 48 16 = true := by decide +kernel

theorem v_503_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 503 64 16 = true := by decide +kernel

theorem v_503_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 503 80 16 = true := by decide +kernel

theorem r_503 : recsK7OK T qscale den6 d14 lamN lamD l7 503 1 = true := recK7_of (n := 96) t_503 n_503 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_503_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_503_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_503_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_503_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_503_4 (v_503_5))))))

theorem rs_501 : recsK7OK T qscale den6 d14 lamN lamD l7 501 3 = true := recsK7OK_succ (lo := 501) (n := 2) r_501 (recsK7OK_succ (lo := 502) (n := 1) r_502 (r_503))

end BeatAvg.K.K7
