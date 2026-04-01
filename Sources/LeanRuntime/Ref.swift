// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Mutable reference cell. Maps to Lean's IO.Ref and ST.Ref.
public final class Ref<A> {
  public var value: A

  public init(_ value: A) {
    self.value = value
  }
}
