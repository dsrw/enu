
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc data*(self: BitMap): Dictionary {.gcsafe, locks: 0.}
proc `data=`*(self: BitMap; val: Dictionary) {.gcsafe, locks: 0.}
proc create*(self: BitMap; size: Vector2) {.gcsafe, locks: 0.}
proc createFromImageAlpha*(self: BitMap; image: Image; threshold: float64 = 0.1) {.
    gcsafe, locks: 0.}
proc getBit*(self: BitMap; position: Vector2): bool {.gcsafe, locks: 0.}
proc getSize*(self: BitMap): Vector2 {.gcsafe, locks: 0.}
proc getTrueBitCount*(self: BitMap): int64 {.gcsafe, locks: 0.}
proc growMask*(self: BitMap; pixels: int64; rect: Rect2) {.gcsafe, locks: 0.}
proc opaqueToPolygons*(self: BitMap; rect: Rect2; epsilon: float64 = 2.0): Array {.gcsafe,
    locks: 0.}
proc setBit*(self: BitMap; position: Vector2; bit: bool) {.gcsafe, locks: 0.}
proc setBitRect*(self: BitMap; rect: Rect2; bit: bool) {.gcsafe, locks: 0.}
var bitMapUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: BitMap): Dictionary =
  if isNil(bitMapUnderscoregetDataMethodBind):
    bitMapUnderscoregetDataMethodBind = getMethod(cstring"BitMap",
        cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  bitMapUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var bitMapUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: BitMap; val: Dictionary) =
  if isNil(bitMapUnderscoresetDataMethodBind):
    bitMapUnderscoresetDataMethodBind = getMethod(cstring"BitMap",
        cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  bitMapUnderscoresetDataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var bitMapCreateMethodBind {.threadvar.}: ptr GodotMethodBind
proc create(self: BitMap; size: Vector2) =
  if isNil(bitMapCreateMethodBind):
    bitMapCreateMethodBind = getMethod(cstring"BitMap", cstring"create")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(size)
  var ptrCallRet: pointer
  bitMapCreateMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var bitMapCreateFromImageAlphaMethodBind {.threadvar.}: ptr GodotMethodBind
proc createFromImageAlpha(self: BitMap; image: Image; threshold: float64 = 0.1) =
  if isNil(bitMapCreateFromImageAlphaMethodBind):
    bitMapCreateFromImageAlphaMethodBind = getMethod(cstring"BitMap",
        cstring"create_from_image_alpha")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not image.isNil:
    image.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(threshold)
  var ptrCallRet: pointer
  bitMapCreateFromImageAlphaMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var bitMapGetBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBit(self: BitMap; position: Vector2): bool =
  if isNil(bitMapGetBitMethodBind):
    bitMapGetBitMethodBind = getMethod(cstring"BitMap", cstring"get_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitMapGetBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var bitMapGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSize(self: BitMap): Vector2 =
  if isNil(bitMapGetSizeMethodBind):
    bitMapGetSizeMethodBind = getMethod(cstring"BitMap", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitMapGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bitMapGetTrueBitCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTrueBitCount(self: BitMap): int64 =
  if isNil(bitMapGetTrueBitCountMethodBind):
    bitMapGetTrueBitCountMethodBind = getMethod(cstring"BitMap",
        cstring"get_true_bit_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  bitMapGetTrueBitCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var bitMapGrowMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc growMask(self: BitMap; pixels: int64; rect: Rect2) =
  if isNil(bitMapGrowMaskMethodBind):
    bitMapGrowMaskMethodBind = getMethod(cstring"BitMap", cstring"grow_mask")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(pixels)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  var ptrCallRet: pointer
  bitMapGrowMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var bitMapOpaqueToPolygonsMethodBind {.threadvar.}: ptr GodotMethodBind
proc opaqueToPolygons(self: BitMap; rect: Rect2; epsilon: float64 = 2.0): Array =
  if isNil(bitMapOpaqueToPolygonsMethodBind):
    bitMapOpaqueToPolygonsMethodBind = getMethod(cstring"BitMap",
        cstring"opaque_to_polygons")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rect)
  argsToPassToGodot[][1] = unsafeAddr(epsilon)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  bitMapOpaqueToPolygonsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newArray(ptrCallVal)

var bitMapSetBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBit(self: BitMap; position: Vector2; bit: bool) =
  if isNil(bitMapSetBitMethodBind):
    bitMapSetBitMethodBind = getMethod(cstring"BitMap", cstring"set_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(bit)
  var ptrCallRet: pointer
  bitMapSetBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var bitMapSetBitRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBitRect(self: BitMap; rect: Rect2; bit: bool) =
  if isNil(bitMapSetBitRectMethodBind):
    bitMapSetBitRectMethodBind = getMethod(cstring"BitMap", cstring"set_bit_rect")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rect)
  argsToPassToGodot[][1] = unsafeAddr(bit)
  var ptrCallRet: pointer
  bitMapSetBitRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
