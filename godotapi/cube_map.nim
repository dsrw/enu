
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  FLAGS_DEFAULT* = 7'i64
  FLAG_FILTER* = 4'i64
  FLAG_MIPMAPS* = 1'i64
  FLAG_REPEAT* = 2'i64
  SIDE_BACK* = 5'i64
  SIDE_BOTTOM* = 2'i64
  SIDE_FRONT* = 4'i64
  SIDE_LEFT* = 0'i64
  SIDE_RIGHT* = 1'i64
  SIDE_TOP* = 3'i64
  STORAGE_COMPRESS_LOSSLESS* = 2'i64
  STORAGE_COMPRESS_LOSSY* = 1'i64
  STORAGE_RAW* = 0'i64
proc flags*(self: CubeMap): int64 {.gcsafe, locks: 0.}
proc `flags=`*(self: CubeMap; val: int64) {.gcsafe, locks: 0.}
proc lossyStorageQuality*(self: CubeMap): float64 {.gcsafe, locks: 0.}
proc `lossyStorageQuality=`*(self: CubeMap; val: float64) {.gcsafe, locks: 0.}
proc storageMode*(self: CubeMap): int64 {.gcsafe, locks: 0.}
proc `storageMode=`*(self: CubeMap; val: int64) {.gcsafe, locks: 0.}
proc getHeight*(self: CubeMap): int64 {.gcsafe, locks: 0.}
proc getSide*(self: CubeMap; side: int64): Image {.gcsafe, locks: 0.}
proc getWidth*(self: CubeMap): int64 {.gcsafe, locks: 0.}
proc setSide*(self: CubeMap; side: int64; image: Image) {.gcsafe, locks: 0.}
var cubeMapGetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc flags(self: CubeMap): int64 =
  if isNil(cubeMapGetFlagsMethodBind):
    cubeMapGetFlagsMethodBind = getMethod(cstring"CubeMap", cstring"get_flags")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMapGetFlagsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMapSetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flags=`(self: CubeMap; val: int64) =
  if isNil(cubeMapSetFlagsMethodBind):
    cubeMapSetFlagsMethodBind = getMethod(cstring"CubeMap", cstring"set_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cubeMapSetFlagsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var cubeMapGetLossyStorageQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc lossyStorageQuality(self: CubeMap): float64 =
  if isNil(cubeMapGetLossyStorageQualityMethodBind):
    cubeMapGetLossyStorageQualityMethodBind = getMethod(cstring"CubeMap",
        cstring"get_lossy_storage_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMapGetLossyStorageQualityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cubeMapSetLossyStorageQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lossyStorageQuality=`(self: CubeMap; val: float64) =
  if isNil(cubeMapSetLossyStorageQualityMethodBind):
    cubeMapSetLossyStorageQualityMethodBind = getMethod(cstring"CubeMap",
        cstring"set_lossy_storage_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cubeMapSetLossyStorageQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cubeMapGetStorageMethodBind {.threadvar.}: ptr GodotMethodBind
proc storageMode(self: CubeMap): int64 =
  if isNil(cubeMapGetStorageMethodBind):
    cubeMapGetStorageMethodBind = getMethod(cstring"CubeMap", cstring"get_storage")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMapGetStorageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMapSetStorageMethodBind {.threadvar.}: ptr GodotMethodBind
proc `storageMode=`(self: CubeMap; val: int64) =
  if isNil(cubeMapSetStorageMethodBind):
    cubeMapSetStorageMethodBind = getMethod(cstring"CubeMap", cstring"set_storage")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cubeMapSetStorageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var cubeMapGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHeight(self: CubeMap): int64 =
  if isNil(cubeMapGetHeightMethodBind):
    cubeMapGetHeightMethodBind = getMethod(cstring"CubeMap", cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMapGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMapGetSideMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSide(self: CubeMap; side: int64): Image =
  if isNil(cubeMapGetSideMethodBind):
    cubeMapGetSideMethodBind = getMethod(cstring"CubeMap", cstring"get_side")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(side)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  cubeMapGetSideMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var cubeMapGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWidth(self: CubeMap): int64 =
  if isNil(cubeMapGetWidthMethodBind):
    cubeMapGetWidthMethodBind = getMethod(cstring"CubeMap", cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cubeMapGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cubeMapSetSideMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSide(self: CubeMap; side: int64; image: Image) =
  if isNil(cubeMapSetSideMethodBind):
    cubeMapSetSideMethodBind = getMethod(cstring"CubeMap", cstring"set_side")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(side)
  let argToPassToGodot1 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  cubeMapSetSideMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
