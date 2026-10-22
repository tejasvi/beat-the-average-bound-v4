import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_865 : treeK7OK l7 865 = true := by decide +kernel

theorem n_865 : (recAt l7 865).2.2.2.length ≤ 192 := by decide +kernel

theorem v_865_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 0 16 = true := by decide +kernel

theorem v_865_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 16 16 = true := by decide +kernel

theorem v_865_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 32 16 = true := by decide +kernel

theorem v_865_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 48 16 = true := by decide +kernel

theorem v_865_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 64 16 = true := by decide +kernel

theorem v_865_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 80 16 = true := by decide +kernel

theorem v_865_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 96 16 = true := by decide +kernel

theorem v_865_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 112 16 = true := by decide +kernel

theorem v_865_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 128 16 = true := by decide +kernel

theorem v_865_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 144 16 = true := by decide +kernel

theorem v_865_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 160 16 = true := by decide +kernel

theorem v_865_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 865 176 16 = true := by decide +kernel

theorem r_865 : recsK7OK T qscale den6 d14 lamN lamD l7 865 1 = true := recK7_of (n := 192) t_865 n_865 (leavesK7OK_add (lo := 0) (n := 16) (m := 176) v_865_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 160) v_865_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 144) v_865_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 128) v_865_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 112) v_865_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 96) v_865_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 80) v_865_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 64) v_865_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 48) v_865_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 32) v_865_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 16) v_865_10 (v_865_11))))))))))))

theorem t_866 : treeK7OK l7 866 = true := by decide +kernel

theorem n_866 : (recAt l7 866).2.2.2.length ≤ 160 := by decide +kernel

theorem v_866_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 0 16 = true := by decide +kernel

theorem v_866_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 16 16 = true := by decide +kernel

theorem v_866_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 32 16 = true := by decide +kernel

theorem v_866_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 48 16 = true := by decide +kernel

theorem v_866_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 64 16 = true := by decide +kernel

theorem v_866_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 80 16 = true := by decide +kernel

theorem v_866_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 96 16 = true := by decide +kernel

theorem v_866_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 112 16 = true := by decide +kernel

theorem v_866_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 128 16 = true := by decide +kernel

theorem v_866_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 866 144 16 = true := by decide +kernel

theorem r_866 : recsK7OK T qscale den6 d14 lamN lamD l7 866 1 = true := recK7_of (n := 160) t_866 n_866 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_866_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_866_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_866_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_866_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_866_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_866_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_866_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_866_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_866_8 (v_866_9))))))))))

theorem rs_865 : recsK7OK T qscale den6 d14 lamN lamD l7 865 2 = true := recsK7OK_succ (lo := 865) (n := 1) r_865 (r_866)

end BeatAvg.K.K7
