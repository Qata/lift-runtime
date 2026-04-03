// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] mixHash
public func mixHash(_ u_u8321_: UInt64, _ u_u8322_: UInt64) -> UInt64 {
  return u_u8321_ ^ u_u8322_
}

/// @[extern] Option.ctorIdx
public func Option_ctorIdx<A>(_ x: A?) -> Nat {
  return x == nil ? 0 : 1
}

/// @[extern] sorryAx
public func sorryAx<A>(_ synthetic: Bool) -> A {
  fatalError("sorry")
}

/// @[extern] isScalarObj
public func isScalarObj<A>(_ x: A) -> Bool {
  return true
}

/// @[extern] Except.ctorIdx
public func Except_ctorIdx<A, B>(_ x: Except<A, B>) -> Nat {
  switch x { case .error: return 0; case .ok: return 1 }
}

/// @[extern] DoResultBC.ctorIdx
public func DoResultBC_ctorIdx<A>(_ x: DoResultBC<A>) -> Nat {
  return 0
}

/// @[extern] DoResultPR.ctorIdx
public func DoResultPR_ctorIdx<A, B, C>(_ x: DoResultPR<A, B, C>) -> Nat {
  return 0
}

/// @[extern] Sum.ctorIdx
public func Sum_ctorIdx<A, B>(_ x: Sum<A, B>) -> Nat {
  switch x { case .inl: return 0; case .inr: return 1 }
}

/// @[extern] Task.spawn
public func Task_spawn<A>(_ fn: @escaping (()) -> A, _ prio: Nat) -> LeanTask<A> {
  return LeanTask { fn(()) }
}

public let Task_Priority_max: Nat = {
  let _x_1: Nat = 8
  return _x_1
}()

/// @[extern] Task.bind
public func Task_bind<A, B>(_ x: LeanTask<A>, _ f: @escaping (A) -> LeanTask<B>, _ prio: Nat, _ sync: Bool) -> LeanTask<B> {
  return LeanTask { f(x.get()).get() }
}

/// @[extern] strictAnd
public func strictAnd(_ b_u8321_: Bool, _ b_u8322_: Bool) -> Bool {
  return b_u8321_ && b_u8322_
}

/// @[extern] DoResultPRBC.ctorIdx
public func DoResultPRBC_ctorIdx<A, B, C>(_ x: DoResultPRBC<A, B, C>) -> Nat {
  return 0
}

/// @[extern] strictOr
public func strictOr(_ b_u8321_: Bool, _ b_u8322_: Bool) -> Bool {
  return b_u8321_ || b_u8322_
}

/// @[extern] DoResultSBC.ctorIdx
public func DoResultSBC_ctorIdx<A, B>(_ x: DoResultSBC<A, B>) -> Nat {
  return 0
}

/// @[extern] Task.map
public func Task_map<A, B>(_ f: @escaping (A) -> B, _ x: LeanTask<A>, _ prio: Nat, _ sync: Bool) -> LeanTask<B> {
  return LeanTask { f(x.get()) }
}

/// @[extern] PSum.ctorIdx
public func PSum_ctorIdx<A, B>(_ x: PSum<A, B>) -> Nat {
  return 0
}

/// @[extern] Except.orElseLazy
public func Except_orElseLazy<A, B>(_ x: Except<A, B>, _ y: @escaping (()) -> Except<A, B>) -> Except<A, B> {
  switch x { case .ok(let v): return .ok(v); case .error: return y(()) }
}

/// Except.isOk
@inline(__always) public func Except_isOk<A, B>(_ a_1: Except<A, B>) -> Bool {
  switch a_1 {
  case .error:
    let _x_3: Bool = false
    return _x_3
  case .ok:
    let _x_5: Bool = true
    return _x_5
  }
}

/// ExceptT.mk
@inline(__always) public func ExceptT_mk(_ m: ()) -> () {
  return
}

/// Except.toOption
@inline(__always) public func Except_toOption<A, B>(_ x_1: Except<A, B>) -> B? {
  switch x_1 {
  case .error:
    let _x_3: B? = nil
    return _x_3
  case .ok(let a_4):
    let _x_5 = Optional.some(a_4)
    return _x_5
  }
}

/// Except.toBool
@inline(__always) public func Except_toBool<A, B>(_ x_1: Except<A, B>) -> Bool {
  switch x_1 {
  case .error:
    let _x_3: Bool = false
    return _x_3
  case .ok:
    let _x_5: Bool = true
    return _x_5
  }
}

