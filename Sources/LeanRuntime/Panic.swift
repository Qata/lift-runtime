// Lean panic runtime for Swift v3 backend

/// Lean's panic function — terminates with a message.
/// Generic return type allows use in any return position.
public func panic<A>(_ msg: String) -> A {
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

/// Erased placeholder — matches Lean runtime's lean_box(0).
/// Used for temporarily vacant array slots during in-place modification.
/// The value is never read; it will be overwritten before any access.
@inline(__always)
public func _lean_box0<T>() -> T {
    withUnsafeTemporaryAllocation(byteCount: max(MemoryLayout<T>.stride, 1),
                                  alignment: max(MemoryLayout<T>.alignment, 1)) { buf in
        buf.baseAddress!.initializeMemory(as: UInt8.self, repeating: 0, count: max(MemoryLayout<T>.stride, 1))
        return buf.baseAddress!.assumingMemoryBound(to: T.self).pointee
    }
}
