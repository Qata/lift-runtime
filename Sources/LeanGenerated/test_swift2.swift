// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Tree
public indirect enum Tree<A>: @unchecked Sendable {
  case leaf(A)
  case node(Tree<A>, Tree<A>)
}

/// Tree.map
public extension Tree {
  func map<B>(_ f: @escaping (A) -> B) -> Tree<B> {
    switch self {
    case .leaf(let a_2):
      let _x_3 = f(a_2)
      return Tree<B>.leaf(_x_3)
    case .node(let a_5, let a_6):
      let _x_7 = a_5.map(f)
      let _x_8 = a_6.map(f)
      return Tree<B>.node(_x_7, _x_8)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Tree_map<A, B>(_ f: @escaping (A) -> B, _ x_1: Tree<A>) -> Tree<B> {
  x_1.map(f)
}

/// collatz_step
public func collatz_step(_ n: Nat) -> Nat {
  let _x_1: Nat = 2
  let _x_2 = n % _x_1
  let _x_3: Nat = 0
  let _x_5 = _x_2 == _x_3
  if _x_5 {
    let _x_10: Nat = 1
    return Nat_shiftRight(n, _x_10)
  } else {
    let _x_6: Nat = 3
    let _x_7 = _x_6 * n
    let _x_8: Nat = 1
    return _x_7 + _x_8
  }
}

/// iterate
public func iterate<A>(_ f: @escaping (A) -> A, _ n: Nat, _ x: A) -> A {
  if n == 0 {
    return x
  } else {
    let n_1: Nat = n - 1
    let _x_2 = f(x)
    return iterate(f, n_1, _x_2)
  }
}

/// Tree.ctorIdx
public extension Tree {
  var ctorIdx: Nat {
    switch self {
    case .leaf:
      return 0
    case .node:
      return 1
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Tree_ctorIdx<A>(_ x: Tree<A>) -> Nat {
  x.ctorIdx
}

/// Tree.flatten
public extension Tree {
  var flatten: List<A> {
    switch self {
    case .leaf(let a_2):
      let _x_3: List<A> = List<A>.`nil`
      return List<A>.cons(a_2, _x_3)
    case .node(let a_5, let a_6):
      let _x_7 = a_5.flatten
      let _x_8 = a_6.flatten
      return List_appendTR(_x_7, _x_8)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Tree_flatten<A>(_ x_1: Tree<A>) -> List<A> {
  x_1.flatten
}

/// collatz_length
public func collatz_length(_ x_1: Nat) -> Nat {
  let _x_2: Nat = 1
  let _x_3 = x_1 == _x_2
  if _x_3 {
    return 0
  } else {
    let _x_4: Nat = 1
    let _x_5 = collatz_step(x_1)
    let _x_6 = collatz_length(_x_5)
    return _x_4 + _x_6
  }
}

/// Tree.fold
public extension Tree {
  func fold<B>(_ f: @escaping (B, B) -> B, _ g: @escaping (A) -> B) -> B {
    switch self {
    case .leaf(let a_2):
      return g(a_2)
    case .node(let a_4, let a_5):
      let _x_6 = a_4.fold(f, g)
      let _x_7 = a_5.fold(f, g)
      return f(_x_6, _x_7)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Tree_fold<B, A>(_ f: @escaping (B, B) -> B, _ g: @escaping (A) -> B, _ x_1: Tree<A>) -> B {
  x_1.fold(f, g)
}

/// Tree.size
public extension Tree {
  var size: Nat {
    switch self {
    case .leaf:
      return 1
    case .node(let a_4, let a_5):
      let _x_6 = a_4.size
      let _x_7 = a_5.size
      return _x_6 + _x_7
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Tree_size<A>(_ x_1: Tree<A>) -> Nat {
  x_1.size
}

/// Tree.depth
public extension Tree {
  var depth: Nat {
    switch self {
    case .leaf:
      return 0
    case .node(let a_4, let a_5):
      let _x_6: Nat = 1
      let _x_7 = a_4.depth
      let _x_8 = a_5.depth
      let _x_9 = _x_7 <= _x_8
      if _x_9 {
        return _x_6 + _x_8
      } else {
        return _x_6 + _x_7
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Tree_depth<A>(_ x_1: Tree<A>) -> Nat {
  x_1.depth
}

/// compose
public func compose<A, B, C>(_ f: @escaping (A) -> B, _ g: @escaping (C) -> A, _ x: C) -> B {
  let _x_1 = g(x)
  return f(_x_1)
}

