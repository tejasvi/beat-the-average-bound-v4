import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_925 : treeK7OK l7 925 = true := by decide +kernel

theorem n_925 : (recAt l7 925).2.2.2.length ≤ 144 := by decide +kernel

theorem v_925_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 0 16 = true := by decide +kernel

theorem v_925_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 16 16 = true := by decide +kernel

theorem v_925_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 32 16 = true := by decide +kernel

theorem v_925_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 48 16 = true := by decide +kernel

theorem v_925_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 64 16 = true := by decide +kernel

theorem v_925_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 80 16 = true := by decide +kernel

theorem v_925_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 96 16 = true := by decide +kernel

theorem v_925_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 112 16 = true := by decide +kernel

theorem v_925_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 925 128 16 = true := by decide +kernel

theorem r_925 : recsK7OK T qscale den6 d14 lamN lamD l7 925 1 = true := recK7_of (n := 144) t_925 n_925 (leavesK7OK_add (lo := 0) (n := 16) (m := 128) v_925_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 112) v_925_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 96) v_925_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 80) v_925_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 64) v_925_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 48) v_925_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 32) v_925_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 16) v_925_7 (v_925_8)))))))))

theorem t_926 : treeK7OK l7 926 = true := by decide +kernel

theorem n_926 : (recAt l7 926).2.2.2.length ≤ 176 := by decide +kernel

theorem v_926_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 0 16 = true := by decide +kernel

theorem v_926_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 16 16 = true := by decide +kernel

theorem v_926_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 32 16 = true := by decide +kernel

theorem v_926_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 48 16 = true := by decide +kernel

theorem v_926_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 64 16 = true := by decide +kernel

theorem v_926_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 80 16 = true := by decide +kernel

theorem v_926_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 96 16 = true := by decide +kernel

theorem v_926_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 112 16 = true := by decide +kernel

theorem v_926_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 128 16 = true := by decide +kernel

theorem v_926_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 144 16 = true := by decide +kernel

theorem v_926_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 926 160 16 = true := by decide +kernel

theorem r_926 : recsK7OK T qscale den6 d14 lamN lamD l7 926 1 = true := recK7_of (n := 176) t_926 n_926 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_926_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_926_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_926_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_926_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_926_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_926_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_926_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_926_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_926_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_926_9 (v_926_10)))))))))))

theorem t_927 : treeK7OK l7 927 = true := by decide +kernel

theorem n_927 : (recAt l7 927).2.2.2.length ≤ 96 := by decide +kernel

theorem v_927_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 927 0 16 = true := by decide +kernel

theorem v_927_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 927 16 16 = true := by decide +kernel

theorem v_927_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 927 32 16 = true := by decide +kernel

theorem v_927_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 927 48 16 = true := by decide +kernel

theorem v_927_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 927 64 16 = true := by decide +kernel

theorem v_927_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 927 80 16 = true := by decide +kernel

theorem r_927 : recsK7OK T qscale den6 d14 lamN lamD l7 927 1 = true := recK7_of (n := 96) t_927 n_927 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_927_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_927_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_927_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_927_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_927_4 (v_927_5))))))

theorem rs_925 : recsK7OK T qscale den6 d14 lamN lamD l7 925 3 = true := recsK7OK_succ (lo := 925) (n := 2) r_925 (recsK7OK_succ (lo := 926) (n := 1) r_926 (r_927))

end BeatAvg.K.K7
