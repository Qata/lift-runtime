// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's BitVec type — a bitvector of width w.
/// The proof is erased; at runtime this is just a Nat wrapper.
public struct BitVec: @unchecked Sendable {
  public var val: Nat

  public init(_ val: Nat) {
    self.val = val
  }
}
