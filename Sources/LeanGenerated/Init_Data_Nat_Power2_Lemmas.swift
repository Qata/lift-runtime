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
    let _x_2: Decidable = instDecidableEqNat(self, _x_1)
    let _x_3: Decidable = instDecidableNot(_x_2)
    switch _x_3 {
    case .isFalse:
      return Decidable.isFalse
    case .isTrue:
      let _x_7: Nat = 1
      let _x_8: Nat = self - _x_7
      let _x_9: Nat = Nat_land(self, _x_8)
      let _x_10: Nat = 0
      let _x_11: Bool = _x_9 == _x_10
      if _x_11 {
        return Decidable.isTrue
      } else {
        return Decidable.isFalse
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Nat_instDecidableIsPowerOfTwo_src(_ n: Nat) -> Decidable {
  n.instDecidableIsPowerOfTwo_src
}

