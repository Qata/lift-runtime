// Auto-generated from Init module extern implementations.
// These provide Swift-native implementations for Lean's @[extern] functions.

import LeanRuntime
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif

/// @[extern] Array.mkEmpty
public func Array_mkEmpty<A>(_ c: Nat) -> Array<A> {
  return []
}

/// @[extern] Array.push
public func Array_push<A>(_ a: Array<A>, _ v: A) -> Array<A> {
  var a = a; a.append(v); return a
}

/// @[extern] Array.mkArray7
public func Array_mkArray7<A>(_ a_u8321_: A, _ a_u8322_: A, _ a_u8323_: A, _ a_u8324_: A, _ a_u8325_: A, _ a_u8326_: A, _ a_u8327_: A) -> Array<A> {
  return [a_u8321_, a_u8322_, a_u8323_, a_u8324_, a_u8325_, a_u8326_, a_u8327_]
}

/// @[extern] Array.getInternalBorrowed
public func Array_getInternalBorrowed<A>(_ a: Array<A>, _ i: Nat) -> A {
  return a[Int(UInt.of(i))]
}

/// @[extern] Array.mkArray2
public func Array_mkArray2<A>(_ a_u8321_: A, _ a_u8322_: A) -> Array<A> {
  return [a_u8321_, a_u8322_]
}

/// @[extern] Array.mkArray0
public func Array_mkArray0<A>() -> Array<A> {
  return []
}

/// @[extern] Array.extract
public func Array_extract<A>(_ `as`: Array<A>, _ start: Nat, _ stop: Nat) -> Array<A> {
  return Array(`as`[Int(UInt.of(start))..<min(Int(UInt.of(stop)), `as`.count)])
}

/// @[extern] Array.mkArray5
public func Array_mkArray5<A>(_ a_u8321_: A, _ a_u8322_: A, _ a_u8323_: A, _ a_u8324_: A, _ a_u8325_: A) -> Array<A> {
  return [a_u8321_, a_u8322_, a_u8323_, a_u8324_, a_u8325_]
}

/// @[extern] Array.mkArray6
public func Array_mkArray6<A>(_ a_u8321_: A, _ a_u8322_: A, _ a_u8323_: A, _ a_u8324_: A, _ a_u8325_: A, _ a_u8326_: A) -> Array<A> {
  return [a_u8321_, a_u8322_, a_u8323_, a_u8324_, a_u8325_, a_u8326_]
}

/// @[extern] Array.mkArray1
public func Array_mkArray1<A>(_ a_u8321_: A) -> Array<A> {
  return [a_u8321_]
}

/// @[extern] Array.getInternal
public func Array_getInternal<A>(_ a: Array<A>, _ i: Nat) -> A {
  return a[Int(UInt.of(i))]
}

/// @[extern] Array.mkArray8
public func Array_mkArray8<A>(_ a_u8321_: A, _ a_u8322_: A, _ a_u8323_: A, _ a_u8324_: A, _ a_u8325_: A, _ a_u8326_: A, _ a_u8327_: A, _ a_u8328_: A) -> Array<A> {
  return [a_u8321_, a_u8322_, a_u8323_, a_u8324_, a_u8325_, a_u8326_, a_u8327_, a_u8328_]
}

/// @[extern] Array.mkArray4
public func Array_mkArray4<A>(_ a_u8321_: A, _ a_u8322_: A, _ a_u8323_: A, _ a_u8324_: A) -> Array<A> {
  return [a_u8321_, a_u8322_, a_u8323_, a_u8324_]
}

/// @[extern] Array.size
public func Array_size<A>(_ a: Array<A>) -> Nat {
  return Nat(UInt(a.count))
}

/// @[extern] Array.mkArray3
public func Array_mkArray3<A>(_ a_u8321_: A, _ a_u8322_: A, _ a_u8323_: A) -> Array<A> {
  return [a_u8321_, a_u8322_, a_u8323_]
}

/// @[extern] Array.emptyWithCapacity
public func Array_emptyWithCapacity<A>(_ c: Nat) -> Array<A> {
  return []
}

/// @[extern] Array.set
public func Array_set<A>(_ xs: Array<A>, _ i: Nat, _ v: A) -> Array<A> {
  var a = xs; let i = Int(UInt.of(i)); if i < a.count { a[i] = v }; return a
}

/// @[extern] Array.set!
public func `Array_set!`<A>(_ xs: Array<A>, _ i: Nat, _ v: A) -> Array<A> {
  var a = xs; a[Int(UInt.of(i))] = v; return a
}

/// @[extern] Array.takeWhile
public func Array_takeWhile<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Array<A> {
  return Array(`as`.prefix(while: p))
}

/// @[extern] Array.ugetBorrowed
public func Array_ugetBorrowed<A>(_ xs: Array<A>, _ i: UInt) -> A {
  return xs[Int(i)]
}

/// @[extern] Array.insertIdxIfInBounds
public func Array_insertIdxIfInBounds<A>(_ `as`: Array<A>, _ i: Nat, _ a: A) -> Array<A> {
  var arr = `as`; let i = Int(UInt.of(i)); if i <= arr.count { arr.insert(a, at: i) }; return arr
}

