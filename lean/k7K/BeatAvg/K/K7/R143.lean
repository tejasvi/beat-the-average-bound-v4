import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_474 : treeK7OK l7 474 = true := by decide +kernel

theorem n_474 : (recAt l7 474).2.2.2.length ≤ 160 := by decide +kernel

theorem v_474_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 0 16 = true := by decide +kernel

theorem v_474_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 16 16 = true := by decide +kernel

theorem v_474_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 32 16 = true := by decide +kernel

theorem v_474_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 48 16 = true := by decide +kernel

theorem v_474_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 64 16 = true := by decide +kernel

theorem v_474_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 80 16 = true := by decide +kernel

theorem v_474_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 96 16 = true := by decide +kernel

theorem v_474_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 112 16 = true := by decide +kernel

theorem v_474_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 128 16 = true := by decide +kernel

theorem v_474_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 474 144 16 = true := by decide +kernel

theorem r_474 : recsK7OK T qscale den6 d14 lamN lamD l7 474 1 = true := recK7_of (n := 160) t_474 n_474 (leavesK7OK_add (lo := 0) (n := 16) (m := 144) v_474_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 128) v_474_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 112) v_474_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 96) v_474_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 80) v_474_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 64) v_474_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 48) v_474_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 32) v_474_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 16) v_474_8 (v_474_9))))))))))

theorem t_475 : treeK7OK l7 475 = true := by decide +kernel

theorem n_475 : (recAt l7 475).2.2.2.length ≤ 176 := by decide +kernel

theorem v_475_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 0 16 = true := by decide +kernel

theorem v_475_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 16 16 = true := by decide +kernel

theorem v_475_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 32 16 = true := by decide +kernel

theorem v_475_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 48 16 = true := by decide +kernel

theorem v_475_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 64 16 = true := by decide +kernel

theorem v_475_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 80 16 = true := by decide +kernel

theorem v_475_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 96 16 = true := by decide +kernel

theorem v_475_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 112 16 = true := by decide +kernel

theorem v_475_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 128 16 = true := by decide +kernel

theorem v_475_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 144 16 = true := by decide +kernel

theorem v_475_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 475 160 16 = true := by decide +kernel

theorem r_475 : recsK7OK T qscale den6 d14 lamN lamD l7 475 1 = true := recK7_of (n := 176) t_475 n_475 (leavesK7OK_add (lo := 0) (n := 16) (m := 160) v_475_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 144) v_475_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 128) v_475_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 112) v_475_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 96) v_475_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 80) v_475_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 64) v_475_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 48) v_475_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 32) v_475_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 16) v_475_9 (v_475_10)))))))))))

theorem t_476 : treeK7OK l7 476 = true := by decide +kernel

theorem n_476 : (recAt l7 476).2.2.2.length ≤ 32 := by decide +kernel

theorem v_476_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 476 0 16 = true := by decide +kernel

theorem v_476_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 476 16 16 = true := by decide +kernel

theorem r_476 : recsK7OK T qscale den6 d14 lamN lamD l7 476 1 = true := recK7_of (n := 32) t_476 n_476 (leavesK7OK_add (lo := 0) (n := 16) (m := 16) v_476_0 (v_476_1))

theorem rs_474 : recsK7OK T qscale den6 d14 lamN lamD l7 474 3 = true := recsK7OK_succ (lo := 474) (n := 2) r_474 (recsK7OK_succ (lo := 475) (n := 1) r_475 (r_476))

end BeatAvg.K.K7
