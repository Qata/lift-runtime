// Swift v3 compiler output
// Module: src.Init.System.ST
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// ST.Ref
public struct ST_Ref<A, B>: @unchecked Sendable {
  let ref: Any
  let h: Any

  public init(_ ref: Any, _ h: Any) {
    self.ref = ref
    self.h = h
  }
}

/// EST.Out
public enum EST_Out<A, B, C>: @unchecked Sendable {
  case ok(C, Any)
  case error(A, Any)
}

/// ST.Out
public struct ST_Out<A, B>: @unchecked Sendable {
  let val: B
  let state: Any

  public init(_ val: B, _ state: Any) {
    self.val = val
    self.state = state
  }
}

