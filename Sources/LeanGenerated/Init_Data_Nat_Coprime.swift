// Swift v3 compiler output
// Module: src.Init.Data.Nat.Coprime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.instDecidableCoprime
public extension Nat {
  func instDecidableCoprime(_ n: Nat) -> Decidable {
    let _x_1: Nat = Nat_gcd(self, n)
    let _x_2: Nat = 1
    let _x_3: Bool = _x_1 == _x_2
    if _x_3 {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  }
}

@inline(__always) public func Nat_instDecidableCoprime(_ m: Nat, _ n: Nat) -> Decidable {
  m.instDecidableCoprime(n)
}

