
import
  godot, godottypes, godotinternal, sprite_base_3d

export
  godottypes, sprite_base_3d

proc frame*(self: Sprite3D): int64 {.gcsafe, locks: 0.}
proc `frame=`*(self: Sprite3D; val: int64) {.gcsafe, locks: 0.}
proc frameCoords*(self: Sprite3D): Vector2 {.gcsafe, locks: 0.}
proc `frameCoords=`*(self: Sprite3D; val: Vector2) {.gcsafe, locks: 0.}
proc hframes*(self: Sprite3D): int64 {.gcsafe, locks: 0.}
proc `hframes=`*(self: Sprite3D; val: int64) {.gcsafe, locks: 0.}
proc regionEnabled*(self: Sprite3D): bool {.gcsafe, locks: 0.}
proc `regionEnabled=`*(self: Sprite3D; val: bool) {.gcsafe, locks: 0.}
proc regionRect*(self: Sprite3D): Rect2 {.gcsafe, locks: 0.}
proc `regionRect=`*(self: Sprite3D; val: Rect2) {.gcsafe, locks: 0.}
proc texture*(self: Sprite3D): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: Sprite3D; val: Texture) {.gcsafe, locks: 0.}
proc vframes*(self: Sprite3D): int64 {.gcsafe, locks: 0.}
proc `vframes=`*(self: Sprite3D; val: int64) {.gcsafe, locks: 0.}
var sprite3DGetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc frame(self: Sprite3D): int64 =
  if isNil(sprite3DGetFrameMethodBind):
    sprite3DGetFrameMethodBind = getMethod(cstring"Sprite3D", cstring"get_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sprite3DGetFrameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sprite3DSetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frame=`(self: Sprite3D; val: int64) =
  if isNil(sprite3DSetFrameMethodBind):
    sprite3DSetFrameMethodBind = getMethod(cstring"Sprite3D", cstring"set_frame")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sprite3DSetFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var sprite3DGetFrameCoordsMethodBind {.threadvar.}: ptr GodotMethodBind
proc frameCoords(self: Sprite3D): Vector2 =
  if isNil(sprite3DGetFrameCoordsMethodBind):
    sprite3DGetFrameCoordsMethodBind = getMethod(cstring"Sprite3D",
        cstring"get_frame_coords")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sprite3DGetFrameCoordsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sprite3DSetFrameCoordsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frameCoords=`(self: Sprite3D; val: Vector2) =
  if isNil(sprite3DSetFrameCoordsMethodBind):
    sprite3DSetFrameCoordsMethodBind = getMethod(cstring"Sprite3D",
        cstring"set_frame_coords")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sprite3DSetFrameCoordsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sprite3DGetHframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc hframes(self: Sprite3D): int64 =
  if isNil(sprite3DGetHframesMethodBind):
    sprite3DGetHframesMethodBind = getMethod(cstring"Sprite3D",
        cstring"get_hframes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sprite3DGetHframesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sprite3DSetHframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hframes=`(self: Sprite3D; val: int64) =
  if isNil(sprite3DSetHframesMethodBind):
    sprite3DSetHframesMethodBind = getMethod(cstring"Sprite3D",
        cstring"set_hframes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sprite3DSetHframesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var sprite3DIsRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionEnabled(self: Sprite3D): bool =
  if isNil(sprite3DIsRegionMethodBind):
    sprite3DIsRegionMethodBind = getMethod(cstring"Sprite3D", cstring"is_region")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sprite3DIsRegionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sprite3DSetRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionEnabled=`(self: Sprite3D; val: bool) =
  if isNil(sprite3DSetRegionMethodBind):
    sprite3DSetRegionMethodBind = getMethod(cstring"Sprite3D", cstring"set_region")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sprite3DSetRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var sprite3DGetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionRect(self: Sprite3D): Rect2 =
  if isNil(sprite3DGetRegionRectMethodBind):
    sprite3DGetRegionRectMethodBind = getMethod(cstring"Sprite3D",
        cstring"get_region_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sprite3DGetRegionRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sprite3DSetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionRect=`(self: Sprite3D; val: Rect2) =
  if isNil(sprite3DSetRegionRectMethodBind):
    sprite3DSetRegionRectMethodBind = getMethod(cstring"Sprite3D",
        cstring"set_region_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sprite3DSetRegionRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var sprite3DGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: Sprite3D): Texture =
  if isNil(sprite3DGetTextureMethodBind):
    sprite3DGetTextureMethodBind = getMethod(cstring"Sprite3D",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  sprite3DGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var sprite3DSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: Sprite3D; val: Texture) =
  if isNil(sprite3DSetTextureMethodBind):
    sprite3DSetTextureMethodBind = getMethod(cstring"Sprite3D",
        cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  sprite3DSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var sprite3DGetVframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc vframes(self: Sprite3D): int64 =
  if isNil(sprite3DGetVframesMethodBind):
    sprite3DGetVframesMethodBind = getMethod(cstring"Sprite3D",
        cstring"get_vframes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  sprite3DGetVframesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var sprite3DSetVframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vframes=`(self: Sprite3D; val: int64) =
  if isNil(sprite3DSetVframesMethodBind):
    sprite3DSetVframesMethodBind = getMethod(cstring"Sprite3D",
        cstring"set_vframes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  sprite3DSetVframesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
