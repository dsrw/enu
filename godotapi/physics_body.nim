
import
  godot, godottypes, godotinternal, collision_object

export
  godottypes, collision_object

proc collisionLayer*(self: PhysicsBody): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: PhysicsBody; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: PhysicsBody): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: PhysicsBody; val: int64) {.gcsafe, locks: 0.}
method getLayers*(self: PhysicsBody): int64 {.gcsafe, locks: 0.}
method setLayers*(self: PhysicsBody; mask: int64) {.gcsafe, locks: 0.}
proc addCollisionExceptionWith*(self: PhysicsBody; body: Node) {.gcsafe, locks: 0.}
proc getCollisionExceptions*(self: PhysicsBody): Array {.gcsafe, locks: 0.}
proc getCollisionLayerBit*(self: PhysicsBody; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: PhysicsBody; bit: int64): bool {.gcsafe, locks: 0.}
proc removeCollisionExceptionWith*(self: PhysicsBody; body: Node) {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: PhysicsBody; bit: int64; value: bool) {.gcsafe,
    locks: 0.}
proc setCollisionMaskBit*(self: PhysicsBody; bit: int64; value: bool) {.gcsafe, locks: 0.}
var physicsBodyGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: PhysicsBody): int64 =
  if isNil(physicsBodyGetCollisionLayerMethodBind):
    physicsBodyGetCollisionLayerMethodBind = getMethod(cstring"PhysicsBody",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBodyGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsBodySetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: PhysicsBody; val: int64) =
  if isNil(physicsBodySetCollisionLayerMethodBind):
    physicsBodySetCollisionLayerMethodBind = getMethod(cstring"PhysicsBody",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsBodySetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: PhysicsBody): int64 =
  if isNil(physicsBodyGetCollisionMaskMethodBind):
    physicsBodyGetCollisionMaskMethodBind = getMethod(cstring"PhysicsBody",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBodyGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var physicsBodySetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: PhysicsBody; val: int64) =
  if isNil(physicsBodySetCollisionMaskMethodBind):
    physicsBodySetCollisionMaskMethodBind = getMethod(cstring"PhysicsBody",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsBodySetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyUnderscoregetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
method getLayers(self: PhysicsBody): int64 =
  if isNil(physicsBodyUnderscoregetLayersMethodBind):
    physicsBodyUnderscoregetLayersMethodBind = getMethod(cstring"PhysicsBody",
        cstring"_get_layers")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBodyUnderscoregetLayersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsBodyUnderscoresetLayersMethodBind {.threadvar.}: ptr GodotMethodBind
method setLayers(self: PhysicsBody; mask: int64) =
  if isNil(physicsBodyUnderscoresetLayersMethodBind):
    physicsBodyUnderscoresetLayersMethodBind = getMethod(cstring"PhysicsBody",
        cstring"_set_layers")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mask)
  var ptrCallRet: pointer
  physicsBodyUnderscoresetLayersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyAddCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCollisionExceptionWith(self: PhysicsBody; body: Node) =
  if isNil(physicsBodyAddCollisionExceptionWithMethodBind):
    physicsBodyAddCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody", cstring"add_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBodyAddCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyGetCollisionExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionExceptions(self: PhysicsBody): Array =
  if isNil(physicsBodyGetCollisionExceptionsMethodBind):
    physicsBodyGetCollisionExceptionsMethodBind = getMethod(cstring"PhysicsBody",
        cstring"get_collision_exceptions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physicsBodyGetCollisionExceptionsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var physicsBodyGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: PhysicsBody; bit: int64): bool =
  if isNil(physicsBodyGetCollisionLayerBitMethodBind):
    physicsBodyGetCollisionLayerBitMethodBind = getMethod(cstring"PhysicsBody",
        cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBodyGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: PhysicsBody; bit: int64): bool =
  if isNil(physicsBodyGetCollisionMaskBitMethodBind):
    physicsBodyGetCollisionMaskBitMethodBind = getMethod(cstring"PhysicsBody",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsBodyGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodyRemoveCollisionExceptionWithMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCollisionExceptionWith(self: PhysicsBody; body: Node) =
  if isNil(physicsBodyRemoveCollisionExceptionWithMethodBind):
    physicsBodyRemoveCollisionExceptionWithMethodBind = getMethod(
        cstring"PhysicsBody", cstring"remove_collision_exception_with")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsBodyRemoveCollisionExceptionWithMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodySetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: PhysicsBody; bit: int64; value: bool) =
  if isNil(physicsBodySetCollisionLayerBitMethodBind):
    physicsBodySetCollisionLayerBitMethodBind = getMethod(cstring"PhysicsBody",
        cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsBodySetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsBodySetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: PhysicsBody; bit: int64; value: bool) =
  if isNil(physicsBodySetCollisionMaskBitMethodBind):
    physicsBodySetCollisionMaskBitMethodBind = getMethod(cstring"PhysicsBody",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  physicsBodySetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
