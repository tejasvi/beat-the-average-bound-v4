import BeatAvg.Data.K7
import BeatAvg.Data.K7K

/-! Names for the kernel check with 7 points (core Lean only). -/

namespace BeatAvg.K.K7
open BeatAvg.Check

def l4 : List TreeRec := BeatAvg.Data.K8.recs4.map PRec.unpackR
def l5 : List TreeRec := BeatAvg.Data.K8.recs5.map PRec.unpackR
def l6 : List TreeRec := BeatAvg.Data.K8.recs6.map PRec.unpackR
def l7 : List TreeRec := BeatAvg.Data.K8.recs7.map PRec.unpackR
def low : List DBlock := BeatAvg.Data.K7.blocks.filter fun b => decide (2 * b.m - b.t ≤ 6)
def top : List DBlock := BeatAvg.Data.K7.blocks.filter fun b => b.t == 5 && b.m == 6
def b14 : DBlock := (BeatAvg.Data.K7.blocks.filter fun b => b.t == 1 && b.m == 4).headD dfltB
def T : K7Tab := BeatAvg.Data.K7K.tab
def qscale : Nat := BeatAvg.Data.K7.qscale
def den6 : Nat := BeatAvg.Data.K7K.den6
def d14 : Nat := BeatAvg.Data.K7K.d14
def lamN : Nat := BeatAvg.Data.K7.lamN
def lamD : Nat := BeatAvg.Data.K7.lamD

end BeatAvg.K.K7
