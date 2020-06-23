
import
  godot, godottypes, godotinternal, collision_object_2d

export
  godottypes, collision_object_2d

proc collisionLayer*(self: PhysicsBody2D): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: PhysicsBody2D; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: PhysicsBody2D): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: PhysicsBody2D; val: int64) {.gcsafe, locks: 0.}
proc layers*(self: PhysicsBody2D): int64 {.gcsafe, locks: 0.}
proc `layers=`*(self: PhysicsBody2D; val: int64) {.gcsafe, locks: 0.}
proc addCollisionExceptionWith*(self: PhysicsBody2D; body: Node) {.gcsafe, locks: 0.}
proc getCollisionExceptions*(self: PhysicsBody2D): Array {.gcsafe, locks: 0.}
proc getCollisionLayerBit*(self: PhysicsBody2D; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: PhysicsBody2D; bit: int64): bool {.gcsafe, locks: 0.}
proc removeCollisionExceptionWith*(self: PhysicsBody2D; body: Node) {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: PhysicsBody2D; bit: int64; value: bool) {.gcsafe,
    locks: 0.}
proc setCollisionMaskBit*(self: PhysicsBody2D; bit: int64; value: bool) {.gcsafe,
    locks: 0.}
var physicsBody2DGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: PhysicsBody2D): int64 =
  if isNil(physicsBody2DGetCollisionLayerMethodBind):
    physicsBody2DGetCollisionLayerMethodBind = getMethod(cstring"PhysicsBody2D",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBody2DGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsBody2DSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: PhysicsBody2D; val: int64) =
  if isNil(physicsBody2DSetCollisionLayerMethodBind):
    physicsBody2DSetCollisionLayerMethodBind = getMethod(cstring"PhysicsBody2D",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsBody2DSetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: PhysicsBody2D): int64 =
  if isNil(physicsBody2DGetCollisionMaskMethodBind):
    physicsBody2DGetCollisionMaskMethodBind = getMethod(cstring"PhysicsBody2D",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBody2DGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsBody2DSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: PhysicsBody2D; val: int64) =
  if isNil(physicsBody2DSetCollisionMaskMethodBind):
    physicsBody2DSetCollisionMaskMethodBind = getMethod(cstring"PhysicsBody2D",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsBody2DSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DUnderscoregetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc layers(self: PhysicsBody2D): int64 =
  if isNil(physicsBody2DUnderscoregetLayersMethodBind):
    physicsBody2DUnderscoregetLayersMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"_get_layers")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBody2DUnderscoregetLayersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsBody2DUnderscoresetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `layers=`(self: PhysicsBody2D; val: int64) =
  if isNil(physicsBody2DUnderscoresetLayersMethodBind):
    physicsBody2DUnderscoresetLayersMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"_set_layers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsBody2DUnderscoresetLayersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DAddCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCollisionExceptionWith(self: PhysicsBody2D; body: Node) =
  if isNil(physicsBody2DAddCollisionExceptionWithMethodBind):
    physicsBody2DAddCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"add_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBody2DAddCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DGetCollisionExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionExceptions(self: PhysicsBody2D): Array =
  if isNil(physicsBody2DGetCollisionExceptionsMethodBind):
    physicsBody2DGetCollisionExceptionsMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"get_collision_exceptions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physicsBody2DGetCollisionExceptionsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var physicsBody2DGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: PhysicsBody2D; bit: int64): bool =
  if isNil(physicsBody2DGetCollisionLayerBitMethodBind):
    physicsBody2DGetCollisionLayerBitMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBody2DGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: PhysicsBody2D; bit: int64): bool =
  if isNil(physicsBody2DGetCollisionMaskBitMethodBind):
    physicsBody2DGetCollisionMaskBitMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBody2DGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DRemoveCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCollisionExceptionWith(self: PhysicsBody2D; body: Node) =
  if isNil(physicsBody2DRemoveCollisionExceptionWithMethodBind):
    physicsBody2DRemoveCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"remove_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBody2DRemoveCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DSetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: PhysicsBody2D; bit: int64; value: bool) =
  if isNil(physicsBody2DSetCollisionLayerBitMethodBind):
    physicsBody2DSetCollisionLayerBitMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsBody2DSetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBody2DSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: PhysicsBody2D; bit: int64; value: bool) =
  if isNil(physicsBody2DSetCollisionMaskBitMethodBind):
    physicsBody2DSetCollisionMaskBitMethodBind = getMethod(
        cstring"PhysicsBody2D", cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsBody2DSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
