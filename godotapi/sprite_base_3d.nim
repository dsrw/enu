
import
  godot, godottypes, godotinternal, geometry_instance

export
  godottypes, geometry_instance

const
  ALPHA_CUT_DISABLED* = 0'i64
  ALPHA_CUT_DISCARD* = 1'i64
  ALPHA_CUT_OPAQUE_PREPASS* = 2'i64
  FLAG_DOUBLE_SIDED* = 2'i64
  FLAG_MAX* = 3'i64
  FLAG_SHADED* = 1'i64
  FLAG_TRANSPARENT* = 0'i64
proc alphaCut*(self: SpriteBase3D): int64 {.gcsafe, locks: 0.}
proc `alphaCut=`*(self: SpriteBase3D; val: int64) {.gcsafe, locks: 0.}
proc axis*(self: SpriteBase3D): int64 {.gcsafe, locks: 0.}
proc `axis=`*(self: SpriteBase3D; val: int64) {.gcsafe, locks: 0.}
proc billboard*(self: SpriteBase3D): int64 {.gcsafe, locks: 0.}
proc `billboard=`*(self: SpriteBase3D; val: int64) {.gcsafe, locks: 0.}
proc centered*(self: SpriteBase3D): bool {.gcsafe, locks: 0.}
proc `centered=`*(self: SpriteBase3D; val: bool) {.gcsafe, locks: 0.}
proc doubleSided*(self: SpriteBase3D): bool {.gcsafe, locks: 0.}
proc `doubleSided=`*(self: SpriteBase3D; val: bool) {.gcsafe, locks: 0.}
proc flipH*(self: SpriteBase3D): bool {.gcsafe, locks: 0.}
proc `flipH=`*(self: SpriteBase3D; val: bool) {.gcsafe, locks: 0.}
proc flipV*(self: SpriteBase3D): bool {.gcsafe, locks: 0.}
proc `flipV=`*(self: SpriteBase3D; val: bool) {.gcsafe, locks: 0.}
proc modulate*(self: SpriteBase3D): Color {.gcsafe, locks: 0.}
proc `modulate=`*(self: SpriteBase3D; val: Color) {.gcsafe, locks: 0.}
proc offset*(self: SpriteBase3D): Vector2 {.gcsafe, locks: 0.}
proc `offset=`*(self: SpriteBase3D; val: Vector2) {.gcsafe, locks: 0.}
proc opacity*(self: SpriteBase3D): float64 {.gcsafe, locks: 0.}
proc `opacity=`*(self: SpriteBase3D; val: float64) {.gcsafe, locks: 0.}
proc pixelSize*(self: SpriteBase3D): float64 {.gcsafe, locks: 0.}
proc `pixelSize=`*(self: SpriteBase3D; val: float64) {.gcsafe, locks: 0.}
proc shaded*(self: SpriteBase3D): bool {.gcsafe, locks: 0.}
proc `shaded=`*(self: SpriteBase3D; val: bool) {.gcsafe, locks: 0.}
proc transparent*(self: SpriteBase3D): bool {.gcsafe, locks: 0.}
proc `transparent=`*(self: SpriteBase3D; val: bool) {.gcsafe, locks: 0.}
method imUpdate*(self: SpriteBase3D) {.gcsafe, locks: 0, base.}
method queueUpdate*(self: SpriteBase3D) {.gcsafe, locks: 0, base.}
proc generateTriangleMesh*(self: SpriteBase3D): TriangleMesh {.gcsafe, locks: 0.}
proc getItemRect*(self: SpriteBase3D): Rect2 {.gcsafe, locks: 0.}
var spriteBase3DGetAlphaCutModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc alphaCut(self: SpriteBase3D): int64 =
  if isNil(spriteBase3DGetAlphaCutModeMethodBind):
    spriteBase3DGetAlphaCutModeMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_alpha_cut_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetAlphaCutModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetAlphaCutModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `alphaCut=`(self: SpriteBase3D; val: int64) =
  if isNil(spriteBase3DSetAlphaCutModeMethodBind):
    spriteBase3DSetAlphaCutModeMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_alpha_cut_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetAlphaCutModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spriteBase3DGetAxisMethodBind {.threadvar.}: ptr GodotMethodBind
proc axis(self: SpriteBase3D): int64 =
  if isNil(spriteBase3DGetAxisMethodBind):
    spriteBase3DGetAxisMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_axis")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetAxisMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetAxisMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axis=`(self: SpriteBase3D; val: int64) =
  if isNil(spriteBase3DSetAxisMethodBind):
    spriteBase3DSetAxisMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_axis")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetAxisMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var spriteBase3DGetBillboardModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc billboard(self: SpriteBase3D): int64 =
  if isNil(spriteBase3DGetBillboardModeMethodBind):
    spriteBase3DGetBillboardModeMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_billboard_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetBillboardModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetBillboardModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `billboard=`(self: SpriteBase3D; val: int64) =
  if isNil(spriteBase3DSetBillboardModeMethodBind):
    spriteBase3DSetBillboardModeMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_billboard_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetBillboardModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var spriteBase3DIsCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc centered(self: SpriteBase3D): bool =
  if isNil(spriteBase3DIsCenteredMethodBind):
    spriteBase3DIsCenteredMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"is_centered")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DIsCenteredMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetCenteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc `centered=`(self: SpriteBase3D; val: bool) =
  if isNil(spriteBase3DSetCenteredMethodBind):
    spriteBase3DSetCenteredMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_centered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetCenteredMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DGetDrawFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc doubleSided(self: SpriteBase3D): bool =
  if isNil(spriteBase3DGetDrawFlagMethodBind):
    spriteBase3DGetDrawFlagMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_draw_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetDrawFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DSetDrawFlagMethodBind {.threadvar.}: ptr GodotMethodBind
