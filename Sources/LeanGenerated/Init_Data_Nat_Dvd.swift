// Swift v3 compiler output
// Module: src.Init.Data.Nat.Dvd
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.decidable_dvd
public extension Nat {
  func decidable_dvd(_ x_2: Nat) -> Decidable {
    let _x_3: Nat = x_2 % self
    let _x_4: Nat = 0
    let _x_5: Bool = _x_3 == _x_4
    if _x_5 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func Nat_decidable_dvd(_ x_1: Nat, _ x_2: Nat) -> Decidable {
  x_1.decidable_dvd(x_2)
}

