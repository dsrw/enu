
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc data*(self: LargeTexture): Array {.gcsafe, locks: 0.}
proc `data=`*(self: LargeTexture; val: Array) {.gcsafe, locks: 0.}
proc addPiece*(self: LargeTexture; ofs: Vector2; texture: Texture): int64 {.gcsafe,
    locks: 0.}
proc clear*(self: LargeTexture) {.gcsafe, locks: 0.}
proc getPieceCount*(self: LargeTexture): int64 {.gcsafe, locks: 0.}
proc getPieceOffset*(self: LargeTexture; idx: int64): Vector2 {.gcsafe, locks: 0.}
proc getPieceTexture*(self: LargeTexture; idx: int64): Texture {.gcsafe, locks: 0.}
proc setPieceOffset*(self: LargeTexture; idx: int64; ofs: Vector2) {.gcsafe, locks: 0.}
proc setPieceTexture*(self: LargeTexture; idx: int64; texture: Texture) {.gcsafe,
    locks: 0.}
proc setSize*(self: LargeTexture; size: Vector2) {.gcsafe, locks: 0.}
var largeTextureUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: LargeTexture): Array =
  if isNil(largeTextureUnderscoregetDataMethodBind):
    largeTextureUnderscoregetDataMethodBind = getMethod(cstring"LargeTexture",
        cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  largeTextureUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var largeTextureUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: LargeTexture; val: Array) =
  if isNil(largeTextureUnderscoresetDataMethodBind):
    largeTextureUnderscoresetDataMethodBind = getMethod(cstring"LargeTexture",
        cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  largeTextureUnderscoresetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var largeTextureAddPieceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPiece(self: LargeTexture; ofs: Vector2; texture: Texture): int64 =
  if isNil(largeTextureAddPieceMethodBind):
    largeTextureAddPieceMethodBind = getMethod(cstring"LargeTexture",
        cstring"add_piece")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ofs)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  largeTextureAddPieceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var largeTextureClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: LargeTexture) =
  if isNil(largeTextureClearMethodBind):
    largeTextureClearMethodBind = getMethod(cstring"LargeTexture", cstring"clear")
  var ptrCallRet: pointer
  largeTextureClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var largeTextureGetPieceCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPieceCount(self: LargeTexture): int64 =
  if isNil(largeTextureGetPieceCountMethodBind):
    largeTextureGetPieceCountMethodBind = getMethod(cstring"LargeTexture",
        cstring"get_piece_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  largeTextureGetPieceCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var largeTextureGetPieceOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPieceOffset(self: LargeTexture; idx: int64): Vector2 =
  if isNil(largeTextureGetPieceOffsetMethodBind):
    largeTextureGetPieceOffsetMethodBind = getMethod(cstring"LargeTexture",
        cstring"get_piece_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  largeTextureGetPieceOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var largeTextureGetPieceTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPieceTexture(self: LargeTexture; idx: int64): Texture =
  if isNil(largeTextureGetPieceTextureMethodBind):
    largeTextureGetPieceTextureMethodBind = getMethod(cstring"LargeTexture",
        cstring"get_piece_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  largeTextureGetPieceTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var largeTextureSetPieceOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPieceOffset(self: LargeTexture; idx: int64; ofs: Vector2) =
  if isNil(largeTextureSetPieceOffsetMethodBind):
    largeTextureSetPieceOffsetMethodBind = getMethod(cstring"LargeTexture",
        cstring"set_piece_offset")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(ofs)
  var ptrCallRet: pointer
  largeTextureSetPieceOffsetMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var largeTextureSetPieceTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc setPieceTexture(self: LargeTexture; idx: int64; texture: Texture) =
  if isNil(largeTextureSetPieceTextureMethodBind):
    largeTextureSetPieceTextureMethodBind = getMethod(cstring"LargeTexture",
        cstring"set_piece_texture")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  largeTextureSetPieceTextureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var largeTextureSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSize(self: LargeTexture; size: Vector2) =
  if isNil(largeTextureSetSizeMethodBind):
    largeTextureSetSizeMethodBind = getMethod(cstring"LargeTexture",
        cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  largeTextureSetSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