/// @[extern] Array.leftpad
public func Array_leftpad<A>(_ n: Nat, _ a: A, _ xs: Array<A>) -> Array<A> {
  let n = Int(UInt.of(n)); return xs.count >= n ? xs : Array(repeating: a, count: n - xs.count) + xs
}

/// @[extern] Array.swap
public func Array_swap<A>(_ xs: Array<A>, _ i: Nat, _ j: Nat) -> Array<A> {
  var a = xs; a.swapAt(Int(UInt.of(i)), Int(UInt.of(j))); return a
}

/// @[extern] Array.popWhile
public func Array_popWhile<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>) -> Array<A> {
  var arr = `as`; while let last = arr.last, p(last) { arr.removeLast() }; return arr
}

/// @[extern] Array.reverse
public func Array_reverse<A>(_ `as`: Array<A>) -> Array<A> {
  return Array(`as`.reversed())
}

/// @[extern] Array.replicate
public func Array_replicate<A>(_ n: Nat, _ v: A) -> Array<A> {
  return Array(repeating: v, count: Int(UInt.of(n)))
}

/// @[extern] Array.swapIfInBounds
public func Array_swapIfInBounds<A>(_ xs: Array<A>, _ i: Nat, _ j: Nat) -> Array<A> {
  var a = xs; let i = Int(UInt.of(i)); let j = Int(UInt.of(j)); if i < a.count && j < a.count { a.swapAt(i, j) }; return a
}

/// @[extern] Array.shrink
public func Array_shrink<A>(_ xs: Array<A>, _ n: Nat) -> Array<A> {
  return Array(xs.prefix(Int(UInt.of(n))))
}

/// @[extern] Array.eraseIdxIfInBounds
public func Array_eraseIdxIfInBounds<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  var a = xs; let i = Int(UInt.of(i)); if i < a.count { a.remove(at: i) }; return a
}

/// @[extern] Array.appendList
public func Array_appendList<A>(_ `as`: Array<A>, _ bs: List<A>) -> Array<A> {
  var a = `as`; var cur = bs; while case .cons(let h, let t) = cur { a.append(h); cur = t }; return a
}

/// @[extern] Array.pop
public func Array_pop<A>(_ xs: Array<A>) -> Array<A> {
  return xs.isEmpty ? [] : Array(xs.dropLast())
}

/// @[extern] Array.rightpad
public func Array_rightpad<A>(_ n: Nat, _ a: A, _ xs: Array<A>) -> Array<A> {
  let n = Int(UInt.of(n)); return xs.count >= n ? xs : xs + Array(repeating: a, count: n - xs.count)
}

/// @[extern] Array.range
public func Array_range(_ n: Nat) -> Array<Nat> {
  return (0..<Int(UInt.of(n))).map { i in Nat(UInt(i)) }
}

/// @[extern] Array.insertIdx!
public func `Array_insertIdx!`<A>(_ `as`: Array<A>, _ i: Nat, _ a: A) -> Array<A> {
  var arr = `as`; arr.insert(a, at: Int(UInt.of(i))); return arr
}

/// @[extern] Array.eraseIdx!
public func `Array_eraseIdx!`<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  var a = xs; a.remove(at: Int(UInt.of(i))); return a
}

/// @[extern] Array.append
public func Array_append<A>(_ `as`: Array<A>, _ bs: Array<A>) -> Array<A> {
  return `as` + bs
}

/// @[extern] Array.uget
public func Array_uget<A>(_ xs: Array<A>, _ i: UInt) -> A {
  return xs[Int(i)]
}

/// @[extern] Array.usize
public func Array_usize<A>(_ xs: Array<A>) -> UInt {
  return UInt(xs.count)
}

/// @[extern] Array.uset
public func Array_uset<A>(_ xs: Array<A>, _ i: UInt, _ v: A) -> Array<A> {
  var a = xs; a[Int(i)] = v; return a
}

/// @[extern] Array.eraseIdx
public func Array_eraseIdx<A>(_ xs: Array<A>, _ i: Nat) -> Array<A> {
  var a = xs; a.remove(at: Int(UInt.of(i))); return a
}

/// @[extern] Array.findIdx?.loop
public func `Array_findIdx?_loop`<A>(_ p: @escaping (A) -> Bool, _ `as`: Array<A>, _ i: Nat) -> Nat? {
  let start = Int(UInt.of(i))
  for j in start..<`as`.count { if p(`as`[j]) { return Nat(UInt(j)) } }
  return nil
}

/// @[extern] Array.compareLex.go
public func Array_compareLex_go<A>(_ cmp: @escaping (A, A) -> Ordering, _ a1: Array<A>, _ a2: Array<A>, _ i: Nat) -> Ordering {
  let start = Int(UInt.of(i))
  let n = min(a1.count, a2.count)
  for j in start..<n {
    let r = cmp(a1[j], a2[j])
    if r != .eq { return r }
  }
  if a1.count < a2.count { return .lt }
  if a1.count > a2.count { return .gt }
  return .eq
}

