
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc centered*(self: Sprite): bool {.gcsafe, locks: 0.}
proc `centered=`*(self: Sprite; val: bool) {.gcsafe, locks: 0.}
proc flipH*(self: Sprite): bool {.gcsafe, locks: 0.}
proc `flipH=`*(self: Sprite; val: bool) {.gcsafe, locks: 0.}
proc flipV*(self: Sprite): bool {.gcsafe, locks: 0.}
proc `flipV=`*(self: Sprite; val: bool) {.gcsafe, locks: 0.}
proc frame*(self: Sprite): int64 {.gcsafe, locks: 0.}
proc `frame=`*(self: Sprite; val: int64) {.gcsafe, locks: 0.}
proc frameCoords*(self: Sprite): Vector2 {.gcsafe, locks: 0.}
proc `frameCoords=`*(self: Sprite; val: Vector2) {.gcsafe, locks: 0.}
proc hframes*(self: Sprite): int64 {.gcsafe, locks: 0.}
proc `hframes=`*(self: Sprite; val: int64) {.gcsafe, locks: 0.}
proc normalMap*(self: Sprite): Texture {.gcsafe, locks: 0.}
proc `normalMap=`*(self: Sprite; val: Texture) {.gcsafe, locks: 0.}
proc offset*(self: Sprite): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: Sprite; val: Vector2) {.gcsafe, locks: 0.}
proc regionEnabled*(self: Sprite): bool {.gcsafe, locks: 0.}
proc `regionEnabled=`*(self: Sprite; val: bool) {.gcsafe, locks: 0.}
proc regionFilterClip*(self: Sprite): bool {.gcsafe, locks: 0.}
proc `regionFilterClip=`*(self: Sprite; val: bool) {.gcsafe, locks: 0.}
proc regionRect*(self: Sprite): Rect2 {.gcsafe, locks: 0.}
proc `regionRect=`*(self: Sprite; val: Rect2) {.gcsafe, locks: 0.}
proc texture*(self: Sprite): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: Sprite; val: Texture) {.gcsafe, locks: 0.}
proc vframes*(self: Sprite): int64 {.gcsafe, locks: 0.}
proc `vframes=`*(self: Sprite; val: int64) {.gcsafe, locks: 0.}
method textureChanged*(self: Sprite) {.gcsafe, locks: 0, base.}
proc getRect*(self: Sprite): Rect2 {.gcsafe, locks: 0.}
proc isPixelOpaque*(self: Sprite; pos: Vector2): bool {.gcsafe, locks: 0.}
var spriteIsCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc centered(self: Sprite): bool =
  if isNil(spriteIsCenteredMethodBind):
    spriteIsCenteredMethodBind = getMethod(cstring"Sprite", cstring"is_centered")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteIsCenteredMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc `centered=`(self: Sprite; val: bool) =
  if isNil(spriteSetCenteredMethodBind):
    spriteSetCenteredMethodBind = getMethod(cstring"Sprite", cstring"set_centered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetCenteredMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var spriteIsFlippedHMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipH(self: Sprite): bool =
  if isNil(spriteIsFlippedHMethodBind):
    spriteIsFlippedHMethodBind = getMethod(cstring"Sprite", cstring"is_flipped_h")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteIsFlippedHMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetFlipHMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipH=`(self: Sprite; val: bool) =
  if isNil(spriteSetFlipHMethodBind):
    spriteSetFlipHMethodBind = getMethod(cstring"Sprite", cstring"set_flip_h")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetFlipHMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spriteIsFlippedVMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipV(self: Sprite): bool =
  if isNil(spriteIsFlippedVMethodBind):
    spriteIsFlippedVMethodBind = getMethod(cstring"Sprite", cstring"is_flipped_v")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteIsFlippedVMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetFlipVMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipV=`(self: Sprite; val: bool) =
  if isNil(spriteSetFlipVMethodBind):
    spriteSetFlipVMethodBind = getMethod(cstring"Sprite", cstring"set_flip_v")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetFlipVMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spriteGetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc frame(self: Sprite): int64 =
  if isNil(spriteGetFrameMethodBind):
    spriteGetFrameMethodBind = getMethod(cstring"Sprite", cstring"get_frame")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteGetFrameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetFrameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frame=`(self: Sprite; val: int64) =
  if isNil(spriteSetFrameMethodBind):
    spriteSetFrameMethodBind = getMethod(cstring"Sprite", cstring"set_frame")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetFrameMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var spriteGetFrameCoordsMethodBind {.threadvar.}: ptr GodotMethodBind
proc frameCoords(self: Sprite): Vector2 =
  if isNil(spriteGetFrameCoordsMethodBind):
    spriteGetFrameCoordsMethodBind = getMethod(cstring"Sprite",
        cstring"get_frame_coords")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteGetFrameCoordsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetFrameCoordsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `frameCoords=`(self: Sprite; val: Vector2) =
  if isNil(spriteSetFrameCoordsMethodBind):
    spriteSetFrameCoordsMethodBind = getMethod(cstring"Sprite",
        cstring"set_frame_coords")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetFrameCoordsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteGetHframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc hframes(self: Sprite): int64 =
  if isNil(spriteGetHframesMethodBind):
    spriteGetHframesMethodBind = getMethod(cstring"Sprite", cstring"get_hframes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteGetHframesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetHframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hframes=`(self: Sprite; val: int64) =
  if isNil(spriteSetHframesMethodBind):
    spriteSetHframesMethodBind = getMethod(cstring"Sprite", cstring"set_hframes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetHframesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var spriteGetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc normalMap(self: Sprite): Texture =
  if isNil(spriteGetNormalMapMethodBind):
    spriteGetNormalMapMethodBind = getMethod(cstring"Sprite",
        cstring"get_normal_map")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spriteGetNormalMapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spriteSetNormalMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `normalMap=`(self: Sprite; val: Texture) =
  if isNil(spriteSetNormalMapMethodBind):
    spriteSetNormalMapMethodBind = getMethod(cstring"Sprite",
        cstring"set_normal_map")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  spriteSetNormalMapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var spriteGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: Sprite): Vector2 =
  if isNil(spriteGetOffsetMethodBind):
    spriteGetOffsetMethodBind = getMethod(cstring"Sprite", cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: Sprite; val: Vector2) =
  if isNil(spriteSetOffsetMethodBind):
    spriteSetOffsetMethodBind = getMethod(cstring"Sprite", cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var spriteIsRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionEnabled(self: Sprite): bool =
  if isNil(spriteIsRegionMethodBind):
    spriteIsRegionMethodBind = getMethod(cstring"Sprite", cstring"is_region")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteIsRegionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionEnabled=`(self: Sprite; val: bool) =
  if isNil(spriteSetRegionMethodBind):
    spriteSetRegionMethodBind = getMethod(cstring"Sprite", cstring"set_region")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var spriteIsRegionFilterClipEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionFilterClip(self: Sprite): bool =
  if isNil(spriteIsRegionFilterClipEnabledMethodBind):
    spriteIsRegionFilterClipEnabledMethodBind = getMethod(cstring"Sprite",
        cstring"is_region_filter_clip_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteIsRegionFilterClipEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spriteSetRegionFilterClipMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionFilterClip=`(self: Sprite; val: bool) =
  if isNil(spriteSetRegionFilterClipMethodBind):
    spriteSetRegionFilterClipMethodBind = getMethod(cstring"Sprite",
        cstring"set_region_filter_clip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetRegionFilterClipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spriteGetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionRect(self: Sprite): Rect2 =
  if isNil(spriteGetRegionRectMethodBind):
    spriteGetRegionRectMethodBind = getMethod(cstring"Sprite",
        cstring"get_region_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteGetRegionRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionRect=`(self: Sprite; val: Rect2) =
  if isNil(spriteSetRegionRectMethodBind):
    spriteSetRegionRectMethodBind = getMethod(cstring"Sprite",
        cstring"set_region_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetRegionRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var spriteGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: Sprite): Texture =
  if isNil(spriteGetTextureMethodBind):
    spriteGetTextureMethodBind = getMethod(cstring"Sprite", cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spriteGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spriteSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: Sprite; val: Texture) =
  if isNil(spriteSetTextureMethodBind):
    spriteSetTextureMethodBind = getMethod(cstring"Sprite", cstring"set_texture")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  spriteSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var spriteGetVframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc vframes(self: Sprite): int64 =
  if isNil(spriteGetVframesMethodBind):
    spriteGetVframesMethodBind = getMethod(cstring"Sprite", cstring"get_vframes")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteGetVframesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteSetVframesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `vframes=`(self: Sprite; val: int64) =
  if isNil(spriteSetVframesMethodBind):
    spriteSetVframesMethodBind = getMethod(cstring"Sprite", cstring"set_vframes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteSetVframesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var spriteUnderscoretextureChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method textureChanged(self: Sprite) =
  if isNil(spriteUnderscoretextureChangedMethodBind):
    spriteUnderscoretextureChangedMethodBind = getMethod(cstring"Sprite",
        cstring"_texture_changed")
  var ptrCallRet: pointer
  spriteUnderscoretextureChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spriteGetRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRect(self: Sprite): Rect2 =
  if isNil(spriteGetRectMethodBind):
    spriteGetRectMethodBind = getMethod(cstring"Sprite", cstring"get_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteGetRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteIsPixelOpaqueMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPixelOpaque(self: Sprite; pos: Vector2): bool =
  if isNil(spriteIsPixelOpaqueMethodBind):
    spriteIsPixelOpaqueMethodBind = getMethod(cstring"Sprite",
        cstring"is_pixel_opaque")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pos)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteIsPixelOpaqueMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