/// Option.isNone
@inline(__always) public func Option_isNone<A>(_ x_1: A?) -> Bool {
  if x_1 != nil {
    let _x_4: Bool = false
    return _x_4
  } else {
    let _x_2: Bool = true
    return _x_2
  }
}

/// Option.guard
@inline(__always) public func Option_guard<A>(_ p: @escaping (A) -> Bool, _ a: A) -> A? {
  let _x_1: Bool = p(a)
  if _x_1 {
    let _x_3 = Optional.some(a)
    return _x_3
  } else {
    let _x_2: A? = nil
    return _x_2
  }
}

/// Option.toList
@inline(__always) public func Option_toList<A>(_ x_1: A?) -> List<A> {
  if let val_3 = x_1 {
    let _x_4: List<A> = .`nil`
    let _x_5 = List.cons(val_3, _x_4)
    return _x_5
  } else {
    let _x_2: List<A> = .`nil`
    return _x_2
  }
}

/// Option.any
@inline(__always) public func Option_any<A>(_ p: @escaping (A) -> Bool, _ x_1: A?) -> Bool {
  if let val_3 = x_1 {
    let _x_4: Bool = p(val_3)
    return _x_4
  } else {
    let _x_2: Bool = false
    return _x_2
  }
}

/// Option.toArray
@inline(__always) public func Option_toArray<A>(_ x_1: A?) -> Array<A> {
  if let val_4 = x_1 {
    let _x_5: Nat = 1
    let _x_6: Array<A> = Array_mkEmpty(_x_5)
    let _x_7 = Array_push(_x_6, val_4)
    return _x_7
  } else {
    let _x_2: Nat = 0
    let _x_3: Array<A> = Array_mkEmpty(_x_2)
    return _x_3
  }
}

/// Option.isEqSome
@inline(__always) public func Option_isEqSome<A: Equatable>(_ x_2: A?, _ x_3: A) -> Bool {
  if let val_5 = x_2 {
    let _x_7: Bool = val_5 == x_3
    return _x_7
  } else {
    let _x_4: Bool = false
    return _x_4
  }
}

/// Option.bind
@inline(__always) public func Option_bind<A, B>(_ x_1: A?, _ x_2: @escaping (A) -> B?) -> B? {
  if let val_4 = x_1 {
    let _x_5 = x_2(val_4)
    return _x_5
  } else {
    let _x_3: B? = nil
    return _x_3
  }
}

/// @[extern] Option.merge
public func Option_merge<A>(_ fn: @escaping (A, A) -> A, _ x_1: A?, _ x_2: A?) -> A? {
  if let a = x_1, let b = x_2 { return fn(a, b) }; if let a = x_1 { return a }; return x_2
}

/// @[extern] hexDigitRepr
public func hexDigitRepr(_ n: Nat) -> String {
  let digits = "0123456789abcdef"; return String(digits[digits.index(digits.startIndex, offsetBy: Int(UInt.of(n)))])
}

/// @[extern] addParenHeuristic
public func addParenHeuristic(_ s: String) -> String {
  return s
}

/// @[extern] dbgTraceIfShared
public func dbgTraceIfShared<A>(_ s: String, _ a: A) -> A {
  return a
}

/// @[extern] dbgSleep
public func dbgSleep<A>(_ ms: UInt32, _ f: @escaping (()) -> A) -> A {
  return f(())
}

/// @[extern] ptrAddrUnsafe
public func ptrAddrUnsafe<A>(_ a: A) -> UInt {
  return 0
}

/// @[extern] isExclusiveUnsafe
public func isExclusiveUnsafe<A>(_ a: A) -> Bool {
  return true
}

/// @[extern] dbgStackTraceIf
public func dbgStackTraceIf<A>(_ cond: Bool, _ f: @escaping (()) -> A) -> A {
  return f(())
}

/// @[extern] mkPanicMessage
public func mkPanicMessage(_ modName: String, _ line: Nat, _ col: Nat, _ msg: String) -> String {
  return modName
}

/// @[extern] dbgStackTrace
public func dbgStackTrace<A>(_ f: @escaping (()) -> A) -> A {
  return f(())
}

/// @[extern] mkPanicMessageWithDecl
public func mkPanicMessageWithDecl(_ modName: String, _ declName: String, _ line: Nat, _ col: Nat, _ msg: String) -> String {
  return modName + ":" + declName + ":" + line.description + ":" + col.description + ": " + msg
}

/// @[extern] dbgTrace
public func dbgTrace<A>(_ s: String, _ f: @escaping (()) -> A) -> A {
  print(s); return f(())
}

