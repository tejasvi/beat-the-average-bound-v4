import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_399 : treeK7OK l7 399 = true := by decide +kernel

theorem n_399 : (recAt l7 399).2.2.2.length ≤ 112 := by decide +kernel

theorem v_399_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 399 0 16 = true := by decide +kernel

theorem v_399_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 399 16 16 = true := by decide +kernel

theorem v_399_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 399 32 16 = true := by decide +kernel

theorem v_399_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 399 48 16 = true := by decide +kernel

theorem v_399_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 399 64 16 = true := by decide +kernel

theorem v_399_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 399 80 16 = true := by decide +kernel

theorem v_399_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 399 96 16 = true := by decide +kernel

theorem r_399 : recsK7OK T qscale den6 d14 lamN lamD l7 399 1 = true := recK7_of (n := 112) t_399 n_399 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_399_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_399_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_399_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_399_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_399_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_399_5 (v_399_6)))))))

theorem t_400 : treeK7OK l7 400 = true := by decide +kernel

theorem n_400 : (recAt l7 400).2.2.2.length ≤ 64 := by decide +kernel

theorem v_400_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 400 0 16 = true := by decide +kernel

theorem v_400_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 400 16 16 = true := by decide +kernel

theorem v_400_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 400 32 16 = true := by decide +kernel

theorem v_400_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 400 48 16 = true := by decide +kernel

theorem r_400 : recsK7OK T qscale den6 d14 lamN lamD l7 400 1 = true := recK7_of (n := 64) t_400 n_400 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_400_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_400_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_400_2 (v_400_3))))

theorem t_401 : treeK7OK l7 401 = true := by decide +kernel

theorem n_401 : (recAt l7 401).2.2.2.length ≤ 64 := by decide +kernel

theorem v_401_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 401 0 16 = true := by decide +kernel

theorem v_401_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 401 16 16 = true := by decide +kernel

theorem v_401_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 401 32 16 = true := by decide +kernel

theorem v_401_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 401 48 16 = true := by decide +kernel

theorem r_401 : recsK7OK T qscale den6 d14 lamN lamD l7 401 1 = true := recK7_of (n := 64) t_401 n_401 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_401_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_401_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_401_2 (v_401_3))))

theorem t_402 : treeK7OK l7 402 = true := by decide +kernel

theorem n_402 : (recAt l7 402).2.2.2.length ≤ 32 := by decide +kernel

theorem v_402_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 402 0 16 = true := by decide +kernel

theorem v_402_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 402 16 16 = true := by decide +kernel

theorem r_402 : recsK7OK T qscale den6 d14 lamN lamD l7 402 1 = true := recK7_of (n := 32) t_402 n_402 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_402_0 (v_402_1))

theorem t_403 : treeK7OK l7 403 = true := by decide +kernel

theorem n_403 : (recAt l7 403).2.2.2.length ≤ 96 := by decide +kernel

theorem v_403_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 403 0 16 = true := by decide +kernel

theorem v_403_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 403 16 16 = true := by decide +kernel

theorem v_403_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 403 32 16 = true := by decide +kernel

theorem v_403_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 403 48 16 = true := by decide +kernel

theorem v_403_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 403 64 16 = true := by decide +kernel

theorem v_403_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 403 80 16 = true := by decide +kernel

theorem r_403 : recsK7OK T qscale den6 d14 lamN lamD l7 403 1 = true := recK7_of (n := 96) t_403 n_403 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_403_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_403_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_403_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_403_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_403_4 (v_403_5))))))

theorem t_404 : treeK7OK l7 404 = true := by decide +kernel

theorem n_404 : (recAt l7 404).2.2.2.length ≤ 64 := by decide +kernel

theorem v_404_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 404 0 16 = true := by decide +kernel

theorem v_404_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 404 16 16 = true := by decide +kernel

theorem v_404_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 404 32 16 = true := by decide +kernel

theorem v_404_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 404 48 16 = true := by decide +kernel

theorem r_404 : recsK7OK T qscale den6 d14 lamN lamD l7 404 1 = true := recK7_of (n := 64) t_404 n_404 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_404_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_404_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_404_2 (v_404_3))))

theorem rs_399 : recsK7OK T qscale den6 d14 lamN lamD l7 399 6 = true := recsK7OK_succ (lo := 399) (n := 5) r_399 (recsK7OK_succ (lo := 400) (n := 4) r_400 (recsK7OK_succ (lo := 401) (n := 3) r_401 (recsK7OK_succ (lo := 402) (n := 2) r_402 (recsK7OK_succ (lo := 403) (n := 1) r_403 (r_404)))))

end BeatAvg.K.K7
