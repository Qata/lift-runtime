// Swift v3 compiler output
// Module: src.Init.Data.ByteArray.Basic
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// ByteArray.Iterator.hasPrev
public extension ByteArray_Iterator {
  var hasPrev: Bool {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = 0
    return _x_4 < idx_3
  }
}

@inline(__always) public func ByteArray_Iterator_hasPrev(_ x_1: ByteArray_Iterator) -> Bool {
  x_1.hasPrev
}

/// ByteArray.toList
public func ByteArray_toList(_ bs: Array<UInt8>) -> List<UInt8> {
  let _x_1: Nat = 0
  let _x_2: List<UInt8> = List<UInt8>.`nil`
  return ByteArray_toList_loop(bs, _x_1, _x_2)
}

/// ByteArray.Iterator.pos
public extension ByteArray_Iterator {
  var pos: Nat {
    self.idx
  }
}

@inline(__always) public func ByteArray_Iterator_pos(_ self: ByteArray_Iterator) -> Nat {
  self.pos
}

/// ByteArray.findIdx?.loop
public func `ByteArray_findIdx?_loop`(_ a: Array<UInt8>, _ p: @escaping (UInt8) -> Bool, _ i: Nat) -> Nat? {
  let _x_1: Nat = ByteArray_size(a)
  let _x_2: Bool = i < _x_1
  if _x_2 {
    let _x_4: UInt8 = ByteArray_get(a, i)
    let _x_5: Bool = p(_x_4)
    if _x_5 {
      return Nat?.some(i)
    } else {
      let _x_6: Nat = 1
      let _x_7: Nat = i + _x_6
      return `ByteArray_findIdx?_loop`(a, p, _x_7)
    }
  } else {
    return nil
  }
}

/// ByteArray.Iterator.hasNext
public extension ByteArray_Iterator {
  var hasNext: Bool {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = ByteArray_size(array_2)
    return idx_3 < _x_4
  }
}

@inline(__always) public func ByteArray_Iterator_hasNext(_ x_1: ByteArray_Iterator) -> Bool {
  x_1.hasNext
}

public let ByteArray_instInhabitedIterator_default: ByteArray_Iterator = {
  let _x_1: Array<UInt8> = ByteArray_empty
  let _x_2: Nat = 0
  return ByteArray_Iterator(_x_1, _x_2)
}()

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

