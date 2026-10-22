import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_579 : treeK7OK l7 579 = true := by decide +kernel

theorem n_579 : (recAt l7 579).2.2.2.length ≤ 192 := by decide +kernel

theorem v_579_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 0 16 = true := by decide +kernel

theorem v_579_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 16 16 = true := by decide +kernel

theorem v_579_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 32 16 = true := by decide +kernel

theorem v_579_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 48 16 = true := by decide +kernel

theorem v_579_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 64 16 = true := by decide +kernel

theorem v_579_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 80 16 = true := by decide +kernel

theorem v_579_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 96 16 = true := by decide +kernel

theorem v_579_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 112 16 = true := by decide +kernel

theorem v_579_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 128 16 = true := by decide +kernel

theorem v_579_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 144 16 = true := by decide +kernel

theorem v_579_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 160 16 = true := by decide +kernel

theorem v_579_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 579 176 16 = true := by decide +kernel

theorem r_579 : recsK7OK T qscale den6 d14 lamN lamD l7 579 1 = true := recK7_of (n := 192) t_579 n_579 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_579_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_579_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_579_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_579_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_579_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_579_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_579_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_579_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_579_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_579_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_579_10 (v_579_11))))))))))))

theorem t_580 : treeK7OK l7 580 = true := by decide +kernel

theorem n_580 : (recAt l7 580).2.2.2.length ≤ 160 := by decide +kernel

theorem v_580_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 0 16 = true := by decide +kernel

theorem v_580_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 16 16 = true := by decide +kernel

theorem v_580_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 32 16 = true := by decide +kernel

theorem v_580_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 48 16 = true := by decide +kernel

theorem v_580_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 64 16 = true := by decide +kernel

theorem v_580_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 80 16 = true := by decide +kernel

theorem v_580_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 96 16 = true := by decide +kernel

theorem v_580_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 112 16 = true := by decide +kernel

theorem v_580_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 128 16 = true := by decide +kernel

theorem v_580_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 580 144 16 = true := by decide +kernel

theorem r_580 : recsK7OK T qscale den6 d14 lamN lamD l7 580 1 = true := recK7_of (n := 160) t_580 n_580 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_580_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_580_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_580_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_580_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_580_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_580_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_580_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_580_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_580_8 (v_580_9))))))))))

theorem rs_579 : recsK7OK T qscale den6 d14 lamN lamD l7 579 2 = true := recsK7OK_succ (lo := 579) (n := 1) r_579 (r_580)

end BeatAvg.K.K7
