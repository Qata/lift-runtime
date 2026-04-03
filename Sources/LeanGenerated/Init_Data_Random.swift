// Swift v3 compiler output
// Module: src.Init.Data.Random
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// StdGen
public struct StdGen: @unchecked Sendable {
  let s1: Nat
  let s2: Nat

  public init(_ s1: Nat, _ s2: Nat) {
    self.s1 = s1
    self.s2 = s2
  }
}

public let stdRange: Prod<Nat, Nat> = {
  let _x_1: Nat = 1
  let _x_2: Nat = 2147483562
  return Prod<Nat, Nat>(_x_1, _x_2)
}()

