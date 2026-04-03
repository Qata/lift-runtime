// Swift v3 compiler output
// Module: src.Init.Data.Format.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.Format.Basic.0.Std.Format.SpaceResult
public struct Std_Format_SpaceResult: @unchecked Sendable {
  let foundLine: Bool
  let foundFlattenedHardLine: Bool
  let space: Nat

  public init(_ foundLine: Bool, _ foundFlattenedHardLine: Bool, _ space: Nat) {
    self.foundLine = foundLine
    self.foundFlattenedHardLine = foundFlattenedHardLine
    self.space = space
  }
}

/// _private.src.Init.Data.Format.Basic.0.Std.Format.WorkGroup
public struct Std_Format_WorkGroup: @unchecked Sendable {
  let fla: List<Std_Format_WorkItem>

  public init(_ fla: List<Std_Format_WorkItem>) {
    self.fla = fla
  }
}

/// _private.src.Init.Data.Format.Basic.0.Std.Format.WorkItem
public struct Std_Format_WorkItem: @unchecked Sendable {
  let f: SignedNat
  let indent: Nat

  public init(_ f: SignedNat, _ indent: Nat) {
    self.f = f
    self.indent = indent
  }
}

/// _private.src.Init.Data.Format.Basic.0.Std.Format.State
public struct Std_Format_State: @unchecked Sendable {
  let out: String
  let column: Nat

  public init(_ out: String, _ column: Nat) {
    self.out = out
    self.column = column
  }
}

