// Swift v3 compiler output
// Module: src.Init.Data.Function
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Function.curry
@inline(__always) public func Function_curry<A, B, C>(_ f: @escaping (Prod<A, B>) -> C, _ a: A, _ b: B) -> C {
  let _x_1: Prod<A, B> = Prod<A, B>(a, b)
  return f(_x_1)
}

/// Function.uncurry
@inline(__always) public func Function_uncurry<A, B, C>(_ f: @escaping (A, B) -> C, _ a: Prod<A, B>) -> C {
  let _x_1 = a.fst
  let _x_2 = a.snd
  return f(_x_1, _x_2)
}