proc `doubleSided=`(self: SpriteBase3D; val: bool) =
  if isNil(spriteBase3DSetDrawFlagMethodBind):
    spriteBase3DSetDrawFlagMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_draw_flag")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetDrawFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DIsFlippedHMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipH(self: SpriteBase3D): bool =
  if isNil(spriteBase3DIsFlippedHMethodBind):
    spriteBase3DIsFlippedHMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"is_flipped_h")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DIsFlippedHMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetFlipHMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipH=`(self: SpriteBase3D; val: bool) =
  if isNil(spriteBase3DSetFlipHMethodBind):
    spriteBase3DSetFlipHMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_flip_h")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetFlipHMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DIsFlippedVMethodBind {.threadvar.}: ptr GodotMethodBind
proc flipV(self: SpriteBase3D): bool =
  if isNil(spriteBase3DIsFlippedVMethodBind):
    spriteBase3DIsFlippedVMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"is_flipped_v")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DIsFlippedVMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetFlipVMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flipV=`(self: SpriteBase3D; val: bool) =
  if isNil(spriteBase3DSetFlipVMethodBind):
    spriteBase3DSetFlipVMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_flip_v")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetFlipVMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DGetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc modulate(self: SpriteBase3D): Color =
  if isNil(spriteBase3DGetModulateMethodBind):
    spriteBase3DGetModulateMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_modulate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetModulateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `modulate=`(self: SpriteBase3D; val: Color) =
  if isNil(spriteBase3DSetModulateMethodBind):
    spriteBase3DSetModulateMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_modulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetModulateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DGetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc offset(self: SpriteBase3D): Vector2 =
  if isNil(spriteBase3DGetOffsetMethodBind):
    spriteBase3DGetOffsetMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `offset=`(self: SpriteBase3D; val: Vector2) =
  if isNil(spriteBase3DSetOffsetMethodBind):
    spriteBase3DSetOffsetMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_offset")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetOffsetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DGetOpacityMethodBind {.threadvar.}: ptr GodotMethodBind
proc opacity(self: SpriteBase3D): float64 =
  if isNil(spriteBase3DGetOpacityMethodBind):
    spriteBase3DGetOpacityMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_opacity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetOpacityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetOpacityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `opacity=`(self: SpriteBase3D; val: float64) =
  if isNil(spriteBase3DSetOpacityMethodBind):
    spriteBase3DSetOpacityMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_opacity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetOpacityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DGetPixelSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc pixelSize(self: SpriteBase3D): float64 =
  if isNil(spriteBase3DGetPixelSizeMethodBind):
    spriteBase3DGetPixelSizeMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_pixel_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetPixelSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var spriteBase3DSetPixelSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pixelSize=`(self: SpriteBase3D; val: float64) =
  if isNil(spriteBase3DSetPixelSizeMethodBind):
    spriteBase3DSetPixelSizeMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_pixel_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetPixelSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc shaded(self: SpriteBase3D): bool =
  if isNil(spriteBase3DGetDrawFlagMethodBind):
    spriteBase3DGetDrawFlagMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_draw_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetDrawFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `shaded=`(self: SpriteBase3D; val: bool) =
  if isNil(spriteBase3DSetDrawFlagMethodBind):
    spriteBase3DSetDrawFlagMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_draw_flag")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetDrawFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc transparent(self: SpriteBase3D): bool =
  if isNil(spriteBase3DGetDrawFlagMethodBind):
    spriteBase3DGetDrawFlagMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_draw_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetDrawFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

proc `transparent=`(self: SpriteBase3D; val: bool) =
  if isNil(spriteBase3DSetDrawFlagMethodBind):
    spriteBase3DSetDrawFlagMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"set_draw_flag")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  spriteBase3DSetDrawFlagMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var spriteBase3DUnderscoreimUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
method imUpdate(self: SpriteBase3D) =
  if isNil(spriteBase3DUnderscoreimUpdateMethodBind):
    spriteBase3DUnderscoreimUpdateMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"_im_update")
  var ptrCallRet: pointer
  spriteBase3DUnderscoreimUpdateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spriteBase3DUnderscorequeueUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
method queueUpdate(self: SpriteBase3D) =
  if isNil(spriteBase3DUnderscorequeueUpdateMethodBind):
    spriteBase3DUnderscorequeueUpdateMethodBind = getMethod(
        cstring"SpriteBase3D", cstring"_queue_update")
  var ptrCallRet: pointer
  spriteBase3DUnderscorequeueUpdateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var spriteBase3DGenerateTriangleMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc generateTriangleMesh(self: SpriteBase3D): TriangleMesh =
  if isNil(spriteBase3DGenerateTriangleMeshMethodBind):
    spriteBase3DGenerateTriangleMeshMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"generate_triangle_mesh")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  spriteBase3DGenerateTriangleMeshMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var spriteBase3DGetItemRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemRect(self: SpriteBase3D): Rect2 =
  if isNil(spriteBase3DGetItemRectMethodBind):
    spriteBase3DGetItemRectMethodBind = getMethod(cstring"SpriteBase3D",
        cstring"get_item_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  spriteBase3DGetItemRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
