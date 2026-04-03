// Swift v3 compiler output
// Module: src.Init.Data.Nat.Lcm
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.lcm
public extension Nat {
  func lcm(_ n: Nat) -> Nat {
    let _x_1: Nat = self * n
    let _x_2: Nat = Nat_gcd(self, n)
    return _x_1 / _x_2
  }
}

@inline(__always) public func Nat_lcm(_ m: Nat, _ n: Nat) -> Nat {
  m.lcm(n)
}

