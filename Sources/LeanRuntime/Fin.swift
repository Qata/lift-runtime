// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's Fin type — a natural number less than n.
/// The proof is erased; at runtime this is just a Nat wrapper.
public struct Fin: @unchecked Sendable {
  public var val: Nat

  public init(_ val: Nat) {
    self.val = val
  }
}
