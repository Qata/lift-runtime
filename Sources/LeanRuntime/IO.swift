// Lean IO runtime for Swift v3 backend
// Thin wrappers around Swift stdlib for IO operations.

import Foundation

/// IO.println
public func IO_println(_ s: String, _ world: Any = ()) -> Any {
  print(s)
  return ()
}

/// IO.print
public func IO_print(_ s: String, _ world: Any = ()) -> Any {
  print(s, terminator: "")
  return ()
}

/// IO.eprint
public func IO_eprint(_ s: String, _ world: Any = ()) -> Any {
  FileHandle.standardError.write(Data(s.utf8))
  return ()
}

/// IO.eprintln
public func IO_eprintln(_ s: String, _ world: Any = ()) -> Any {
  FileHandle.standardError.write(Data((s + "\n").utf8))
  return ()
}

/// IO.getLine
public func IO_getLine(_ world: Any = ()) -> String {
  return readLine() ?? ""
}

/// IO.FS.readFile
public func IO_FS_readFile(_ path: String, _ world: Any = ()) throws -> String {
  return try String(contentsOfFile: path, encoding: .utf8)
}

/// IO.FS.writeFile
public func IO_FS_writeFile(_ path: String, _ content: String, _ world: Any = ()) throws {
  try content.write(toFile: path, atomically: true, encoding: .utf8)
}

/// IO.Process.exit
public func IO_Process_exit(_ code: UInt8) -> Never {
  exit(Int32(code))
}

/// IO.Ref — mutable reference (alias for Ref<A>)
public typealias IO_Ref = Ref

/// String.Internal.length (UTF-8 byte count, Lean's string length)
public func String_Internal_length(_ s: String) -> Nat {
  return Nat(UInt(s.utf8.count))
}

/// toString for Nat
public func Nat_repr(_ n: Nat) -> String {
  return n.description
}

/// toString for Bool
public func Bool_toString(_ b: Bool) -> String {
  return b ? "true" : "false"
}
