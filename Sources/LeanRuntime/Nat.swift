// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

import CGMP

/// Lean's arbitrary-precision natural number.
/// Small values (fitting in UInt) are stored inline with no heap allocation.
/// Large values use GMP (mini-gmp) for arbitrary precision.
public enum Nat: @unchecked Sendable {
  case small(UInt)
  case big(OpaquePointer) // mpz_t*

  public init(_ value: UInt) {
    self = .small(value)
  }

  public init(_ value: Int) {
    precondition(value >= 0, "Nat cannot be negative")
    self = .small(UInt(value))
  }

  public init(_ s: String) {
    var result = mpz_t()
    mpz_init(&result)
    _ = s.withCString { cstr in
      mpz_set_str(&result, cstr, 10)
    }
    // Check if it fits in UInt
    if mpz_fits_ulong_p(&result) != 0 {
      let v = mpz_get_ui(&result)
      mpz_clear(&result)
      self = .small(v)
    } else {
      let ptr = UnsafeMutablePointer<mpz_t>.allocate(capacity: 1)
      ptr.initialize(to: result)
      self = .big(OpaquePointer(ptr))
    }
  }

  /// Convert to UInt, or nil if too large.
  public var toUInt: UInt? {
    switch self {
    case .small(let v): return v
    case .big: return nil
    }
  }
}

// MARK: - ExpressibleByIntegerLiteral

extension Nat: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: StaticBigInt) {
    precondition(value.signum() >= 0, "Nat cannot be negative")
    if value.bitWidth <= UInt.bitWidth + 1 {
      // Fits in a single word — use small representation
      self = .small(value[0])
    } else {
      // Big number — write StaticBigInt words directly into GMP limbs
      let wordCount = (value.bitWidth + UInt.bitWidth - 1) / UInt.bitWidth
      let ptr = UnsafeMutablePointer<mpz_t>.allocate(capacity: 1)
      mpz_init(ptr)
      let limbs = mpz_limbs_write(ptr, Int(wordCount))!
      for i in 0..<wordCount {
        limbs[i] = value[i]
      }
      mpz_limbs_finish(ptr, Int(wordCount))
      self = .big(OpaquePointer(ptr))
    }
  }
}

// MARK: - UInt extraction

extension UInt {
  /// Extract the UInt value from a Nat (truncating for big values).
  public static func of(_ n: Nat) -> UInt {
    switch n {
    case .small(let v): return v
    case .big(let ptr):
      return UInt(mpz_get_ui(UnsafeRawPointer(ptr).assumingMemoryBound(to: mpz_t.self)))
    }
  }
}

// MARK: - Equatable

extension Nat: Equatable {
  public static func == (lhs: Nat, rhs: Nat) -> Bool {
    switch (lhs, rhs) {
    case (.small(let a), .small(let b)):
      return a == b
    case (.big(let a), .big(let b)):
      let pa = UnsafeMutablePointer<mpz_t>(a)
      let pb = UnsafeMutablePointer<mpz_t>(b)
      return mpz_cmp(pa, pb) == 0
    default:
      return false
    }
  }
}

// MARK: - Comparable

extension Nat: Comparable {
  public static func < (lhs: Nat, rhs: Nat) -> Bool {
    switch (lhs, rhs) {
    case (.small(let a), .small(let b)):
      return a < b
    case (.big(let a), .big(let b)):
      let pa = UnsafeMutablePointer<mpz_t>(a)
      let pb = UnsafeMutablePointer<mpz_t>(b)
      return mpz_cmp(pa, pb) < 0
    case (.small(let a), .big(let b)):
      let pb = UnsafeMutablePointer<mpz_t>(b)
      return mpz_cmp_ui(pb, a) > 0
    case (.big(let a), .small(let b)):
      let pa = UnsafeMutablePointer<mpz_t>(a)
      return mpz_cmp_ui(pa, b) < 0
    }
  }
}

// MARK: - Arithmetic

private func withGMP(_ a: Nat, _ b: Nat, _ op: (UnsafeMutablePointer<mpz_t>, UnsafePointer<mpz_t>, UnsafePointer<mpz_t>) -> Void) -> Nat {
  var ga = mpz_t(); mpz_init(&ga)
  var gb = mpz_t(); mpz_init(&gb)
  var gr = mpz_t(); mpz_init(&gr)
  switch a {
  case .small(let v): mpz_set_ui(&ga, v)
  case .big(let p): mpz_set(&ga, UnsafeMutablePointer<mpz_t>(p))
  }
  switch b {
  case .small(let v): mpz_set_ui(&gb, v)
  case .big(let p): mpz_set(&gb, UnsafeMutablePointer<mpz_t>(p))
  }
  op(&gr, &ga, &gb)
  mpz_clear(&ga); mpz_clear(&gb)
  if mpz_fits_ulong_p(&gr) != 0 {
    let v = mpz_get_ui(&gr)
    mpz_clear(&gr)
    return .small(v)
  } else {
    let ptr = UnsafeMutablePointer<mpz_t>.allocate(capacity: 1)
    ptr.initialize(to: gr)
    return .big(OpaquePointer(ptr))
  }
}

