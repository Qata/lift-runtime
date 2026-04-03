// Swift v3 compiler output
// Module: src.Init.Data.List.BasicAux
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.tail!
public extension List {
  var `tail!`: List<A> {
    switch self {
    case .`nil`:
      let _x_3: String = "src.Init.Data.List.BasicAux"
      let _x_4: String = "List.tail!"
      let _x_5: Nat = 99
      let _x_6: Nat = 13
      let _x_7: String = "empty list"
      let _x_8 = mkPanicMessageWithDecl(_x_3, _x_4, _x_5, _x_6, _x_7)
      return panic(_x_8)
    case .cons(_, let tail_11):
      return tail_11
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func `List_tail!`<A>(_ x_1: List<A>) -> List<A> {
  x_1.`tail!`
}

/// List.getD
public extension List {
  func getD(_ i: Nat, _ fallback: A) -> A {
    let _x_1 = `List_get?Internal`(self, i)
    return if let val_2 = _x_1 {
      val_2
    } else {
      fallback
    }
  }
}

@inline(__always) public func List_getD<A>(_ `as`: List<A>, _ i: Nat, _ fallback: A) -> A {
  `as`.getD(i, fallback)
}

