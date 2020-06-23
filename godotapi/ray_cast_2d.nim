
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc castTo*(self: RayCast2D): Vector2 {.gcsafe, locks: 0.}
proc `castTo=`*(self: RayCast2D; val: Vector2) {.gcsafe, locks: 0.}
proc collideWithAreas*(self: RayCast2D): bool {.gcsafe, locks: 0.}
proc `collideWithAreas=`*(self: RayCast2D; val: bool) {.gcsafe, locks: 0.}
proc collideWithBodies*(self: RayCast2D): bool {.gcsafe, locks: 0.}
proc `collideWithBodies=`*(self: RayCast2D; val: bool) {.gcsafe, locks: 0.}
proc collisionMask*(self: RayCast2D): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: RayCast2D; val: int64) {.gcsafe, locks: 0.}
proc enabled*(self: RayCast2D): bool {.gcsafe, locks: 0.}
proc `enabled=`*(self: RayCast2D; val: bool) {.gcsafe, locks: 0.}
proc excludeParent*(self: RayCast2D): bool {.gcsafe, locks: 0.}
proc `excludeParent=`*(self: RayCast2D; val: bool) {.gcsafe, locks: 0.}
proc addException*(self: RayCast2D; node: Object) {.gcsafe, locks: 0.}
proc addExceptionRid*(self: RayCast2D; rid: RID) {.gcsafe, locks: 0.}
proc clearExceptions*(self: RayCast2D) {.gcsafe, locks: 0.}
proc forceRaycastUpdate*(self: RayCast2D) {.gcsafe, locks: 0.}
proc getCollider*(self: RayCast2D): Object {.gcsafe, locks: 0.}
proc getColliderShape*(self: RayCast2D): int64 {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: RayCast2D; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionNormal*(self: RayCast2D): Vector2 {.gcsafe, locks: 0.}
proc getCollisionPoint*(self: RayCast2D): Vector2 {.gcsafe, locks: 0.}
proc isColliding*(self: RayCast2D): bool {.gcsafe, locks: 0.}
proc removeException*(self: RayCast2D; node: Object) {.gcsafe, locks: 0.}
proc removeExceptionRid*(self: RayCast2D; rid: RID) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: RayCast2D; bit: int64; value: bool) {.gcsafe, locks: 0.}
var rayCast2DGetCastToMethodBind {.threadvar.}: ptr GodotMethodBind
proc castTo(self: RayCast2D): Vector2 =
  if isNil(rayCast2DGetCastToMethodBind):
    rayCast2DGetCastToMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_cast_to")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DGetCastToMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DSetCastToMethodBind {.threadvar.}: ptr GodotMethodBind
