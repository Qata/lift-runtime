// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's Decidable type — essentially a Bool carrying a proof.
/// Since proofs are erased in Swift, this is just true/false.
public enum Decidable: @unchecked Sendable {
  case isFalse
  case isTrue
}
