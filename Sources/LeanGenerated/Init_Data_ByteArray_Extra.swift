// Swift v3 compiler output
// Module: src.Init.Data.ByteArray.Extra
#if canImport(Darwin)
import Darwin
#elseif canImport(Glibc)
import Glibc
#endif
import LeanRuntime
import LeanExterns

/// ByteArray.toUInt64BE!
public func `ByteArray_toUInt64BE!`(_ bs: Array<UInt8>) -> UInt64 {
  let _x_1: Nat = ByteArray_size(bs)
  let _x_2: Nat = 8
  let _x_4: Bool = _x_1 == _x_2
  if _x_4 {
    let _x_13: Nat = 0
    let _x_14: UInt8 = `ByteArray_get!`(bs, _x_13)
    let _x_15: UInt64 = UInt8_toUInt64(_x_14)
    let _x_16: UInt64 = 0
    let _x_17: UInt64 = UInt64_shiftLeft(_x_15, _x_16)
    let _x_18: Nat = 1
    let _x_19: UInt8 = `ByteArray_get!`(bs, _x_18)
    let _x_20: UInt64 = UInt8_toUInt64(_x_19)
    let _x_21: UInt64 = 0
    let _x_22: UInt64 = UInt64_shiftLeft(_x_20, _x_21)
    let _x_23: UInt64 = UInt64_lor(_x_17, _x_22)
    let _x_24: Nat = 2
    let _x_25: UInt8 = `ByteArray_get!`(bs, _x_24)
    let _x_26: UInt64 = UInt8_toUInt64(_x_25)
    let _x_27: UInt64 = 0
    let _x_28: UInt64 = UInt64_shiftLeft(_x_26, _x_27)
    let _x_29: UInt64 = UInt64_lor(_x_23, _x_28)
    let _x_30: Nat = 3
    let _x_31: UInt8 = `ByteArray_get!`(bs, _x_30)
    let _x_32: UInt64 = UInt8_toUInt64(_x_31)
    let _x_33: UInt64 = 0
    let _x_34: UInt64 = UInt64_shiftLeft(_x_32, _x_33)
    let _x_35: UInt64 = UInt64_lor(_x_29, _x_34)
    let _x_36: Nat = 4
    let _x_37: UInt8 = `ByteArray_get!`(bs, _x_36)
    let _x_38: UInt64 = UInt8_toUInt64(_x_37)
    let _x_39: UInt64 = 0
    let _x_40: UInt64 = UInt64_shiftLeft(_x_38, _x_39)
    let _x_41: UInt64 = UInt64_lor(_x_35, _x_40)
    let _x_42: Nat = 5
    let _x_43: UInt8 = `ByteArray_get!`(bs, _x_42)
    let _x_44: UInt64 = UInt8_toUInt64(_x_43)
    let _x_45: UInt64 = 0
    let _x_46: UInt64 = UInt64_shiftLeft(_x_44, _x_45)
    let _x_47: UInt64 = UInt64_lor(_x_41, _x_46)
    let _x_48: Nat = 6
    let _x_49: UInt8 = `ByteArray_get!`(bs, _x_48)
    let _x_50: UInt64 = UInt8_toUInt64(_x_49)
    let _x_51: UInt64 = 0
    let _x_52: UInt64 = UInt64_shiftLeft(_x_50, _x_51)
    let _x_53: UInt64 = UInt64_lor(_x_47, _x_52)
    let _x_54: Nat = 7
    let _x_55: UInt8 = `ByteArray_get!`(bs, _x_54)
    let _x_56: UInt64 = UInt8_toUInt64(_x_55)
    return UInt64_lor(_x_53, _x_56)
  } else {
    let _x_6: String = "src.Init.Data.ByteArray.Extra"
    let _x_7: String = "ByteArray.toUInt64BE!"
    let _x_8: Nat = 37
    let _x_9: Nat = 2
    let _x_10: String = """
assertion violation: bs.size == 8
  
"""
    let _x_11: String = mkPanicMessageWithDecl(_x_6, _x_7, _x_8, _x_9, _x_10)
    return panic(_x_11)
  }
}

