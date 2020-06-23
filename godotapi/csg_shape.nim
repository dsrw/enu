
import
  godot, godottypes, godotinternal, geometry_instance

export
  godottypes, geometry_instance

const
  OPERATION_INTERSECTION* = 1'i64
  OPERATION_SUBTRACTION* = 2'i64
  OPERATION_UNION* = 0'i64
proc calculateTangents*(self: CSGShape): bool {.gcsafe, locks: 0.}
proc `calculateTangents=`*(self: CSGShape; val: bool) {.gcsafe, locks: 0.}
proc collisionLayer*(self: CSGShape): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: CSGShape; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: CSGShape): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: CSGShape; val: int64) {.gcsafe, locks: 0.}
proc operation*(self: CSGShape): int64 {.gcsafe, locks: 0.}
proc `operation=`*(self: CSGShape; val: int64) {.gcsafe, locks: 0.}
proc snap*(self: CSGShape): float64 {.gcsafe, locks: 0.}
proc `snap=`*(self: CSGShape; val: float64) {.gcsafe, locks: 0.}
proc useCollision*(self: CSGShape): bool {.gcsafe, locks: 0.}
proc `useCollision=`*(self: CSGShape; val: bool) {.gcsafe, locks: 0.}
method updateShape*(self: CSGShape) {.gcsafe, locks: 0, base.}
proc getCollisionLayerBit*(self: CSGShape; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: CSGShape; bit: int64): bool {.gcsafe, locks: 0.}
proc getMeshes*(self: CSGShape): Array {.gcsafe, locks: 0.}
proc isRootShape*(self: CSGShape): bool {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: CSGShape; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: CSGShape; bit: int64; value: bool) {.gcsafe, locks: 0.}
var cSGShapeIsCalculatingTangentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc calculateTangents(self: CSGShape): bool =
  if isNil(cSGShapeIsCalculatingTangentsMethodBind):
    cSGShapeIsCalculatingTangentsMethodBind = getMethod(cstring"CSGShape",
        cstring"is_calculating_tangents")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeIsCalculatingTangentsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cSGShapeSetCalculateTangentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `calculateTangents=`(self: CSGShape; val: bool) =
  if isNil(cSGShapeSetCalculateTangentsMethodBind):
    cSGShapeSetCalculateTangentsMethodBind = getMethod(cstring"CSGShape",
        cstring"set_calculate_tangents")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGShapeSetCalculateTangentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGShapeGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: CSGShape): int64 =
  if isNil(cSGShapeGetCollisionLayerMethodBind):
    cSGShapeGetCollisionLayerMethodBind = getMethod(cstring"CSGShape",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGShapeSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: CSGShape; val: int64) =
  if isNil(cSGShapeSetCollisionLayerMethodBind):
    cSGShapeSetCollisionLayerMethodBind = getMethod(cstring"CSGShape",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGShapeSetCollisionLayerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGShapeGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: CSGShape): int64 =
  if isNil(cSGShapeGetCollisionMaskMethodBind):
    cSGShapeGetCollisionMaskMethodBind = getMethod(cstring"CSGShape",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGShapeSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: CSGShape; val: int64) =
  if isNil(cSGShapeSetCollisionMaskMethodBind):
    cSGShapeSetCollisionMaskMethodBind = getMethod(cstring"CSGShape",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGShapeSetCollisionMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGShapeGetOperationMethodBind {.threadvar.}: ptr GodotMethodBind
proc operation(self: CSGShape): int64 =
  if isNil(cSGShapeGetOperationMethodBind):
    cSGShapeGetOperationMethodBind = getMethod(cstring"CSGShape",
        cstring"get_operation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeGetOperationMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGShapeSetOperationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `operation=`(self: CSGShape; val: int64) =
  if isNil(cSGShapeSetOperationMethodBind):
    cSGShapeSetOperationMethodBind = getMethod(cstring"CSGShape",
        cstring"set_operation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGShapeSetOperationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGShapeGetSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc snap(self: CSGShape): float64 =
  if isNil(cSGShapeGetSnapMethodBind):
    cSGShapeGetSnapMethodBind = getMethod(cstring"CSGShape", cstring"get_snap")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeGetSnapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGShapeSetSnapMethodBind {.threadvar.}: ptr GodotMethodBind
proc `snap=`(self: CSGShape; val: float64) =
  if isNil(cSGShapeSetSnapMethodBind):
    cSGShapeSetSnapMethodBind = getMethod(cstring"CSGShape", cstring"set_snap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGShapeSetSnapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var cSGShapeIsUsingCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc useCollision(self: CSGShape): bool =
  if isNil(cSGShapeIsUsingCollisionMethodBind):
    cSGShapeIsUsingCollisionMethodBind = getMethod(cstring"CSGShape",
        cstring"is_using_collision")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeIsUsingCollisionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGShapeSetUseCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useCollision=`(self: CSGShape; val: bool) =
  if isNil(cSGShapeSetUseCollisionMethodBind):
    cSGShapeSetUseCollisionMethodBind = getMethod(cstring"CSGShape",
        cstring"set_use_collision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGShapeSetUseCollisionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var cSGShapeUnderscoreupdateShapeMethodBind {.threadvar.}: ptr GodotMethodBind
method updateShape(self: CSGShape) =
  if isNil(cSGShapeUnderscoreupdateShapeMethodBind):
    cSGShapeUnderscoreupdateShapeMethodBind = getMethod(cstring"CSGShape",
        cstring"_update_shape")
  var ptrCallRet: pointer
  cSGShapeUnderscoreupdateShapeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var cSGShapeGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: CSGShape; bit: int64): bool =
  if isNil(cSGShapeGetCollisionLayerBitMethodBind):
    cSGShapeGetCollisionLayerBitMethodBind = getMethod(cstring"CSGShape",
        cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGShapeGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: CSGShape; bit: int64): bool =
  if isNil(cSGShapeGetCollisionMaskBitMethodBind):
    cSGShapeGetCollisionMaskBitMethodBind = getMethod(cstring"CSGShape",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGShapeGetMeshesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMeshes(self: CSGShape): Array =
  if isNil(cSGShapeGetMeshesMethodBind):
    cSGShapeGetMeshesMethodBind = getMethod(cstring"CSGShape", cstring"get_meshes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  cSGShapeGetMeshesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var cSGShapeIsRootShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc isRootShape(self: CSGShape): bool =
  if isNil(cSGShapeIsRootShapeMethodBind):
    cSGShapeIsRootShapeMethodBind = getMethod(cstring"CSGShape",
        cstring"is_root_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGShapeIsRootShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGShapeSetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: CSGShape; bit: int64; value: bool) =
  if isNil(cSGShapeSetCollisionLayerBitMethodBind):
    cSGShapeSetCollisionLayerBitMethodBind = getMethod(cstring"CSGShape",
        cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  cSGShapeSetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var cSGShapeSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: CSGShape; bit: int64; value: bool) =
  if isNil(cSGShapeSetCollisionMaskBitMethodBind):
    cSGShapeSetCollisionMaskBitMethodBind = getMethod(cstring"CSGShape",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  cSGShapeSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
