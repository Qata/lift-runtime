// Swift v3 compiler output
// Module: src.Init.Data.Array.Attach
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.Array.Attach.0.Array.attachWithImpl
@inline(__always) public func Array_attachWithImpl<A>(_ xs: Array<A>) -> Array<A> {
  xs
}

/// Array.attach
@inline(__always) public func Array_attach<A>(_ xs: Array<A>) -> Array<A> {
  xs
}

/// Array.pmapImpl
@inline(__always) public func Array_pmapImpl<A, B>(_ f: @escaping (A) -> B, _ xs: Array<A>) -> Array<B> {
  func _f_1(_ x_2: A) -> B {
    f(x_2)
  }
  let sz = Array_usize(xs)
  let _x_7: UInt = 0
  return Array_mapMUnsafe_map(_f_1, sz, _x_7, xs)
}

/// Array.unattach
public func Array_unattach<A>(_ xs: Array<A>) -> Array<A> {
  func _f_1(_ x_2: A) -> A {
    x_2
  }
  let sz = Array_usize(xs)
  let _x_5: UInt = 0
  return Array_mapMUnsafe_map(_f_1, sz, _x_5, xs)
}

