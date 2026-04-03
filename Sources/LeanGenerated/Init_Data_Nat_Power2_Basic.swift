// Swift v3 compiler output
// Module: src.Init.Data.Nat.Power2.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.nextPowerOfTwo
public extension Nat {
  var nextPowerOfTwo: Nat {
    let _x_1: Nat = 1
    return Nat_nextPowerOfTwo_go(self, _x_1)
  }
}

@inline(__always) public func Nat_nextPowerOfTwo(_ n: Nat) -> Nat {
  n.nextPowerOfTwo
}

/// _private.src.Init.Data.Nat.Power2.Basic.0.Nat.nextPowerOfTwo.go
public func Nat_nextPowerOfTwo_go(_ n: Nat, _ power: Nat) -> Nat {
  let _x_1 = power < n
  if _x_1 {
    let _x_4: Nat = 2
    let _x_5 = power * _x_4
    return Nat_nextPowerOfTwo_go(n, _x_5)
  } else {
    return power
  }
}

