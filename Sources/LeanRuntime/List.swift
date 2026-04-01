// Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
// Released under Apache 2.0 license as described in the file LICENSE.

/// Lean's linked list type.
public indirect enum List<A>: @unchecked Sendable {
  case `nil`
  case cons(A, List<A>)
}

// MARK: - Helpers

extension List {
  /// Convert to Swift Array.
  public func toArray() -> [A] {
    var result: [A] = []
    var cur = self
    while case .cons(let h, let t) = cur { result.append(h); cur = t }
    return result
  }

  /// Build from Swift Array.
  public static func fromArray(_ arr: [A]) -> List<A> {
    var r: List<A> = .nil
    for e in arr.reversed() { r = .cons(e, r) }
    return r
  }
}

// MARK: - Protocols

extension List: CustomStringConvertible {
  public var description: String {
    "[\(toArray().map { "\($0)" }.joined(separator: ", "))]"
  }
}

extension List: Equatable where A: Equatable {
  public static func == (lhs: List<A>, rhs: List<A>) -> Bool {
    var l = lhs, r = rhs
    while case (.cons(let lh, let lt), .cons(let rh, let rt)) = (l, r) {
      if lh != rh { return false }
      l = lt; r = rt
    }
    if case (.nil, .nil) = (l, r) { return true }
    return false
  }
}

// MARK: - Core ops (used by generated code)

public func List_append<A>(_ xs: List<A>, _ ys: List<A>) -> List<A> {
  .fromArray(xs.toArray() + ys.toArray())
}
public func List_appendTR<A>(_ xs: List<A>, _ ys: List<A>) -> List<A> { List_append(xs, ys) }
public func List_length<A>(_ xs: List<A>) -> Nat { Nat(UInt(xs.toArray().count)) }
public func List_reverse<A>(_ xs: List<A>) -> List<A> { .fromArray(xs.toArray().reversed()) }
public func List_reverseAux<A>(_ xs: List<A>, _ acc: List<A>) -> List<A> {
  var r = acc; var c = xs
  while case .cons(let h, let t) = c { r = .cons(h, r); c = t }
  return r
}
public func Array_toListImpl<A>(_ xs: [A]) -> List<A> { .fromArray(xs) }

// MARK: - Query

public func List_all<A>(_ xs: List<A>, _ p: @escaping (A) -> Bool) -> Bool {
  xs.toArray().allSatisfy(p)
}
public func List_any<A>(_ xs: List<A>, _ p: @escaping (A) -> Bool) -> Bool {
  xs.toArray().contains(where: p)
}
public func List_and(_ xs: List<Bool>) -> Bool { xs.toArray().allSatisfy { $0 } }
public func List_or(_ xs: List<Bool>) -> Bool { xs.toArray().contains(true) }
public func List_isEmpty<A>(_ xs: List<A>) -> Bool {
  if case .nil = xs { return true }; return false
}

// MARK: - Access

public func `List_head?`<A>(_ xs: List<A>) -> A? {
  if case .cons(let h, _) = xs { return h }; return nil
}
public func `List_tail?`<A>(_ xs: List<A>) -> List<A>? {
  if case .cons(_, let t) = xs { return t }; return nil
}
public func `List_tail!`<A>(_ xs: List<A>) -> List<A> {
  if case .cons(_, let t) = xs { return t }; fatalError("tail! on empty list")
}
public func List_getLast<A>(_ xs: List<A>) -> A {
  switch xs {
  case let .cons(last, _):
    return last
  default:
    fatalError("getLast on empty list")
  }
}
public func `List_getLast?`<A>(_ xs: List<A>) -> A? {
  switch xs {
  case let .cons(last, _):
    return last
  case .nil:
    return nil
  }
}
public func List_getLastD<A>(_ xs: List<A>, _ d: A) -> A { xs.toArray().last ?? d }
public func `List_get?Internal`<A>(_ xs: List<A>, _ i: Nat) -> A? {
  let arr = xs.toArray(); let idx = Int(UInt.of(i))
  return idx < arr.count ? arr[idx] : nil
}
public func List_getD<A>(_ xs: List<A>, _ i: Nat, _ d: A) -> A {
  `List_get?Internal`(xs, i) ?? d
}

// MARK: - Sublist

