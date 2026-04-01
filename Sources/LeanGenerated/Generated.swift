// Swift v3 compiler output
// Module: src.Init
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

/// And
public struct And<A, B>: @unchecked Sendable {
  let left: A
  let right: B

  public init(_ left: A, _ right: B) {
    self.left = left
    self.right = right
  }
}

/// Iff
public struct Iff<A, B>: @unchecked Sendable {
  let mp: (A) -> B
  let mpr: (B) -> A

  public init(_ mp: @escaping (A) -> B, _ mpr: @escaping (B) -> A) {
    self.mp = mp
    self.mpr = mpr
  }
}

/// Functor
public struct Functor: @unchecked Sendable {
  let map: ((Any) -> Any) -> ()
  let mapConst: (Any) -> ()

  public init(_ map: @escaping ((Any) -> Any) -> (), _ mapConst: @escaping (Any) -> ()) {
    self.map = map
    self.mapConst = mapConst
  }
}

/// Bind
public struct Bind: @unchecked Sendable {
  let bind: ((Any) -> ()) -> ()

  public init(_ bind: @escaping ((Any) -> ()) -> ()) {
    self.bind = bind
  }
}

/// MonadAttach
public struct MonadAttach: @unchecked Sendable {
  let CanReturn: (Any) -> ()
  let attach: ()

  public init(_ CanReturn: @escaping (Any) -> (), _ attach: ()) {
    self.CanReturn = CanReturn
    self.attach = attach
  }
}

/// ForIn
public struct ForIn<A>: @unchecked Sendable {
  let forIn: (A, Any, (Any) -> ()) -> ()

  public init(_ forIn: @escaping (A, Any, (Any) -> ()) -> ()) {
    self.forIn = forIn
  }
}

/// Zero
public struct Zero<A>: @unchecked Sendable {
  let zero: A

  public init(_ zero: A) {
    self.zero = zero
  }
}

/// One
public struct One<A>: @unchecked Sendable {
  let one: A

  public init(_ one: A) {
    self.one = one
  }
}

/// Prod.Lex
public enum Prod_Lex<A, B>: @unchecked Sendable {
  case left(A, B, A, B)
  case right(A, B, B)
}

/// ForM
public struct ForM<A>: @unchecked Sendable {
  let forM: (A, ()) -> ()

  public init(_ forM: @escaping (A, ()) -> ()) {
    self.forM = forM
  }
}

/// Sigma
public struct Sigma<A>: @unchecked Sendable {
  let fst: A

  public init(_ fst: A) {
    self.fst = fst
  }
}

/// ByteArray.utf8DecodeChar?.FirstByte
public enum `ByteArray_utf8DecodeChar?_FirstByte`: @unchecked Sendable {
  case invalid
  case done
  case oneMore
  case twoMore
  case threeMore
}

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

/// IO.CancelToken
public struct IO_CancelToken: @unchecked Sendable {
  let ref: IO_Ref<Bool>

  public init(_ ref: IO_Ref<Bool>) {
    self.ref = ref
  }
}

