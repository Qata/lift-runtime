// Swift v3 compiler output
// Module: src.Init.GetElem
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// List.get?Internal
public extension List {
  func `get?Internal`(_ x_2: Nat) -> A? {
    let head_3 = self.head_3
    let tail_4 = self.tail_4
    if x_2 == 0 {
      return A?.some(head_3)
    } else {
      let n_6: Nat = x_2 - 1
      return tail_4.`get?Internal`(n_6)
    }
  }
}

@inline(__always) public func `List_get?Internal`<A>(_ x_1: List<A>, _ x_2: Nat) -> A? {
  x_1.`get?Internal`(x_2)
}