@inline(__always) public func ByteArray_Iterator_next(_ x_1: ByteArray_Iterator) -> ByteArray_Iterator {
  x_1.next
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

@inline(__always) public func ByteArray_Iterator_nextn(_ a_1: ByteArray_Iterator, _ a_2: Nat) -> ByteArray_Iterator {
  a_1.nextn(a_2)
}

/// ByteArray.toList.loop
public func ByteArray_toList_loop(_ bs: Array<UInt8>, _ i: Nat, _ r: List<UInt8>) -> List<UInt8> {
  let _x_1: Nat = ByteArray_size(bs)
  let _x_2: Bool = i < _x_1
  if _x_2 {
    let _x_6: Nat = 1
    let _x_7: Nat = i + _x_6
    let _x_8: UInt8 = `ByteArray_get!`(bs, i)
    let _x_9: List<UInt8> = List<UInt8>.cons(_x_8, r)
    return ByteArray_toList_loop(bs, _x_7, _x_9)
  } else {
    return List_reverse(r)
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

@inline(__always) public func ByteArray_Iterator_prev(_ x_1: ByteArray_Iterator) -> ByteArray_Iterator {
  x_1.prev
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

@inline(__always) public func ByteArray_Iterator_forward(_ x_1: ByteArray_Iterator, _ x_2: Nat) -> ByteArray_Iterator {
  x_1.forward(x_2)
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

@inline(__always) public func ByteArray_Iterator_toEnd(_ x_1: ByteArray_Iterator) -> ByteArray_Iterator {
  x_1.toEnd
}

/// ByteArray.extract
public func ByteArray_extract(_ a: Array<UInt8>, _ b: Nat, _ e: Nat) -> Array<UInt8> {
  let _x_1: Array<UInt8> = ByteArray_empty
  let _x_2: Nat = 0
  let _x_3: Nat = e - b
  let _x_4: Bool = true
  return ByteArray_copySlice(a, b, _x_1, _x_2, _x_3, _x_4)
}

/// ByteArray.Iterator.atEnd
public extension ByteArray_Iterator {
  var atEnd: Bool {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = ByteArray_size(array_2)
    return _x_4 <= idx_3
  }
}

@inline(__always) public func ByteArray_Iterator_atEnd(_ x_1: ByteArray_Iterator) -> Bool {
  x_1.atEnd
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

@inline(__always) public func ByteArray_Iterator_prevn(_ x_1: ByteArray_Iterator, _ x_2: Nat) -> ByteArray_Iterator {
  x_1.prevn(x_2)
}

/// ByteArray.instDecidableEq_src
public func ByteArray_instDecidableEq_src(_ x_1: Array<UInt8>, _ x_2: Array<UInt8>) -> Decidable {
  let _x_3: (UInt8, UInt8) -> Decidable = instDecidableEqUInt8
  let _x_4: Array<UInt8> = ByteArray_data(x_1)
  let _x_5: Array<UInt8> = ByteArray_data(x_2)
  let _x_6: Decidable = Array_instDecidableEqImpl(_x_3, _x_4, _x_5)
  switch _x_6 {
  case .isFalse:
    return Decidable.isFalse
  case .isTrue:
    return Decidable.isTrue
  default:
    fatalError("unreachable")
  }
}

/// ByteArray.Iterator.curr
public extension ByteArray_Iterator {
  var curr: UInt8 {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = ByteArray_size(array_2)
    let _x_5: Bool = idx_3 < _x_4
    if _x_5 {
      return ByteArray_get(array_2, idx_3)
    } else {
      let _x_6: Nat = 0
      return UInt8_ofNatLT(_x_6)
    }
  }
}

@inline(__always) public func ByteArray_Iterator_curr(_ x_1: ByteArray_Iterator) -> UInt8 {
  x_1.curr
}

/// ByteArray.isEmpty
public func ByteArray_isEmpty(_ s: Array<UInt8>) -> Bool {
  let _x_1: Nat = ByteArray_size(s)
  let _x_2: Nat = 0
  return _x_1 == _x_2
}

/// ByteArray.mkIterator
public func ByteArray_mkIterator(_ arr: Array<UInt8>) -> ByteArray_Iterator {
  let _x_1: Nat = 0
  return ByteArray_Iterator(arr, _x_1)
}

/// ByteArray.fastAppend
@inline(__always) public func ByteArray_fastAppend(_ a: Array<UInt8>, _ b: Array<UInt8>) -> Array<UInt8> {
  let _x_1: Nat = 0
  let _x_2: Nat = ByteArray_size(a)
  let _x_3: Nat = ByteArray_size(b)
  let _x_4: Bool = false
  return ByteArray_copySlice(b, _x_1, a, _x_2, _x_3, _x_4)
}

/// ByteArray.Iterator.remainingBytes
public extension ByteArray_Iterator {
  var remainingBytes: Nat {
    let array_2: Array<UInt8> = self.array
    let idx_3: Nat = self.idx
    let _x_4: Nat = ByteArray_size(array_2)
    return _x_4 - idx_3
  }
}

@inline(__always) public func ByteArray_Iterator_remainingBytes(_ x_1: ByteArray_Iterator) -> Nat {
  x_1.remainingBytes
}

/// ByteArray.Iterator.curr'
public extension ByteArray_Iterator {
  var `curr'`: UInt8 {
    let array_1: Array<UInt8> = self.array
    let idx_2: Nat = self.idx
    return ByteArray_get(array_1, idx_2)
  }
}

@inline(__always) public func `ByteArray_Iterator_curr'`(_ it: ByteArray_Iterator) -> UInt8 {
  it.`curr'`
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

@inline(__always) public func `ByteArray_Iterator_next'`(_ it: ByteArray_Iterator) -> ByteArray_Iterator {
  it.`next'`
}

/// ByteArray.instBEq_src.beq
public func ByteArray_instBEq_beq(_ x_1: Array<UInt8>, _ x_2: Array<UInt8>) -> Bool {
  func _f_3(_ a: UInt8, _ b: UInt8) -> Bool {
    a == b
  }
  let data_6: Array<UInt8> = x_1.data
  let data_7: Array<UInt8> = x_2.data
  let _x_8: Nat = Array_size(data_6)
  let _x_9: Nat = Array_size(data_7)
  let _x_10: Bool = _x_8 == _x_9
  if _x_10 {
    return Array_isEqvAux(data_6, data_7, _f_3, _x_8)
  } else {
    return false
  }
}

