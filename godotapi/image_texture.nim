
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

const
  STORAGE_COMPRESS_LOSSLESS* = 2'i64
  STORAGE_COMPRESS_LOSSY* = 1'i64
  STORAGE_RAW* = 0'i64
proc lossyQuality*(self: ImageTexture): float64 {.gcsafe, locks: 0.}
proc `lossyQuality=`*(self: ImageTexture; val: float64) {.gcsafe, locks: 0.}
proc storage*(self: ImageTexture): int64 {.gcsafe, locks: 0.}
proc `storage=`*(self: ImageTexture; val: int64) {.gcsafe, locks: 0.}
method reloadHook*(self: ImageTexture; rid: RID) {.gcsafe, locks: 0, base.}
proc create*(self: ImageTexture; width: int64; height: int64; format: int64;
            flags: int64 = 7'i64) {.gcsafe, locks: 0.}
proc createFromImage*(self: ImageTexture; image: Image; flags: int64 = 7'i64) {.gcsafe,
    locks: 0.}
proc getFormat*(self: ImageTexture): int64 {.gcsafe, locks: 0.}
proc load*(self: ImageTexture; path: string): Error {.gcsafe, locks: 0.}
proc setData*(self: ImageTexture; image: Image) {.gcsafe, locks: 0.}
proc setSizeOverride*(self: ImageTexture; size: Vector2) {.gcsafe, locks: 0.}
var imageTextureGetLossyStorageQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc lossyQuality(self: ImageTexture): float64 =
  if isNil(imageTextureGetLossyStorageQualityMethodBind):
    imageTextureGetLossyStorageQualityMethodBind = getMethod(
        cstring"ImageTexture", cstring"get_lossy_storage_quality")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageTextureGetLossyStorageQualityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var imageTextureSetLossyStorageQualityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lossyQuality=`(self: ImageTexture; val: float64) =
  if isNil(imageTextureSetLossyStorageQualityMethodBind):
    imageTextureSetLossyStorageQualityMethodBind = getMethod(
        cstring"ImageTexture", cstring"set_lossy_storage_quality")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  imageTextureSetLossyStorageQualityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var imageTextureGetStorageMethodBind {.threadvar.}: ptr GodotMethodBind
proc storage(self: ImageTexture): int64 =
  if isNil(imageTextureGetStorageMethodBind):
    imageTextureGetStorageMethodBind = getMethod(cstring"ImageTexture",
        cstring"get_storage")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageTextureGetStorageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageTextureSetStorageMethodBind {.threadvar.}: ptr GodotMethodBind
proc `storage=`(self: ImageTexture; val: int64) =
  if isNil(imageTextureSetStorageMethodBind):
    imageTextureSetStorageMethodBind = getMethod(cstring"ImageTexture",
        cstring"set_storage")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  imageTextureSetStorageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var imageTextureUnderscorereloadHookMethodBind {.threadvar.}: ptr GodotMethodBind
method reloadHook(self: ImageTexture; rid: RID) =
  if isNil(imageTextureUnderscorereloadHookMethodBind):
    imageTextureUnderscorereloadHookMethodBind = getMethod(cstring"ImageTexture",
        cstring"_reload_hook")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  imageTextureUnderscorereloadHookMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var imageTextureCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc create(self: ImageTexture; width: int64; height: int64; format: int64;
           flags: int64 = 7'i64) =
  if isNil(imageTextureCreateMethodBind):
    imageTextureCreateMethodBind = getMethod(cstring"ImageTexture",
        cstring"create")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(format)
  argsToPassToGodot[][3] = unsafeAddr(flags)
  var ptrCallRet: pointer
  imageTextureCreateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var imageTextureCreateFromImageMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFromImage(self: ImageTexture; image: Image; flags: int64 = 7'i64) =
  if isNil(imageTextureCreateFromImageMethodBind):
    imageTextureCreateFromImageMethodBind = getMethod(cstring"ImageTexture",
        cstring"create_from_image")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(flags)
  var ptrCallRet: pointer
  imageTextureCreateFromImageMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var imageTextureGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFormat(self: ImageTexture): int64 =
  if isNil(imageTextureGetFormatMethodBind):
    imageTextureGetFormatMethodBind = getMethod(cstring"ImageTexture",
        cstring"get_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  imageTextureGetFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var imageTextureLoadMethodBind {.threadvar.}: ptr GodotMethodBind
proc load(self: ImageTexture; path: string): Error =
  if isNil(imageTextureLoadMethodBind):
    imageTextureLoadMethodBind = getMethod(cstring"ImageTexture", cstring"load")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  imageTextureLoadMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var imageTextureSetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setData(self: ImageTexture; image: Image) =
  if isNil(imageTextureSetDataMethodBind):
    imageTextureSetDataMethodBind = getMethod(cstring"ImageTexture",
        cstring"set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  imageTextureSetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var imageTextureSetSizeOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSizeOverride(self: ImageTexture; size: Vector2) =
  if isNil(imageTextureSetSizeOverrideMethodBind):
    imageTextureSetSizeOverrideMethodBind = getMethod(cstring"ImageTexture",
        cstring"set_size_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  imageTextureSetSizeOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
