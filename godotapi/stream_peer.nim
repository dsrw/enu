
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc bigEndian*(self: StreamPeer): bool {.gcsafe, locks: 0.}
proc `bigEndian=`*(self: StreamPeer; val: bool) {.gcsafe, locks: 0.}
proc get16*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc get32*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc get64*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc get8*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc getAvailableBytes*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc getData*(self: StreamPeer; bytes: int64): Array {.gcsafe, locks: 0.}
proc getDouble*(self: StreamPeer): float64 {.gcsafe, locks: 0.}
proc getFloat*(self: StreamPeer): float64 {.gcsafe, locks: 0.}
proc getPartialData*(self: StreamPeer; bytes: int64): Array {.gcsafe, locks: 0.}
proc getString*(self: StreamPeer; bytes: int64 = -1'i64): string {.gcsafe, locks: 0.}
proc getU16*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc getU32*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc getU64*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc getU8*(self: StreamPeer): int64 {.gcsafe, locks: 0.}
proc getUtf8String*(self: StreamPeer; bytes: int64 = -1'i64): string {.gcsafe, locks: 0.}
proc getVar*(self: StreamPeer; allowObjects: bool = false): Variant {.gcsafe, locks: 0.}
proc put16*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc put32*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc put64*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc put8*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc putData*(self: StreamPeer; data: PoolByteArray): Error {.gcsafe, locks: 0.}
proc putDouble*(self: StreamPeer; value: float64) {.gcsafe, locks: 0.}
proc putFloat*(self: StreamPeer; value: float64) {.gcsafe, locks: 0.}
proc putPartialData*(self: StreamPeer; data: PoolByteArray): Array {.gcsafe, locks: 0.}
proc putString*(self: StreamPeer; value: string) {.gcsafe, locks: 0.}
proc putU16*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc putU32*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc putU64*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc putU8*(self: StreamPeer; value: int64) {.gcsafe, locks: 0.}
proc putUtf8String*(self: StreamPeer; value: string) {.gcsafe, locks: 0.}
proc putVar*(self: StreamPeer; value: Variant; fullObjects: bool = false) {.gcsafe,
    locks: 0.}
var streamPeerIsBigEndianEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc bigEndian(self: StreamPeer): bool =
  if isNil(streamPeerIsBigEndianEnabledMethodBind):
    streamPeerIsBigEndianEnabledMethodBind = getMethod(cstring"StreamPeer",
        cstring"is_big_endian_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerIsBigEndianEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerSetBigEndianMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bigEndian=`(self: StreamPeer; val: bool) =
  if isNil(streamPeerSetBigEndianMethodBind):
    streamPeerSetBigEndianMethodBind = getMethod(cstring"StreamPeer",
        cstring"set_big_endian")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  streamPeerSetBigEndianMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var streamPeerGet16MethodBind {.threadvar.}: ptr GodotMethodBind
proc get16(self: StreamPeer): int64 =
  if isNil(streamPeerGet16MethodBind):
    streamPeerGet16MethodBind = getMethod(cstring"StreamPeer", cstring"get_16")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGet16MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGet32MethodBind {.threadvar.}: ptr GodotMethodBind
proc get32(self: StreamPeer): int64 =
  if isNil(streamPeerGet32MethodBind):
    streamPeerGet32MethodBind = getMethod(cstring"StreamPeer", cstring"get_32")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGet32MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGet64MethodBind {.threadvar.}: ptr GodotMethodBind
proc get64(self: StreamPeer): int64 =
  if isNil(streamPeerGet64MethodBind):
    streamPeerGet64MethodBind = getMethod(cstring"StreamPeer", cstring"get_64")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGet64MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGet8MethodBind {.threadvar.}: ptr GodotMethodBind
proc get8(self: StreamPeer): int64 =
  if isNil(streamPeerGet8MethodBind):
    streamPeerGet8MethodBind = getMethod(cstring"StreamPeer", cstring"get_8")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGet8MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetAvailableBytesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAvailableBytes(self: StreamPeer): int64 =
  if isNil(streamPeerGetAvailableBytesMethodBind):
    streamPeerGetAvailableBytesMethodBind = getMethod(cstring"StreamPeer",
        cstring"get_available_bytes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGetAvailableBytesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getData(self: StreamPeer; bytes: int64): Array =
  if isNil(streamPeerGetDataMethodBind):
    streamPeerGetDataMethodBind = getMethod(cstring"StreamPeer", cstring"get_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bytes)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  streamPeerGetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = newArray(ptrCallVal)

var streamPeerGetDoubleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDouble(self: StreamPeer): float64 =
  if isNil(streamPeerGetDoubleMethodBind):
    streamPeerGetDoubleMethodBind = getMethod(cstring"StreamPeer",
        cstring"get_double")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGetDoubleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetFloatMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFloat(self: StreamPeer): float64 =
  if isNil(streamPeerGetFloatMethodBind):
    streamPeerGetFloatMethodBind = getMethod(cstring"StreamPeer",
        cstring"get_float")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGetFloatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetPartialDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPartialData(self: StreamPeer; bytes: int64): Array =
  if isNil(streamPeerGetPartialDataMethodBind):
    streamPeerGetPartialDataMethodBind = getMethod(cstring"StreamPeer",
        cstring"get_partial_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bytes)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  streamPeerGetPartialDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var streamPeerGetStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getString(self: StreamPeer; bytes: int64 = -1'i64): string =
  if isNil(streamPeerGetStringMethodBind):
    streamPeerGetStringMethodBind = getMethod(cstring"StreamPeer",
        cstring"get_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bytes)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  streamPeerGetStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var streamPeerGetU16MethodBind {.threadvar.}: ptr GodotMethodBind
proc getU16(self: StreamPeer): int64 =
  if isNil(streamPeerGetU16MethodBind):
    streamPeerGetU16MethodBind = getMethod(cstring"StreamPeer", cstring"get_u16")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGetU16MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetU32MethodBind {.threadvar.}: ptr GodotMethodBind
proc getU32(self: StreamPeer): int64 =
  if isNil(streamPeerGetU32MethodBind):
    streamPeerGetU32MethodBind = getMethod(cstring"StreamPeer", cstring"get_u32")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGetU32MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetU64MethodBind {.threadvar.}: ptr GodotMethodBind
proc getU64(self: StreamPeer): int64 =
  if isNil(streamPeerGetU64MethodBind):
    streamPeerGetU64MethodBind = getMethod(cstring"StreamPeer", cstring"get_u64")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGetU64MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetU8MethodBind {.threadvar.}: ptr GodotMethodBind
proc getU8(self: StreamPeer): int64 =
  if isNil(streamPeerGetU8MethodBind):
    streamPeerGetU8MethodBind = getMethod(cstring"StreamPeer", cstring"get_u8")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  streamPeerGetU8MethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var streamPeerGetUtf8StringMethodBind {.threadvar.}: ptr GodotMethodBind
proc getUtf8String(self: StreamPeer; bytes: int64 = -1'i64): string =
  if isNil(streamPeerGetUtf8StringMethodBind):
    streamPeerGetUtf8StringMethodBind = getMethod(cstring"StreamPeer",
        cstring"get_utf8_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bytes)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  streamPeerGetUtf8StringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var streamPeerGetVarMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVar(self: StreamPeer; allowObjects: bool = false): Variant =
  if isNil(streamPeerGetVarMethodBind):
    streamPeerGetVarMethodBind = getMethod(cstring"StreamPeer", cstring"get_var")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(allowObjects)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  streamPeerGetVarMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  result = newVariant(ptrCallVal)

var streamPeerPut16MethodBind {.threadvar.}: ptr GodotMethodBind
proc put16(self: StreamPeer; value: int64) =
  if isNil(streamPeerPut16MethodBind):
    streamPeerPut16MethodBind = getMethod(cstring"StreamPeer", cstring"put_16")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPut16MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var streamPeerPut32MethodBind {.threadvar.}: ptr GodotMethodBind
proc put32(self: StreamPeer; value: int64) =
  if isNil(streamPeerPut32MethodBind):
    streamPeerPut32MethodBind = getMethod(cstring"StreamPeer", cstring"put_32")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPut32MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var streamPeerPut64MethodBind {.threadvar.}: ptr GodotMethodBind
proc put64(self: StreamPeer; value: int64) =
  if isNil(streamPeerPut64MethodBind):
    streamPeerPut64MethodBind = getMethod(cstring"StreamPeer", cstring"put_64")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPut64MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var streamPeerPut8MethodBind {.threadvar.}: ptr GodotMethodBind
proc put8(self: StreamPeer; value: int64) =
  if isNil(streamPeerPut8MethodBind):
    streamPeerPut8MethodBind = getMethod(cstring"StreamPeer", cstring"put_8")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPut8MethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var streamPeerPutDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc putData(self: StreamPeer; data: PoolByteArray): Error =
  if isNil(streamPeerPutDataMethodBind):
    streamPeerPutDataMethodBind = getMethod(cstring"StreamPeer", cstring"put_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = data.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  streamPeerPutDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = Error(ptrCallVal)

var streamPeerPutDoubleMethodBind {.threadvar.}: ptr GodotMethodBind
proc putDouble(self: StreamPeer; value: float64) =
  if isNil(streamPeerPutDoubleMethodBind):
    streamPeerPutDoubleMethodBind = getMethod(cstring"StreamPeer",
        cstring"put_double")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPutDoubleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var streamPeerPutFloatMethodBind {.threadvar.}: ptr GodotMethodBind
proc putFloat(self: StreamPeer; value: float64) =
  if isNil(streamPeerPutFloatMethodBind):
    streamPeerPutFloatMethodBind = getMethod(cstring"StreamPeer",
        cstring"put_float")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPutFloatMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var streamPeerPutPartialDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc putPartialData(self: StreamPeer; data: PoolByteArray): Array =
  if isNil(streamPeerPutPartialDataMethodBind):
    streamPeerPutPartialDataMethodBind = getMethod(cstring"StreamPeer",
        cstring"put_partial_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = data.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  streamPeerPutPartialDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var streamPeerPutStringMethodBind {.threadvar.}: ptr GodotMethodBind
proc putString(self: StreamPeer; value: string) =
  if isNil(streamPeerPutStringMethodBind):
    streamPeerPutStringMethodBind = getMethod(cstring"StreamPeer",
        cstring"put_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(value)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  streamPeerPutStringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var streamPeerPutU16MethodBind {.threadvar.}: ptr GodotMethodBind
proc putU16(self: StreamPeer; value: int64) =
  if isNil(streamPeerPutU16MethodBind):
    streamPeerPutU16MethodBind = getMethod(cstring"StreamPeer", cstring"put_u16")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPutU16MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var streamPeerPutU32MethodBind {.threadvar.}: ptr GodotMethodBind
proc putU32(self: StreamPeer; value: int64) =
  if isNil(streamPeerPutU32MethodBind):
    streamPeerPutU32MethodBind = getMethod(cstring"StreamPeer", cstring"put_u32")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPutU32MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var streamPeerPutU64MethodBind {.threadvar.}: ptr GodotMethodBind
proc putU64(self: StreamPeer; value: int64) =
  if isNil(streamPeerPutU64MethodBind):
    streamPeerPutU64MethodBind = getMethod(cstring"StreamPeer", cstring"put_u64")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPutU64MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var streamPeerPutU8MethodBind {.threadvar.}: ptr GodotMethodBind
proc putU8(self: StreamPeer; value: int64) =
  if isNil(streamPeerPutU8MethodBind):
    streamPeerPutU8MethodBind = getMethod(cstring"StreamPeer", cstring"put_u8")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(value)
  var ptrCallRet: pointer
  streamPeerPutU8MethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var streamPeerPutUtf8StringMethodBind {.threadvar.}: ptr GodotMethodBind
proc putUtf8String(self: StreamPeer; value: string) =
  if isNil(streamPeerPutUtf8StringMethodBind):
    streamPeerPutUtf8StringMethodBind = getMethod(cstring"StreamPeer",
        cstring"put_utf8_string")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(value)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  streamPeerPutUtf8StringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var streamPeerPutVarMethodBind {.threadvar.}: ptr GodotMethodBind
proc putVar(self: StreamPeer; value: Variant; fullObjects: bool = false) =
  if isNil(streamPeerPutVarMethodBind):
    streamPeerPutVarMethodBind = getMethod(cstring"StreamPeer", cstring"put_var")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = value.godotVariant
  argsToPassToGodot[][1] = unsafeAddr(fullObjects)
  var ptrCallRet: pointer
  streamPeerPutVarMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
