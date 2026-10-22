import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_612 : treeK7OK l7 612 = true := by decide +kernel

theorem n_612 : (recAt l7 612).2.2.2.length ≤ 32 := by decide +kernel

theorem v_612_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 612 0 16 = true := by decide +kernel

theorem v_612_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 612 16 16 = true := by decide +kernel

theorem r_612 : recsK7OK T qscale den6 d14 lamN lamD l7 612 1 = true := recK7_of (n := 32) t_612 n_612 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_612_0 (v_612_1))

theorem t_613 : treeK7OK l7 613 = true := by decide +kernel

theorem n_613 : (recAt l7 613).2.2.2.length ≤ 128 := by decide +kernel

theorem v_613_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 0 16 = true := by decide +kernel

theorem v_613_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 16 16 = true := by decide +kernel

theorem v_613_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 32 16 = true := by decide +kernel

theorem v_613_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 48 16 = true := by decide +kernel

theorem v_613_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 64 16 = true := by decide +kernel

theorem v_613_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 80 16 = true := by decide +kernel

theorem v_613_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 96 16 = true := by decide +kernel

theorem v_613_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 613 112 16 = true := by decide +kernel

theorem r_613 : recsK7OK T qscale den6 d14 lamN lamD l7 613 1 = true := recK7_of (n := 128) t_613 n_613 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_613_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_613_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_613_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_613_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_613_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_613_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_613_6 (v_613_7))))))))

theorem t_614 : treeK7OK l7 614 = true := by decide +kernel

theorem n_614 : (recAt l7 614).2.2.2.length ≤ 64 := by decide +kernel

theorem v_614_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 614 0 16 = true := by decide +kernel

theorem v_614_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 614 16 16 = true := by decide +kernel

theorem v_614_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 614 32 16 = true := by decide +kernel

theorem v_614_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 614 48 16 = true := by decide +kernel

theorem r_614 : recsK7OK T qscale den6 d14 lamN lamD l7 614 1 = true := recK7_of (n := 64) t_614 n_614 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_614_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_614_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_614_2 (v_614_3))))

theorem t_615 : treeK7OK l7 615 = true := by decide +kernel

theorem n_615 : (recAt l7 615).2.2.2.length ≤ 64 := by decide +kernel

theorem v_615_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 615 0 16 = true := by decide +kernel

theorem v_615_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 615 16 16 = true := by decide +kernel

theorem v_615_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 615 32 16 = true := by decide +kernel

theorem v_615_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 615 48 16 = true := by decide +kernel

theorem r_615 : recsK7OK T qscale den6 d14 lamN lamD l7 615 1 = true := recK7_of (n := 64) t_615 n_615 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_615_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_615_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_615_2 (v_615_3))))

theorem t_616 : treeK7OK l7 616 = true := by decide +kernel

theorem n_616 : (recAt l7 616).2.2.2.length ≤ 160 := by decide +kernel

theorem v_616_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 0 16 = true := by decide +kernel

theorem v_616_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 16 16 = true := by decide +kernel

theorem v_616_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 32 16 = true := by decide +kernel

theorem v_616_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 48 16 = true := by decide +kernel

theorem v_616_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 64 16 = true := by decide +kernel

theorem v_616_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 80 16 = true := by decide +kernel

theorem v_616_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 96 16 = true := by decide +kernel

theorem v_616_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 112 16 = true := by decide +kernel

theorem v_616_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 128 16 = true := by decide +kernel

theorem v_616_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 616 144 16 = true := by decide +kernel

theorem r_616 : recsK7OK T qscale den6 d14 lamN lamD l7 616 1 = true := recK7_of (n := 160) t_616 n_616 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_616_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_616_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_616_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_616_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_616_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_616_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_616_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_616_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_616_8 (v_616_9))))))))))

theorem rs_612 : recsK7OK T qscale den6 d14 lamN lamD l7 612 5 = true := recsK7OK_succ (lo := 612) (n := 4) r_612 (recsK7OK_succ (lo := 613) (n := 3) r_613 (recsK7OK_succ (lo := 614) (n := 2) r_614 (recsK7OK_succ (lo := 615) (n := 1) r_615 (r_616))))

end BeatAvg.K.K7
