
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  FLAGS_DEFAULT* = 4'i64
  FLAG_FILTER* = 4'i64
  FLAG_MIPMAPS* = 1'i64
  FLAG_REPEAT* = 2'i64
proc data*(self: TextureLayered): Dictionary {.gcsafe, locks: 0.}
proc `data=`*(self: TextureLayered; val: Dictionary) {.gcsafe, locks: 0.}
proc flags*(self: TextureLayered): int64 {.gcsafe, locks: 0.}
proc `flags=`*(self: TextureLayered; val: int64) {.gcsafe, locks: 0.}
proc create*(self: TextureLayered; width: int64; height: int64; depth: int64;
            format: int64; flags: int64 = 4'i64) {.gcsafe, locks: 0.}
proc getDepth*(self: TextureLayered): int64 {.gcsafe, locks: 0.}
proc getFormat*(self: TextureLayered): int64 {.gcsafe, locks: 0.}
proc getHeight*(self: TextureLayered): int64 {.gcsafe, locks: 0.}
proc getLayerData*(self: TextureLayered; layer: int64): Image {.gcsafe, locks: 0.}
proc getWidth*(self: TextureLayered): int64 {.gcsafe, locks: 0.}
proc setDataPartial*(self: TextureLayered; image: Image; xOffset: int64;
                    yOffset: int64; layer: int64; mipmap: int64 = 0'i64) {.gcsafe,
    locks: 0.}
proc setLayerData*(self: TextureLayered; image: Image; layer: int64) {.gcsafe, locks: 0.}
var textureLayeredUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: TextureLayered): Dictionary =
  if isNil(textureLayeredUnderscoregetDataMethodBind):
    textureLayeredUnderscoregetDataMethodBind = getMethod(
        cstring"TextureLayered", cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  textureLayeredUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var textureLayeredUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: TextureLayered; val: Dictionary) =
  if isNil(textureLayeredUnderscoresetDataMethodBind):
    textureLayeredUnderscoresetDataMethodBind = getMethod(
        cstring"TextureLayered", cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  textureLayeredUnderscoresetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureLayeredGetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc flags(self: TextureLayered): int64 =
  if isNil(textureLayeredGetFlagsMethodBind):
    textureLayeredGetFlagsMethodBind = getMethod(cstring"TextureLayered",
        cstring"get_flags")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureLayeredGetFlagsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureLayeredSetFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `flags=`(self: TextureLayered; val: int64) =
  if isNil(textureLayeredSetFlagsMethodBind):
    textureLayeredSetFlagsMethodBind = getMethod(cstring"TextureLayered",
        cstring"set_flags")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  textureLayeredSetFlagsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textureLayeredCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc create(self: TextureLayered; width: int64; height: int64; depth: int64;
           format: int64; flags: int64 = 4'i64) =
  if isNil(textureLayeredCreateMethodBind):
    textureLayeredCreateMethodBind = getMethod(cstring"TextureLayered",
        cstring"create")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(width)
  argsToPassToGodot[][1] = unsafeAddr(height)
  argsToPassToGodot[][2] = unsafeAddr(depth)
  argsToPassToGodot[][3] = unsafeAddr(format)
  argsToPassToGodot[][4] = unsafeAddr(flags)
  var ptrCallRet: pointer
  textureLayeredCreateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var textureLayeredGetDepthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDepth(self: TextureLayered): int64 =
  if isNil(textureLayeredGetDepthMethodBind):
    textureLayeredGetDepthMethodBind = getMethod(cstring"TextureLayered",
        cstring"get_depth")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureLayeredGetDepthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureLayeredGetFormatMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFormat(self: TextureLayered): int64 =
  if isNil(textureLayeredGetFormatMethodBind):
    textureLayeredGetFormatMethodBind = getMethod(cstring"TextureLayered",
        cstring"get_format")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureLayeredGetFormatMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureLayeredGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHeight(self: TextureLayered): int64 =
  if isNil(textureLayeredGetHeightMethodBind):
    textureLayeredGetHeightMethodBind = getMethod(cstring"TextureLayered",
        cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureLayeredGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureLayeredGetLayerDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLayerData(self: TextureLayered; layer: int64): Image =
  if isNil(textureLayeredGetLayerDataMethodBind):
    textureLayeredGetLayerDataMethodBind = getMethod(cstring"TextureLayered",
        cstring"get_layer_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(layer)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  textureLayeredGetLayerDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var textureLayeredGetWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWidth(self: TextureLayered): int64 =
  if isNil(textureLayeredGetWidthMethodBind):
    textureLayeredGetWidthMethodBind = getMethod(cstring"TextureLayered",
        cstring"get_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  textureLayeredGetWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var textureLayeredSetDataPartialMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDataPartial(self: TextureLayered; image: Image; xOffset: int64; yOffset: int64;
                   layer: int64; mipmap: int64 = 0'i64) =
  if isNil(textureLayeredSetDataPartialMethodBind):
    textureLayeredSetDataPartialMethodBind = getMethod(cstring"TextureLayered",
        cstring"set_data_partial")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(xOffset)
  argsToPassToGodot[][2] = unsafeAddr(yOffset)
  argsToPassToGodot[][3] = unsafeAddr(layer)
  argsToPassToGodot[][4] = unsafeAddr(mipmap)
  var ptrCallRet: pointer
  textureLayeredSetDataPartialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var textureLayeredSetLayerDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLayerData(self: TextureLayered; image: Image; layer: int64) =
  if isNil(textureLayeredSetLayerDataMethodBind):
    textureLayeredSetLayerDataMethodBind = getMethod(cstring"TextureLayered",
        cstring"set_layer_data")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(layer)
  var ptrCallRet: pointer
  textureLayeredSetLayerDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
