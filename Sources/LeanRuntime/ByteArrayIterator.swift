// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's ByteArray.Iterator type.
public struct ByteArray_Iterator: @unchecked Sendable {
  public let array: [UInt8]
  public let idx: Nat

  public init(_ array: [UInt8], _ idx: Nat) {
    self.array = array
    self.idx = idx
  }
}