extension Nat {
  public static func + (lhs: Nat, rhs: Nat) -> Nat {
    if case .small(let a) = lhs, case .small(let b) = rhs {
      let (result, overflow) = a.addingReportingOverflow(b)
      if !overflow { return .small(result) }
    }
    return withGMP(lhs, rhs, mpz_add)
  }

  public static func - (lhs: Nat, rhs: Nat) -> Nat {
    if case .small(let a) = lhs, case .small(let b) = rhs {
      if a >= b { return .small(a - b) }
    }
    // Nat subtraction saturates at 0
    if lhs < rhs { return .small(0) }
    return withGMP(lhs, rhs, mpz_sub)
  }

  public static func * (lhs: Nat, rhs: Nat) -> Nat {
    if case .small(let a) = lhs, case .small(let b) = rhs {
      let (result, overflow) = a.multipliedReportingOverflow(by: b)
      if !overflow { return .small(result) }
    }
    return withGMP(lhs, rhs, mpz_mul)
  }

  public static func / (lhs: Nat, rhs: Nat) -> Nat {
    if case .small(let a) = lhs, case .small(let b) = rhs {
      guard b != 0 else { return .small(0) }
      return .small(a / b)
    }
    return withGMP(lhs, rhs, mpz_tdiv_q)
  }

  public static func % (lhs: Nat, rhs: Nat) -> Nat {
    if case .small(let a) = lhs, case .small(let b) = rhs {
      guard b != 0 else { return .small(0) }
      return .small(a % b)
    }
    return withGMP(lhs, rhs, mpz_tdiv_r)
  }
}

// MARK: - CustomStringConvertible

extension Nat: CustomStringConvertible {
  public var description: String {
    switch self {
    case .small(let v):
      return String(v)
    case .big(let p):
      let pa = UnsafeMutablePointer<mpz_t>(p)
      let size = mpz_sizeinbase(pa, 10) + 2
      let buf = UnsafeMutablePointer<CChar>.allocate(capacity: Int(size))
      mpz_get_str(buf, 10, pa)
      let s = String(cString: buf)
      buf.deallocate()
      return s
    }
  }
}

// MARK: - Bitwise & Shifts

extension Nat {
  public static func << (lhs: Nat, rhs: Nat) -> Nat {
    let shift = UInt.of(rhs)
    switch lhs {
    case .small(let a):
      if shift < UInt.bitWidth && a <= (UInt.max >> shift) {
        return .small(a << shift)
      }
      fallthrough
    default:
      var ga = mpz_t(); mpz_init(&ga)
      switch lhs {
      case .small(let v): mpz_set_ui(&ga, v)
      case .big(let p): mpz_set(&ga, UnsafeMutablePointer<mpz_t>(p))
      }
      var gr = mpz_t(); mpz_init(&gr)
      mpz_mul_2exp(&gr, &ga, shift)
      mpz_clear(&ga)
      if mpz_fits_ulong_p(&gr) != 0 {
        let v = mpz_get_ui(&gr); mpz_clear(&gr); return .small(v)
      }
      let ptr = UnsafeMutablePointer<mpz_t>.allocate(capacity: 1)
      ptr.initialize(to: gr)
      return .big(OpaquePointer(ptr))
    }
  }

  public static func >> (lhs: Nat, rhs: Nat) -> Nat {
    let shift = UInt.of(rhs)
    switch lhs {
    case .small(let a): return .small(a >> shift)
    case .big(let p):
      var gr = mpz_t(); mpz_init(&gr)
      mpz_tdiv_q_2exp(&gr, UnsafeMutablePointer<mpz_t>(p), shift)
      if mpz_fits_ulong_p(&gr) != 0 {
        let v = mpz_get_ui(&gr); mpz_clear(&gr); return .small(v)
      }
      let ptr = UnsafeMutablePointer<mpz_t>.allocate(capacity: 1)
      ptr.initialize(to: gr)
      return .big(OpaquePointer(ptr))
    }
  }

  public static func & (lhs: Nat, rhs: Nat) -> Nat {
    withGMP(lhs, rhs, mpz_and)
  }

  public static func | (lhs: Nat, rhs: Nat) -> Nat {
    withGMP(lhs, rhs, mpz_ior)
  }

  public static func ^ (lhs: Nat, rhs: Nat) -> Nat {
    withGMP(lhs, rhs, mpz_xor)
  }
}

// MARK: - Hashable

extension Nat: Hashable {
  public func hash(into hasher: inout Hasher) {
    switch self {
    case .small(let v): hasher.combine(v)
    case .big(let p):
      let pa = UnsafeMutablePointer<mpz_t>(p)
      hasher.combine(mpz_get_ui(pa))
    }
  }
}
