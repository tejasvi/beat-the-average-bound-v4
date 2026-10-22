import BeatAvg.K.K7.Defs
import BeatAvg.K.Split

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace BeatAvg.K.K7
open BeatAvg.Check

theorem t_416 : treeK7OK l7 416 = true := by decide +kernel

theorem n_416 : (recAt l7 416).2.2.2.length ≤ 112 := by decide +kernel

theorem v_416_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 416 0 16 = true := by decide +kernel

theorem v_416_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 416 16 16 = true := by decide +kernel

theorem v_416_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 416 32 16 = true := by decide +kernel

theorem v_416_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 416 48 16 = true := by decide +kernel

theorem v_416_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 416 64 16 = true := by decide +kernel

theorem v_416_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 416 80 16 = true := by decide +kernel

theorem v_416_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 416 96 16 = true := by decide +kernel

theorem r_416 : recsK7OK T qscale den6 d14 lamN lamD l7 416 1 = true := recK7_of (n := 112) t_416 n_416 (leavesK7OK_add (lo := 0) (n := 16) (m := 96) v_416_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 80) v_416_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 64) v_416_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 48) v_416_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 32) v_416_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 16) v_416_5 (v_416_6)))))))

theorem t_417 : treeK7OK l7 417 = true := by decide +kernel

theorem n_417 : (recAt l7 417).2.2.2.length ≤ 240 := by decide +kernel

theorem v_417_0 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 0 16 = true := by decide +kernel

theorem v_417_1 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 16 16 = true := by decide +kernel

theorem v_417_2 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 32 16 = true := by decide +kernel

theorem v_417_3 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 48 16 = true := by decide +kernel

theorem v_417_4 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 64 16 = true := by decide +kernel

theorem v_417_5 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 80 16 = true := by decide +kernel

theorem v_417_6 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 96 16 = true := by decide +kernel

theorem v_417_7 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 112 16 = true := by decide +kernel

theorem v_417_8 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 128 16 = true := by decide +kernel

theorem v_417_9 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 144 16 = true := by decide +kernel

theorem v_417_10 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 160 16 = true := by decide +kernel

theorem v_417_11 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 176 16 = true := by decide +kernel

theorem v_417_12 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 192 16 = true := by decide +kernel

theorem v_417_13 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 208 16 = true := by decide +kernel

theorem v_417_14 : leavesK7OK T qscale den6 d14 lamN lamD l7 417 224 16 = true := by decide +kernel

theorem r_417 : recsK7OK T qscale den6 d14 lamN lamD l7 417 1 = true := recK7_of (n := 240) t_417 n_417 (leavesK7OK_add (lo := 0) (n := 16) (m := 224) v_417_0 (leavesK7OK_add (lo := 16) (n := 16) (m := 208) v_417_1 (leavesK7OK_add (lo := 32) (n := 16) (m := 192) v_417_2 (leavesK7OK_add (lo := 48) (n := 16) (m := 176) v_417_3 (leavesK7OK_add (lo := 64) (n := 16) (m := 160) v_417_4 (leavesK7OK_add (lo := 80) (n := 16) (m := 144) v_417_5 (leavesK7OK_add (lo := 96) (n := 16) (m := 128) v_417_6 (leavesK7OK_add (lo := 112) (n := 16) (m := 112) v_417_7 (leavesK7OK_add (lo := 128) (n := 16) (m := 96) v_417_8 (leavesK7OK_add (lo := 144) (n := 16) (m := 80) v_417_9 (leavesK7OK_add (lo := 160) (n := 16) (m := 64) v_417_10 (leavesK7OK_add (lo := 176) (n := 16) (m := 48) v_417_11 (leavesK7OK_add (lo := 192) (n := 16) (m := 32) v_417_12 (leavesK7OK_add (lo := 208) (n := 16) (m := 16) v_417_13 (v_417_14)))))))))))))))

theorem rs_416 : recsK7OK T qscale den6 d14 lamN lamD l7 416 2 = true := recsK7OK_succ (lo := 416) (n := 1) r_416 (r_417)

end BeatAvg.K.K7
