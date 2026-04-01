// Lean panic runtime for Swift v3 backend

/// Lean's panic function — terminates with a message.
public func panic(_ msg: String) -> Never {
    fatalError("Lean panic: \(msg)")
}

/// Lean's panic with default value — returns the default when panicking would be caught.
public func panicWithDefault<A>(_ default_: A, _ msg: String) -> A {
    return default_
}

/// unreachable — proven unreachable by Lean, crash if reached
public func unreachable<A>() -> A {
    fatalError("unreachable code reached")
}
