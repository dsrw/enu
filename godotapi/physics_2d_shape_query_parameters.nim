
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc collideWithAreas*(self: Physics2DShapeQueryParameters): bool {.gcsafe, locks: 0.}
proc `collideWithAreas=`*(self: Physics2DShapeQueryParameters; val: bool) {.gcsafe,
    locks: 0.}
proc collideWithBodies*(self: Physics2DShapeQueryParameters): bool {.gcsafe, locks: 0.}
proc `collideWithBodies=`*(self: Physics2DShapeQueryParameters; val: bool) {.gcsafe,
    locks: 0.}
proc collisionLayer*(self: Physics2DShapeQueryParameters): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: Physics2DShapeQueryParameters; val: int64) {.gcsafe,
    locks: 0.}
proc exclude*(self: Physics2DShapeQueryParameters): Array {.gcsafe, locks: 0.}
proc `exclude=`*(self: Physics2DShapeQueryParameters; val: Array) {.gcsafe, locks: 0.}
proc margin*(self: Physics2DShapeQueryParameters): float64 {.gcsafe, locks: 0.}
proc `margin=`*(self: Physics2DShapeQueryParameters; val: float64) {.gcsafe, locks: 0.}
proc motion*(self: Physics2DShapeQueryParameters): Vector2 {.gcsafe, locks: 0.}
proc `motion=`*(self: Physics2DShapeQueryParameters; val: Vector2) {.gcsafe, locks: 0.}
proc shapeRid*(self: Physics2DShapeQueryParameters): RID {.gcsafe, locks: 0.}
proc `shapeRid=`*(self: Physics2DShapeQueryParameters; val: RID) {.gcsafe, locks: 0.}
proc transform*(self: Physics2DShapeQueryParameters): Transform2D {.gcsafe, locks: 0.}
proc `transform=`*(self: Physics2DShapeQueryParameters; val: Transform2D) {.gcsafe,
    locks: 0.}
proc setShape*(self: Physics2DShapeQueryParameters; shape: Resource) {.gcsafe,
    locks: 0.}
var physics2DShapeQueryParametersIsCollideWithAreasEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithAreas(self: Physics2DShapeQueryParameters): bool =
  if isNil(physics2DShapeQueryParametersIsCollideWithAreasEnabledMethodBind):
    physics2DShapeQueryParametersIsCollideWithAreasEnabledMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters",
        cstring"is_collide_with_areas_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryParametersIsCollideWithAreasEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var physics2DShapeQueryParametersSetCollideWithAreasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithAreas=`(self: Physics2DShapeQueryParameters; val: bool) =
  if isNil(physics2DShapeQueryParametersSetCollideWithAreasMethodBind):
    physics2DShapeQueryParametersSetCollideWithAreasMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_collide_with_areas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetCollideWithAreasMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersIsCollideWithBodiesEnabledMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc collideWithBodies(self: Physics2DShapeQueryParameters): bool =
  if isNil(physics2DShapeQueryParametersIsCollideWithBodiesEnabledMethodBind):
    physics2DShapeQueryParametersIsCollideWithBodiesEnabledMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters",
        cstring"is_collide_with_bodies_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryParametersIsCollideWithBodiesEnabledMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var physics2DShapeQueryParametersSetCollideWithBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithBodies=`(self: Physics2DShapeQueryParameters; val: bool) =
  if isNil(physics2DShapeQueryParametersSetCollideWithBodiesMethodBind):
    physics2DShapeQueryParametersSetCollideWithBodiesMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_collide_with_bodies")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetCollideWithBodiesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: Physics2DShapeQueryParameters): int64 =
  if isNil(physics2DShapeQueryParametersGetCollisionLayerMethodBind):
    physics2DShapeQueryParametersGetCollisionLayerMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryParametersGetCollisionLayerMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var physics2DShapeQueryParametersSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: Physics2DShapeQueryParameters; val: int64) =
  if isNil(physics2DShapeQueryParametersSetCollisionLayerMethodBind):
    physics2DShapeQueryParametersSetCollisionLayerMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetCollisionLayerMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersGetExcludeMethodBind {.threadvar.}: ptr GodotMethodBind
proc exclude(self: Physics2DShapeQueryParameters): Array =
  if isNil(physics2DShapeQueryParametersGetExcludeMethodBind):
    physics2DShapeQueryParametersGetExcludeMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"get_exclude")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  physics2DShapeQueryParametersGetExcludeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = newArray(ptrCallVal)

var physics2DShapeQueryParametersSetExcludeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `exclude=`(self: Physics2DShapeQueryParameters; val: Array) =
  if isNil(physics2DShapeQueryParametersSetExcludeMethodBind):
    physics2DShapeQueryParametersSetExcludeMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_exclude")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetExcludeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersGetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc margin(self: Physics2DShapeQueryParameters): float64 =
  if isNil(physics2DShapeQueryParametersGetMarginMethodBind):
    physics2DShapeQueryParametersGetMarginMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"get_margin")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryParametersGetMarginMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DShapeQueryParametersSetMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc `margin=`(self: Physics2DShapeQueryParameters; val: float64) =
  if isNil(physics2DShapeQueryParametersSetMarginMethodBind):
    physics2DShapeQueryParametersSetMarginMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetMarginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersGetMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc motion(self: Physics2DShapeQueryParameters): Vector2 =
  if isNil(physics2DShapeQueryParametersGetMotionMethodBind):
    physics2DShapeQueryParametersGetMotionMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"get_motion")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryParametersGetMotionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var physics2DShapeQueryParametersSetMotionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `motion=`(self: Physics2DShapeQueryParameters; val: Vector2) =
  if isNil(physics2DShapeQueryParametersSetMotionMethodBind):
    physics2DShapeQueryParametersSetMotionMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_motion")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetMotionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersGetShapeRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeRid(self: Physics2DShapeQueryParameters): RID =
  if isNil(physics2DShapeQueryParametersGetShapeRidMethodBind):
    physics2DShapeQueryParametersGetShapeRidMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"get_shape_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryParametersGetShapeRidMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DShapeQueryParametersSetShapeRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc `shapeRid=`(self: Physics2DShapeQueryParameters; val: RID) =
  if isNil(physics2DShapeQueryParametersSetShapeRidMethodBind):
    physics2DShapeQueryParametersSetShapeRidMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_shape_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetShapeRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc transform(self: Physics2DShapeQueryParameters): Transform2D =
  if isNil(physics2DShapeQueryParametersGetTransformMethodBind):
    physics2DShapeQueryParametersGetTransformMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"get_transform")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  physics2DShapeQueryParametersGetTransformMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var physics2DShapeQueryParametersSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc `transform=`(self: Physics2DShapeQueryParameters; val: Transform2D) =
  if isNil(physics2DShapeQueryParametersSetTransformMethodBind):
    physics2DShapeQueryParametersSetTransformMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var physics2DShapeQueryParametersSetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setShape(self: Physics2DShapeQueryParameters; shape: Resource) =
  if isNil(physics2DShapeQueryParametersSetShapeMethodBind):
    physics2DShapeQueryParametersSetShapeMethodBind = getMethod(
        cstring"Physics2DShapeQueryParameters", cstring"set_shape")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  physics2DShapeQueryParametersSetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