/// ByteArray.toUInt64LE!
public func `ByteArray_toUInt64LE!`(_ bs: Array<UInt8>) -> UInt64 {
  let _x_1: Nat = ByteArray_size(bs)
  let _x_2: Nat = 8
  let _x_4: Bool = _x_1 == _x_2
  if _x_4 {
    let _x_13: Nat = 7
    let _x_14: UInt8 = `ByteArray_get!`(bs, _x_13)
    let _x_15: UInt64 = UInt8_toUInt64(_x_14)
    let _x_16: UInt64 = 0
    let _x_17: UInt64 = UInt64_shiftLeft(_x_15, _x_16)
    let _x_18: Nat = 6
    let _x_19: UInt8 = `ByteArray_get!`(bs, _x_18)
    let _x_20: UInt64 = UInt8_toUInt64(_x_19)
    let _x_21: UInt64 = 0
    let _x_22: UInt64 = UInt64_shiftLeft(_x_20, _x_21)
    let _x_23: UInt64 = UInt64_lor(_x_17, _x_22)
    let _x_24: Nat = 5
    let _x_25: UInt8 = `ByteArray_get!`(bs, _x_24)
    let _x_26: UInt64 = UInt8_toUInt64(_x_25)
    let _x_27: UInt64 = 0
    let _x_28: UInt64 = UInt64_shiftLeft(_x_26, _x_27)
    let _x_29: UInt64 = UInt64_lor(_x_23, _x_28)
    let _x_30: Nat = 4
    let _x_31: UInt8 = `ByteArray_get!`(bs, _x_30)
    let _x_32: UInt64 = UInt8_toUInt64(_x_31)
    let _x_33: UInt64 = 0
    let _x_34: UInt64 = UInt64_shiftLeft(_x_32, _x_33)
    let _x_35: UInt64 = UInt64_lor(_x_29, _x_34)
    let _x_36: Nat = 3
    let _x_37: UInt8 = `ByteArray_get!`(bs, _x_36)
    let _x_38: UInt64 = UInt8_toUInt64(_x_37)
    let _x_39: UInt64 = 0
    let _x_40: UInt64 = UInt64_shiftLeft(_x_38, _x_39)
    let _x_41: UInt64 = UInt64_lor(_x_35, _x_40)
    let _x_42: Nat = 2
    let _x_43: UInt8 = `ByteArray_get!`(bs, _x_42)
    let _x_44: UInt64 = UInt8_toUInt64(_x_43)
    let _x_45: UInt64 = 0
    let _x_46: UInt64 = UInt64_shiftLeft(_x_44, _x_45)
    let _x_47: UInt64 = UInt64_lor(_x_41, _x_46)
    let _x_48: Nat = 1
    let _x_49: UInt8 = `ByteArray_get!`(bs, _x_48)
    let _x_50: UInt64 = UInt8_toUInt64(_x_49)
    let _x_51: UInt64 = 0
    let _x_52: UInt64 = UInt64_shiftLeft(_x_50, _x_51)
    let _x_53: UInt64 = UInt64_lor(_x_47, _x_52)
    let _x_54: Nat = 0
    let _x_55: UInt8 = `ByteArray_get!`(bs, _x_54)
    let _x_56: UInt64 = UInt8_toUInt64(_x_55)
    return UInt64_lor(_x_53, _x_56)
  } else {
    let _x_6: String = "src.Init.Data.ByteArray.Extra"
    let _x_7: String = "ByteArray.toUInt64LE!"
    let _x_8: Nat = 21
    let _x_9: Nat = 2
    let _x_10: String = """
assertion violation: bs.size == 8
  
"""
    let _x_11: String = mkPanicMessageWithDecl(_x_6, _x_7, _x_8, _x_9, _x_10)
    return panic(_x_11)
  }
}

