// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's Prod type — a pair (α × β).
public struct Prod<A, B>: @unchecked Sendable {
  public var fst: A
  public var snd: B

  public init(_ fst: A, _ snd: B) {
    self.fst = fst
    self.snd = snd
  }
}
