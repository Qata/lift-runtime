// Swift v3 compiler output
// Module: src.Init.Prelude
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// EStateM.Result
public enum EStateM_Result<A, B, C>: @unchecked Sendable {
  case ok(C, B)
  case error(A, B)
}

/// PULift
public struct PULift<A>: @unchecked Sendable {
  let down: A

  public init(_ down: A) {
    self.down = down
  }
}

/// ULift
public struct ULift<A>: @unchecked Sendable {
  let down: A

  public init(_ down: A) {
    self.down = down
  }
}

/// PEmpty
public enum PEmpty: @unchecked Sendable {
}

/// PLift
public struct PLift<A>: @unchecked Sendable {
  let down: A

  public init(_ down: A) {
    self.down = down
  }
}

/// MProd
public struct MProd<A, B>: @unchecked Sendable {
  let fst: A
  let snd: B

  public init(_ fst: A, _ snd: B) {
    self.fst = fst
    self.snd = snd
  }
}

/// List.lengthTRAux
public extension List {
  func lengthTRAux(_ x_2: Nat) -> Nat {
    switch self {
    case .`nil`:
      return x_2
    case .cons(_, let tail_4):
      let _x_5: Nat = x_2 + 1
      return tail_4.lengthTRAux(_x_5)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_lengthTRAux<A>(_ x_1: List<A>, _ x_2: Nat) -> Nat {
  x_1.lengthTRAux(x_2)
}

/// EStateM.dummyRestore
@inline(__always) public func EStateM_dummyRestore<A>(_ s: A, _ x_1: ()) -> A {
  s
}

public let ByteArray_empty: Array<UInt8> = {
  let _x_1: Nat = 0
  return ByteArray_emptyWithCapacity(_x_1)
}()

/// Array.mkArray1
public func Array_mkArray1<A>(_ `a₁`: A) -> Array<A> {
  let _x_1: Nat = 1
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  return Array_push(_x_2, `a₁`)
}

public let UInt8_size: Nat = {
  256
}()

/// List.append
public extension List {
  func append(_ x_2: List<A>) -> List<A> {
    switch self {
    case .`nil`:
      return x_2
    case .cons(let head_3, let tail_4):
      let _x_5 = tail_4.append(x_2)
      return List<A>.cons(head_3, _x_5)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_append<A>(_ x_1: List<A>, _ x_2: List<A>) -> List<A> {
  x_1.append(x_2)
}

/// Array.mkArray2
public func Array_mkArray2<A>(_ `a₁`: A, _ `a₂`: A) -> Array<A> {
  let _x_1: Nat = 2
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  let _x_3 = Array_push(_x_2, `a₁`)
  return Array_push(_x_3, `a₂`)
}

public let UInt64_size: Nat = {
  18446744073709551616
}()

/// List.lengthTR
public extension List {
  var lengthTR: Nat {
    let _x_1: Nat = 0
    return self.lengthTRAux(_x_1)
  }
}

@inline(__always) public func List_lengthTR<A>(_ `as`: List<A>) -> Nat {
  `as`.lengthTR
}

/// Array.mkArray7
public func Array_mkArray7<A>(_ `a₁`: A, _ `a₂`: A, _ `a₃`: A, _ `a₄`: A, _ `a₅`: A, _ `a₆`: A, _ `a₇`: A) -> Array<A> {
  let _x_1: Nat = 7
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  let _x_3 = Array_push(_x_2, `a₁`)
  let _x_4 = Array_push(_x_3, `a₂`)
  let _x_5 = Array_push(_x_4, `a₃`)
  let _x_6 = Array_push(_x_5, `a₄`)
  let _x_7 = Array_push(_x_6, `a₅`)
  let _x_8 = Array_push(_x_7, `a₆`)
  return Array_push(_x_8, `a₇`)
}

/// instDecidableEqList
public func instDecidableEqList<A: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ xs: List<A>, _ ys: List<A>) -> Decidable {
  switch xs {
  case .`nil`:
    switch ys {
    case .`nil`:
      return Decidable.isTrue
    case .cons:
      return Decidable.isFalse
    default:
      fatalError("unreachable")
    }
  case .cons(let head_6, let tail_7):
    switch ys {
    case .`nil`:
      return Decidable.isFalse
    case .cons(let head_9, let tail_10):
      let _x_11 = tail_7.hasDecEq(inst_1, tail_10)
      let _x_12 = inst_1(head_6, head_9)
      if Decidable_decide(_x_12) {
        if Decidable_decide(_x_11) {
          return Decidable.isTrue
        } else {
          return Decidable.isFalse
        }
      } else {
        return Decidable.isFalse
      }
    default:
      fatalError("unreachable")
    }
  default:
    fatalError("unreachable")
  }
}

/// Function.comp
@inline(__always) public func Function_comp<A, B, C>(_ f: @escaping (B) -> C, _ g: @escaping (A) -> B, _ x: A) -> C {
  let _x_1 = g(x)
  return f(_x_1)
}

public let UInt16_size: Nat = {
  65536
}()

/// Eq.ndrec_symm
@inline(__always) public func Eq_ndrec_symm<A>(_ a: A, _ m: A) -> () {
}

/// Function.const
@inline(__always) public func Function_const<A, B>(_ a: A, _ x_1: B) -> A {
  a
}

/// Array.appendCore
public func Array_appendCore<A>(_ `as`: Array<A>, _ bs: Array<A>) -> Array<A> {
  let _x_1 = Array_size(bs)
  let _x_2: Nat = 0
  return Array_appendCore_loop(bs, _x_1, _x_2, `as`)
}

/// EStateM.dummySave
@inline(__always) public func EStateM_dummySave<A>(_ x_1: A) -> () {
  ()
}

/// List.ctorIdx
public extension List {
  var ctorIdx: Nat {
    switch self {
    case .`nil`:
      return 0
    case .cons:
      return 1
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_ctorIdx<A>(_ x: List<A>) -> Nat {
  x.ctorIdx
}

public let instInhabitedBool_default: Bool = {
  false
}()

/// decEq
public func decEq<A: Equatable>(_ inst: @escaping (A, A) -> Decidable, _ a: A, _ b: A) -> Decidable {
  inst(a, b)
}

/// List.toByteArray.loop
public func List_toByteArray_loop(_ x_1: List<UInt8>, _ x_2: Array<UInt8>) -> Array<UInt8> {
  switch x_1 {
  case .`nil`:
    return x_2
  case .cons(let head_3, let tail_4):
    let _x_5 = ByteArray_push(x_2, head_3)
    return List_toByteArray_loop(tail_4, _x_5)
  default:
    fatalError("unreachable")
  }
}

/// List.foldl
public extension List {
  func foldl<B>(_ f: @escaping (B, A) -> B, _ x_1: B) -> B {
    switch self {
    case .`nil`:
      return x_1
    case .cons(let head_3, let tail_4):
      let _x_5 = f(x_1, head_3)
      return tail_4.foldl(f, _x_5)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_foldl<B, A>(_ f: @escaping (B, A) -> B, _ x_1: B, _ x_2: List<A>) -> B {
  x_2.foldl(f, x_1)
}

/// List.flatten
public func List_flatten<A>(_ x_1: List<List<A>>) -> List<A> {
  switch x_1 {
  case .`nil`:
    return List<A>.`nil`
  case .cons(let head_3, let tail_4):
    let _x_5 = List_flatten(tail_4)
    return head_3.append(_x_5)
  default:
    fatalError("unreachable")
  }
}

/// Array.mkArray6
public func Array_mkArray6<A>(_ `a₁`: A, _ `a₂`: A, _ `a₃`: A, _ `a₄`: A, _ `a₅`: A, _ `a₆`: A) -> Array<A> {
  let _x_1: Nat = 6
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  let _x_3 = Array_push(_x_2, `a₁`)
  let _x_4 = Array_push(_x_3, `a₂`)
  let _x_5 = Array_push(_x_4, `a₃`)
  let _x_6 = Array_push(_x_5, `a₄`)
  let _x_7 = Array_push(_x_6, `a₅`)
  return Array_push(_x_7, `a₆`)
}

/// Array.mkArray4
public func Array_mkArray4<A>(_ `a₁`: A, _ `a₂`: A, _ `a₃`: A, _ `a₄`: A) -> Array<A> {
  let _x_1: Nat = 4
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  let _x_3 = Array_push(_x_2, `a₁`)
  let _x_4 = Array_push(_x_3, `a₂`)
  let _x_5 = Array_push(_x_4, `a₃`)
  return Array_push(_x_5, `a₄`)
}

/// Option.ctorIdx
public func Option_ctorIdx<A>(_ x: A?) -> Nat {
  if x != nil {
    return 1
  } else {
    return 0
  }
}

/// Bool.ctorIdx
public func Bool_ctorIdx(_ x: Bool) -> Nat {
  if x {
    return 1
  } else {
    return 0
  }
}

/// Array.getD
@inline(__always) public func Array_getD<A>(_ a: Array<A>, _ i: Nat, _ `v₀`: A) -> A {
  let _x_1 = Array_size(a)
  let _x_2 = i < _x_1
  if _x_2 {
    return Array_getInternal(a, i)
  } else {
    return `v₀`
  }
}

/// Decidable.decide
public extension Decidable {
  var decide: Bool {
    if Decidable_decide(self) {
      return true
    } else {
      return false
    }
  }
}

@inline(__always) public func Decidable_decide(_ h: Decidable) -> Bool {
  h.decide
}

/// List.instDecidableEqNil
public extension List {
  var instDecidableEqNil: Decidable {
    switch self {
    case .`nil`:
      return Decidable.isTrue
    case .cons:
      return Decidable.isFalse
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_instDecidableEqNil<A>(_ a: List<A>) -> Decidable {
  a.instDecidableEqNil
}

/// Bool.not
@inline(__always) public func Bool_not(_ x_1: Bool) -> Bool {
  if x_1 {
    return false
  } else {
    return true
  }
}

/// Array.mkArray3
public func Array_mkArray3<A>(_ `a₁`: A, _ `a₂`: A, _ `a₃`: A) -> Array<A> {
  let _x_1: Nat = 3
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  let _x_3 = Array_push(_x_2, `a₁`)
  let _x_4 = Array_push(_x_3, `a₂`)
  return Array_push(_x_4, `a₃`)
}

/// Array.appendCore.loop
public func Array_appendCore_loop<A>(_ bs: Array<A>, _ i: Nat, _ j: Nat, _ `as`: Array<A>) -> Array<A> {
  let _x_1 = Array_size(bs)
  let _x_2 = j < _x_1
  if _x_2 {
    if i == 0 {
      return `as`
    } else {
      let n_4: Nat = i - 1
      let _x_5: Nat = 1
      let _x_6 = j + _x_5
      let _x_7 = Array_getInternal(bs, j)
      let _x_8 = Array_push(`as`, _x_7)
      return Array_appendCore_loop(bs, n_4, _x_6, _x_8)
    }
  } else {
    return `as`
  }
}

/// namedPattern
public func namedPattern<A>(_ x: A, _ a: A) -> A {
  a
}

/// inferInstance
@inline(__always) public func inferInstance<A>(_ i: A) -> A {
  i
}

/// Except.ctorIdx
public extension Except {
  var ctorIdx: Nat {
    switch self {
    case .error:
      return 0
    case .ok:
      return 1
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func Except_ctorIdx<A, B>(_ x: Except<A, B>) -> Nat {
  x.ctorIdx
}

/// Nat.div.go
public func Nat_div_go(_ y: Nat, _ fuel: Nat, _ x: Nat) -> Nat {
  let _x_1 = Nat_decLe(y, x)
  if fuel == 0 {
    fatalError("unreachable")
  } else {
    let n_2: Nat = fuel - 1
    if Decidable_decide(_x_1) {
      let _x_5 = x - y
      let _x_6 = Nat_div_go(y, n_2, _x_5)
      let _x_7: Nat = 1
      return _x_6 + _x_7
    } else {
      return 0
    }
  }
}

/// instDecidableNot
@inline(__always) public func instDecidableNot(_ dp: Decidable) -> Decidable {
  if Decidable_decide(dp) {
    return Decidable.isFalse
  } else {
    return Decidable.isTrue
  }
}

/// List.set
public extension List {
  func set(_ x_2: Nat, _ x_3: A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_4, let tail_5):
      if x_2 == 0 {
        return List<A>.cons(x_3, tail_5)
      } else {
        let n_7: Nat = x_2 - 1
        let _x_8 = tail_5.set(n_7, x_3)
        return List<A>.cons(head_4, _x_8)
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_set<A>(_ x_1: List<A>, _ x_2: Nat, _ x_3: A) -> List<A> {
  x_1.set(x_2, x_3)
}

/// ReaderT.run
@inline(__always) public func ReaderT_run<A>(_ r: A) -> () {
}

/// Array.extract.loop
public func Array_extract_loop<A>(_ `as`: Array<A>, _ i: Nat, _ j: Nat, _ bs: Array<A>) -> Array<A> {
  let _x_1 = Array_size(`as`)
  let _x_2 = j < _x_1
  if _x_2 {
    if i == 0 {
      return bs
    } else {
      let n_4: Nat = i - 1
      let _x_5: Nat = 1
      let _x_6 = j + _x_5
      let _x_7 = Array_getInternal(`as`, j)
      let _x_8 = Array_push(bs, _x_7)
      return Array_extract_loop(`as`, n_4, _x_6, _x_8)
    }
  } else {
    return bs
  }
}

/// letFun
public func letFun<A>(_ v: A) -> () {
}

/// ReaderT.mk
@inline(__always) public func ReaderT_mk<A>(_ a_1: A) -> () {
}

/// List.concat
public extension List {
  func concat(_ x_2: A) -> List<A> {
    switch self {
    case .`nil`:
      return List<A>.cons(x_2, self)
    case .cons(let head_4, let tail_5):
      let _x_6 = tail_5.concat(x_2)
      return List<A>.cons(head_4, _x_6)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_concat<A>(_ x_1: List<A>, _ x_2: A) -> List<A> {
  x_1.concat(x_2)
}

/// Option.map
@inline(__always) public func Option_map<A, B>(_ f: @escaping (A) -> B, _ x_1: A?) -> B? {
  if let val_3 = x_1 {
    let _x_4 = f(val_3)
    return B?.some(_x_4)
  } else {
    return nil
  }
}

/// Bool.decEq
@inline(__always) public func Bool_decEq(_ a: Bool, _ b: Bool) -> Decidable {
  if a {
    if b {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    if b {
      return Decidable.isFalse
    } else {
      return Decidable.isTrue
    }
  }
}

/// inferInstanceAs
@inline(__always) public func inferInstanceAs<A>(_ i: A) -> A {
  i
}

/// List.instDecidableNilEq
public extension List {
  var instDecidableNilEq: Decidable {
    switch self {
    case .`nil`:
      return Decidable.isTrue
    case .cons:
      return Decidable.isFalse
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_instDecidableNilEq<A>(_ a: List<A>) -> Decidable {
  a.instDecidableNilEq
}

/// List.map
public extension List {
  func map<B>(_ f: @escaping (A) -> B) -> List<B> {
    switch self {
    case .`nil`:
      return List<B>.`nil`
    case .cons(let head_3, let tail_4):
      let _x_5 = f(head_3)
      let _x_6 = tail_4.map(f)
      return List<B>.cons(_x_5, _x_6)
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_map<A, B>(_ f: @escaping (A) -> B, _ x_1: List<A>) -> List<B> {
  x_1.map(f)
}

/// Nat.ctorIdx
public extension Nat {
  var ctorIdx: Nat {
    if self == 0 {
      return 0
    } else {
      let n: Nat = self - 1
      return 1
    }
  }
}

@inline(__always) public func Nat_ctorIdx(_ x: Nat) -> Nat {
  x.ctorIdx
}

/// Array.mkArray8
public func Array_mkArray8<A>(_ `a₁`: A, _ `a₂`: A, _ `a₃`: A, _ `a₄`: A, _ `a₅`: A, _ `a₆`: A, _ `a₇`: A, _ `a₈`: A) -> Array<A> {
  let _x_1: Nat = 8
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  let _x_3 = Array_push(_x_2, `a₁`)
  let _x_4 = Array_push(_x_3, `a₂`)
  let _x_5 = Array_push(_x_4, `a₃`)
  let _x_6 = Array_push(_x_5, `a₄`)
  let _x_7 = Array_push(_x_6, `a₅`)
  let _x_8 = Array_push(_x_7, `a₆`)
  let _x_9 = Array_push(_x_8, `a₇`)
  return Array_push(_x_9, `a₈`)
}

public let UInt32_size: Nat = {
  4294967296
}()

/// Array.mkArray5
public func Array_mkArray5<A>(_ `a₁`: A, _ `a₂`: A, _ `a₃`: A, _ `a₄`: A, _ `a₅`: A) -> Array<A> {
  let _x_1: Nat = 5
  let _x_2: Array<A> = Array_emptyWithCapacity(_x_1)
  let _x_3 = Array_push(_x_2, `a₁`)
  let _x_4 = Array_push(_x_3, `a₂`)
  let _x_5 = Array_push(_x_4, `a₃`)
  let _x_6 = Array_push(_x_5, `a₄`)
  return Array_push(_x_6, `a₅`)
}

/// List.toByteArray
public func List_toByteArray(_ bs: List<UInt8>) -> Array<UInt8> {
  let _x_1 = ByteArray_empty
  return List_toByteArray_loop(bs, _x_1)
}

/// instDecidableEqBool
@inline(__always) public func instDecidableEqBool(_ a: Bool, _ b: Bool) -> Decidable {
  if a {
    if b {
      return Decidable.isTrue
    } else {
      return Decidable.isFalse
    }
  } else {
    if b {
      return Decidable.isFalse
    } else {
      return Decidable.isTrue
    }
  }
}

/// Array.extract
public func Array_extract<A>(_ `as`: Array<A>, _ start: Nat, _ stop: Nat) -> Array<A> {
  func _jp_1(_ _y_2: Nat) -> Array<A> {
    let `sz'` = _y_2 - start
    let _x_3: Array<A> = Array_emptyWithCapacity(`sz'`)
    return Array_extract_loop(`as`, `sz'`, start, _x_3)
  }
  let _x_5 = Array_size(`as`)
  let _x_6 = stop <= _x_5
  if _x_6 {
    return _jp_1(stop    )
  } else {
    return _jp_1(_x_5    )
  }
}

/// List.hasDecEq
public extension List where A: Equatable {
  func hasDecEq(_ inst_1: @escaping (A, A) -> Decidable, _ x_3: List<A>) -> Decidable {
    switch self {
    case .`nil`:
      switch x_3 {
      case .`nil`:
        return Decidable.isTrue
      case .cons:
        return Decidable.isFalse
      default:
        fatalError("unreachable")
      }
    case .cons(let head_8, let tail_9):
      let _x_10: Decidable = Decidable.isFalse
      switch x_3 {
      case .`nil`:
        return _x_10
      case .cons(let head_11, let tail_12):
        let _x_13 = tail_9.hasDecEq(inst_1, tail_12)
        let _x_14 = inst_1(head_8, head_11)
        if Decidable_decide(_x_14) {
          if Decidable_decide(_x_13) {
            return Decidable.isTrue
          } else {
            return Decidable.isFalse
          }
        } else {
          return Decidable.isFalse
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

@inline(__always) public func List_hasDecEq<A: Equatable>(_ inst_1: @escaping (A, A) -> Decidable, _ x_2: List<A>, _ x_3: List<A>) -> Decidable {
  x_2.hasDecEq(inst_1, x_3)
}

/// ReaderT.adapt
@inline(__always) public func ReaderT_adapt<A, B>(_ f: @escaping (B) -> A, _ r: B) -> () {
  let _x_1 = f(r)
  return
}

/// id
@inline(__always) public func id<A>(_ a: A) -> A {
  a
}

/// List.flatMap
public extension List {
  func flatMap<B>(_ b: @escaping (A) -> List<B>) -> List<B> {
    let _x_1 = self.map(b)
    return List_flatten(_x_1)
  }
}

@inline(__always) public func List_flatMap<A, B>(_ b: @escaping (A) -> List<B>, _ `as`: List<A>) -> List<B> {
  `as`.flatMap(b)
}

