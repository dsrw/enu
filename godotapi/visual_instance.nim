
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc layers*(self: VisualInstance): int64 {.gcsafe, locks: 0.}
proc `layers=`*(self: VisualInstance; val: int64) {.gcsafe, locks: 0.}
method getVisualInstanceRid*(self: VisualInstance): RID {.gcsafe, locks: 0, base.}
proc getAabb*(self: VisualInstance): AABB {.gcsafe, locks: 0.}
proc getBase*(self: VisualInstance): RID {.gcsafe, locks: 0.}
proc getInstance*(self: VisualInstance): RID {.gcsafe, locks: 0.}
proc getLayerMaskBit*(self: VisualInstance; layer: int64): bool {.gcsafe, locks: 0.}
proc getTransformedAabb*(self: VisualInstance): AABB {.gcsafe, locks: 0.}
proc setBase*(self: VisualInstance; base: RID) {.gcsafe, locks: 0.}
proc setLayerMaskBit*(self: VisualInstance; layer: int64; enabled: bool) {.gcsafe,
    locks: 0.}
var visualInstanceGetLayerMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc layers(self: VisualInstance): int64 =
  if isNil(visualInstanceGetLayerMaskMethodBind):
    visualInstanceGetLayerMaskMethodBind = getMethod(cstring"VisualInstance",
        cstring"get_layer_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualInstanceGetLayerMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualInstanceSetLayerMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `layers=`(self: VisualInstance; val: int64) =
  if isNil(visualInstanceSetLayerMaskMethodBind):
    visualInstanceSetLayerMaskMethodBind = getMethod(cstring"VisualInstance",
        cstring"set_layer_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualInstanceSetLayerMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualInstanceUnderscoregetVisualInstanceRidMethodBind {.threadvar.}: ptr GodotMethodBind
method getVisualInstanceRid(self: VisualInstance): RID =
  if isNil(visualInstanceUnderscoregetVisualInstanceRidMethodBind):
    visualInstanceUnderscoregetVisualInstanceRidMethodBind = getMethod(
        cstring"VisualInstance", cstring"_get_visual_instance_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualInstanceUnderscoregetVisualInstanceRidMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualInstanceGetAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAabb(self: VisualInstance): AABB =
  if isNil(visualInstanceGetAabbMethodBind):
    visualInstanceGetAabbMethodBind = getMethod(cstring"VisualInstance",
        cstring"get_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualInstanceGetAabbMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualInstanceGetBaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBase(self: VisualInstance): RID =
  if isNil(visualInstanceGetBaseMethodBind):
    visualInstanceGetBaseMethodBind = getMethod(cstring"VisualInstance",
        cstring"get_base")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualInstanceGetBaseMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualInstanceGetInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstance(self: VisualInstance): RID =
  if isNil(visualInstanceGetInstanceMethodBind):
    visualInstanceGetInstanceMethodBind = getMethod(cstring"VisualInstance",
        cstring"get_instance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualInstanceGetInstanceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualInstanceGetLayerMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLayerMaskBit(self: VisualInstance; layer: int64): bool =
  if isNil(visualInstanceGetLayerMaskBitMethodBind):
    visualInstanceGetLayerMaskBitMethodBind = getMethod(cstring"VisualInstance",
        cstring"get_layer_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(layer)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualInstanceGetLayerMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualInstanceGetTransformedAabbMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTransformedAabb(self: VisualInstance): AABB =
  if isNil(visualInstanceGetTransformedAabbMethodBind):
    visualInstanceGetTransformedAabbMethodBind = getMethod(
        cstring"VisualInstance", cstring"get_transformed_aabb")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualInstanceGetTransformedAabbMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualInstanceSetBaseMethodBind {.threadvar.}: ptr GodotMethodBind
proc setBase(self: VisualInstance; base: RID) =
  if isNil(visualInstanceSetBaseMethodBind):
    visualInstanceSetBaseMethodBind = getMethod(cstring"VisualInstance",
        cstring"set_base")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(base)
  var ptrCallRet: pointer
  visualInstanceSetBaseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var visualInstanceSetLayerMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setLayerMaskBit(self: VisualInstance; layer: int64; enabled: bool) =
  if isNil(visualInstanceSetLayerMaskBitMethodBind):
    visualInstanceSetLayerMaskBitMethodBind = getMethod(cstring"VisualInstance",
        cstring"set_layer_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(layer)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  visualInstanceSetLayerMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
