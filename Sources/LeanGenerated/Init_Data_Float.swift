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
  let float: Any
  let val: Any
  let lt: Any
  let le: Any
  let decLt: Any
  let decLe: Any

  public init(_ float: Any, _ val: Any, _ lt: Any, _ le: Any, _ decLt: Any, _ decLe: Any) {
    self.float = float
    self.val = val
    self.lt = lt
    self.le = le
    self.decLt = decLt
    self.decLe = decLe
  }
}

