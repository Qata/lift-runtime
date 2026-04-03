// Swift v3 compiler output
// Module: src.Init.Data.Nat.Power2.Lemmas
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.instDecidableIsPowerOfTwo_src
public extension Nat {
  var instDecidableIsPowerOfTwo_src: Decidable {
    let _x_1: Nat = 0
    let _x_2 = instDecidableEqNat(self, _x_1)
    let _x_3 = instDecidableNot(_x_2)
    if Decidable_decide(_x_3) {
      let _x_7: Nat = 1
      let _x_8 = self - _x_7
      let _x_9 = Nat_land(self, _x_8)
      let _x_10: Nat = 0
      let _x_11 = _x_9 == _x_10
      if _x_11 {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func Nat_instDecidableIsPowerOfTwo_src(_ n: Nat) -> Decidable {
  n.instDecidableIsPowerOfTwo_src
}

