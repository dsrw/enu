
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc collideWithAreas*(self: PhysicsShapeQueryParameters): bool {.gcsafe, locks: 0.}
proc `collideWithAreas=`*(self: PhysicsShapeQueryParameters; val: bool) {.gcsafe,
    locks: 0.}
proc collideWithBodies*(self: PhysicsShapeQueryParameters): bool {.gcsafe, locks: 0.}
proc `collideWithBodies=`*(self: PhysicsShapeQueryParameters; val: bool) {.gcsafe,
    locks: 0.}
proc collisionMask*(self: PhysicsShapeQueryParameters): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: PhysicsShapeQueryParameters; val: int64) {.gcsafe,
    locks: 0.}
proc exclude*(self: PhysicsShapeQueryParameters): Array {.gcsafe, locks: 0.}
proc `exclude=`*(self: PhysicsShapeQueryParameters; val: Array) {.gcsafe, locks: 0.}
proc margin*(self: PhysicsShapeQueryParameters): float64 {.gcsafe, locks: 0.}
proc `margin=`*(self: PhysicsShapeQueryParameters; val: float64) {.gcsafe, locks: 0.}
proc shapeRid*(self: PhysicsShapeQueryParameters): RID {.gcsafe, locks: 0.}
proc `shapeRid=`*(self: PhysicsShapeQueryParameters; val: RID) {.gcsafe, locks: 0.}
proc transform*(self: PhysicsShapeQueryParameters): Transform {.gcsafe, locks: 0.}
proc `transform=`*(self: PhysicsShapeQueryParameters; val: Transform) {.gcsafe,
    locks: 0.}
proc setShape*(self: PhysicsShapeQueryParameters; shape: Resource) {.gcsafe, locks: 0.}
var physicsShapeQueryParametersIsCollideWithAreasEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithAreas(self: PhysicsShapeQueryParameters): bool =
  if isNil(physicsShapeQueryParametersIsCollideWithAreasEnabledMethodBind):
    physicsShapeQueryParametersIsCollideWithAreasEnabledMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters",
        cstring"is_collide_with_areas_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryParametersIsCollideWithAreasEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var physicsShapeQueryParametersSetCollideWithAreasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithAreas=`(self: PhysicsShapeQueryParameters; val: bool) =
  if isNil(physicsShapeQueryParametersSetCollideWithAreasMethodBind):
    physicsShapeQueryParametersSetCollideWithAreasMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_collide_with_areas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetCollideWithAreasMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsShapeQueryParametersIsCollideWithBodiesEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithBodies(self: PhysicsShapeQueryParameters): bool =
  if isNil(physicsShapeQueryParametersIsCollideWithBodiesEnabledMethodBind):
    physicsShapeQueryParametersIsCollideWithBodiesEnabledMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters",
        cstring"is_collide_with_bodies_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryParametersIsCollideWithBodiesEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var physicsShapeQueryParametersSetCollideWithBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithBodies=`(self: PhysicsShapeQueryParameters; val: bool) =
  if isNil(physicsShapeQueryParametersSetCollideWithBodiesMethodBind):
    physicsShapeQueryParametersSetCollideWithBodiesMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_collide_with_bodies")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetCollideWithBodiesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsShapeQueryParametersGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: PhysicsShapeQueryParameters): int64 =
  if isNil(physicsShapeQueryParametersGetCollisionMaskMethodBind):
    physicsShapeQueryParametersGetCollisionMaskMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryParametersGetCollisionMaskMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var physicsShapeQueryParametersSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: PhysicsShapeQueryParameters; val: int64) =
  if isNil(physicsShapeQueryParametersSetCollisionMaskMethodBind):
    physicsShapeQueryParametersSetCollisionMaskMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetCollisionMaskMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physicsShapeQueryParametersGetExcludeMethodBind {.threadvar.}: ptr GodotMethodBind
proc exclude(self: PhysicsShapeQueryParameters): Array =
  if isNil(physicsShapeQueryParametersGetExcludeMethodBind):
    physicsShapeQueryParametersGetExcludeMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"get_exclude")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physicsShapeQueryParametersGetExcludeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var physicsShapeQueryParametersSetExcludeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `exclude=`(self: PhysicsShapeQueryParameters; val: Array) =
  if isNil(physicsShapeQueryParametersSetExcludeMethodBind):
    physicsShapeQueryParametersSetExcludeMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_exclude")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetExcludeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsShapeQueryParametersGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc margin(self: PhysicsShapeQueryParameters): float64 =
  if isNil(physicsShapeQueryParametersGetMarginMethodBind):
    physicsShapeQueryParametersGetMarginMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"get_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryParametersGetMarginMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsShapeQueryParametersSetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `margin=`(self: PhysicsShapeQueryParameters; val: float64) =
  if isNil(physicsShapeQueryParametersSetMarginMethodBind):
    physicsShapeQueryParametersSetMarginMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsShapeQueryParametersGetShapeRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeRid(self: PhysicsShapeQueryParameters): RID =
  if isNil(physicsShapeQueryParametersGetShapeRidMethodBind):
    physicsShapeQueryParametersGetShapeRidMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"get_shape_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryParametersGetShapeRidMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physicsShapeQueryParametersSetShapeRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shapeRid=`(self: PhysicsShapeQueryParameters; val: RID) =
  if isNil(physicsShapeQueryParametersSetShapeRidMethodBind):
    physicsShapeQueryParametersSetShapeRidMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_shape_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetShapeRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsShapeQueryParametersGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform(self: PhysicsShapeQueryParameters): Transform =
  if isNil(physicsShapeQueryParametersGetTransformMethodBind):
    physicsShapeQueryParametersGetTransformMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physicsShapeQueryParametersGetTransformMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physicsShapeQueryParametersSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform=`(self: PhysicsShapeQueryParameters; val: Transform) =
  if isNil(physicsShapeQueryParametersSetTransformMethodBind):
    physicsShapeQueryParametersSetTransformMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physicsShapeQueryParametersSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setShape(self: PhysicsShapeQueryParameters; shape: Resource) =
  if isNil(physicsShapeQueryParametersSetShapeMethodBind):
    physicsShapeQueryParametersSetShapeMethodBind = getMethod(
        cstring"PhysicsShapeQueryParameters", cstring"set_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physicsShapeQueryParametersSetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
