
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc atlas*(self: AtlasTexture): Texture {.gcsafe, locks: 0.}
proc `atlas=`*(self: AtlasTexture; val: Texture) {.gcsafe, locks: 0.}
proc filterClip*(self: AtlasTexture): bool {.gcsafe, locks: 0.}
proc `filterClip=`*(self: AtlasTexture; val: bool) {.gcsafe, locks: 0.}
proc margin*(self: AtlasTexture): Rect2 {.gcsafe, locks: 0.}
proc `margin=`*(self: AtlasTexture; val: Rect2) {.gcsafe, locks: 0.}
proc region*(self: AtlasTexture): Rect2 {.gcsafe, locks: 0.}
proc `region=`*(self: AtlasTexture; val: Rect2) {.gcsafe, locks: 0.}
var atlasTextureGetAtlasMethodBind {.threadvar.}: ptr GodotMethodBind
proc atlas(self: AtlasTexture): Texture =
  if isNil(atlasTextureGetAtlasMethodBind):
    atlasTextureGetAtlasMethodBind = getMethod(cstring"AtlasTexture",
        cstring"get_atlas")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  atlasTextureGetAtlasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var atlasTextureSetAtlasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `atlas=`(self: AtlasTexture; val: Texture) =
  if isNil(atlasTextureSetAtlasMethodBind):
    atlasTextureSetAtlasMethodBind = getMethod(cstring"AtlasTexture",
        cstring"set_atlas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  atlasTextureSetAtlasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var atlasTextureHasFilterClipMethodBind {.threadvar.}: ptr GodotMethodBind
proc filterClip(self: AtlasTexture): bool =
  if isNil(atlasTextureHasFilterClipMethodBind):
    atlasTextureHasFilterClipMethodBind = getMethod(cstring"AtlasTexture",
        cstring"has_filter_clip")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  atlasTextureHasFilterClipMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var atlasTextureSetFilterClipMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filterClip=`(self: AtlasTexture; val: bool) =
  if isNil(atlasTextureSetFilterClipMethodBind):
    atlasTextureSetFilterClipMethodBind = getMethod(cstring"AtlasTexture",
        cstring"set_filter_clip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  atlasTextureSetFilterClipMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var atlasTextureGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc margin(self: AtlasTexture): Rect2 =
  if isNil(atlasTextureGetMarginMethodBind):
    atlasTextureGetMarginMethodBind = getMethod(cstring"AtlasTexture",
        cstring"get_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  atlasTextureGetMarginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var atlasTextureSetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `margin=`(self: AtlasTexture; val: Rect2) =
  if isNil(atlasTextureSetMarginMethodBind):
    atlasTextureSetMarginMethodBind = getMethod(cstring"AtlasTexture",
        cstring"set_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  atlasTextureSetMarginMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var atlasTextureGetRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc region(self: AtlasTexture): Rect2 =
  if isNil(atlasTextureGetRegionMethodBind):
    atlasTextureGetRegionMethodBind = getMethod(cstring"AtlasTexture",
        cstring"get_region")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  atlasTextureGetRegionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var atlasTextureSetRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `region=`(self: AtlasTexture; val: Rect2) =
  if isNil(atlasTextureSetRegionMethodBind):
    atlasTextureSetRegionMethodBind = getMethod(cstring"AtlasTexture",
        cstring"set_region")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  atlasTextureSetRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
