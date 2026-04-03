// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's String.Pos — a validated byte position in a string.
/// The string parameter and validity proof are erased; at runtime this wraps a Nat offset.
public struct String_Pos: @unchecked Sendable {
  public var offset: Nat

  public init(_ offset: Nat) {
    self.offset = offset
  }
}
