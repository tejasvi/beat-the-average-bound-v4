import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_575 : treeK7OK l7 575 = true := by decide +kernel

theorem n_575 : (recAt l7 575).2.2.2.length ≤ 128 := by decide +kernel

theorem v_575_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 0 16 = true := by decide +kernel

theorem v_575_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 16 16 = true := by decide +kernel

theorem v_575_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 32 16 = true := by decide +kernel

theorem v_575_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 48 16 = true := by decide +kernel

theorem v_575_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 64 16 = true := by decide +kernel

theorem v_575_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 80 16 = true := by decide +kernel

theorem v_575_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 96 16 = true := by decide +kernel

theorem v_575_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 575 112 16 = true := by decide +kernel

theorem r_575 : recsK7OK T qscale den6 d14 lamN lamD l7 575 1 = true := recK7_of (n := 128) t_575 n_575 (leavesK7OK_add (lo := 0) (n := 16) (m := 112) v_575_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 96) v_575_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 80) v_575_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 64) v_575_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 48) v_575_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 32) v_575_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 16) v_575_6 (v_575_7))))))))

theorem t_576 : treeK7OK l7 576 = true := by decide +kernel

theorem n_576 : (recAt l7 576).2.2.2.length ≤ 144 := by decide +kernel

theorem v_576_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 0 16 = true := by decide +kernel

theorem v_576_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 16 16 = true := by decide +kernel

theorem v_576_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 32 16 = true := by decide +kernel

theorem v_576_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 48 16 = true := by decide +kernel

theorem v_576_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 64 16 = true := by decide +kernel

theorem v_576_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 80 16 = true := by decide +kernel

theorem v_576_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 96 16 = true := by decide +kernel

theorem v_576_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 112 16 = true := by decide +kernel

theorem v_576_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 576 128 16 = true := by decide +kernel

theorem r_576 : recsK7OK T qscale den6 d14 lamN lamD l7 576 1 = true := recK7_of (n := 144) t_576 n_576 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_576_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_576_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_576_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_576_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_576_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_576_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_576_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_576_7 (v_576_8)))))))))

theorem t_577 : treeK7OK l7 577 = true := by decide +kernel

theorem n_577 : (recAt l7 577).2.2.2.length ≤ 64 := by decide +kernel

theorem v_577_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 577 0 16 = true := by decide +kernel

theorem v_577_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 577 16 16 = true := by decide +kernel

theorem v_577_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 577 32 16 = true := by decide +kernel

theorem v_577_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 577 48 16 = true := by decide +kernel

theorem r_577 : recsK7OK T qscale den6 d14 lamN lamD l7 577 1 = true := recK7_of (n := 64) t_577 n_577 (leavesK7OK_add (lo := 0) (n := 16) (m := 48) v_577_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 32) v_577_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 16) v_577_2 (v_577_3))))

theorem t_578 : treeK7OK l7 578 = true := by decide +kernel

theorem n_578 : (recAt l7 578).2.2.2.length ≤ 48 := by decide +kernel

theorem v_578_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 578 0 16 = true := by decide +kernel

theorem v_578_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 578 16 16 = true := by decide +kernel

theorem v_578_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 578 32 16 = true := by decide +kernel

theorem r_578 : recsK7OK T qscale den6 d14 lamN lamD l7 578 1 = true := recK7_of (n := 48) t_578 n_578 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_578_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_578_1 (v_578_2)))

theorem rs_575 : recsK7OK T qscale den6 d14 lamN lamD l7 575 4 = true := recsK7OK_succ (lo := 575) (n := 3) r_575 (recsK7OK_succ (lo := 576) (n := 2) r_576 (recsK7OK_succ (lo := 577) (n := 1) r_577 (r_578)))

end BeatAvg.K.K7
