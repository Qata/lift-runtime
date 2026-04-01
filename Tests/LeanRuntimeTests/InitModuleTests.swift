// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

import Testing
@testable import LeanRuntime
@testable import LeanExterns
@testable import LeanGenerated

// MARK: - Nat

@Suite("Nat arithmetic")
struct NatArithTests {
  @Test func add()  { #expect(Nat_add(3, 4) == 7); #expect(Nat_add(0, 0) == 0) }
  @Test func sub()  { #expect(Nat_sub(10, 3) == 7); #expect(Nat_sub(3, 10) == 0) }
  @Test func mul()  { #expect(Nat_mul(6, 7) == 42); #expect(Nat_mul(0, 5) == 0) }
  @Test func div()  { #expect(Nat_div(10, 3) == 3); #expect(Nat_div(7, 1) == 7) }
  @Test func divByZero() { #expect(Nat_div(5, 0) == 0) }
  @Test func mod()  { #expect(Nat_mod(10, 3) == 1); #expect(Nat_mod(15, 5) == 0) }
  @Test func modByZero() { #expect(Nat_mod(5, 0) == 5) }
  @Test func pred() { #expect(Nat_pred(5) == 4); #expect(Nat_pred(0) == 0) }
  @Test func gcd()  { #expect(Nat_gcd(12, 8) == 4); #expect(Nat_gcd(7, 13) == 1) }
  @Test func repr() { #expect(Nat_repr(42) == "42"); #expect(Nat_repr(0) == "0") }
}

@Suite("Nat comparison")
struct NatCompTests {
  @Test func beq() { #expect(Nat_beq(5, 5)); #expect(!Nat_beq(3, 4)) }
  @Test func blt() { #expect(Nat_blt(3, 5)); #expect(!Nat_blt(5, 3)); #expect(!Nat_blt(3, 3)) }
  @Test func ble() { #expect(Nat_ble(3, 5)); #expect(Nat_ble(3, 3)); #expect(!Nat_ble(5, 3)) }
  @Test func bneTest() {
    let r1: Bool = bne(3 as Nat, 4 as Nat)
    let r2: Bool = bne(5 as Nat, 5 as Nat)
    #expect(r1 == true); #expect(r2 == false)
  }
}

@Suite("Nat bitwise & shifts")
struct NatBitwiseTests {
  @Test func shiftLeft()  { #expect(Nat_shiftLeft(1, 10) == 1024) }
  @Test func shiftRight() { #expect(Nat_shiftRight(1024, 10) == 1) }
  @Test func land()       { #expect(Nat_land(0xFF, 0x0F) == 0x0F) }
  @Test func lor()        { #expect(Nat_lor(0x0F, 0xF0) == 0xFF) }
  @Test func xor()        { #expect(Nat_xor(0xFF, 0x0F) == 0xF0) }
  @Test func operatorShift() {
    let n: Nat = 1
    #expect((n << 8) == 256)
    #expect((256 as Nat) >> 4 == 16)
  }
  @Test func operatorBitwise() {
    let a: Nat = 0xFF
    let b: Nat = 0x0F
    #expect((a & b) == 0x0F)
    #expect((a | b) == 0xFF)
    #expect((a ^ b) == 0xF0)
  }
  @Test func operatorArithmetic() {
    let a: Nat = 10
    let b: Nat = 3
    #expect(a + b == 13)
    #expect(a - b == 7)
    #expect(a * b == 30)
    #expect(a / b == 3)
    #expect(a % b == 1)
  }
}

// MARK: - Bool

@Suite("Bool operations")
struct BoolTests {
  @Test func ctorIdx()  { #expect(Bool_ctorIdx(false) == 0); #expect(Bool_ctorIdx(true) == 1) }
  @Test func toNat()    { #expect(Bool_toNat(false) == 0); #expect(Bool_toNat(true) == 1) }
  @Test func toString() { #expect(Bool_toString(true) == "true"); #expect(Bool_toString(false) == "false") }
  @Test func toUInt8()  { #expect(Bool_toUInt8(false) == 0); #expect(Bool_toUInt8(true) == 1) }
  @Test func toUInt16() { #expect(Bool_toUInt16(false) == 0); #expect(Bool_toUInt16(true) == 1) }
  @Test func toUInt32() { #expect(Bool_toUInt32(false) == 0); #expect(Bool_toUInt32(true) == 1) }
  @Test func toUInt64() { #expect(Bool_toUInt64(false) == 0); #expect(Bool_toUInt64(true) == 1) }
  @Test func toUSize()  { #expect(Bool_toUSize(false) == 0); #expect(Bool_toUSize(true) == 1) }
  @Test func toInt()    { #expect(Bool_toInt(false) == SignedNat(0)); #expect(Bool_toInt(true) == SignedNat(1)) }
}

// MARK: - Option

@Suite("Option operations")
struct OptionTests {
  @Test func ctorIdx() {
    #expect(Option_ctorIdx(Optional<Nat>.none) == 0)
    #expect(Option_ctorIdx(Optional<Nat>.some(42)) == 1)
  }
  @Test func isEqSome() {
    #expect(Option_isEqSome(Optional<Nat>.some(5), 5 as Nat))
    #expect(!Option_isEqSome(Optional<Nat>.some(5), 3 as Nat))
    #expect(!Option_isEqSome(Optional<Nat>.none, 5 as Nat))
  }
}

// MARK: - String

@Suite("String operations")
struct StringTests {
  @Test func append()       { #expect(String_append("hello", " world") == "hello world") }
  @Test func length()       { #expect(String_length("abc") == 3); #expect(String_length("") == 0) }
  @Test func utf8ByteSize() { #expect(String_utf8ByteSize("abc") == 3) }
}

// MARK: - List

@Suite("List operations")
struct ListTests {
  static func list<A>(_ arr: [A]) -> List<A> {
    var r: List<A> = .nil
    for e in arr.reversed() { r = .cons(e, r) }
    return r
  }

  @Test func length()   { #expect(List_length(Self.list([1, 2, 3] as [Nat])) == 3) }
  @Test func lengthNil() { #expect(List_length(List<Nat>.nil) == 0) }
  @Test func map()      { #expect(Self.list([1, 2, 3] as [Nat]).map({ (n: Nat) in n * 2 }).description == "[2, 4, 6]") }
  @Test func foldr()    { #expect(Self.list([1, 2, 3, 4] as [Nat]).foldr({ (a: Nat, b: Nat) in a + b }, 0 as Nat) == 10) }
  @Test func foldl()    { #expect(Self.list([1, 2, 3] as [Nat]).foldl({ (a: Nat, x: Nat) in a + x }, 0 as Nat) == 6) }
  @Test func elem()     { #expect(Self.list([10, 20, 30] as [Nat]).elem(20)); #expect(!Self.list([10, 20, 30] as [Nat]).elem(25)) }
  @Test func contains() { #expect(Self.list([1, 2, 3] as [Nat]).elem(2)); #expect(!Self.list([1, 2, 3] as [Nat]).elem(9)) }
  @Test func concat()   { #expect(List_concat(Self.list([1, 2] as [Nat]), 3).description == "[1, 2, 3]") }
  @Test func head()     { #expect(Self.list([10, 20, 30] as [Nat]).head == 10) }
  @Test func headD()    { #expect(List<Nat>.nil.headD(99) == 99); #expect(Self.list([10] as [Nat]).headD(99) == 10) }
  @Test func append()   { #expect(List_append(Self.list([1, 2] as [Nat]), Self.list([3, 4])).description == "[1, 2, 3, 4]") }
}

// MARK: - Array

@Suite("Array operations")
struct ArrayTests {
  @Test func mkEmptyAndPush() {
    var a: Array<Nat> = Array_mkEmpty(10)
    a = Array_push(a, 1); a = Array_push(a, 2); a = Array_push(a, 3)
    #expect(Array_size(a) == 3)
  }
  @Test func mkArray1() { #expect(Array_size(Array_mkArray1(42 as Nat)) == 1) }
  @Test func mkArray3() { #expect(Array_size(Array_mkArray3(1 as Nat, 2, 3)) == 3) }
  @Test func mkArray5() { #expect(Array_size(Array_mkArray5(1 as Nat, 2, 3, 4, 5)) == 5) }
  @Test func pop()      { let a = Array_mkArray3(1 as Nat, 2, 3); #expect(Array_size(Array_pop(a)) == 2) }
  @Test func popEmpty()  { let a: [Nat] = Array_mkEmpty(0); #expect(Array_size(Array_pop(a)) == 0) }
  @Test func set() {
    let a = Array_mkArray3(10 as Nat, 20, 30)
    let b = Array_set(a, 1 as Nat, 99 as Nat)
    #expect(b[1] == 99)
  }
  @Test func shrink() {
    let a = Array_mkArray5(1 as Nat, 2, 3, 4, 5)
    #expect(Array_size(Array_shrink(a, 3)) == 3)
  }
  @Test func extract() {
    let a = Array_mkArray5(10 as Nat, 20, 30, 40, 50)
    let b = Array_extract(a, 1 as Nat, 4 as Nat)
    #expect(Array_size(b) == 3)
  }
  @Test func swap() {
    let a = Array_mkArray3(10 as Nat, 20, 30)
    let b = Array_swap(a, 0 as Nat, 2 as Nat)
    #expect(b[0] == 30); #expect(b[2] == 10)
  }
}

// MARK: - ByteArray

@Suite("ByteArray operations")
struct ByteArrayTests {
  @Test func emptyAndPush() {
    var a: [UInt8] = ByteArray_emptyWithCapacity(10)
    a = ByteArray_push(a, 0x41); a = ByteArray_push(a, 0x42)
    #expect(ByteArray_size(a) == 2)
  }
  @Test func getAndSet() {
    var a: [UInt8] = ByteArray_emptyWithCapacity(4)
    a = ByteArray_push(a, 10); a = ByteArray_push(a, 20)
    #expect(ByteArray_get(a, 0) == 10)
    let b = ByteArray_set(a, 1 as Nat, 99)
    #expect(ByteArray_get(b, 1) == 99)
  }
}

// MARK: - UInt8

@Suite("UInt8 operations")
struct UInt8Tests {
  @Test func ofNat()  { #expect(UInt8_ofNat(255) == 255); #expect(UInt8_ofNat(256) == 0) }
  @Test func toNat()  { #expect(UInt8_toNat(42) == 42) }
  @Test func arith()  { #expect(UInt8_add(200, 100) == 44); #expect(UInt8_sub(10, 20) == 246); #expect(UInt8_mul(16, 16) == 0) }
  @Test func divMod() { #expect(UInt8_div(10, 3) == 3); #expect(UInt8_mod(10, 3) == 1); #expect(UInt8_div(5, 0) == 0) }
  @Test func bitwise(){ #expect(UInt8_lor(0x0F, 0xF0) == 0xFF); #expect(UInt8_xor(0xFF, 0x0F) == 0xF0) }
  @Test func shifts() { #expect(UInt8_shiftLeft(1, 3) == 8); #expect(UInt8_shiftRight(128, 2) == 32) }
  @Test func complement() { #expect(UInt8_complement(0) == 255) }
  @Test func neg()    { #expect(UInt8_neg(1) == 255) }
}

// MARK: - UInt32

@Suite("UInt32 operations")
struct UInt32Tests {
  @Test func ofNat()  { #expect(UInt32_ofNat(1000) == 1000) }
  @Test func toNat()  { #expect(UInt32_toNat(1000) == 1000) }
  @Test func arith()  { #expect(UInt32_sub(10, 20) == 4294967286) }
  @Test func divMod() { #expect(UInt32_div(100, 7) == 14); #expect(UInt32_mod(100, 7) == 2) }
  @Test func bitwise(){ #expect(UInt32_lor(0x00FF, 0xFF00) == 0xFFFF); #expect(UInt32_xor(0xFFFF, 0x00FF) == 0xFF00) }
  @Test func shifts() { #expect(UInt32_shiftLeft(1, 16) == 65536); #expect(UInt32_shiftRight(65536, 16) == 1) }
}

// MARK: - UInt64

@Suite("UInt64 operations")
struct UInt64Tests {
  @Test func ofNat()  { #expect(UInt64_ofNat(1000) == 1000) }
  @Test func toNat()  { #expect(UInt64_toNat(9999) == 9999) }
  @Test func arith()  { #expect(UInt64_sub(0, 1) == UInt64.max) }
  @Test func divMod() { #expect(UInt64_div(1000, 7) == 142); #expect(UInt64_mod(1000, 7) == 6) }
  @Test func bitwise(){ #expect(UInt64_lor(1, 2) == 3); #expect(UInt64_xor(0xFF, 0x0F) == 0xF0) }
  @Test func shifts() { #expect(UInt64_shiftLeft(1, 32) == 4294967296); #expect(UInt64_shiftRight(4294967296, 32) == 1) }
  @Test func complement() { #expect(UInt64_complement(0) == UInt64.max) }
  @Test func neg()    { #expect(UInt64_neg(1) == UInt64.max) }
}

// MARK: - UInt16

@Suite("UInt16 operations")
struct UInt16Tests {
  @Test func ofNat()  { #expect(UInt16_ofNat(1000) == 1000) }
  @Test func toNat()  { #expect(UInt16_toNat(500) == 500) }
  @Test func arith()  { #expect(UInt16_sub(10, 20) == 65526) }
  @Test func divMod() { #expect(UInt16_div(100, 3) == 33); #expect(UInt16_mod(100, 3) == 1) }
  @Test func bitwise(){ #expect(UInt16_lor(0x0F, 0xF0) == 0xFF); #expect(UInt16_xor(0xFF, 0x0F) == 0xF0) }
  @Test func shifts() { #expect(UInt16_shiftLeft(1, 8) == 256); #expect(UInt16_shiftRight(256, 8) == 1) }
  @Test func complement() { #expect(UInt16_complement(0) == UInt16.max) }
  @Test func neg()    { #expect(UInt16_neg(1) == UInt16.max) }
}

// MARK: - USize

@Suite("USize operations")
struct USizeTests {
  @Test func ofNat()  { #expect(USize_ofNat(42) == 42) }
  @Test func toNat()  { #expect(USize_toNat(42) == 42) }
  @Test func arith()  { #expect(USize_sub(10, 20) == UInt.max - 9) }
  @Test func divMod() { #expect(USize_div(100, 7) == 14); #expect(USize_mod(100, 7) == 2) }
  @Test func bitwise(){ #expect(USize_lor(1, 2) == 3); #expect(USize_xor(3, 1) == 2) }
  @Test func shifts() { #expect(USize_shiftLeft(1, 4) == 16); #expect(USize_shiftRight(16, 4) == 1) }
  @Test func complement() { #expect(USize_complement(0) == UInt.max) }
  @Test func neg()    { #expect(USize_neg(1) == UInt.max) }
  @Test func repr()   { #expect(USize_repr(42) == "42") }
}

// MARK: - Except

@Suite("Except operations")
struct ExceptTests {
  @Test func okConstruct()    { let e: Except<String, Nat> = .ok(42); if case .ok(let v) = e { #expect(v == 42) } else { Issue.record("expected ok") } }
  @Test func errorConstruct() { let e: Except<String, Nat> = .error("fail"); if case .error(let s) = e { #expect(s == "fail") } else { Issue.record("expected error") } }
  @Test func bind() {
    let ok: Except<String, Nat> = .ok(5)
    let result = ok.bind { (n: Nat) -> Except<String, Nat> in .ok(n * 2) }
    if case .ok(let v) = result { #expect(v == 10) } else { Issue.record("expected ok") }
  }
  @Test func bindError() {
    let err: Except<String, Nat> = .error("bad")
    let result = err.bind { (n: Nat) -> Except<String, Nat> in .ok(n * 2) }
    if case .error(let s) = result { #expect(s == "bad") } else { Issue.record("expected error") }
  }
  @Test func map() {
    let ok: Except<String, Nat> = .ok(3)
    let result = ok.map { (n: Nat) -> Nat in n + 10 }
    if case .ok(let v) = result { #expect(v == 13) } else { Issue.record("expected ok") }
  }
  @Test func mapError() {
    let err: Except<String, Nat> = .error("x")
    let result = err.mapError { (s: String) -> String in s + "!" }
    if case .error(let s) = result { #expect(s == "x!") } else { Issue.record("expected error") }
  }
  @Test func tryCatch() {
    let err: Except<Nat, Nat> = .error(5)
    let result = err.tryCatch { (e: Nat) -> Except<Nat, Nat> in .ok(e + 1) }
    if case .ok(let v) = result { #expect(v == 6) } else { Issue.record("expected ok") }
  }
  @Test func ctorIdx() { #expect(Except_ctorIdx(Except<Nat, Nat>.error(0)) == 0); #expect(Except_ctorIdx(Except<Nat, Nat>.ok(0)) == 1) }
}

// MARK: - Sum

@Suite("Sum operations")
struct SumTests {
  @Test func inlConstruct()  { let s: Sum<Nat, String> = .inl(42); if case .inl(let v) = s { #expect(v == 42) } else { Issue.record("expected inl") } }
  @Test func inrConstruct()  { let s: Sum<Nat, String> = .inr("hi"); if case .inr(let v) = s { #expect(v == "hi") } else { Issue.record("expected inr") } }
  @Test func getLeft()       { let s: Sum<Nat, String> = .inl(99); #expect(s.getLeft == 99) }
  @Test func getRight()      { let s: Sum<Nat, String> = .inr("ok"); #expect(s.getRight == "ok") }
  @Test func beq() {
    let a: Sum<Nat, Nat> = .inl(1); let b: Sum<Nat, Nat> = .inl(1); let c: Sum<Nat, Nat> = .inr(1)
    #expect(Sum_instBEq_beq(a, b)); #expect(!Sum_instBEq_beq(a, c))
  }
}

// MARK: - Ordering

@Suite("Ordering operations")
struct OrderingTests {
  @Test func isLT() { #expect(Ordering.lt.isLT); #expect(!Ordering.eq.isLT); #expect(!Ordering.gt.isLT) }
  @Test func isEq() { #expect(Ordering.eq.isEq); #expect(!Ordering.lt.isEq); #expect(!Ordering.gt.isEq) }
  @Test func isGT() { #expect(Ordering.gt.isGT); #expect(!Ordering.eq.isGT); #expect(!Ordering.lt.isGT) }
  @Test func isLE() { #expect(Ordering.lt.isLE); #expect(Ordering.eq.isLE); #expect(!Ordering.gt.isLE) }
  @Test func isGE() { #expect(Ordering.gt.isGE); #expect(Ordering.eq.isGE); #expect(!Ordering.lt.isGE) }
  @Test func isNe() { #expect(Ordering.lt.isNe); #expect(!Ordering.eq.isNe); #expect(Ordering.gt.isNe) }
  @Test func swap() { #expect(Ordering.lt.swap == .gt); #expect(Ordering.gt.swap == .lt); #expect(Ordering.eq.swap == .eq) }
}

// MARK: - SignedNat

@Suite("SignedNat operations")
struct SignedNatTests {
  @Test func ofNat()     { #expect(SignedNat(5).toInt == 5); #expect(SignedNat(0).toInt == 0) }
  @Test func negSucc()   { #expect(SignedNat.negSucc(0).toInt == -1); #expect(SignedNat.negSucc(4).toInt == -5) }
  @Test func equality()  { #expect(SignedNat(3) == SignedNat(3)); #expect(SignedNat(3) != SignedNat(4)) }
  @Test func negEquality() { #expect(SignedNat.negSucc(0) == SignedNat.negSucc(0)); #expect(SignedNat.negSucc(0) != SignedNat(0)) }
}

// MARK: - List (extended)

@Suite("List extended operations")
struct ListExtendedTests {
  static func list<A>(_ arr: [A]) -> List<A> { .fromArray(arr) }

  @Test func reverse()   { #expect(List_reverse(Self.list([1, 2, 3] as [Nat])).description == "[3, 2, 1]") }
  @Test func all()       { #expect(List_all(Self.list([2, 4, 6] as [Nat]), { $0 % 2 == 0 })); #expect(!List_all(Self.list([2, 3, 6] as [Nat]), { $0 % 2 == 0 })) }
  @Test func any()       { #expect(List_any(Self.list([1, 3, 4] as [Nat]), { $0 % 2 == 0 })); #expect(!List_any(Self.list([1, 3, 5] as [Nat]), { $0 % 2 == 0 })) }
  @Test func isEmpty()   { #expect(List_isEmpty(List<Nat>.nil)); #expect(!List_isEmpty(Self.list([1] as [Nat]))) }
  @Test func filter()    { #expect(List_filter({ (n: Nat) in n > 2 }, Self.list([1, 2, 3, 4, 5])).description == "[3, 4, 5]") }
  @Test func drop()      { #expect(List_drop(2 as Nat, Self.list([1, 2, 3, 4, 5] as [Nat])).description == "[3, 4, 5]") }
  @Test func take()      { #expect(List_take(3 as Nat, Self.list([1, 2, 3, 4, 5] as [Nat])).description == "[1, 2, 3]") }
  @Test func replicate() { #expect(List_replicate(3 as Nat, 7 as Nat).description == "[7, 7, 7]") }
  @Test func set()       { #expect(List_set(Self.list([10, 20, 30] as [Nat]), 1 as Nat, 99 as Nat).description == "[10, 99, 30]") }
  @Test func eraseIdx()  { #expect(List_eraseIdx(Self.list([10, 20, 30] as [Nat]), 1 as Nat).description == "[10, 30]") }
  @Test func range()     { #expect(List_range(4 as Nat).description == "[0, 1, 2, 3]") }
  @Test func intersperse() { #expect(List_intersperse(0 as Nat, Self.list([1, 2, 3])).description == "[1, 0, 2, 0, 3]") }
  @Test func mergeSort() {
    let sorted = List_mergeSort(Self.list([3, 1, 4, 1, 5] as [Nat]), { (a: Nat, b: Nat) in Nat_blt(a, b) })
    #expect(sorted.description == "[1, 1, 3, 4, 5]")
  }
  @Test func zipWith() {
    let r = Self.list([1, 2, 3] as [Nat]).zipWith({ (a: Nat, b: Nat) in a + b }, Self.list([10, 20, 30]))
    #expect(r.description == "[11, 22, 33]")
  }
  @Test func countP() { #expect(Self.list([1, 2, 3, 4, 5] as [Nat]).countP({ (n: Nat) in n > 3 }) == 2) }
  @Test func compareLex() {
    let cmp = { (a: Nat, b: Nat) -> Ordering in a < b ? .lt : (a == b ? .eq : .gt) }
    let r = Self.list([1, 2, 3] as [Nat]).compareLex(cmp, Self.list([1, 2, 4]))
    #expect(r == .lt)
  }
}

// MARK: - String (extended)

@Suite("String extended operations")
struct StringExtendedTests {
  @Test func hash()        { let h = String_hash("hello"); #expect(h != 0) }
  @Test func quote()       { #expect(String_quote("hi") == "\"hi\"") }
  @Test func toUTF8()      { let bytes = String_toUTF8("AB"); #expect(bytes.count == 2); #expect(bytes[0] == 65) }
  @Test func intercalate() { #expect(String_intercalate(", ", .fromArray(["a", "b", "c"])) == "a, b, c") }
  @Test func trimLeft()    { #expect(String_trimLeft("  hi") == "hi") }
  @Test func trimRight()   { #expect(String_trimRight("hi  ") == "hi") }
  @Test func stripPrefix() { #expect(String_stripPrefix("Hello", "Hel") == "lo") }
  @Test func stripSuffix() { #expect(String_stripSuffix("Hello", "llo") == "He") }
}

// MARK: - Float

@Suite("Float operations")
struct FloatTests {
  @Test func arith()    { #expect(Float_add(1.5, 2.5) == 4.0); #expect(Float_sub(5.0, 3.0) == 2.0); #expect(Float_mul(2.0, 3.0) == 6.0); #expect(Float_div(10.0, 4.0) == 2.5) }
  @Test func neg()      { #expect(Float_neg(3.0) == -3.0) }
  @Test func beq()      { #expect(Float_beq(1.0, 1.0)); #expect(!Float_beq(1.0, 2.0)) }
  @Test func ceil()     { #expect(Float_ceil(2.3) == 3.0) }
  @Test func floor()    { #expect(Float_floor(2.7) == 2.0) }
  @Test func round()    { #expect(Float_round(2.5) == 3.0); #expect(Float_round(2.4) == 2.0) }
  @Test func sqrt()     { #expect(Float_sqrt(4.0) == 2.0) }
  @Test func log()      { #expect(abs(Float_log(Float_exp(1.0)) - 1.0) < 1e-10) }
  @Test func sinCos()   { #expect(abs(Float_sin(0.0)) < 1e-10); #expect(abs(Float_cos(0.0) - 1.0) < 1e-10) }
  @Test func isNaN()    { #expect(Float_isNaN(Double.nan)); #expect(!Float_isNaN(1.0)) }
  @Test func isInf()    { #expect(Float_isInf(Double.infinity)); #expect(!Float_isInf(1.0)) }
  @Test func ofNat()    { #expect(Float_ofNat(42) == 42.0) }
  @Test func toBits()   { #expect(Float_ofBits(Float_toBits(3.14)) == 3.14) }
  @Test func toString() { #expect(Float_toString(2.5) == "2.5") }
}

// MARK: - Int32

@Suite("Int32 operations")
struct Int32Tests {
  @Test func ofNat()   { #expect(Int32_ofNat(100) == 100) }
  @Test func arith()   { #expect(Int32_add(10, 20) == 30); #expect(Int32_sub(10, 20) == -10); #expect(Int32_mul(6, 7) == 42) }
  @Test func divMod()  { #expect(Int32_div(10, 3) == 3); #expect(Int32_mod(10, 3) == 1) }
  @Test func neg()     { #expect(Int32_neg(5) == -5) }
  @Test func bitwise() { #expect(Int32_lor(0x0F, 0xF0) == 0xFF); #expect(Int32_land(0xFF, 0x0F) == 0x0F); #expect(Int32_xor(0xFF, 0x0F) == 0xF0) }
  @Test func shifts()  { #expect(Int32_shiftLeft(1, 8) == 256); #expect(Int32_shiftRight(256, 8) == 1) }
}

// MARK: - Int64

@Suite("Int64 operations")
struct Int64Tests {
  @Test func ofNat()   { #expect(Int64_ofNat(1000) == 1000) }
  @Test func arith()   { #expect(Int64_add(100, 200) == 300); #expect(Int64_sub(100, 200) == -100); #expect(Int64_mul(11, 11) == 121) }
  @Test func neg()     { #expect(Int64_neg(42) == -42) }
  @Test func shifts()  { #expect(Int64_shiftLeft(1, 32) == 4294967296); #expect(Int64_shiftRight(4294967296, 32) == 1) }
}

// MARK: - Nat (extended)

@Suite("Nat extended operations")
struct NatExtendedTests {
  @Test func log2()     { #expect(Nat_log2(8) == 3); #expect(Nat_log2(1) == 0); #expect(Nat_log2(0) == 0) }
  @Test func testBit()  { #expect(Nat_testBit(5, 0)); #expect(!Nat_testBit(5, 1)); #expect(Nat_testBit(5, 2)) }
  @Test func lcm()      { #expect(Nat_lcm(4, 6) == 12); #expect(Nat_lcm(3, 7) == 21) }
  @Test func bigNat() {
    let big: Nat = 999999999999999999999
    #expect(big > 0)
    #expect(Nat_repr(big) == "999999999999999999999")
  }
  @Test func bigNatArith() {
    let a: Nat = 999999999999999999999
    let b: Nat = 1
    #expect(Nat_repr(a + b) == "1000000000000000000000")
  }
  @Test func bigNatFromString() {
    let n = Nat("123456789012345678901234567890")
    #expect(Nat_repr(n) == "123456789012345678901234567890")
  }
  @Test func smallBigBoundary() {
    // UInt.max = 18446744073709551615 should be small
    let uintMax: Nat = 18446744073709551615
    if case .small(let v) = uintMax { #expect(v == UInt.max) }
    else { Issue.record("UInt.max should be .small") }
    // UInt.max + 1 = 18446744073709551616 should be big
    let overMax: Nat = 18446744073709551616
    if case .big = overMax { /* expected */ }
    else { Issue.record("UInt.max+1 should be .big") }
    #expect(Nat_repr(overMax) == "18446744073709551616")
    // Zero should be small
    let zero: Nat = 0
    if case .small(let v) = zero { #expect(v == 0) }
    else { Issue.record("0 should be .small") }
    // 1 should be small
    let one: Nat = 1
    if case .small(let v) = one { #expect(v == 1) }
    else { Issue.record("1 should be .small") }
  }
  @Test func allAny() {
    #expect((4 as Nat).all({ (i: Nat) in i < 4 }))
    #expect(!(4 as Nat).all({ (i: Nat) in i < 3 }))
    #expect((4 as Nat).any({ (i: Nat) in i == 2 }))
    #expect(!(4 as Nat).any({ (i: Nat) in i == 5 }))
  }
}

// MARK: - ByteArray Iterator

@Suite("ByteArray.Iterator operations")
struct ByteArrayIteratorTests {
  @Test func construct() { let it = ByteArray_Iterator([1, 2, 3], 0); #expect(it.idx == 0) }
  @Test func next()      { let it = ByteArray_Iterator([1, 2, 3], 0); let it2 = it.next; #expect(it2.idx == 1) }
  @Test func pos()       { let it = ByteArray_Iterator([10, 20], 1); #expect(it.pos == 1) }
}

// MARK: - Misc

@Suite("Misc extern functions")
struct MiscTests {
  @Test func mixHash() {
    let h1: UInt64 = 123
    let h2: UInt64 = 456
    let result = LeanExterns.mixHash(h1, h2)
    #expect(result == h1 ^ h2)
  }
}
