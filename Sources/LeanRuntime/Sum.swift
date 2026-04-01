// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's sum (either) type.
public enum Sum<A, B> {
  case inl(A)
  case inr(B)
}
