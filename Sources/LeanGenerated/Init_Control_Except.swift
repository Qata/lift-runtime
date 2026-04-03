// Swift v3 compiler output
// Module: src.Init.Control.Except
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Except.pure
@inline(__always) public func Except_pure<A, B>(_ a: B) -> Except<A, B> {
  Except<A, B>.ok(a)
}

/// Except.bind
public extension Except {
  func bind<C>(_ f: @escaping (B) -> Except<A, C>) -> Except<A, C> {
    switch self {
    case .error(let a_1):
      return Except<A, C>.error(a_1)
    case .ok(let a_3):
      return f(a_3)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Except_bind<A, B, C>(_ ma: Except<A, B>, _ f: @escaping (B) -> Except<A, C>) -> Except<A, C> {
  ma.bind(f)
}

/// Except.mapError
public extension Except {
  func mapError<C>(_ f: @escaping (A) -> C) -> Except<C, B> {
    switch self {
    case .error(let a_2):
      let _x_3 = f(a_2)
      return Except<C, B>.error(_x_3)
    case .ok(let a_5):
      return Except<C, B>.ok(a_5)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Except_mapError<A, C, B>(_ f: @escaping (A) -> C, _ x_1: Except<A, B>) -> Except<C, B> {
  x_1.mapError(f)
}

/// Except.orElseLazy
public extension Except {
  func orElseLazy(_ y: @escaping (()) -> Except<A, B>) -> Except<A, B> {
    switch self {
    case .error:
      let _x_2: () = ()
      return y(_x_2)
    case .ok:
      return self
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Except_orElseLazy<A, B>(_ x: Except<A, B>, _ y: @escaping (()) -> Except<A, B>) -> Except<A, B> {
  x.orElseLazy(y)
}

/// Except.tryCatch
public extension Except {
  func tryCatch(_ handle: @escaping (A) -> Except<A, B>) -> Except<A, B> {
    switch self {
    case .error(let a_1):
      return handle(a_1)
    case .ok:
      return self
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Except_tryCatch<A, B>(_ ma: Except<A, B>, _ handle: @escaping (A) -> Except<A, B>) -> Except<A, B> {
  ma.tryCatch(handle)
}

/// Except.map
public extension Except {
  func map<C>(_ f: @escaping (B) -> C) -> Except<A, C> {
    switch self {
    case .error(let a_2):
      return Except<A, C>.error(a_2)
    case .ok(let a_4):
      let _x_5 = f(a_4)
      return Except<A, C>.ok(_x_5)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Except_map<B, C, A>(_ f: @escaping (B) -> C, _ x_1: Except<A, B>) -> Except<A, C> {
  x_1.map(f)
}

