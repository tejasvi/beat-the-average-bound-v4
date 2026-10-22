import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_492 : treeK7OK l7 492 = true := by decide +kernel

theorem n_492 : (recAt l7 492).2.2.2.length ≤ 96 := by decide +kernel

theorem v_492_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 492 0 16 = true := by decide +kernel

theorem v_492_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 492 16 16 = true := by decide +kernel

theorem v_492_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 492 32 16 = true := by decide +kernel

theorem v_492_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 492 48 16 = true := by decide +kernel

theorem v_492_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 492 64 16 = true := by decide +kernel

theorem v_492_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 492 80 16 = true := by decide +kernel

theorem r_492 : recsK7OK T qscale den6 d14 lamN lamD l7 492 1 = true := recK7_of (n := 96) t_492 n_492 (leavesK7OK_add (lo := 0) (n := 16) (m := 80) v_492_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 64) v_492_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 48) v_492_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 32) v_492_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 16) v_492_4 (v_492_5))))))

theorem t_493 : treeK7OK l7 493 = true := by decide +kernel

theorem n_493 : (recAt l7 493).2.2.2.length ≤ 48 := by decide +kernel

theorem v_493_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 493 0 16 = true := by decide +kernel

theorem v_493_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 493 16 16 = true := by decide +kernel

theorem v_493_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 493 32 16 = true := by decide +kernel

theorem r_493 : recsK7OK T qscale den6 d14 lamN lamD l7 493 1 = true := recK7_of (n := 48) t_493 n_493 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_493_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_493_1 (v_493_2)))

theorem t_494 : treeK7OK l7 494 = true := by decide +kernel

theorem n_494 : (recAt l7 494).2.2.2.length ≤ 48 := by decide +kernel

theorem v_494_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 494 0 16 = true := by decide +kernel

theorem v_494_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 494 16 16 = true := by decide +kernel

theorem v_494_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 494 32 16 = true := by decide +kernel

theorem r_494 : recsK7OK T qscale den6 d14 lamN lamD l7 494 1 = true := recK7_of (n := 48) t_494 n_494 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_494_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_494_1 (v_494_2)))

theorem t_495 : treeK7OK l7 495 = true := by decide +kernel

theorem n_495 : (recAt l7 495).2.2.2.length ≤ 80 := by decide +kernel

theorem v_495_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 495 0 16 = true := by decide +kernel

theorem v_495_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 495 16 16 = true := by decide +kernel

theorem v_495_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 495 32 16 = true := by decide +kernel

theorem v_495_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 495 48 16 = true := by decide +kernel

theorem v_495_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 495 64 16 = true := by decide +kernel

theorem r_495 : recsK7OK T qscale den6 d14 lamN lamD l7 495 1 = true := recK7_of (n := 80) t_495 n_495 (leavesK7OK_add (lo := 0) (n := 16) (m := 64) v_495_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 48) v_495_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 32) v_495_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 16) v_495_3 (v_495_4)))))

theorem t_496 : treeK7OK l7 496 = true := by decide +kernel

theorem n_496 : (recAt l7 496).2.2.2.length ≤ 48 := by decide +kernel

theorem v_496_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 496 0 16 = true := by decide +kernel

theorem v_496_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 496 16 16 = true := by decide +kernel

theorem v_496_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 496 32 16 = true := by decide +kernel

theorem r_496 : recsK7OK T qscale den6 d14 lamN lamD l7 496 1 = true := recK7_of (n := 48) t_496 n_496 (leavesK7OK_add (lo := 0) (n := 16) (m := 32) v_496_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 16) v_496_1 (v_496_2)))

theorem rs_492 : recsK7OK T qscale den6 d14 lamN lamD l7 492 5 = true := recsK7OK_succ (lo := 492) (n := 4) r_492 (recsK7OK_succ (lo := 493) (n := 3) r_493 (recsK7OK_succ (lo := 494) (n := 2) r_494 (recsK7OK_succ (lo := 495) (n := 1) r_495 (r_496))))

end BeatAvg.K.K7
