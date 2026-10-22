import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_200 : treeK7OK l7 200 = true := by decide +kernel

theorem n_200 : (recAt l7 200).2.2.2.length ≤ 112 := by decide +kernel

theorem v_200_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 200 0 16 = true := by decide +kernel

theorem v_200_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 200 16 16 = true := by decide +kernel

theorem v_200_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 200 32 16 = true := by decide +kernel

theorem v_200_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 200 48 16 = true := by decide +kernel

theorem v_200_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 200 64 16 = true := by decide +kernel

theorem v_200_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 200 80 16 = true := by decide +kernel

theorem v_200_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 200 96 16 = true := by decide +kernel

theorem r_200 : recsK7OK T qscale den6 d14 lamN lamD l7 200 1 = true := recK7_of (n := 112) t_200 n_200 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_200_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_200_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_200_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_200_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_200_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_200_5 (v_200_6)))))))

theorem t_201 : treeK7OK l7 201 = true := by decide +kernel

theorem n_201 : (recAt l7 201).2.2.2.length ≤ 16 := by decide +kernel

theorem v_201_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 201 0 16 = true := by decide +kernel

theorem r_201 : recsK7OK T qscale den6 d14 lamN lamD l7 201 1 = true := recK7_of (n := 16) t_201 n_201 (v_201_0)

theorem t_202 : treeK7OK l7 202 = true := by decide +kernel

theorem n_202 : (recAt l7 202).2.2.2.length ≤ 176 := by decide +kernel

theorem v_202_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 0 16 = true := by decide +kernel

theorem v_202_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 16 16 = true := by decide +kernel

theorem v_202_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 32 16 = true := by decide +kernel

theorem v_202_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 48 16 = true := by decide +kernel

theorem v_202_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 64 16 = true := by decide +kernel

theorem v_202_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 80 16 = true := by decide +kernel

theorem v_202_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 96 16 = true := by decide +kernel

theorem v_202_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 112 16 = true := by decide +kernel

theorem v_202_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 128 16 = true := by decide +kernel

theorem v_202_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 144 16 = true := by decide +kernel

theorem v_202_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 202 160 16 = true := by decide +kernel

theorem r_202 : recsK7OK T qscale den6 d14 lamN lamD l7 202 1 = true := recK7_of (n := 176) t_202 n_202 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_202_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_202_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_202_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_202_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_202_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_202_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_202_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_202_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_202_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_202_9 (v_202_10)))))))))))

theorem t_203 : treeK7OK l7 203 = true := by decide +kernel

theorem n_203 : (recAt l7 203).2.2.2.length ≤ 112 := by decide +kernel

theorem v_203_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 203 0 16 = true := by decide +kernel

theorem v_203_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 203 16 16 = true := by decide +kernel

theorem v_203_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 203 32 16 = true := by decide +kernel

theorem v_203_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 203 48 16 = true := by decide +kernel

theorem v_203_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 203 64 16 = true := by decide +kernel

theorem v_203_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 203 80 16 = true := by decide +kernel

theorem v_203_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 203 96 16 = true := by decide +kernel

theorem r_203 : recsK7OK T qscale den6 d14 lamN lamD l7 203 1 = true := recK7_of (n := 112) t_203 n_203 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_203_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_203_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_203_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_203_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_203_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_203_5 (v_203_6)))))))

theorem rs_200 : recsK7OK T qscale den6 d14 lamN lamD l7 200 4 = true := recsK7OK_succ (lo := 200) (n := 3) r_200 (recsK7OK_succ (lo := 201) (n := 2) r_201 (recsK7OK_succ (lo := 202) (n := 1) r_202 (r_203)))

end BeatAvg.K.K7
