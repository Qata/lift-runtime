// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's do-notation control flow types.
public enum DoResultBC<A>: @unchecked Sendable { case `break`, `continue` }
public enum DoResultPR<A, B, C>: @unchecked Sendable { case pure, `return` }
public enum DoResultPRBC<A, B, C>: @unchecked Sendable { case pure, `return`, `break`, `continue` }
public enum DoResultSBC<A, B>: @unchecked Sendable { case pureReturn, `break`, `continue` }
public enum PSum<A, B>: @unchecked Sendable { case inl, inr }
