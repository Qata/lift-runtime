// Swift v3 compiler output
// Module: src.Init.Data.Array.Attach
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.pmapImpl
@inline(__always) public func Array_pmapImpl<A, B>(_ f: @escaping (A) -> B, _ xs: Array<A>) -> Array<B> {
  func _f_1(_ x_2: Subtype<B>) -> Any {
    let val_3 = x_2.val
    return f(val_3)
  }
  let sz: UInt = Array_usize(xs)
  let _x_7: UInt = 0
  return Array_mapMUnsafe_map(_f_1, sz, _x_7, xs)
}