/// List.toArrayImpl
@inline(__always) public func List_toArrayImpl<A>(_ xs: List<A>) -> Array<A> {
  let _x_1: Nat = List_lengthTR(xs)
  let _x_2: Array<A> = Array_mkEmpty(_x_1)
  let _x_3 = List_toArrayAux(xs, _x_2)
  return _x_3
}

/// List.toArrayAux
public func List_toArrayAux<A>(_ x_1: List<A>, _ x_2: Array<A>) -> Array<A> {
  switch x_1 {
  case .`nil`:
    return x_2
  case .cons(let head_3, let tail_4):
    let _x_5 = Array_push(x_2, head_3)
    let _x_6 = List_toArrayAux(tail_4, _x_5)
    return _x_6
  }
}

/// @[extern] Void.mk
public func Void_mk<A>(_ x: A) -> () {
  return ()
}

/// @[extern] Ordering.ctorIdx
public func Ordering_ctorIdx(_ x: Ordering) -> Nat {
  switch x { case .lt: return 0; case .eq: return 1; case .gt: return 2 }
}

/// @[extern] Ordering.ofNat
public func Ordering_ofNat(_ n: Nat) -> Ordering {
  switch UInt.of(n) { case 0: return .lt; case 1: return .eq; default: return .gt }
}

/// @[extern] instInhabitedOrdering.default
public func instInhabitedOrdering_default() -> Ordering {
  return Ordering.lt
}

/// @[extern] IO.Error.otherErrorToString
public func IO_Error_otherErrorToString(_ gist: String, _ code: UInt32, _ x_1: String?) -> String {
  return gist
}

/// @[extern] IO.Error.fopenErrorToString
public func IO_Error_fopenErrorToString(_ gist: String, _ fn: String, _ code: UInt32, _ x_1: String?) -> String {
  return gist
}

/// @[extern] Sum.isRight
public func Sum_isRight<A, B>(_ x_1: Sum<A, B>) -> Bool {
  if case .inr = x_1 { return true }; return false
}

/// @[extern] Sum.swap
public func Sum_swap<A, B>(_ a_1: Sum<A, B>) -> Sum<B, A> {
  switch a_1 { case .inl(let a): return .inr(a); case .inr(let b): return .inl(b) }
}

/// @[extern] Sum.isLeft
public func Sum_isLeft<A, B>(_ x_1: Sum<A, B>) -> Bool {
  if case .inl = x_1 { return true }; return false
}


/// @[extern] Decidable.decide
public func Decidable_decide(_ d: Decidable) -> Bool {
  switch d { case .isTrue: return true; case .isFalse: return false }
}

/// @[extern] instDecidableEqNat
public func instDecidableEqNat(_ a: Nat, _ b: Nat) -> Decidable {
  a == b ? .isTrue : .isFalse
}

/// @[extern] instDecidableEqString
public func instDecidableEqString(_ a: String, _ b: String) -> Decidable {
  a == b ? .isTrue : .isFalse
}

/// @[extern] instDecidableEqBool
public func instDecidableEqBool(_ a: Bool, _ b: Bool) -> Decidable {
  a == b ? .isTrue : .isFalse
}

// MARK: - Decidable comparisons

public func Nat_decLe(_ a: Nat, _ b: Nat) -> Decidable { a <= b ? .isTrue : .isFalse }
public func Nat_decLt(_ a: Nat, _ b: Nat) -> Decidable { a < b ? .isTrue : .isFalse }
public func String_decidableLT(_ a: String, _ b: String) -> Decidable { a < b ? .isTrue : .isFalse }
public func instDecidableEqUInt8(_ a: UInt8, _ b: UInt8) -> Decidable { a == b ? .isTrue : .isFalse }

// MARK: - Type conversions

public func Int_toNat(_ n: SignedNat) -> Nat { n.isNegative ? 0 : n.magnitude }
public func Nat_cast(_ n: Nat) -> BitVec { BitVec(n) }
public func Fin_modn(_ n: Nat, _ a: Fin, _ b: Nat) -> Fin { Fin(a.val % b) }
public func UInt8_toFin(_ n: UInt8) -> Fin { Fin(Nat(UInt(n))) }
public func UInt16_toFin(_ n: UInt16) -> Fin { Fin(Nat(UInt(n))) }
public func UInt32_toFin(_ n: UInt32) -> Fin { Fin(Nat(UInt(n))) }
public func UInt64_toFin(_ n: UInt64) -> Fin { Fin(Nat(UInt(n))) }

