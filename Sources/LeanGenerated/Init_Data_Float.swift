// Swift v3 compiler output
// Module: src.Init.Data.Float
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// FloatSpec
public struct FloatSpec: @unchecked Sendable {
  let float: ()
  let val: ()
  let lt: ()
  let le: Any
  let decLt: Any

  public init(_ float: (), _ val: (), _ lt: (), _ le: Any, _ decLt: Any) {
    self.float = float
    self.val = val
    self.lt = lt
    self.le = le
    self.decLt = decLt
  }
}

