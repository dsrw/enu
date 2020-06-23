
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc inputPickable*(self: CollisionObject2D): bool {.gcsafe, locks: 0.}
proc `inputPickable=`*(self: CollisionObject2D; val: bool) {.gcsafe, locks: 0.}
method inputEvent*(self: CollisionObject2D; viewport: Object; event: InputEvent;
                  shapeIdx: int64) {.gcsafe, locks: 0, base.}
proc createShapeOwner*(self: CollisionObject2D; owner: Object): int64 {.gcsafe,
    locks: 0.}
proc getRid*(self: CollisionObject2D): RID {.gcsafe, locks: 0.}
proc getShapeOwnerOneWayCollisionMargin*(self: CollisionObject2D; ownerId: int64): float64 {.
    gcsafe, locks: 0.}
proc getShapeOwners*(self: CollisionObject2D): Array {.gcsafe, locks: 0.}
proc isShapeOwnerDisabled*(self: CollisionObject2D; ownerId: int64): bool {.gcsafe,
    locks: 0.}
proc isShapeOwnerOneWayCollisionEnabled*(self: CollisionObject2D; ownerId: int64): bool {.
    gcsafe, locks: 0.}
proc removeShapeOwner*(self: CollisionObject2D; ownerId: int64) {.gcsafe, locks: 0.}
proc shapeFindOwner*(self: CollisionObject2D; shapeIndex: int64): int64 {.gcsafe,
    locks: 0.}
proc shapeOwnerAddShape*(self: CollisionObject2D; ownerId: int64; shape: Shape2D) {.
    gcsafe, locks: 0.}
proc shapeOwnerClearShapes*(self: CollisionObject2D; ownerId: int64) {.gcsafe,
    locks: 0.}
proc shapeOwnerGetOwner*(self: CollisionObject2D; ownerId: int64): Object {.gcsafe,
    locks: 0.}
proc shapeOwnerGetShape*(self: CollisionObject2D; ownerId: int64; shapeId: int64): Shape2D {.
    gcsafe, locks: 0.}
proc shapeOwnerGetShapeCount*(self: CollisionObject2D; ownerId: int64): int64 {.
    gcsafe, locks: 0.}
proc shapeOwnerGetShapeIndex*(self: CollisionObject2D; ownerId: int64; shapeId: int64): int64 {.
    gcsafe, locks: 0.}
proc shapeOwnerGetTransform*(self: CollisionObject2D; ownerId: int64): Transform2D {.
    gcsafe, locks: 0.}
proc shapeOwnerRemoveShape*(self: CollisionObject2D; ownerId: int64; shapeId: int64) {.
    gcsafe, locks: 0.}
proc shapeOwnerSetDisabled*(self: CollisionObject2D; ownerId: int64; disabled: bool) {.
    gcsafe, locks: 0.}
proc shapeOwnerSetOneWayCollision*(self: CollisionObject2D; ownerId: int64;
                                  enable: bool) {.gcsafe, locks: 0.}
proc shapeOwnerSetOneWayCollisionMargin*(self: CollisionObject2D; ownerId: int64;
                                        margin: float64) {.gcsafe, locks: 0.}
proc shapeOwnerSetTransform*(self: CollisionObject2D; ownerId: int64;
                            transform: Transform2D) {.gcsafe, locks: 0.}
