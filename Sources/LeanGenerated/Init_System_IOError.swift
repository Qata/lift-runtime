// Swift v3 compiler output
// Module: src.Init.System.IOError
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// IO.Error
public enum IO_Error: @unchecked Sendable, Error {
  case alreadyExists(String?, UInt32, String)
  case otherError(UInt32, String)
  case resourceBusy(UInt32, String)
  case resourceVanished(UInt32, String)
  case unsupportedOperation(UInt32, String)
  case hardwareFault(UInt32, String)
  case unsatisfiedConstraints(UInt32, String)
  case illegalOperation(UInt32, String)
  case protocolError(UInt32, String)
  case timeExpired(UInt32, String)
  case interrupted(String, UInt32, String)
  case noFileOrDirectory(String, UInt32, String)
  case invalidArgument(String?, UInt32, String)
  case permissionDenied(String?, UInt32, String)
  case resourceExhausted(String?, UInt32, String)
  case inappropriateType(String?, UInt32, String)
  case noSuchThing(String?, UInt32, String)
  case unexpectedEof
  case userError(String)
}

