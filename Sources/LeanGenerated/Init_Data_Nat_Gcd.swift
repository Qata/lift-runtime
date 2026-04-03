// Swift v3 compiler output
// Module: src.Init.Data.Nat.Gcd
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.dvdProdDvdOfDvdProd
public extension Nat {
  func dvdProdDvdOfDvdProd(_ m: Nat, _ n: Nat) -> Prod<Nat, Nat> {
    let _x_1 = Nat_gcd(self, m)
    let _x_2: Nat = 0
    let _x_3 = _x_1 == _x_2
    if _x_3 {
      let _x_9 = _x_2
      let _x_10 = n
      let _x_11: Prod<Nat, Nat> = Prod<Nat, Nat>(_x_9, _x_10)
      return _x_11
    } else {
      let _x_4 = _x_1
      let _x_5 = self / _x_1
      let _x_6 = _x_5
      let _x_7: Prod<Nat, Nat> = Prod<Nat, Nat>(_x_4, _x_6)
      return _x_7
    }
  }
}

@inline(__always) public func Nat_dvdProdDvdOfDvdProd(_ k: Nat, _ m: Nat, _ n: Nat) -> Prod<Nat, Nat> {
  k.dvdProdDvdOfDvdProd(m, n)
}