public func List_drop<A>(_ n: Nat, _ xs: List<A>) -> List<A> {
  .fromArray(Array(xs.toArray().dropFirst(Int(UInt.of(n)))))
}
public func List_take<A>(_ n: Nat, _ xs: List<A>) -> List<A> {
  .fromArray(Array(xs.toArray().prefix(Int(UInt.of(n)))))
}
public func List_dropWhile<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>) -> List<A> {
  .fromArray(Array(xs.toArray().drop(while: p)))
}
public func List_takeWhile<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>) -> List<A> {
  .fromArray(Array(xs.toArray().prefix(while: p)))
}
public func List_dropLast<A>(_ xs: List<A>) -> List<A> {
  let arr = xs.toArray(); return arr.isEmpty ? .nil : .fromArray(Array(arr.dropLast()))
}
public func List_rotateLeft<A>(_ xs: List<A>, _ n: Nat) -> List<A> {
  let arr = xs.toArray(); guard !arr.isEmpty else { return .nil }
  let k = Int(UInt.of(n)) % arr.count
  return .fromArray(Array(arr[k...]) + Array(arr[..<k]))
}
public func List_rotateRight<A>(_ xs: List<A>, _ n: Nat) -> List<A> {
  let arr = xs.toArray(); guard !arr.isEmpty else { return .nil }
  let k = arr.count - (Int(UInt.of(n)) % arr.count)
  return .fromArray(Array(arr[k...]) + Array(arr[..<k]))
}

// MARK: - Filter / Find

public func List_filter<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>) -> List<A> {
  .fromArray(xs.toArray().filter(p))
}
public func `List_find?`<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>) -> A? {
  xs.toArray().first(where: p)
}
public func `List_findIdx?`<A>(_ xs: List<A>, _ p: @escaping (A) -> Bool) -> Nat? {
  if let i = xs.toArray().firstIndex(where: p) { return Nat(UInt(i)) }; return nil
}
public func `List_findIdx?_go`<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>, _ i: Nat) -> Nat? {
  let arr = xs.toArray()
  for j in 0..<arr.count { if p(arr[j]) { return i + Nat(UInt(j)) } }
  return nil
}
public func `List_findRev?`<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>) -> A? {
  xs.toArray().last(where: p)
}
public func `List_findRev?TR`<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>) -> A? {
  `List_findRev?`(p, xs)
}
public func `List_findSome?`<A, B>(_ f: @escaping (A) -> B?, _ xs: List<A>) -> B? {
  for e in xs.toArray() { if let r = f(e) { return r } }; return nil
}
public func `List_findSomeRev?`<A, B>(_ f: @escaping (A) -> B?, _ xs: List<A>) -> B? {
  for e in xs.toArray().reversed() { if let r = f(e) { return r } }; return nil
}
public func `List_findSomeRev?TR`<A, B>(_ f: @escaping (A) -> B?, _ xs: List<A>) -> B? {
  `List_findSomeRev?`(f, xs)
}

// MARK: - Modify

public func List_set<A>(_ xs: List<A>, _ i: Nat, _ v: A) -> List<A> {
  var arr = xs.toArray(); let idx = Int(UInt.of(i))
  if idx < arr.count { arr[idx] = v }; return .fromArray(arr)
}
public func List_eraseIdx<A>(_ xs: List<A>, _ i: Nat) -> List<A> {
  var arr = xs.toArray(); let idx = Int(UInt.of(i))
  if idx < arr.count { arr.remove(at: idx) }; return .fromArray(arr)
}
public func List_eraseP<A>(_ p: @escaping (A) -> Bool, _ xs: List<A>) -> List<A> {
  var arr = xs.toArray()
  if let i = arr.firstIndex(where: p) { arr.remove(at: i) }
  return .fromArray(arr)
}
public func List_modifyTR<A>(_ xs: List<A>, _ i: Nat, _ f: @escaping (A) -> A) -> List<A> {
  var arr = xs.toArray(); let idx = Int(UInt.of(i))
  if idx < arr.count { arr[idx] = f(arr[idx]) }; return .fromArray(arr)
}
public func List_modifyTailIdx_go<A>(_ f: @escaping (List<A>) -> List<A>, _ i: Nat, _ xs: List<A>) -> List<A> {
  if i == 0 { return f(xs) }
  guard case .cons(let h, let t) = xs else { return .nil }
  return .cons(h, List_modifyTailIdx_go(f, i - 1, t))
}
public func List_mapMono<A>(_ xs: List<A>, _ f: @escaping (A) -> A) -> List<A> {
  .fromArray(xs.toArray().map(f))
}

// MARK: - Erase duplicates

public func List_eraseDupsBy<A>(_ eq: @escaping (A, A) -> Bool, _ xs: List<A>) -> List<A> {
  var result: [A] = []
  for e in xs.toArray() { if !result.contains(where: { eq($0, e) }) { result.append(e) } }
  return .fromArray(result)
}
public func List_eraseRepsBy<A>(_ eq: @escaping (A, A) -> Bool, _ xs: List<A>) -> List<A> {
  List_eraseRepsBy_loop(eq, xs)
}
public func List_eraseRepsBy_loop<A>(_ eq: @escaping (A, A) -> Bool, _ xs: List<A>) -> List<A> {
  let arr = xs.toArray(); var result: [A] = []
  for e in arr { if result.isEmpty || !eq(result.last!, e) { result.append(e) } }
  return .fromArray(result)
}

// MARK: - Build

