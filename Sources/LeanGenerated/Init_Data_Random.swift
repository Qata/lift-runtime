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

