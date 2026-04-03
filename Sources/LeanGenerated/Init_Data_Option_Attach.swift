// Swift v3 compiler output
// Module: src.Init.Data.Option.Attach
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// _private.src.Init.Data.Option.Attach.0.Option.attachWithImpl
@inline(__always) public func Option_attachWithImpl<A>(_ o: A?) -> A? {
  o
}

/// Option.unattach
public func Option_unattach<A>(_ o: A?) -> A? {
  if let val_2 = o {
    let _x_3 = val_2
    return A?.some(_x_3)
  } else {
    return nil
  }
}

/// Option.attach
@inline(__always) public func Option_attach<A>(_ xs: A?) -> A? {
  xs
}

