
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  AXIS_STRETCH_MODE_STRETCH* = 0'i64
  AXIS_STRETCH_MODE_TILE* = 1'i64
  AXIS_STRETCH_MODE_TILE_FIT* = 2'i64
proc axisStretchHorizontal*(self: NinePatchRect): int64 {.gcsafe, locks: 0.}
proc `axisStretchHorizontal=`*(self: NinePatchRect; val: int64) {.gcsafe, locks: 0.}
proc axisStretchVertical*(self: NinePatchRect): int64 {.gcsafe, locks: 0.}
proc `axisStretchVertical=`*(self: NinePatchRect; val: int64) {.gcsafe, locks: 0.}
proc drawCenter*(self: NinePatchRect): bool {.gcsafe, locks: 0.}
proc `drawCenter=`*(self: NinePatchRect; val: bool) {.gcsafe, locks: 0.}
proc patchMarginBottom*(self: NinePatchRect): int64 {.gcsafe, locks: 0.}
proc `patchMarginBottom=`*(self: NinePatchRect; val: int64) {.gcsafe, locks: 0.}
proc patchMarginLeft*(self: NinePatchRect): int64 {.gcsafe, locks: 0.}
proc `patchMarginLeft=`*(self: NinePatchRect; val: int64) {.gcsafe, locks: 0.}
proc patchMarginRight*(self: NinePatchRect): int64 {.gcsafe, locks: 0.}
proc `patchMarginRight=`*(self: NinePatchRect; val: int64) {.gcsafe, locks: 0.}
proc patchMarginTop*(self: NinePatchRect): int64 {.gcsafe, locks: 0.}
proc `patchMarginTop=`*(self: NinePatchRect; val: int64) {.gcsafe, locks: 0.}
proc regionRect*(self: NinePatchRect): Rect2 {.gcsafe, locks: 0.}
proc `regionRect=`*(self: NinePatchRect; val: Rect2) {.gcsafe, locks: 0.}
proc texture*(self: NinePatchRect): Texture {.gcsafe, locks: 0.}
proc `texture=`*(self: NinePatchRect; val: Texture) {.gcsafe, locks: 0.}
var ninePatchRectGetHAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc axisStretchHorizontal(self: NinePatchRect): int64 =
  if isNil(ninePatchRectGetHAxisStretchModeMethodBind):
    ninePatchRectGetHAxisStretchModeMethodBind = getMethod(
        cstring"NinePatchRect", cstring"get_h_axis_stretch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectGetHAxisStretchModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var ninePatchRectSetHAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axisStretchHorizontal=`(self: NinePatchRect; val: int64) =
  if isNil(ninePatchRectSetHAxisStretchModeMethodBind):
    ninePatchRectSetHAxisStretchModeMethodBind = getMethod(
        cstring"NinePatchRect", cstring"set_h_axis_stretch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetHAxisStretchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var ninePatchRectGetVAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc axisStretchVertical(self: NinePatchRect): int64 =
  if isNil(ninePatchRectGetVAxisStretchModeMethodBind):
    ninePatchRectGetVAxisStretchModeMethodBind = getMethod(
        cstring"NinePatchRect", cstring"get_v_axis_stretch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectGetVAxisStretchModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var ninePatchRectSetVAxisStretchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `axisStretchVertical=`(self: NinePatchRect; val: int64) =
  if isNil(ninePatchRectSetVAxisStretchModeMethodBind):
    ninePatchRectSetVAxisStretchModeMethodBind = getMethod(
        cstring"NinePatchRect", cstring"set_v_axis_stretch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetVAxisStretchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var ninePatchRectIsDrawCenterEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawCenter(self: NinePatchRect): bool =
  if isNil(ninePatchRectIsDrawCenterEnabledMethodBind):
    ninePatchRectIsDrawCenterEnabledMethodBind = getMethod(
        cstring"NinePatchRect", cstring"is_draw_center_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectIsDrawCenterEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var ninePatchRectSetDrawCenterMethodBind {.threadvar.}: ptr GodotMethodBind
proc `drawCenter=`(self: NinePatchRect; val: bool) =
  if isNil(ninePatchRectSetDrawCenterMethodBind):
    ninePatchRectSetDrawCenterMethodBind = getMethod(cstring"NinePatchRect",
        cstring"set_draw_center")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetDrawCenterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var ninePatchRectGetPatchMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc patchMarginBottom(self: NinePatchRect): int64 =
  if isNil(ninePatchRectGetPatchMarginMethodBind):
    ninePatchRectGetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"get_patch_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectGetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var ninePatchRectSetPatchMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `patchMarginBottom=`(self: NinePatchRect; val: int64) =
  if isNil(ninePatchRectSetPatchMarginMethodBind):
    ninePatchRectSetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"set_patch_margin")
  var
    godotBoundArg0 = 3'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc patchMarginLeft(self: NinePatchRect): int64 =
  if isNil(ninePatchRectGetPatchMarginMethodBind):
    ninePatchRectGetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"get_patch_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectGetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `patchMarginLeft=`(self: NinePatchRect; val: int64) =
  if isNil(ninePatchRectSetPatchMarginMethodBind):
    ninePatchRectSetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"set_patch_margin")
  var
    godotBoundArg0 = 0'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc patchMarginRight(self: NinePatchRect): int64 =
  if isNil(ninePatchRectGetPatchMarginMethodBind):
    ninePatchRectGetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"get_patch_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectGetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `patchMarginRight=`(self: NinePatchRect; val: int64) =
  if isNil(ninePatchRectSetPatchMarginMethodBind):
    ninePatchRectSetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"set_patch_margin")
  var
    godotBoundArg0 = 2'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc patchMarginTop(self: NinePatchRect): int64 =
  if isNil(ninePatchRectGetPatchMarginMethodBind):
    ninePatchRectGetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"get_patch_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectGetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

proc `patchMarginTop=`(self: NinePatchRect; val: int64) =
  if isNil(ninePatchRectSetPatchMarginMethodBind):
    ninePatchRectSetPatchMarginMethodBind = getMethod(cstring"NinePatchRect",
        cstring"set_patch_margin")
  var
    godotBoundArg0 = 1'i64
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(godotBoundArg0)
  argsToPassToGodot[][1] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetPatchMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var ninePatchRectGetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc regionRect(self: NinePatchRect): Rect2 =
  if isNil(ninePatchRectGetRegionRectMethodBind):
    ninePatchRectGetRegionRectMethodBind = getMethod(cstring"NinePatchRect",
        cstring"get_region_rect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  ninePatchRectGetRegionRectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var ninePatchRectSetRegionRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `regionRect=`(self: NinePatchRect; val: Rect2) =
  if isNil(ninePatchRectSetRegionRectMethodBind):
    ninePatchRectSetRegionRectMethodBind = getMethod(cstring"NinePatchRect",
        cstring"set_region_rect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  ninePatchRectSetRegionRectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var ninePatchRectGetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc texture(self: NinePatchRect): Texture =
  if isNil(ninePatchRectGetTextureMethodBind):
    ninePatchRectGetTextureMethodBind = getMethod(cstring"NinePatchRect",
        cstring"get_texture")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  ninePatchRectGetTextureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var ninePatchRectSetTextureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `texture=`(self: NinePatchRect; val: Texture) =
  if isNil(ninePatchRectSetTextureMethodBind):
    ninePatchRectSetTextureMethodBind = getMethod(cstring"NinePatchRect",
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
  ninePatchRectSetTextureMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
