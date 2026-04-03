// Swift v3 compiler output
// Module: src.Init.Data.Nat.Bitwise.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Nat.testBit
public extension Nat {
  func testBit(_ n: Nat) -> Bool {
    let _x_1: Nat = 1
    let _x_2 = Nat_shiftRight(self, n)
    let _x_3 = Nat_land(_x_1, _x_2)
    let _x_4: Nat = 0
    let _x_6 = _x_3 == _x_4
    if _x_6 {
      return false
    } else {
      return true
    }
  }
}

@inline(__always) public func Nat_testBit(_ m: Nat, _ n: Nat) -> Bool {
  m.testBit(n)
}

/// Nat.bitwise
public extension Nat {
  func bitwise(_ f: @escaping (Bool, Bool) -> Bool, _ m: Nat) -> Nat {
    let _x_1: Nat = 0
    let _x_2 = self == _x_1
    if _x_2 {
      let _x_23: Bool = false
      let _x_24: Bool = true
      let _x_25 = f(_x_23, _x_24)
      if _x_25 {
        return m
      } else {
        return _x_1
      }
    } else {
      let _x_4 = m == _x_1
      if _x_4 {
        let _x_19: Bool = true
        let _x_20: Bool = false
        let _x_21 = f(_x_19, _x_20)
        if _x_21 {
          return self
        } else {
          return _x_1
        }
      } else {
        let _x_6: Nat = 2
        let `n'` = self / _x_6
        let `m'` = m / _x_6
        let r = `n'`.bitwise(f, `m'`)
        let _x_7 = self % _x_6
        let _x_8: Nat = 1
        let _x_10 = _x_7 == _x_8
        let _x_11 = m % _x_6
        let _x_13 = _x_11 == _x_8
        let _x_14 = f(_x_10, _x_13)
        if _x_14 {
          let _x_16 = r + r
          return _x_16 + _x_8
        } else {
          return r + r
        }
      }
    }
  }
}

@inline(__always) public func Nat_bitwise(_ f: @escaping (Bool, Bool) -> Bool, _ n: Nat, _ m: Nat) -> Nat {
  n.bitwise(f, m)
}

