// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's String.Slice — a validated substring view.
/// Fields: the source string, start position, and end position.
public struct String_Slice: @unchecked Sendable {
  public var str: String
  public var start: Nat
  public var stop: Nat

  public init(_ str: String, _ start: Nat, _ stop: Nat) {
    self.str = str
    self.start = start
    self.stop = stop
  }
}
