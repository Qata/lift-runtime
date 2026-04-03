// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// getFst
public func getFst(_ p: Prod<Nat, Nat>) -> Nat {
  p.fst
}

/// mkPair
public func mkPair(_ a: Nat, _ b: Nat) -> Prod<Nat, Nat> {
  Prod<Nat, Nat>(a, b)
}

