// Swift v3 compiler output
// Module: src.Init.System.Promise
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// IO.Promise
public struct IO_Promise<A>: @unchecked Sendable {
  let prom: Any
  let h: Any

  public init(_ prom: Any, _ h: Any) {
    self.prom = prom
    self.h = h
  }
}

