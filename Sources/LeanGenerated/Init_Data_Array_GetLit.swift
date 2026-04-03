// Swift v3 compiler output
// Module: src.Init.Data.Array.GetLit
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Array.toListLitAux
public func Array_toListLitAux<A>(_ xs: Array<A>, _ n: Nat, _ x_1: Nat, _ x_3: List<A>) -> List<A> {
  if x_1 == 0 {
    return x_3
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5 = Array_getInternal(xs, n_4)
    let _x_6: List<A> = .cons(_x_5, x_3)
    return Array_toListLitAux(xs, n, n_4, _x_6)
  }
}