var collisionObject2DIsPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc inputPickable(self: CollisionObject2D): bool =
  if isNil(collisionObject2DIsPickableMethodBind):
    collisionObject2DIsPickableMethodBind = getMethod(cstring"CollisionObject2D",
        cstring"is_pickable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DIsPickableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionObject2DSetPickableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `inputPickable=`(self: CollisionObject2D; val: bool) =
  if isNil(collisionObject2DSetPickableMethodBind):
    collisionObject2DSetPickableMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"set_pickable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  collisionObject2DSetPickableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DUnderscoreinputEventMethodBind {.threadvar.}: ptr GodotMethodBind
method inputEvent(self: CollisionObject2D; viewport: Object; event: InputEvent;
                 shapeIdx: int64) =
  if isNil(collisionObject2DUnderscoreinputEventMethodBind):
    collisionObject2DUnderscoreinputEventMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"_input_event")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not viewport.isNil:
    viewport.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(shapeIdx)
  var ptrCallRet: pointer
  collisionObject2DUnderscoreinputEventMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DCreateShapeOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc createShapeOwner(self: CollisionObject2D; owner: Object): int64 =
  if isNil(collisionObject2DCreateShapeOwnerMethodBind):
    collisionObject2DCreateShapeOwnerMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"create_shape_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not owner.isNil:
    owner.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DCreateShapeOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DGetRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRid(self: CollisionObject2D): RID =
  if isNil(collisionObject2DGetRidMethodBind):
    collisionObject2DGetRidMethodBind = getMethod(cstring"CollisionObject2D",
        cstring"get_rid")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DGetRidMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var collisionObject2DGetShapeOwnerOneWayCollisionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc getShapeOwnerOneWayCollisionMargin(self: CollisionObject2D; ownerId: int64): float64 =
  if isNil(collisionObject2DGetShapeOwnerOneWayCollisionMarginMethodBind):
    collisionObject2DGetShapeOwnerOneWayCollisionMarginMethodBind = getMethod(
        cstring"CollisionObject2D",
        cstring"get_shape_owner_one_way_collision_margin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DGetShapeOwnerOneWayCollisionMarginMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var collisionObject2DGetShapeOwnersMethodBind {.threadvar.}: ptr GodotMethodBind
proc getShapeOwners(self: CollisionObject2D): Array =
  if isNil(collisionObject2DGetShapeOwnersMethodBind):
    collisionObject2DGetShapeOwnersMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"get_shape_owners")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  collisionObject2DGetShapeOwnersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var collisionObject2DIsShapeOwnerDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isShapeOwnerDisabled(self: CollisionObject2D; ownerId: int64): bool =
  if isNil(collisionObject2DIsShapeOwnerDisabledMethodBind):
    collisionObject2DIsShapeOwnerDisabledMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"is_shape_owner_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DIsShapeOwnerDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DIsShapeOwnerOneWayCollisionEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isShapeOwnerOneWayCollisionEnabled(self: CollisionObject2D; ownerId: int64): bool =
  if isNil(collisionObject2DIsShapeOwnerOneWayCollisionEnabledMethodBind):
    collisionObject2DIsShapeOwnerOneWayCollisionEnabledMethodBind = getMethod(
        cstring"CollisionObject2D",
        cstring"is_shape_owner_one_way_collision_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DIsShapeOwnerOneWayCollisionEnabledMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var collisionObject2DRemoveShapeOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeShapeOwner(self: CollisionObject2D; ownerId: int64) =
  if isNil(collisionObject2DRemoveShapeOwnerMethodBind):
    collisionObject2DRemoveShapeOwnerMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"remove_shape_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  collisionObject2DRemoveShapeOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeFindOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeFindOwner(self: CollisionObject2D; shapeIndex: int64): int64 =
  if isNil(collisionObject2DShapeFindOwnerMethodBind):
    collisionObject2DShapeFindOwnerMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_find_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(shapeIndex)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DShapeFindOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerAddShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerAddShape(self: CollisionObject2D; ownerId: int64; shape: Shape2D) =
  if isNil(collisionObject2DShapeOwnerAddShapeMethodBind):
    collisionObject2DShapeOwnerAddShapeMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_add_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  let argToPassToGodot1 = if not shape.isNil:
    shape.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  collisionObject2DShapeOwnerAddShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerClearShapesMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerClearShapes(self: CollisionObject2D; ownerId: int64) =
  if isNil(collisionObject2DShapeOwnerClearShapesMethodBind):
    collisionObject2DShapeOwnerClearShapesMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_clear_shapes")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  collisionObject2DShapeOwnerClearShapesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerGetOwnerMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetOwner(self: CollisionObject2D; ownerId: int64): Object =
  if isNil(collisionObject2DShapeOwnerGetOwnerMethodBind):
    collisionObject2DShapeOwnerGetOwnerMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_get_owner")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  collisionObject2DShapeOwnerGetOwnerMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var collisionObject2DShapeOwnerGetShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetShape(self: CollisionObject2D; ownerId: int64; shapeId: int64): Shape2D =
  if isNil(collisionObject2DShapeOwnerGetShapeMethodBind):
    collisionObject2DShapeOwnerGetShapeMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_get_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  collisionObject2DShapeOwnerGetShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var collisionObject2DShapeOwnerGetShapeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetShapeCount(self: CollisionObject2D; ownerId: int64): int64 =
  if isNil(collisionObject2DShapeOwnerGetShapeCountMethodBind):
    collisionObject2DShapeOwnerGetShapeCountMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_get_shape_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DShapeOwnerGetShapeCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerGetShapeIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetShapeIndex(self: CollisionObject2D; ownerId: int64; shapeId: int64): int64 =
  if isNil(collisionObject2DShapeOwnerGetShapeIndexMethodBind):
    collisionObject2DShapeOwnerGetShapeIndexMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_get_shape_index")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DShapeOwnerGetShapeIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerGetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerGetTransform(self: CollisionObject2D; ownerId: int64): Transform2D =
  if isNil(collisionObject2DShapeOwnerGetTransformMethodBind):
    collisionObject2DShapeOwnerGetTransformMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_get_transform")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  collisionObject2DShapeOwnerGetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerRemoveShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerRemoveShape(self: CollisionObject2D; ownerId: int64; shapeId: int64) =
  if isNil(collisionObject2DShapeOwnerRemoveShapeMethodBind):
    collisionObject2DShapeOwnerRemoveShapeMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_remove_shape")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(shapeId)
  var ptrCallRet: pointer
  collisionObject2DShapeOwnerRemoveShapeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerSetDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerSetDisabled(self: CollisionObject2D; ownerId: int64; disabled: bool) =
  if isNil(collisionObject2DShapeOwnerSetDisabledMethodBind):
    collisionObject2DShapeOwnerSetDisabledMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_set_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  collisionObject2DShapeOwnerSetDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerSetOneWayCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerSetOneWayCollision(self: CollisionObject2D; ownerId: int64;
                                 enable: bool) =
  if isNil(collisionObject2DShapeOwnerSetOneWayCollisionMethodBind):
    collisionObject2DShapeOwnerSetOneWayCollisionMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_set_one_way_collision")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  collisionObject2DShapeOwnerSetOneWayCollisionMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerSetOneWayCollisionMarginMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerSetOneWayCollisionMargin(self: CollisionObject2D; ownerId: int64;
                                       margin: float64) =
  if isNil(collisionObject2DShapeOwnerSetOneWayCollisionMarginMethodBind):
    collisionObject2DShapeOwnerSetOneWayCollisionMarginMethodBind = getMethod(
        cstring"CollisionObject2D",
        cstring"shape_owner_set_one_way_collision_margin")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(margin)
  var ptrCallRet: pointer
  collisionObject2DShapeOwnerSetOneWayCollisionMarginMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var collisionObject2DShapeOwnerSetTransformMethodBind {.threadvar.}: ptr GodotMethodBind
proc shapeOwnerSetTransform(self: CollisionObject2D; ownerId: int64;
                           transform: Transform2D) =
  if isNil(collisionObject2DShapeOwnerSetTransformMethodBind):
    collisionObject2DShapeOwnerSetTransformMethodBind = getMethod(
        cstring"CollisionObject2D", cstring"shape_owner_set_transform")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(ownerId)
  argsToPassToGodot[][1] = unsafeAddr(transform)
  var ptrCallRet: pointer
  collisionObject2DShapeOwnerSetTransformMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
