// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] Nat.ble
public func Nat_ble(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Bool {
  return a___u64___internal__hyg_1 <= a___u64___internal__hyg_2
}

/// @[extern] Nat.beq
public func Nat_beq(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Bool {
  return a___u64___internal__hyg_1 == a___u64___internal__hyg_2
}

/// @[extern] Nat.div
public func Nat_div(_ x: Nat, _ y: Nat) -> Nat {
  return y == 0 ? 0 : x / y
}

/// @[extern] Nat.mod
public func Nat_mod(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_2 == 0 ? a___u64___internal__hyg_1 : a___u64___internal__hyg_1 % a___u64___internal__hyg_2
}

/// @[extern] Nat.ctorIdx
public func Nat_ctorIdx(_ x: Nat) -> Nat {
  return x == 0 ? 0 : 1
}

/// @[extern] Nat.sub
public func Nat_sub(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 - a___u64___internal__hyg_2
}

/// @[extern] Nat.mul
public func Nat_mul(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 * a___u64___internal__hyg_2
}

/// @[extern] Nat.pred
public func Nat_pred(_ a___u64___internal__hyg_1: Nat) -> Nat {
  return a___u64___internal__hyg_1 == 0 ? 0 : a___u64___internal__hyg_1 - 1
}

/// @[extern] Nat.add
public func Nat_add(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 + a___u64___internal__hyg_2
}

/// @[extern] Nat.blt
public func Nat_blt(_ a: Nat, _ b: Nat) -> Bool {
  return a < b
}

/// @[extern] Nat.divExact
public func Nat_divExact(_ x: Nat, _ y: Nat) -> Nat {
  return y == 0 ? 0 : x / y
}

/// @[extern] Nat.shiftRight
public func Nat_shiftRight(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 >> a___u64___internal__hyg_2
}

/// @[extern] Nat.land
public func Nat_land(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 & a___u64___internal__hyg_2
}

/// @[extern] Nat.xor
public func Nat_xor(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 ^ a___u64___internal__hyg_2
}

/// @[extern] Nat.testBit
public func Nat_testBit(_ m: Nat, _ n: Nat) -> Bool {
  return (m >> n) % 2 != 0
}

/// @[extern] Nat.shiftLeft
public func Nat_shiftLeft(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 << a___u64___internal__hyg_2
}

/// @[extern] Nat.lor
public func Nat_lor(_ a___u64___internal__hyg_1: Nat, _ a___u64___internal__hyg_2: Nat) -> Nat {
  return a___u64___internal__hyg_1 | a___u64___internal__hyg_2
}

/// @[extern] Nat.reprFast
public func Nat_reprFast(_ n: Nat) -> String {
  return n.description
}

/// @[extern] Nat.gcd
public func Nat_gcd(_ m: Nat, _ n: Nat) -> Nat {
  var a = m; var b = n; while b != 0 { let t = b; b = a % b; a = t }; return a
}

/// @[extern] Nat.log2
public func Nat_log2(_ n: Nat) -> Nat {
  var n = n; var r: Nat = 0; while n > 1 { n = n >> 1; r = r + 1 }; return r
}

/// @[extern] Nat.nextPowerOfTwo
public func Nat_nextPowerOfTwo(_ n: Nat) -> Nat {
  var p: Nat = 1; while p < n { p = p << 1 }; return p
}

/// @[extern] Nat.lcm
public func Nat_lcm(_ m: Nat, _ n: Nat) -> Nat {
  let g = Nat_gcd(m, n); return g == 0 ? 0 : m / g * n
}

