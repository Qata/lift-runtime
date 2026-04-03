// Swift v3 compiler output
// Module: src.Init.Data.UInt.BasicAux
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// UInt32.ofNatTruncate
public func UInt32_ofNatTruncate(_ n: Nat) -> UInt32 {
  let _x_1: Nat = 4294967296
  let _x_2 = n < _x_1
  if _x_2 {
    return UInt32_ofNatLT(n)
  } else {
    let _x_3: Nat = 4294967295
    return UInt32_ofNatLT(_x_3)
  }
}

/// UInt8.ofNatTruncate
public func UInt8_ofNatTruncate(_ n: Nat) -> UInt8 {
  let _x_1: Nat = 256
  let _x_2 = n < _x_1
  if _x_2 {
    return UInt8_ofNatLT(n)
  } else {
    let _x_3: Nat = 255
    return UInt8_ofNatLT(_x_3)
  }
}

/// UInt64.ofNatTruncate
public func UInt64_ofNatTruncate(_ n: Nat) -> UInt64 {
  let _x_1: Nat = 18446744073709551616
  let _x_2 = n < _x_1
  if _x_2 {
    return UInt64_ofNatLT(n)
  } else {
    let _x_3: Nat = 18446744073709551615
    return UInt64_ofNatLT(_x_3)
  }
}

/// UInt16.ofNatTruncate
public func UInt16_ofNatTruncate(_ n: Nat) -> UInt16 {
  let _x_1: Nat = 65536
  let _x_2 = n < _x_1
  if _x_2 {
    return UInt16_ofNatLT(n)
  } else {
    let _x_3: Nat = 65535
    return UInt16_ofNatLT(_x_3)
  }
}

