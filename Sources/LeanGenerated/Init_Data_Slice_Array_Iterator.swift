// Swift v3 compiler output
// Module: src.Init.Data.Slice.Array.Iterator
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// SubarrayIterator
public struct SubarrayIterator<A>: @unchecked Sendable {
  let xs: Any

  public init(_ xs: Any) {
    self.xs = xs
  }
}