public func List_range(_ n: Nat) -> List<Nat> {
  List_range_loop(n, .nil)
}
public func List_range_loop(_ n: Nat, _ acc: List<Nat>) -> List<Nat> {
  if n == 0 { return acc }
  return List_range_loop(n - 1, .cons(n - 1, acc))
}
public func List_range_u39_(_ start: Nat, _ n: Nat, _ step: Nat) -> List<Nat> {
  var r: [Nat] = []; var cur = start
  for _ in 0..<Int(UInt.of(n)) { r.append(cur); cur = cur + step }
  return .fromArray(r)
}
public func List_range_u39_TR_go(_ s: Nat, _ e: Nat, _ step: Nat, _ acc: List<Nat>) -> List<Nat> {
  var r = acc.toArray(); var cur = s
  while cur < e { r.append(cur); cur = cur + step }
  return .fromArray(r)
}
public func List_replicate<A>(_ n: Nat, _ a: A) -> List<A> {
  .fromArray(Array(repeating: a, count: Int(UInt.of(n))))
}
public func List_replicateTR<A>(_ n: Nat, _ a: A) -> List<A> { List_replicate(n, a) }
public func List_replicateTR_loop<A>(_ a: A, _ n: Nat, _ acc: List<A>) -> List<A> {
  var r = acc; var i = n
  while i > 0 { r = .cons(a, r); i = i - 1 }
  return r
}
public func List_leftpad<A>(_ n: Nat, _ a: A, _ xs: List<A>) -> List<A> {
  let arr = xs.toArray(); let len = Int(UInt.of(n))
  return len <= arr.count ? xs : .fromArray(Array(repeating: a, count: len - arr.count) + arr)
}
public func List_rightpad<A>(_ n: Nat, _ a: A, _ xs: List<A>) -> List<A> {
  let arr = xs.toArray(); let len = Int(UInt.of(n))
  return len <= arr.count ? xs : .fromArray(arr + Array(repeating: a, count: len - arr.count))
}

// MARK: - Intersperse / Intercalate

public func List_intersperse<A>(_ sep: A, _ xs: List<A>) -> List<A> {
  let arr = xs.toArray(); guard arr.count > 1 else { return xs }
  var r: [A] = [arr[0]]
  for e in arr.dropFirst() { r.append(sep); r.append(e) }
  return .fromArray(r)
}
public func List_intersperseTR<A>(_ sep: A, _ xs: List<A>) -> List<A> { List_intersperse(sep, xs) }
public func List_intercalateTR<A>(_ sep: List<A>, _ xss: List<List<A>>) -> List<A> {
  let lists = xss.toArray()
  guard !lists.isEmpty else { return .nil }
  var result = lists[0].toArray()
  let sepArr = sep.toArray()
  for l in lists.dropFirst() { result += sepArr + l.toArray() }
  return .fromArray(result)
}

// MARK: - Merge / Sort

public func List_merge<A>(_ xs: List<A>, _ ys: List<A>, _ lt: @escaping (A, A) -> Bool) -> List<A> {
  var a = xs.toArray(), b = ys.toArray(), r: [A] = []
  var i = 0, j = 0
  while i < a.count && j < b.count {
    if lt(a[i], b[j]) { r.append(a[i]); i += 1 } else { r.append(b[j]); j += 1 }
  }
  r += Array(a[i...]); r += Array(b[j...])
  return .fromArray(r)
}
public func List_mergeSort<A>(_ xs: List<A>, _ lt: @escaping (A, A) -> Bool) -> List<A> {
  var arr = xs.toArray(); arr.sort { lt($0, $1) }; return .fromArray(arr)
}
public func List_MergeSort_Internal_mergeSortTR<A>(_ xs: List<A>, _ lt: @escaping (A, A) -> Bool) -> List<A> {
  List_mergeSort(xs, lt)
}
public func List_MergeSort_Internal_mergeSortTR_u8322_<A>(_ xs: List<A>, _ lt: @escaping (A, A) -> Bool) -> List<A> {
  List_mergeSort(xs, lt)
}
public func List_MergeSort_Internal_mergeTR<A>(_ xs: List<A>, _ ys: List<A>, _ lt: @escaping (A, A) -> Bool) -> List<A> {
  List_merge(xs, ys, lt)
}

// MARK: - ZipWith

public func List_zipWithAll<A, B, C>(_ f: @escaping (A?, B?) -> C, _ xs: List<A>, _ ys: List<B>) -> List<C> {
  let a = xs.toArray(), b = ys.toArray()
  let n = max(a.count, b.count)
  var r: [C] = []
  for i in 0..<n { r.append(f(i < a.count ? a[i] : nil, i < b.count ? b[i] : nil)) }
  return .fromArray(r)
}

// MARK: - Conversion

public func List_toByteArray(_ xs: List<UInt8>) -> [UInt8] { xs.toArray() }
public func List_toByteArray_loop(_ xs: List<UInt8>, _ i: Nat, _ acc: [UInt8]) -> [UInt8] {
  acc + xs.toArray()
}
