// Swift v3 compiler output
// Module: src.Init.System.IO
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// IO.CancelToken
public struct IO_CancelToken: @unchecked Sendable {
  let ref: Any

  public init(_ ref: Any) {
    self.ref = ref
  }
}

/// IO.AccessRight
public struct IO_AccessRight: @unchecked Sendable {
  let read: Bool
  let write: Bool
  let execution: Bool

  public init(_ read: Bool, _ write: Bool, _ execution: Bool) {
    self.read = read
    self.write = write
    self.execution = execution
  }
}

/// IO.FileRight
public struct IO_FileRight: @unchecked Sendable {
  let user: IO_AccessRight
  let group: IO_AccessRight
  let other: IO_AccessRight

  public init(_ user: IO_AccessRight, _ group: IO_AccessRight, _ other: IO_AccessRight) {
    self.user = user
    self.group = group
    self.other = other
  }
}

/// IO.TaskState
public enum IO_TaskState: @unchecked Sendable {
  case waiting
  case running
  case finished
}

