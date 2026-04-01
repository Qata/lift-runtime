// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's arbitrary-precision signed integer, built on Nat.
public struct SignedNat: Sendable, Equatable, Comparable, Hashable {
  public var magnitude: Nat
  public var isNegative: Bool

  public init(_ n: Nat, negative: Bool = false) {
    self.magnitude = n
    self.isNegative = negative && n != 0
  }

  public init(_ n: Nat) {
    self.magnitude = n
    self.isNegative = false
  }

  public static func ofNat(_ n: Nat) -> SignedNat {
    SignedNat(n)
  }

  /// Int.negSucc n = -(n + 1)
  public static func negSucc(_ n: Nat) -> SignedNat {
    SignedNat(n + Nat(1), negative: true)
  }

  /// Int.ofInt — identity for SignedNat
  public static func ofInt(_ n: SignedNat) -> SignedNat { n }

  /// Int.ofIntWithPrec — same as ofInt (precision parameter ignored)
  public static func ofIntWithPrec(_ n: SignedNat, _ prec: Any = 0) -> SignedNat { n }

  public init(_ value: Int) {
    if value >= 0 {
      self.magnitude = Nat(UInt(value))
      self.isNegative = false
    } else {
      self.magnitude = Nat(UInt(~value) + 1)
      self.isNegative = true
    }
  }

  /// Convert to Swift Int (truncating for large values).
  public var toInt: Int {
    let u = UInt.of(magnitude)
    return isNegative ? -Int(bitPattern: u) : Int(bitPattern: u)
  }

  public static func == (lhs: SignedNat, rhs: SignedNat) -> Bool {
    lhs.isNegative == rhs.isNegative && lhs.magnitude == rhs.magnitude
  }

  public static func < (lhs: SignedNat, rhs: SignedNat) -> Bool {
    switch (lhs.isNegative, rhs.isNegative) {
    case (true, false): return true
    case (false, true): return false
    case (false, false): return lhs.magnitude < rhs.magnitude
    case (true, true): return rhs.magnitude < lhs.magnitude
    }
  }

  public static func + (lhs: SignedNat, rhs: SignedNat) -> SignedNat {
    if lhs.isNegative == rhs.isNegative {
      return SignedNat(lhs.magnitude + rhs.magnitude, negative: lhs.isNegative)
    }
    if lhs.magnitude >= rhs.magnitude {
      return SignedNat(lhs.magnitude - rhs.magnitude, negative: lhs.isNegative)
    }
    return SignedNat(rhs.magnitude - lhs.magnitude, negative: rhs.isNegative)
  }

  public static func - (lhs: SignedNat, rhs: SignedNat) -> SignedNat {
    lhs + SignedNat(rhs.magnitude, negative: !rhs.isNegative)
  }

  public static func * (lhs: SignedNat, rhs: SignedNat) -> SignedNat {
    SignedNat(lhs.magnitude * rhs.magnitude, negative: lhs.isNegative != rhs.isNegative)
  }

  public func hash(into hasher: inout Hasher) {
    hasher.combine(isNegative)
    hasher.combine(magnitude)
  }
}

extension SignedNat: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: Int) {
    self.init(value)
  }
}

extension SignedNat: CustomStringConvertible {
  public var description: String {
    isNegative ? "-\(magnitude)" : "\(magnitude)"
  }
}