proc `castTo=`(self: RayCast2D; val: Vector2) =
  if isNil(rayCast2DSetCastToMethodBind):
    rayCast2DSetCastToMethodBind = getMethod(cstring"RayCast2D",
        cstring"set_cast_to")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCast2DSetCastToMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var rayCast2DIsCollideWithAreasEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithAreas(self: RayCast2D): bool =
  if isNil(rayCast2DIsCollideWithAreasEnabledMethodBind):
    rayCast2DIsCollideWithAreasEnabledMethodBind = getMethod(cstring"RayCast2D",
        cstring"is_collide_with_areas_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DIsCollideWithAreasEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rayCast2DSetCollideWithAreasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithAreas=`(self: RayCast2D; val: bool) =
  if isNil(rayCast2DSetCollideWithAreasMethodBind):
    rayCast2DSetCollideWithAreasMethodBind = getMethod(cstring"RayCast2D",
        cstring"set_collide_with_areas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCast2DSetCollideWithAreasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCast2DIsCollideWithBodiesEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithBodies(self: RayCast2D): bool =
  if isNil(rayCast2DIsCollideWithBodiesEnabledMethodBind):
    rayCast2DIsCollideWithBodiesEnabledMethodBind = getMethod(cstring"RayCast2D",
        cstring"is_collide_with_bodies_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DIsCollideWithBodiesEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rayCast2DSetCollideWithBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithBodies=`(self: RayCast2D; val: bool) =
  if isNil(rayCast2DSetCollideWithBodiesMethodBind):
    rayCast2DSetCollideWithBodiesMethodBind = getMethod(cstring"RayCast2D",
        cstring"set_collide_with_bodies")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCast2DSetCollideWithBodiesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCast2DGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: RayCast2D): int64 =
  if isNil(rayCast2DGetCollisionMaskMethodBind):
    rayCast2DGetCollisionMaskMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: RayCast2D; val: int64) =
  if isNil(rayCast2DSetCollisionMaskMethodBind):
    rayCast2DSetCollisionMaskMethodBind = getMethod(cstring"RayCast2D",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCast2DSetCollisionMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCast2DIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc enabled(self: RayCast2D): bool =
  if isNil(rayCast2DIsEnabledMethodBind):
    rayCast2DIsEnabledMethodBind = getMethod(cstring"RayCast2D",
        cstring"is_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DIsEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enabled=`(self: RayCast2D; val: bool) =
  if isNil(rayCast2DSetEnabledMethodBind):
    rayCast2DSetEnabledMethodBind = getMethod(cstring"RayCast2D",
        cstring"set_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCast2DSetEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var rayCast2DGetExcludeParentBodyMethodBind {.threadvar.}: ptr GodotMethodBind
proc excludeParent(self: RayCast2D): bool =
  if isNil(rayCast2DGetExcludeParentBodyMethodBind):
    rayCast2DGetExcludeParentBodyMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_exclude_parent_body")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DGetExcludeParentBodyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rayCast2DSetExcludeParentBodyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `excludeParent=`(self: RayCast2D; val: bool) =
  if isNil(rayCast2DSetExcludeParentBodyMethodBind):
    rayCast2DSetExcludeParentBodyMethodBind = getMethod(cstring"RayCast2D",
        cstring"set_exclude_parent_body")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCast2DSetExcludeParentBodyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCast2DAddExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc addException(self: RayCast2D; node: Object) =
  if isNil(rayCast2DAddExceptionMethodBind):
    rayCast2DAddExceptionMethodBind = getMethod(cstring"RayCast2D",
        cstring"add_exception")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rayCast2DAddExceptionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rayCast2DAddExceptionRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc addExceptionRid(self: RayCast2D; rid: RID) =
  if isNil(rayCast2DAddExceptionRidMethodBind):
    rayCast2DAddExceptionRidMethodBind = getMethod(cstring"RayCast2D",
        cstring"add_exception_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  rayCast2DAddExceptionRidMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rayCast2DClearExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearExceptions(self: RayCast2D) =
  if isNil(rayCast2DClearExceptionsMethodBind):
    rayCast2DClearExceptionsMethodBind = getMethod(cstring"RayCast2D",
        cstring"clear_exceptions")
  var ptrCallRet: pointer
  rayCast2DClearExceptionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DForceRaycastUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceRaycastUpdate(self: RayCast2D) =
  if isNil(rayCast2DForceRaycastUpdateMethodBind):
    rayCast2DForceRaycastUpdateMethodBind = getMethod(cstring"RayCast2D",
        cstring"force_raycast_update")
  var ptrCallRet: pointer
  rayCast2DForceRaycastUpdateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DGetColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollider(self: RayCast2D): Object =
  if isNil(rayCast2DGetColliderMethodBind):
    rayCast2DGetColliderMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_collider")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  rayCast2DGetColliderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var rayCast2DGetColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColliderShape(self: RayCast2D): int64 =
  if isNil(rayCast2DGetColliderShapeMethodBind):
    rayCast2DGetColliderShapeMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_collider_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DGetColliderShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: RayCast2D; bit: int64): bool =
  if isNil(rayCast2DGetCollisionMaskBitMethodBind):
    rayCast2DGetCollisionMaskBitMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCast2DGetCollisionNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionNormal(self: RayCast2D): Vector2 =
  if isNil(rayCast2DGetCollisionNormalMethodBind):
    rayCast2DGetCollisionNormalMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_collision_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DGetCollisionNormalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DGetCollisionPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionPoint(self: RayCast2D): Vector2 =
  if isNil(rayCast2DGetCollisionPointMethodBind):
    rayCast2DGetCollisionPointMethodBind = getMethod(cstring"RayCast2D",
        cstring"get_collision_point")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DGetCollisionPointMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DIsCollidingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isColliding(self: RayCast2D): bool =
  if isNil(rayCast2DIsCollidingMethodBind):
    rayCast2DIsCollidingMethodBind = getMethod(cstring"RayCast2D",
        cstring"is_colliding")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCast2DIsCollidingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCast2DRemoveExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeException(self: RayCast2D; node: Object) =
  if isNil(rayCast2DRemoveExceptionMethodBind):
    rayCast2DRemoveExceptionMethodBind = getMethod(cstring"RayCast2D",
        cstring"remove_exception")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  rayCast2DRemoveExceptionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rayCast2DRemoveExceptionRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeExceptionRid(self: RayCast2D; rid: RID) =
  if isNil(rayCast2DRemoveExceptionRidMethodBind):
    rayCast2DRemoveExceptionRidMethodBind = getMethod(cstring"RayCast2D",
        cstring"remove_exception_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  rayCast2DRemoveExceptionRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCast2DSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: RayCast2D; bit: int64; value: bool) =
  if isNil(rayCast2DSetCollisionMaskBitMethodBind):
    rayCast2DSetCollisionMaskBitMethodBind = getMethod(cstring"RayCast2D",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  rayCast2DSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