// MARK: - Array unsafe operations

public func Array_foldlMUnsafe_fold<A, B>(_ f: @escaping (B, A) -> B, _ `as`: Array<A>, _ i: UInt, _ stop: UInt, _ b: B) -> B {
  var result = b
  var idx = Int(i)
  let end = Int(stop)
  while idx < end {
    result = f(result, `as`[idx])
    idx += 1
  }
  return result
}

public func Array_foldrMUnsafe_fold<A, B>(_ f: @escaping (A, B) -> B, _ `as`: Array<A>, _ i: UInt, _ stop: UInt, _ b: B) -> B {
  var result = b
  var idx = Int(i)
  let end = Int(stop)
  while idx > end {
    idx -= 1
    result = f(`as`[idx], result)
  }
  return result
}

public func Array_mapMUnsafe_map<A, B>(_ f: @escaping (A) -> B, _ sz: UInt, _ i: UInt, _ `as`: Array<A>) -> Array<B> {
  var result: Array<B> = []
  result.reserveCapacity(Int(sz))
  for idx in Int(i)..<Int(sz) {
    result.append(f(`as`[idx]))
  }
  return result
}

public func Array_contains<A: Equatable>(_ `as`: Array<A>, _ a: A) -> Bool {
  `as`.contains(a)
}

// MARK: - Ord / comparison

public func Ord_compare<A: Comparable>(_ a: A, _ b: A) -> Ordering {
  if a < b { return .lt }
  else if a == b { return .eq }
  else { return .gt }
}

// MARK: - Decidable combinators

public func exists_prop_decidable(_ d1: Decidable, _ d2: @escaping @autoclosure () -> Decidable) -> Decidable {
  switch d1 {
  case .isTrue: return .isTrue
  case .isFalse:
    switch d2() {
    case .isTrue: return .isTrue
    case .isFalse: return .isFalse
    }
  }
}

public func instDecidableNot(_ d: Decidable) -> Decidable {
  switch d {
  case .isTrue: return .isFalse
  case .isFalse: return .isTrue
  }
}

// MARK: - Array extensions

public func Array_toList<A>(_ `as`: Array<A>) -> List<A> {
  var result: List<A> = .nil
  for i in stride(from: `as`.count - 1, through: 0, by: -1) {
    result = .cons(`as`[i], result)
  }
  return result
}

public func ByteArray_data(_ bs: Array<UInt8>) -> Array<UInt8> {
  bs
}

// MARK: - BitVec → UInt conversions

extension UInt8 { public init(_ bv: BitVec) { self.init(UInt.of(bv.val)) } }
extension UInt16 { public init(_ bv: BitVec) { self.init(UInt.of(bv.val)) } }
extension UInt32 { public init(_ bv: BitVec) { self.init(UInt.of(bv.val)) } }
extension UInt64 { public init(_ bv: BitVec) { self.init(UInt.of(bv.val)) } }

// MARK: - String.Slice operations

public func String_Slice_toString(_ s: String_Slice) -> String {
  let start = s.str.utf8.index(s.str.startIndex, offsetBy: Int(UInt.of(s.start)))
  let end = s.str.utf8.index(s.str.startIndex, offsetBy: Int(UInt.of(s.stop)))
  return String(s.str[start..<end])
}

public func `String_Slice_toNat?`(_ s: String_Slice) -> Nat? {
  if let n = UInt(String_Slice_toString(s)) { return Nat(n) }
  return nil
}

public func `String_Slice_toNat!`(_ s: String_Slice) -> Nat {
  `String_Slice_toNat?`(s) ?? 0
}

public func `String_Slice_toInt?`(_ s: String_Slice) -> SignedNat? {
  if let n = Int(String_Slice_toString(s)) { return SignedNat(n) }
  return nil
}

public func String_Slice_isInt(_ s: String_Slice) -> Bool {
  `String_Slice_toInt?`(s) != nil
}

// MARK: - WellFounded

public func `WellFounded_opaqueFix₃`<A, B, C>(_ f: @escaping (A, B, @escaping (A, B) -> C) -> C, _ a: A, _ b: B) -> C {
  f(a, b) { a2, b2 in `WellFounded_opaqueFix₃`(f, a2, b2) }
}

// MARK: - ByteArray.data (identity — ByteArray is already Array<UInt8>)

extension Array where Element == UInt8 {
  public var data: Array<UInt8> { self }
}

// MARK: - Array.toList extension

extension Array {
  public var toList: List<Element> {
    Array_toList(self)
  }
}
