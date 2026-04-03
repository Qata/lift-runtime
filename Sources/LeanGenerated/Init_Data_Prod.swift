// Swift v3 compiler output
// Module: src.Init.Data.Prod
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Prod.swap
public extension Prod {
  var swap: Prod<B, A> {
    let _x_1 = self.snd
    let _x_2 = self.fst
    return Prod<B, A>(_x_1, _x_2)
  }
}

@inline(__always) public func Prod_swap<A, B>(_ p: Prod<A, B>) -> Prod<B, A> {
  p.swap
}

