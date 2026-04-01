// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's Task type — a lazy thunk that evaluates its body once.
/// Not related to Swift's structured concurrency Task.
public final class LeanTask<A> {
  private let thunk: () -> A
  private lazy var result: A = thunk()

  public init(_ thunk: @escaping () -> A) {
    self.thunk = thunk
  }

  public func get() -> A {
    return result
  }
}
