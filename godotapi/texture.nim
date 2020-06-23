
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  FLAGS_DEFAULT* = 7'i64
  FLAG_ANISOTROPIC_FILTER* = 8'i64
  FLAG_CONVERT_TO_LINEAR* = 16'i64
  FLAG_FILTER* = 4'i64
  FLAG_MIPMAPS* = 1'i64
  FLAG_MIRRORED_REPEAT* = 32'i64
  FLAG_REPEAT* = 2'i64
  FLAG_VIDEO_SURFACE* = 2048'i64
proc flags*(self: Texture): int64 {.gcsafe, locks: 0.}
proc `flags=`*(self: Texture; val: int64) {.gcsafe, locks: 0.}
proc draw*(self: Texture; canvasItem: RID; position: Vector2;
          modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); transpose: bool = false;
          normalMap: Texture = nil) {.gcsafe, locks: 0.}
proc drawRect*(self: Texture; canvasItem: RID; rect: Rect2; tile: bool;
              modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); transpose: bool = false;
              normalMap: Texture = nil) {.gcsafe, locks: 0.}
proc drawRectRegion*(self: Texture; canvasItem: RID; rect: Rect2; srcRect: Rect2;
                    modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                    transpose: bool = false; normalMap: Texture = nil;
                    clipUv: bool = true) {.gcsafe, locks: 0.}
proc getData*(self: Texture): Image {.gcsafe, locks: 0.}
proc getHeight*(self: Texture): int64 {.gcsafe, locks: 0.}
proc getSize*(self: Texture): Vector2 {.gcsafe, locks: 0.}
proc getWidth*(self: Texture): int64 {.gcsafe, locks: 0.}
proc hasAlpha*(self: Texture): bool {.gcsafe, locks: 0.}
var textureGetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc flags(self: Texture): int64 =
  if isNil(textureGetFlagsMethodBind):
    textureGetFlagsMethodBind = getMethod(cstring"Texture", cstring"get_flags")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureGetFlagsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureSetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flags=`(self: Texture; val: int64) =
  if isNil(textureSetFlagsMethodBind):
    textureSetFlagsMethodBind = getMethod(cstring"Texture", cstring"set_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureSetFlagsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var textureDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc draw(self: Texture; canvasItem: RID; position: Vector2;
         modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); transpose: bool = false;
         normalMap: Texture = nil) =
  if isNil(textureDrawMethodBind):
    textureDrawMethodBind = getMethod(cstring"Texture", cstring"draw")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvasItem)
  argsToPassToGodot[][1] = unsafeAddr(position)
  argsToPassToGodot[][2] = unsafeAddr(modulate)
  argsToPassToGodot[][3] = unsafeAddr(transpose)
  let argToPassToGodot4 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][4] = argToPassToGodot4
  var ptrCallRet: pointer
  textureDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var textureDrawRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawRect(self: Texture; canvasItem: RID; rect: Rect2; tile: bool;
             modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); transpose: bool = false;
             normalMap: Texture = nil) =
  if isNil(textureDrawRectMethodBind):
    textureDrawRectMethodBind = getMethod(cstring"Texture", cstring"draw_rect")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvasItem)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(tile)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  argsToPassToGodot[][4] = unsafeAddr(transpose)
  let argToPassToGodot5 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][5] = argToPassToGodot5
  var ptrCallRet: pointer
  textureDrawRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var textureDrawRectRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawRectRegion(self: Texture; canvasItem: RID; rect: Rect2; srcRect: Rect2;
                   modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
                   transpose: bool = false; normalMap: Texture = nil;
                   clipUv: bool = true) =
  if isNil(textureDrawRectRegionMethodBind):
    textureDrawRectRegionMethodBind = getMethod(cstring"Texture",
        cstring"draw_rect_region")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvasItem)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  argsToPassToGodot[][2] = unsafeAddr(srcRect)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  argsToPassToGodot[][4] = unsafeAddr(transpose)
  let argToPassToGodot5 = if not normalMap.isNil:
    normalMap.godotObject
  else:
    nil
  argsToPassToGodot[][5] = argToPassToGodot5
  argsToPassToGodot[][6] = unsafeAddr(clipUv)
  var ptrCallRet: pointer
  textureDrawRectRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textureGetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getData(self: Texture): Image =
  if isNil(textureGetDataMethodBind):
    textureGetDataMethodBind = getMethod(cstring"Texture", cstring"get_data")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureGetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHeight(self: Texture): int64 =
  if isNil(textureGetHeightMethodBind):
    textureGetHeightMethodBind = getMethod(cstring"Texture", cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSize(self: Texture): Vector2 =
  if isNil(textureGetSizeMethodBind):
    textureGetSizeMethodBind = getMethod(cstring"Texture", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWidth(self: Texture): int64 =
  if isNil(textureGetWidthMethodBind):
    textureGetWidthMethodBind = getMethod(cstring"Texture", cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureHasAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasAlpha(self: Texture): bool =
  if isNil(textureHasAlphaMethodBind):
    textureHasAlphaMethodBind = getMethod(cstring"Texture", cstring"has_alpha")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureHasAlphaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