/// IO.TaskState
public enum IO_TaskState: @unchecked Sendable {
  case waiting
  case running
  case finished
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

public let UInt64_size: Nat = {
  18446744073709551616
}()

public let Unit_unit: () = {
  ()
}()

public let UInt32_size: Nat = {
  4294967296
}()

/// EStateM.dummyRestore
@inline(__always) public func EStateM_dummyRestore<A>(_ s: A, _ x_1: ()) -> A {
  s
}

/// Bool.not
@inline(__always) public func Bool_not(_ x_1: Bool) -> Bool {
  if x_1 {
    false
  } else {
    true
  }
}

public let UInt8_size: Nat = {
  256
}()

public let UInt16_size: Nat = {
  65536
}()

/// List.map
public extension List {
  func map<B>(_ f: @escaping (A) -> B) -> List<B> {
    switch self {
    case .`nil`:
      return List<B>.`nil`
    case .cons(let head_3, let tail_4):
      let _x_5 = f(head_3)
      let _x_6: List<B> = tail_4.map(f)
      return List<B>.cons(_x_5, _x_6)
    default:
      fatalError("unreachable")
    }
  }
}

/// inferInstanceAs
@inline(__always) public func inferInstanceAs<A>(_ i: A) -> A {
  i
}

/// ReaderT.mk
@inline(__always) public func ReaderT_mk<A>(_ m: (), _ x: @escaping (A) -> (), _ a_1: A) -> () {
}

/// Function.comp
@inline(__always) public func Function_comp<A, B, C>(_ f: @escaping (B) -> C, _ g: @escaping (A) -> B, _ x: A) -> C {
  let _x_1 = g(x)
  return f(_x_1)
}

/// inferInstance
@inline(__always) public func inferInstance<A>(_ i: A) -> A {
  i
}

/// namedPattern
public func namedPattern<A>(_ x: A, _ a: A) -> A {
  a
}

/// id
@inline(__always) public func id<A>(_ a: A) -> A {
  a
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

/// ReaderT.adapt
@inline(__always) public func ReaderT_adapt<A, B>(_ m: (), _ f: @escaping (B) -> A, _ x: @escaping (A) -> (), _ r: B) -> () {
  let _x_1 = f(r)
  return
}

/// EStateM.dummySave
@inline(__always) public func EStateM_dummySave<A>(_ x_1: A) -> () {
  ()
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

public let instInhabitedBool_default: Bool = {
  false
}()

/// ReaderT.run
@inline(__always) public func ReaderT_run<A>(_ m: (), _ x: @escaping (A) -> (), _ r: A) -> () {
}

/// Eq.ndrec_symm
@inline(__always) public func Eq_ndrec_symm<A>(_ a: A, _ motive: @escaping (A) -> (), _ m: A) -> () {
}

/// Function.const
@inline(__always) public func Function_const<A, B>(_ a: A, _ x_1: B) -> A {
  a
}

/// letFun
public func letFun<A>(_ `β`: @escaping (A) -> (), _ v: A, _ f: @escaping (A) -> ()) -> () {
}

/// default.sizeOf
public func default_sizeOf<A>(_ x_1: A) -> Nat {
  0
}

/// instBEqOption.beq
public func instBEqOption_beq<A: Equatable>(_ x_3: A?, _ x_4: A?) -> Bool {
  if let val_8 = x_3 {
    if let val_10 = x_4 {
      return val_8 == val_10
    } else {
      return false
    }
  } else {
    if x_4 != nil {
      return false
    } else {
      return true
    }
  }
}

/// bne
@inline(__always) public func bne<A: Equatable>(_ a: A, _ b: A) -> Bool {
  let _x_3: Bool = a == b
  if _x_3 {
    return false
  } else {
    return true
  }
}

public let Task_Priority_max: Nat = {
  8
}()

/// flip
@inline(__always) public func flip<A, B, C>(_ f: @escaping (A, B) -> C, _ b: B, _ a: A) -> C {
  f(a, b)
}

/// inline
public func inline<A>(_ a: A) -> A {
  a
}

public let Task_Priority_default: Nat = {
  0
}()

public let Task_Priority_dedicated: Nat = {
  9
}()

/// eagerReduce
public func eagerReduce<A>(_ a: A) -> A {
  a
}

/// binderNameHint
public func binderNameHint<A, B, C>(_ v: A, _ binder: B, _ e: C) -> C {
  e
}

/// Id.run
@inline(__always) public func Id_run<A>(_ x: A) -> A {
  x
}

/// Except.pure
@inline(__always) public func Except_pure<A, B>(_ a: B) -> Except<A, B> {
  Except<A, B>.ok(a)
}

/// Except.bind
public extension Except {
  func bind<C>(_ f: @escaping (B) -> Except<A, C>) -> Except<A, C> {
    switch self {
    case .error(let a_1):
      Except<A, C>.error(a_1)
    case .ok(let a_3):
      f(a_3)
    default:
      fatalError("unreachable")
    }
  }
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

/// ExceptT.run
@inline(__always) public func ExceptT_run(_ m: ()) -> () {
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

/// Except.tryCatch
public extension Except {
  func tryCatch(_ handle: @escaping (A) -> Except<A, B>) -> Except<A, B> {
    switch self {
    case .error(let a_1):
      handle(a_1)
    case .ok:
      self
    default:
      fatalError("unreachable")
    }
  }
}

/// Option.instBEq.beq
public func Option_instBEq_beq<A: Equatable>(_ x_3: A?, _ x_4: A?) -> Bool {
  if let val_8 = x_3 {
    if let val_10 = x_4 {
      return val_8 == val_10
    } else {
      return false
    }
  } else {
    if x_4 != nil {
      return false
    } else {
      return true
    }
  }
}

/// Option.join
@inline(__always) public func Option_join<A>(_ x: A??) -> A? {
  if let val_2 = x {
    val_2
  } else {
    nil
  }
}

/// Option.all
@inline(__always) public func Option_all<A>(_ p: @escaping (A) -> Bool, _ x_1: A?) -> Bool {
  if let val_3 = x_1 {
    p(val_3)
  } else {
    true
  }
}

/// Option.filter
@inline(__always) public func Option_filter<A>(_ p: @escaping (A) -> Bool, _ x_1: A?) -> A? {
  if let val_2 = x_1 {
    let _x_3: Bool = p(val_2)
    if _x_3 {
      return x_1
    } else {
      return nil
    }
  } else {
    return x_1
  }
}

/// Option.get
@inline(__always) public func Option_get<A>(_ x_1: A?) -> A {
  if let val_3 = x_1 {
    return val_3
  } else {
    fatalError("unreachable")
  }
}

/// Option.tryCatch
@inline(__always) public func Option_tryCatch<A>(_ x: A?, _ handle: @escaping (()) -> A?) -> A? {
  if x != nil {
    return x
  } else {
    let _x_1: () = ()
    return handle(_x_1)
  }
}

/// Option.isSome
@inline(__always) public func Option_isSome<A>(_ x_1: A?) -> Bool {
  if x_1 != nil {
    true
  } else {
    false
  }
}

/// OptionT.mk
@inline(__always) public func OptionT_mk(_ m: ()) -> () {
}

/// OptionT.run
@inline(__always) public func OptionT_run(_ m: ()) -> () {
}

/// Break.runK
@inline(__always) public func Break_runK<A, B>(_ x: A?, _ breakK: @escaping (()) -> B, _ successK: @escaping (A) -> B) -> B {
  if let val_3 = x {
    return successK(val_3)
  } else {
    let _x_1: () = ()
    return breakK(_x_1)
  }
}

/// EarlyReturn.runK
@inline(__always) public func EarlyReturn_runK<A, B, C>(_ x: Except<A, B>, _ ret: @escaping (A) -> C, _ pure: @escaping (B) -> C) -> C {
  switch x {
  case .error(let a_1):
    ret(a_1)
  case .ok(let a_3):
    pure(a_3)
  default:
    fatalError("unreachable")
  }
}

/// Continue.runK
@inline(__always) public func Continue_runK<A, B>(_ x: A?, _ continueK: @escaping (()) -> B, _ successK: @escaping (A) -> B) -> B {
  if let a = x {
    return successK(a)
  } else {
    let _x_1: () = ()
    return continueK(_x_1)
  }
}

/// _private.Init.Data.Nat.Basic.0.Nat.repeatTR.loop
public func Nat_repeatTR_loop<A>(_ f: @escaping (A) -> A, _ x_1: Nat, _ x_2: A) -> A {
  if x_1 == 0 {
    return x_2
  } else {
    let n_3: Nat = x_1 - 1
    let _x_4 = f(x_2)
    return Nat_repeatTR_loop(f, n_3, _x_4)
  }
}

/// Nat.repeat
public extension Nat {
  func `repeat`<A>(_ f: @escaping (A) -> A, _ x_2: A) -> A {
    if self == 0 {
      return x_2
    } else {
      let n_3: Nat = self - 1
      let _x_4 = n_3.`repeat`(f, x_2)
      return f(_x_4)
    }
  }
}

/// List.head
public extension List {
  var head: A {
    switch self {
    case .`nil`:
      fatalError("unreachable")
    case .cons(let head_3, _):
      return head_3
    default:
      fatalError("unreachable")
    }
  }
}

/// List.countP
public extension List {
  func countP(_ p: @escaping (A) -> Bool) -> Nat {
    let _x_1: Nat = 0
    return List_countP_go(p, self, _x_1)
  }
}

/// List.zipWith
public extension List {
  func zipWith<B, C>(_ f: @escaping (A, B) -> C, _ x_2: List<B>) -> List<C> {
    switch self {
    case .`nil`:
      return List<C>.`nil`
    case .cons(let head_4, let tail_5):
      switch x_2 {
      case .`nil`:
        return List<C>.`nil`
      case .cons(let head_7, let tail_8):
        let _x_9 = f(head_4, head_7)
        let _x_10: List<C> = tail_5.zipWith(f, tail_8)
        return List<C>.cons(_x_9, _x_10)
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.mapTR.loop
public func List_mapTR_loop<A, B>(_ f: @escaping (A) -> B, _ a_1: List<A>, _ a_2: List<B>) -> List<B> {
  switch a_1 {
  case .`nil`:
    return List_reverse(a_2)
  case .cons(let head_4, let tail_5):
    let _x_6 = f(head_4)
    let _x_7: List<B> = .cons(_x_6, a_2)
    return List_mapTR_loop(f, tail_5, _x_7)
  default:
    fatalError("unreachable")
  }
}

/// List.elem
public extension List where A: Equatable {
  func elem(_ a: A) -> Bool {
    switch self {
    case .`nil`:
      return false
    case .cons(let head_4, let tail_5):
      let _x_7: Bool = a == head_4
      if _x_7 {
        return _x_7
      } else {
        return tail_5.elem(a)
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.filterTR.loop
public func List_filterTR_loop<A>(_ p: @escaping (A) -> Bool, _ a_1: List<A>, _ a_2: List<A>) -> List<A> {
  switch a_1 {
  case .`nil`:
    return List_reverse(a_2)
  case .cons(let head_4, let tail_5):
    let _x_6: Bool = p(head_4)
    if _x_6 {
      let _x_8: List<A> = .cons(head_4, a_2)
      return List_filterTR_loop(p, tail_5, _x_8)
    } else {
      return List_filterTR_loop(p, tail_5, a_2)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.isEqv
public extension List {
  func isEqv(_ x_2: List<A>, _ x_3: @escaping (A, A) -> Bool) -> Bool {
    switch self {
    case .`nil`:
      switch x_2 {
      case .`nil`:
        return true
      case .cons:
        return false
      default:
        fatalError("unreachable")
      }
    case .cons(let head_8, let tail_9):
      switch x_2 {
      case .`nil`:
        return false
      case .cons(let head_11, let tail_12):
        let _x_13: Bool = x_3(head_8, head_11)
        if _x_13 {
          return tail_9.isEqv(tail_12, x_3)
        } else {
          return _x_13
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.contains
public extension List where A: Equatable {
  func contains(_ a: A) -> Bool {
    self.elem(a)
  }
}

/// List.isInfixOf_internal
public extension List where A: Equatable {
  func isInfixOf_internal(_ `l₂`: List<A>) -> Bool {
    let _x_2: Bool = self.isPrefixOf(`l₂`)
    if _x_2 {
      return _x_2
    } else {
      switch `l₂` {
      case .`nil`:
        return _x_2
      case .cons(_, let tail_4):
        return self.isInfixOf_internal(tail_4)
      default:
        fatalError("unreachable")
      }
    }
  }
}

/// List.countP.go
public func List_countP_go<A>(_ p: @escaping (A) -> Bool, _ a_1: List<A>, _ a_2: Nat) -> Nat {
  switch a_1 {
  case .`nil`:
    return a_2
  case .cons(let head_3, let tail_4):
    let _x_5: Bool = p(head_3)
    if _x_5 {
      let _x_7: Nat = 1
      let _x_8: Nat = a_2 + _x_7
      return List_countP_go(p, tail_4, _x_8)
    } else {
      return List_countP_go(p, tail_4, a_2)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.replace
public extension List where A: Equatable {
  func replace(_ x_3: A, _ x_4: A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_5, let tail_6):
      let _x_8: Bool = x_3 == head_5
      if _x_8 {
        return List<A>.cons(x_4, tail_6)
      } else {
        let _x_9: List<A> = tail_6.replace(x_3, x_4)
        return List<A>.cons(head_5, _x_9)
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.isSuffixOf?
public extension List where A: Equatable {
  func `isSuffixOf?`(_ `l₂`: List<A>) -> List<A>? {
    let _x_2: List<A> = List_reverse(self)
    let _x_3: List<A> = List_reverse(`l₂`)
    let _x_4: List<A>? = _x_2.`isPrefixOf?`(_x_3)
    if let val_5 = _x_4 {
      let _x_6: List<A> = List_reverse(val_5)
      return List<A>?.some(_x_6)
    } else {
      return _x_4
    }
  }
}

/// List.tail
public extension List {
  var tail: List<A> {
    switch self {
    case .`nil`:
      self
    case .cons(_, let tail_3):
      tail_3
    default:
      fatalError("unreachable")
    }
  }
}

/// List.splitBy
public extension List {
  func splitBy(_ R: @escaping (A, A) -> Bool) -> List<List<A>> {
    switch self {
    case .`nil`:
      return List<List<A>>.`nil`
    case .cons(let head_3, let tail_4):
      let _x_5: List<A> = .`nil`
      let _x_6: List<List<A>> = .`nil`
      return List_splitBy_loop(R, tail_4, head_3, _x_5, _x_6)
    default:
      fatalError("unreachable")
    }
  }
}

/// List.isSublist
public extension List where A: Equatable {
  func isSublist(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      return true
    case .cons(let head_5, let tail_6):
      switch x_3 {
      case .`nil`:
        return false
      case .cons(let head_8, let tail_9):
        let _x_11: Bool = head_5 == head_8
        if _x_11 {
          return tail_6.isSublist(tail_9)
        } else {
          return self.isSublist(tail_9)
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.isPrefixOf
public extension List where A: Equatable {
  func isPrefixOf(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      return true
    case .cons(let head_5, let tail_6):
      switch x_3 {
      case .`nil`:
        return false
      case .cons(let head_8, let tail_9):
        let _x_11: Bool = head_5 == head_8
        if _x_11 {
          return tail_6.isPrefixOf(tail_9)
        } else {
          return _x_11
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.lex
public extension List where A: Equatable {
  func lex(_ `l₂`: List<A>, _ lt: @escaping (A, A) -> Bool) -> Bool {
    switch self {
    case .`nil`:
      switch `l₂` {
      case .`nil`:
        return false
      case .cons:
        return true
      default:
        fatalError("unreachable")
      }
    case .cons(let head_6, let tail_7):
      switch `l₂` {
      case .`nil`:
        return false
      case .cons(let head_9, let tail_10):
        let _x_11: Bool = lt(head_6, head_9)
        if _x_11 {
          return _x_11
        } else {
          let _x_13: Bool = head_6 == head_9
          if _x_13 {
            return tail_7.lex(tail_10, lt)
          } else {
            return _x_13
          }
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.headD
public extension List {
  func headD(_ x_2: A) -> A {
    switch self {
    case .`nil`:
      x_2
    case .cons(let head_3, _):
      head_3
    default:
      fatalError("unreachable")
    }
  }
}

/// List.isPerm
public extension List where A: Equatable {
  func isPerm(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      return List_isEmpty(x_3)
    case .cons(let head_5, let tail_6):
      let _x_7: Bool = x_3.elem(head_5)
      if _x_7 {
        let _x_8 = x_3.erase(head_5)
        return tail_6.isPerm(_x_8)
      } else {
        return _x_7
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.singleton
@inline(__always) public func List_singleton<A>(_ a: A) -> List<A> {
  let _x_1: List<A> = .`nil`
  return List<A>.cons(a, _x_1)
}

/// List.erase
public extension List where A: Equatable {
  func erase(_ x_3: A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_4, let tail_5):
      let _x_7: Bool = head_4 == x_3
      if _x_7 {
        return tail_5
      } else {
        let _x_8: List<A> = tail_5.erase(x_3)
        return List<A>.cons(head_4, _x_8)
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.splitBy.loop
public func List_splitBy_loop<A>(_ R: @escaping (A, A) -> Bool, _ a_1: List<A>, _ a_2: A, _ a_3: List<A>, _ a_4: List<List<A>>) -> List<List<A>> {
  switch a_1 {
  case .`nil`:
    let _x_5: List<A> = .cons(a_2, a_3)
    let _x_6: List<A> = List_reverse(_x_5)
    let _x_7: List<List<A>> = .cons(_x_6, a_4)
    return List_reverse(_x_7)
  case .cons(let head_9, let tail_10):
    let _x_11: Bool = R(a_2, head_9)
    if _x_11 {
      let _x_17: List<A> = .cons(a_2, a_3)
      return List_splitBy_loop(R, tail_10, head_9, _x_17, a_4)
    } else {
      let _x_12: List<A> = .`nil`
      let _x_13: List<A> = .cons(a_2, a_3)
      let _x_14: List<A> = List_reverse(_x_13)
      let _x_15: List<List<A>> = .cons(_x_14, a_4)
      return List_splitBy_loop(R, tail_10, head_9, _x_12, _x_15)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.extract
public extension List {
  func extract(_ start: Nat, _ stop: Nat) -> List<A> {
    let _x_1: Nat = stop - start
    let _x_2: List<A> = List_drop(start, self)
    return List_take(_x_1, _x_2)
  }
}

/// List.isSuffixOf
public extension List where A: Equatable {
  func isSuffixOf(_ `l₂`: List<A>) -> Bool {
    let _x_2 = List_reverse(self)
    let _x_3 = List_reverse(`l₂`)
    return _x_2.isPrefixOf(_x_3)
  }
}

/// List.findIdx
public extension List {
  func findIdx(_ p: @escaping (A) -> Bool) -> Nat {
    let _x_1: Nat = 0
    return List_findIdx_go(p, self, _x_1)
  }
}

/// List.filterTR
public extension List {
  func filterTR(_ p: @escaping (A) -> Bool) -> List<A> {
    let _x_1: List<A> = .`nil`
    return List_filterTR_loop(p, self, _x_1)
  }
}

/// List.leftpadTR
public extension List {
  func leftpadTR(_ n: Nat, _ a: A) -> List<A> {
    let _x_1: Nat = List_lengthTR(self)
    let _x_2: Nat = n - _x_1
    return List_replicateTR_loop(a, _x_2, self)
  }
}

/// List.beq
public extension List where A: Equatable {
  func beq(_ x_3: List<A>) -> Bool {
    switch self {
    case .`nil`:
      switch x_3 {
      case .`nil`:
        return true
      case .cons:
        return false
      default:
        fatalError("unreachable")
      }
    case .cons(let head_8, let tail_9):
      switch x_3 {
      case .`nil`:
        return false
      case .cons(let head_11, let tail_12):
        let _x_14: Bool = head_8 == head_11
        if _x_14 {
          return tail_9.beq(tail_12)
        } else {
          return _x_14
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.modifyHead
public extension List {
  func modifyHead(_ f: @escaping (A) -> A) -> List<A> {
    switch self {
    case .`nil`:
      return self
    case .cons(let head_2, let tail_3):
      let _x_4 = f(head_2)
      return List<A>.cons(_x_4, tail_3)
    default:
      fatalError("unreachable")
    }
  }
}

/// List.tailD
public extension List {
  func tailD(_ fallback: List<A>) -> List<A> {
    switch self {
    case .`nil`:
      fallback
    case .cons(_, let tail_2):
      tail_2
    default:
      fatalError("unreachable")
    }
  }
}

/// List.mapTR
public extension List {
  func mapTR<B>(_ f: @escaping (A) -> B) -> List<B> {
    let _x_1: List<B> = .`nil`
    return List_mapTR_loop(f, self, _x_1)
  }
}

/// List.findIdx.go
public func List_findIdx_go<A>(_ p: @escaping (A) -> Bool, _ a_1: List<A>, _ a_2: Nat) -> Nat {
  switch a_1 {
  case .`nil`:
    return a_2
  case .cons(let head_3, let tail_4):
    let _x_5: Bool = p(head_3)
    if _x_5 {
      return a_2
    } else {
      let _x_6: Nat = 1
      let _x_7: Nat = a_2 + _x_6
      return List_findIdx_go(p, tail_4, _x_7)
    }
  default:
    fatalError("unreachable")
  }
}

/// List.isPrefixOf?
public extension List where A: Equatable {
  func `isPrefixOf?`(_ x_3: List<A>) -> List<A>? {
    switch self {
    case .`nil`:
      return List<A>?.some(x_3)
    case .cons(let head_5, let tail_6):
      switch x_3 {
      case .`nil`:
        return nil
      case .cons(let head_8, let tail_9):
        let _x_11: Bool = head_5 == head_8
        if _x_11 {
          return tail_6.`isPrefixOf?`(tail_9)
        } else {
          return nil
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// List.foldr
public extension List {
  func foldr<B>(_ f: @escaping (A, B) -> B, _ `init`: B) -> B {
    switch self {
    case .`nil`:
      return `init`
    case .cons(let head_2, let tail_3):
      let _x_4 = tail_3.foldr(f, `init`)
      return f(head_2, _x_4)
    default:
      fatalError("unreachable")
    }
  }
}

/// List.insert
public extension List where A: Equatable {
  func insert(_ a: A) -> List<A> {
    let _x_2: Bool = self.elem(a)
    if _x_2 {
      return self
    } else {
      return List<A>.cons(a, self)
    }
  }
}

/// wfParam
public func wfParam<A>(_ a: A) -> A {
  a
}

/// withPtrAddrUnsafe
@inline(__always) public func withPtrAddrUnsafe<A, B>(_ a: A, _ k: @escaping (UInt) -> B) -> B {
  let _x_1: UInt = ptrAddrUnsafe(a)
  return k(_x_1)
}

/// Array.drop
@inline(__always) public func Array_drop<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  let _x_1: Nat = Array_size(xs)
  return Array_extract(xs, i, _x_1)
}

/// Array.back
@inline(__always) public func Array_back<A>(_ xs: Array<A>) -> A {
  let _x_1: Nat = Array_size(xs)
  let _x_2: Nat = 1
  let _x_3: Nat = _x_1 - _x_2
  return Array_getInternal(xs, _x_3)
}

/// Array.take
@inline(__always) public func Array_take<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  let _x_1: Nat = 0
  return Array_extract(xs, _x_1, i)
}

/// Array.singleton
@inline(__always) public func Array_singleton<A>(_ v: A) -> Array<A> {
  let _x_1: Nat = 1
  let _x_2: Array<A> = Array_mkEmpty(_x_1)
  return Array_push(_x_2, v)
}

/// Array.findIdx?
@inline(__always) public func `Array_findIdx?`<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Nat? {
  let _x_1: Nat = 0
  return `Array_findIdx?_loop`(p, `as`, _x_1)
}

/// Array.isEqvAux
public func Array_isEqvAux<A>(_ xs: Array<A>, _ ys: Array<A>, _ p: @escaping (A, A) -> Bool, _ x_1: Nat) -> Bool {
  if x_1 == 0 {
    return true
  } else {
    let n_4: Nat = x_1 - 1
    let _x_5 = Array_getInternal(xs, n_4)
    let _x_6 = Array_getInternal(ys, n_4)
    let _x_7: Bool = p(_x_5, _x_6)
    if _x_7 {
      return Array_isEqvAux(xs, ys, p, n_4)
    } else {
      return _x_7
    }
  }
}

/// _private.Init.Data.Array.Basic.0.Array.allDiffAuxAux
public func Array_allDiffAuxAux<A: Equatable>(_ `as`: Array<A>, _ a: A, _ x_2: Nat) -> Bool {
  if x_2 == 0 {
    return true
  } else {
    let n_5: Nat = x_2 - 1
    let _x_6 = Array_getInternal(`as`, n_5)
    let _x_8: Bool = a == _x_6
    if _x_8 {
      return false
    } else {
      return Array_allDiffAuxAux(`as`, a, n_5)
    }
  }
}

/// Array.findIdx
@inline(__always) public func Array_findIdx<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Nat {
  let _x_1: Nat = 0
  let _x_2: Nat? = `Array_findIdx?_loop`(p, `as`, _x_1)
  if let val_4 = _x_2 {
    return val_4
  } else {
    return Array_size(`as`)
  }
}

/// ExceptCpsT.runK
@inline(__always) public func ExceptCpsT_runK<B, C>(_ m: (), _ x: @escaping ((C) -> (), (B) -> ()) -> (), _ s: B, _ ok: @escaping (C) -> (), _ error: @escaping (B) -> ()) -> () {
}

/// StateCpsT.runK
@inline(__always) public func StateCpsT_runK<A, B>(_ m: (), _ x: @escaping (B, (A, B) -> ()) -> (), _ s: B, _ k: @escaping (A, B) -> ()) -> () {
}

public let Nat_Linear_hugeFuel: Nat = {
  1000000
}()

public let Nat_Linear_fixedVar: Nat = {
  100000000
}()

/// compareLex
@inline(__always) public func compareLex<A, B>(_ `cmp₁`: @escaping (A, B) -> Ordering, _ `cmp₂`: @escaping (A, B) -> Ordering, _ a: A, _ b: B) -> Ordering {
  let _x_1: Ordering = `cmp₁`(a, b)
  switch _x_1 {
  case .eq:
    return `cmp₂`(a, b)
  default:
    return _x_1
  }
}

/// Ordering.isLT
public extension Ordering {
  var isLT: Bool {
    switch self {
    case .lt:
      true
    default:
      false
    }
  }
}

/// Ordering.isNe
public extension Ordering {
  var isNe: Bool {
    switch self {
    case .eq:
      false
    default:
      true
    }
  }
}

/// Ordering.isEq
public extension Ordering {
  var isEq: Bool {
    switch self {
    case .eq:
      true
    default:
      false
    }
  }
}

/// Ordering.swap
public extension Ordering {
  var swap: Ordering {
    switch self {
    case .lt:
      Ordering.gt
    case .eq:
      self
    case .gt:
      Ordering.lt
    default:
      fatalError("unreachable")
    }
  }
}

/// Ordering.isGT
public extension Ordering {
  var isGT: Bool {
    switch self {
    case .gt:
      true
    default:
      false
    }
  }
}

/// Ordering.isGE
public extension Ordering {
  var isGE: Bool {
    switch self {
    case .lt:
      false
    default:
      true
    }
  }
}

/// List.compareLex
public extension List {
  func compareLex(_ cmp: @escaping (A, A) -> Ordering, _ x_2: List<A>) -> Ordering {
    switch self {
    case .`nil`:
      switch x_2 {
      case .`nil`:
        return Ordering.eq
      default:
        return Ordering.lt
      }
    case .cons(let head_5, let tail_6):
      switch x_2 {
      case .`nil`:
        return Ordering.gt
      case .cons(let head_8, let tail_9):
        let _x_10: Ordering = cmp(head_5, head_8)
        switch _x_10 {
        case .eq:
          return tail_6.compareLex(cmp, tail_9)
        default:
          return _x_10
        }
      default:
        fatalError("unreachable")
      }
    default:
      fatalError("unreachable")
    }
  }
}

/// Ordering.isLE
public extension Ordering {
  var isLE: Bool {
    switch self {
    case .gt:
      false
    default:
      true
    }
  }
}

/// Nat.all
public extension Nat {
  func all(_ x_2: @escaping (Nat) -> Bool) -> Bool {
    func _f_3(_ i: Nat) -> Bool {
      x_2(i)
    }
    if self == 0 {
      return true
    } else {
      let n_6: Nat = self - 1
      let _x_7: Bool = n_6.all(_f_3)
      if _x_7 {
        return x_2(n_6)
      } else {
        return _x_7
      }
    }
  }
}

/// _private.Init.Data.Nat.Fold.0.Nat.anyTR.loop
public func Nat_anyTR_loop(_ n: Nat, _ f: @escaping (Nat) -> Bool, _ i: Nat) -> Bool {
  if i == 0 {
    return false
  } else {
    let n_3: Nat = i - 1
    let _x_4: Nat = n - i
    let _x_5: Bool = f(_x_4)
    if _x_5 {
      return _x_5
    } else {
      return Nat_anyTR_loop(n, f, n_3)
    }
  }
}

/// _private.Init.Data.Nat.Fold.0.Nat.foldTR.loop
public func Nat_foldTR_loop<A>(_ n: Nat, _ f: @escaping (Nat, A) -> A, _ j: Nat, _ a_2: A) -> A {
  if j == 0 {
    return a_2
  } else {
    let n_3: Nat = j - 1
    let _x_4: Nat = n - j
    let _x_5 = f(_x_4, a_2)
    return Nat_foldTR_loop(n, f, n_3, _x_5)
  }
}

/// Nat.any
public extension Nat {
  func any(_ x_2: @escaping (Nat) -> Bool) -> Bool {
    func _f_3(_ i: Nat) -> Bool {
      x_2(i)
    }
    if self == 0 {
      return false
    } else {
      let n_6: Nat = self - 1
      let _x_7: Bool = n_6.any(_f_3)
      if _x_7 {
        return _x_7
      } else {
        return x_2(n_6)
      }
    }
  }
}

/// _private.Init.Data.Nat.Fold.0.Nat.allTR.loop
public func Nat_allTR_loop(_ n: Nat, _ f: @escaping (Nat) -> Bool, _ i: Nat) -> Bool {
  if i == 0 {
    return true
  } else {
    let n_3: Nat = i - 1
    let _x_4: Nat = n - i
    let _x_5: Bool = f(_x_4)
    if _x_5 {
      return Nat_allTR_loop(n, f, n_3)
    } else {
      return _x_5
    }
  }
}

/// Option.pfilter
@inline(__always) public func Option_pfilter<A>(_ o: A?, _ p: @escaping (A) -> Bool) -> A? {
  if let val_1 = o {
    let _x_2: Bool = p(val_1)
    if _x_2 {
      return o
    } else {
      return nil
    }
  } else {
    return o
  }
}

/// Option.pelim
@inline(__always) public func Option_pelim<A, B>(_ o: A?, _ b: B, _ f: @escaping (A) -> B) -> B {
  if let val_1 = o {
    f(val_1)
  } else {
    b
  }
}

/// Option.pbind
@inline(__always) public func Option_pbind<A, B>(_ x_1: A?, _ x_2: @escaping (A) -> B?) -> B? {
  if let val_4 = x_1 {
    x_2(val_4)
  } else {
    nil
  }
}

/// Option.pmap
@inline(__always) public func Option_pmap<A, B>(_ p: @escaping (A) -> (), _ f: @escaping (A) -> B, _ x_1: A?) -> B? {
  if let val_4 = x_1 {
    let _x_5 = f(val_4)
    return B?.some(_x_5)
  } else {
    return nil
  }
}

/// ByteArray.Iterator.nextn
public extension ByteArray_Iterator {
  func nextn(_ a_2: Nat) -> ByteArray_Iterator {
    let array_3: Array<UInt8> = self.array
    let idx_4: Nat = self.idx
    let _x_5: Nat = idx_4 + a_2
    return ByteArray_Iterator(array_3, _x_5)
  }
}

/// ByteArray.Iterator.next'
public extension ByteArray_Iterator {
  var `next'`: ByteArray_Iterator {
    let array_1: Array<UInt8> = self.array
    let idx_2: Nat = self.idx
    let _x_3: Nat = 1
    let _x_4: Nat = idx_2 + _x_3
    return ByteArray_Iterator(array_1, _x_4)
  }
}

/// ByteArray.Iterator.pos
public extension ByteArray_Iterator {
  var pos: Nat {
    self.idx
  }
}

/// ByteArray.Iterator.curr'
public extension ByteArray_Iterator {
  var `curr'`: UInt8 {
    let array_1: Array<UInt8> = self.array
    let idx_2: Nat = self.idx
    return ByteArray_get(array_1, idx_2)
  }
}

/// ByteArray.Iterator.forward
public extension ByteArray_Iterator {
  func forward(_ x_2: Nat) -> ByteArray_Iterator {
    let array_3: Array<UInt8> = self.array
    let idx_4: Nat = self.idx
    let _x_5: Nat = idx_4 + x_2
    return ByteArray_Iterator(array_3, _x_5)
  }
}

/// ByteArray.Iterator.toEnd
public extension ByteArray_Iterator {
  var toEnd: ByteArray_Iterator {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = ByteArray_size(array_2)
    return ByteArray_Iterator(array_2, _x_4)
  }
}

/// ByteArray.Iterator.prev
public extension ByteArray_Iterator {
  var prev: ByteArray_Iterator {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = 1
    let _x_5: Nat = idx_3 - _x_4
    return ByteArray_Iterator(array_2, _x_5)
  }
}

/// ByteArray.Iterator.prevn
public extension ByteArray_Iterator {
  func prevn(_ x_2: Nat) -> ByteArray_Iterator {
    let array_3: Array<UInt8> = self.array
    let idx_4: Nat = self.idx
    let _x_5: Nat = idx_4 - x_2
    return ByteArray_Iterator(array_3, _x_5)
  }
}

/// ByteArray.fastAppend
@inline(__always) public func ByteArray_fastAppend(_ a: Array<UInt8>, _ b: Array<UInt8>) -> Array<UInt8> {
  let _x_1: Nat = 0
  let _x_2: Nat = ByteArray_size(a)
  let _x_3: Nat = ByteArray_size(b)
  let _x_4: Bool = false
  return ByteArray_copySlice(b, _x_1, a, _x_2, _x_3, _x_4)
}

/// ByteArray.Iterator.next
public extension ByteArray_Iterator {
  var next: ByteArray_Iterator {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = 1
    let _x_5: Nat = idx_3 + _x_4
    return ByteArray_Iterator(array_2, _x_5)
  }
}

/// String.join
@inline(__always) public func String_join(_ l: List<String>) -> String {
  func _f_1(_ r: String, _ s: String) -> String {
    r + s
  }
  let _x_3: String = ""
  return l.foldl(_f_1, _x_3)
}

/// Bool.atLeastTwo
@inline(__always) public func Bool_atLeastTwo(_ a: Bool, _ b: Bool, _ c: Bool) -> Bool {
  func _jp_1() -> Bool {
    if a {
      if c {
        c
      } else {
        if b {
          c
        } else {
          b
        }
      }
    } else {
      if b {
        c
      } else {
        b
      }
    }
  }
  return if a {
    if b {
      b
    } else {
      _jp_1()
    }
  } else {
    _jp_1()
  }
}

/// Array.compareLex
public func Array_compareLex<A>(_ cmp: @escaping (A, A) -> Ordering, _ `a₁`: Array<A>, _ `a₂`: Array<A>) -> Ordering {
  let _x_1: Nat = 0
  return Array_compareLex_go(cmp, `a₁`, `a₂`, _x_1)
}

/// List.insertIdxTR
public extension List {
  func insertIdxTR(_ n: Nat, _ a: A) -> List<A> {
    let _x_1: Nat = 0
    let _x_2: Array<A> = Array_mkEmpty(_x_1)
    return List_insertIdxTR_go(a, n, self, _x_2)
  }
}

/// List.eraseIdxTR
public extension List {
  func eraseIdxTR(_ n: Nat) -> List<A> {
    let _x_1: Nat = 0
    let _x_2: Array<A> = Array_mkEmpty(_x_1)
    return List_eraseIdxTR_go(self, self, n, _x_2)
  }
}

/// List.setTR
public extension List {
  func setTR(_ n: Nat, _ a: A) -> List<A> {
    let _x_1: Nat = 0
    let _x_2: Array<A> = Array_mkEmpty(_x_1)
    return List_setTR_go(self, a, self, n, _x_2)
  }
}

public let Int32_minValue: Int32 = {
  -2147483648
}()

/// UInt16.toInt16
@inline(__always) public func UInt16_toInt16(_ i: UInt16) -> Int16 {
  Int16(i)
}

public let Int32_maxValue: Int32 = {
  2147483647
}()

public let Int8_minValue: Int8 = {
  -128
}()

/// USize.toISize
@inline(__always) public func USize_toISize(_ i: UInt) -> Int {
  Int(i)
}

public let Int64_maxValue: Int64 = {
  9223372036854775807
}()

/// UInt8.toInt8
@inline(__always) public func UInt8_toInt8(_ i: UInt8) -> Int8 {
  Int8(i)
}

public let Int8_size: Nat = {
  256
}()

public let Int64_minValue: Int64 = {
  -9223372036854775808
}()

public let Int32_size: Nat = {
  4294967296
}()

/// UInt64.toInt64
@inline(__always) public func UInt64_toInt64(_ i: UInt64) -> Int64 {
  Int64(i)
}

public let Int16_maxValue: Int16 = {
  32767
}()

/// UInt32.toInt32
@inline(__always) public func UInt32_toInt32(_ i: UInt32) -> Int32 {
  Int32(i)
}

public let Int8_maxValue: Int8 = {
  127
}()

public let Int64_size: Nat = {
  18446744073709551616
}()

public let Int16_size: Nat = {
  65536
}()

public let Int16_minValue: Int16 = {
  -32768
}()

/// _private.Init.Data.Array.InsertionSort.0.Array.insertionSort.swapLoop
public func Array_insertionSort_swapLoop<A>(_ lt: @escaping (A, A) -> Bool, _ xs: Array<A>, _ j: Nat) -> Array<A> {
  if j == 0 {
    return xs
  } else {
    let n_1: Nat = j - 1
    let _x_2 = Array_getInternal(xs, j)
    let _x_3 = Array_getInternal(xs, n_1)
    let _x_4: Bool = lt(_x_2, _x_3)
    if _x_4 {
      let _x_5: Array<A> = Array_swap(xs, j, n_1)
      return Array_insertionSort_swapLoop(lt, _x_5, n_1)
    } else {
      return xs
    }
  }
}

/// Sum.instBEq.beq
public func Sum_instBEq_beq<A: Equatable, B: Equatable>(_ x_5: Sum<A, B>, _ x_6: Sum<A, B>) -> Bool {
  switch x_5 {
  case .inl(let val_7):
    switch x_6 {
    case .inl(let val_8):
      return val_7 == val_8
    default:
      return false
    }
  case .inr(let val_12):
    switch x_6 {
    case .inr(let val_13):
      return val_12 == val_13
    default:
      return false
    }
  default:
    fatalError("unreachable")
  }
}

/// Sum.getLeft
public extension Sum {
  var getLeft: A {
    switch self {
    case .inl(let val_3):
      return val_3
    case .inr:
      fatalError("unreachable")
    default:
      fatalError("unreachable")
    }
  }
}

/// Sum.getRight
public extension Sum {
  var getRight: B {
    switch self {
    case .inl:
      fatalError("unreachable")
    case .inr(let val_4):
      return val_4
    default:
      fatalError("unreachable")
    }
  }
}

