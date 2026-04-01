// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's error-or-value type. Unlike Swift's Result, the error type
/// does not need to conform to Error.
public enum Except<A, B> {
  case error(A)
  case ok(B)
}
