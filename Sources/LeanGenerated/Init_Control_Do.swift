// Swift v3 compiler output
// Module: src.Init.Control.Do
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Break.runK
@inline(__always) public func Break_runK<A, B>(_ x: A?, _ breakK: @escaping (()) -> B, _ successK: @escaping (A) -> B) -> B {
  if let val_3 = x {
    return successK(val_3)
  } else {
    let _x_1: () = ()
    return breakK(_x_1)
  }
}

/// EarlyReturn.runK
@inline(__always) public func EarlyReturn_runK<A, B, C>(_ x: Except<A, B>, _ ret: @escaping (A) -> C, _ pure: @escaping (B) -> C) -> C {
  switch x {
  case .error(let a_1):
    return ret(a_1)
  case .ok(let a_3):
    return pure(a_3)
  default:
    fatalError("unreachable")
  }
}

/// Continue.runK
@inline(__always) public func Continue_runK<A, B>(_ x: A?, _ continueK: @escaping (()) -> B, _ successK: @escaping (A) -> B) -> B {
  if let a = x {
    return successK(a)
  } else {
    let x_1: () = ()
    return continueK(x_1)
  }
}

