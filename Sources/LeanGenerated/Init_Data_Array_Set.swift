// Swift v3 compiler output
// Module: src.Init.Data.Array.Set
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.setIfInBounds
@inline(__always) public func Array_setIfInBounds<A>(_ xs: Array<A>, _ i: Nat, _ v: A) -> Array<A> {
  let _x_1 = Array_size(xs)
  let _x_2 = i < _x_1
  if _x_2 {
    return Array_set(xs, i, v)
  } else {
    return xs
  }
}

