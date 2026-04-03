// Swift v3 compiler output
// Module: _stdin
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// Config
public struct Config: @unchecked Sendable {
  let width: Nat
  let height: Nat
  let name: String

  public init(_ width: Nat, _ height: Nat, _ name: String) {
    self.width = width
    self.height = height
    self.name = name
  }
}

/// Config.describe
public extension Config {
  var describe: String {
    let _x_1 = self.name
    let _x_2: String = " ("
    let _x_3 = _x_1 + _x_2
    let _x_4 = self.width
    let _x_5 = Nat_reprFast(_x_4)
    let _x_6 = _x_3 + _x_5
    let _x_7: String = "x"
    let _x_8 = _x_6 + _x_7
    let _x_9 = self.height
    let _x_10 = Nat_reprFast(_x_9)
    let _x_11 = _x_8 + _x_10
    let _x_12: String = ")"
    return _x_11 + _x_12
  }
}

@inline(__always) public func Config_describe(_ c: Config) -> String {
  c.describe
}

/// Config.area
public extension Config {
  var area: Nat {
    let _x_1 = self.width
    let _x_2 = self.height
    return _x_1 * _x_2
  }
}

@inline(__always) public func Config_area(_ c: Config) -> Nat {
  c.area
}

/// zipWithIndex.go
public func zipWithIndex_go<A>(_ x_1: List<A>, _ x_2: Nat) -> List<Prod<Nat, A>> {
  switch x_1 {
  case .`nil`:
    return List<Prod<Nat, A>>.`nil`
  case .cons(let head_4, let tail_5):
    let _x_6: Prod<Nat, A> = Prod<Nat, A>(x_2, head_4)
    let _x_7: Nat = 1
    let _x_8 = x_2 + _x_7
    let _x_9 = zipWithIndex_go(tail_5, _x_8)
    return List<Prod<Nat, A>>.cons(_x_6, _x_9)
  default:
    fatalError("unreachable")
  }
}

/// unzip
public func unzip<A, B>(_ xs: List<Prod<A, B>>) -> Prod<List<A>, List<B>> {
  func _f_1(_ acc: Prod<List<A>, List<B>>, _ p: Prod<A, B>) -> Prod<List<A>, List<B>> {
    let _x_2 = acc.fst
    let _x_3 = p.fst
    let _x_4: List<A> = List<A>.`nil`
    let _x_5: List<A> = List<A>.cons(_x_3, _x_4)
    let _x_6 = List_appendTR(_x_2, _x_5)
    let _x_7 = acc.snd
    let _x_8 = p.snd
    let _x_9: List<B> = List<B>.`nil`
    let _x_10: List<B> = List<B>.cons(_x_8, _x_9)
    let _x_11 = List_appendTR(_x_7, _x_10)
    return Prod<List<A>, List<B>>(_x_6, _x_11)
  }
  let _x_13: List<A> = List<A>.`nil`
  let _x_14: List<B> = List<B>.`nil`
  let _x_15: Prod<List<A>, List<B>> = Prod<List<A>, List<B>>(_x_13, _x_14)
  return List_foldl(_f_1, _x_15, xs)
}

/// zipWithIndex
public func zipWithIndex<A>(_ xs: List<A>) -> List<Prod<Nat, A>> {
  let _x_1: Nat = 0
  return zipWithIndex_go(xs, _x_1)
}

/// groupBy
public func groupBy<A, B: Equatable>(_ f: @escaping (A) -> B, _ xs: List<A>) -> List<Prod<B, List<A>>> {
  func _f_2(_ acc: List<Prod<B, List<A>>>, _ x: A) -> List<Prod<B, List<A>>> {
    let key = f(x)
    func _f_3(_ p: Prod<B, List<A>>) -> Prod<B, List<A>> {
      let _x_5 = p.fst
      let _x_6 = _x_5 == key
      if _x_6 {
        let _x_7 = p.snd
        let _x_8: List<A> = List<A>.`nil`
        let _x_9: List<A> = List<A>.cons(x, _x_8)
        let _x_10 = List_appendTR(_x_7, _x_9)
        return Prod<B, List<A>>(_x_5, _x_10)
      } else {
        return p
      }
    }
    func _f_12(_ p: Prod<B, List<A>>) -> Bool {
      let _x_14 = p.fst
      return _x_14 == key
    }
    let _x_16 = `List_find?`(_f_12, acc)
    if _x_16 != nil {
      let _x_24: List<Prod<B, List<A>>> = List<Prod<B, List<A>>>.`nil`
      return List_mapTR_loop(_f_3, acc, _x_24)
    } else {
      let _x_17: List<A> = List<A>.`nil`
      let _x_18: List<A> = List<A>.cons(x, _x_17)
      let _x_19: Prod<B, List<A>> = Prod<B, List<A>>(key, _x_18)
      let _x_20: List<Prod<B, List<A>>> = List<Prod<B, List<A>>>.`nil`
      let _x_21: List<Prod<B, List<A>>> = List<Prod<B, List<A>>>.cons(_x_19, _x_20)
      return List_appendTR(acc, _x_21)
    }
  }
  let _x_26: List<Prod<B, List<A>>> = List<Prod<B, List<A>>>.`nil`
  return List_foldl(_f_2, _x_26, xs)
}

