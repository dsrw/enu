
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc castTo*(self: RayCast): Vector3 {.gcsafe, locks: 0.}
proc `castTo=`*(self: RayCast; val: Vector3) {.gcsafe, locks: 0.}
proc collideWithAreas*(self: RayCast): bool {.gcsafe, locks: 0.}
proc `collideWithAreas=`*(self: RayCast; val: bool) {.gcsafe, locks: 0.}
proc collideWithBodies*(self: RayCast): bool {.gcsafe, locks: 0.}
proc `collideWithBodies=`*(self: RayCast; val: bool) {.gcsafe, locks: 0.}
proc collisionMask*(self: RayCast): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: RayCast; val: int64) {.gcsafe, locks: 0.}
proc enabled*(self: RayCast): bool {.gcsafe, locks: 0.}
proc `enabled=`*(self: RayCast; val: bool) {.gcsafe, locks: 0.}
proc excludeParent*(self: RayCast): bool {.gcsafe, locks: 0.}
proc `excludeParent=`*(self: RayCast; val: bool) {.gcsafe, locks: 0.}
proc addException*(self: RayCast; node: Object) {.gcsafe, locks: 0.}
proc addExceptionRid*(self: RayCast; rid: RID) {.gcsafe, locks: 0.}
proc clearExceptions*(self: RayCast) {.gcsafe, locks: 0.}
proc forceRaycastUpdate*(self: RayCast) {.gcsafe, locks: 0.}
proc getCollider*(self: RayCast): Object {.gcsafe, locks: 0.}
proc getColliderShape*(self: RayCast): int64 {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: RayCast; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionNormal*(self: RayCast): Vector3 {.gcsafe, locks: 0.}
proc getCollisionPoint*(self: RayCast): Vector3 {.gcsafe, locks: 0.}
proc isColliding*(self: RayCast): bool {.gcsafe, locks: 0.}
proc removeException*(self: RayCast; node: Object) {.gcsafe, locks: 0.}
proc removeExceptionRid*(self: RayCast; rid: RID) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: RayCast; bit: int64; value: bool) {.gcsafe, locks: 0.}
var rayCastGetCastToMethodBind {.threadvar.}: ptr GodotMethodBind
proc castTo(self: RayCast): Vector3 =
  if isNil(rayCastGetCastToMethodBind):
    rayCastGetCastToMethodBind = getMethod(cstring"RayCast", cstring"get_cast_to")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastGetCastToMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastSetCastToMethodBind {.threadvar.}: ptr GodotMethodBind
proc `castTo=`(self: RayCast; val: Vector3) =
  if isNil(rayCastSetCastToMethodBind):
    rayCastSetCastToMethodBind = getMethod(cstring"RayCast", cstring"set_cast_to")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCastSetCastToMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var rayCastIsCollideWithAreasEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithAreas(self: RayCast): bool =
  if isNil(rayCastIsCollideWithAreasEnabledMethodBind):
    rayCastIsCollideWithAreasEnabledMethodBind = getMethod(cstring"RayCast",
        cstring"is_collide_with_areas_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastIsCollideWithAreasEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rayCastSetCollideWithAreasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithAreas=`(self: RayCast; val: bool) =
  if isNil(rayCastSetCollideWithAreasMethodBind):
    rayCastSetCollideWithAreasMethodBind = getMethod(cstring"RayCast",
        cstring"set_collide_with_areas")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCastSetCollideWithAreasMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCastIsCollideWithBodiesEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc collideWithBodies(self: RayCast): bool =
  if isNil(rayCastIsCollideWithBodiesEnabledMethodBind):
    rayCastIsCollideWithBodiesEnabledMethodBind = getMethod(cstring"RayCast",
        cstring"is_collide_with_bodies_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastIsCollideWithBodiesEnabledMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var rayCastSetCollideWithBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collideWithBodies=`(self: RayCast; val: bool) =
  if isNil(rayCastSetCollideWithBodiesMethodBind):
    rayCastSetCollideWithBodiesMethodBind = getMethod(cstring"RayCast",
        cstring"set_collide_with_bodies")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCastSetCollideWithBodiesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCastGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: RayCast): int64 =
  if isNil(rayCastGetCollisionMaskMethodBind):
    rayCastGetCollisionMaskMethodBind = getMethod(cstring"RayCast",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: RayCast; val: int64) =
  if isNil(rayCastSetCollisionMaskMethodBind):
    rayCastSetCollisionMaskMethodBind = getMethod(cstring"RayCast",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCastSetCollisionMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rayCastIsEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc enabled(self: RayCast): bool =
  if isNil(rayCastIsEnabledMethodBind):
    rayCastIsEnabledMethodBind = getMethod(cstring"RayCast", cstring"is_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastIsEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastSetEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `enabled=`(self: RayCast; val: bool) =
  if isNil(rayCastSetEnabledMethodBind):
    rayCastSetEnabledMethodBind = getMethod(cstring"RayCast", cstring"set_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCastSetEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var rayCastGetExcludeParentBodyMethodBind {.threadvar.}: ptr GodotMethodBind
proc excludeParent(self: RayCast): bool =
  if isNil(rayCastGetExcludeParentBodyMethodBind):
    rayCastGetExcludeParentBodyMethodBind = getMethod(cstring"RayCast",
        cstring"get_exclude_parent_body")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastGetExcludeParentBodyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastSetExcludeParentBodyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `excludeParent=`(self: RayCast; val: bool) =
  if isNil(rayCastSetExcludeParentBodyMethodBind):
    rayCastSetExcludeParentBodyMethodBind = getMethod(cstring"RayCast",
        cstring"set_exclude_parent_body")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rayCastSetExcludeParentBodyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCastAddExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc addException(self: RayCast; node: Object) =
  if isNil(rayCastAddExceptionMethodBind):
    rayCastAddExceptionMethodBind = getMethod(cstring"RayCast",
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
  rayCastAddExceptionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var rayCastAddExceptionRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc addExceptionRid(self: RayCast; rid: RID) =
  if isNil(rayCastAddExceptionRidMethodBind):
    rayCastAddExceptionRidMethodBind = getMethod(cstring"RayCast",
        cstring"add_exception_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  rayCastAddExceptionRidMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rayCastClearExceptionsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearExceptions(self: RayCast) =
  if isNil(rayCastClearExceptionsMethodBind):
    rayCastClearExceptionsMethodBind = getMethod(cstring"RayCast",
        cstring"clear_exceptions")
  var ptrCallRet: pointer
  rayCastClearExceptionsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastForceRaycastUpdateMethodBind {.threadvar.}: ptr GodotMethodBind
proc forceRaycastUpdate(self: RayCast) =
  if isNil(rayCastForceRaycastUpdateMethodBind):
    rayCastForceRaycastUpdateMethodBind = getMethod(cstring"RayCast",
        cstring"force_raycast_update")
  var ptrCallRet: pointer
  rayCastForceRaycastUpdateMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastGetColliderMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollider(self: RayCast): Object =
  if isNil(rayCastGetColliderMethodBind):
    rayCastGetColliderMethodBind = getMethod(cstring"RayCast",
        cstring"get_collider")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  rayCastGetColliderMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var rayCastGetColliderShapeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getColliderShape(self: RayCast): int64 =
  if isNil(rayCastGetColliderShapeMethodBind):
    rayCastGetColliderShapeMethodBind = getMethod(cstring"RayCast",
        cstring"get_collider_shape")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastGetColliderShapeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: RayCast; bit: int64): bool =
  if isNil(rayCastGetCollisionMaskBitMethodBind):
    rayCastGetCollisionMaskBitMethodBind = getMethod(cstring"RayCast",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCastGetCollisionNormalMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionNormal(self: RayCast): Vector3 =
  if isNil(rayCastGetCollisionNormalMethodBind):
    rayCastGetCollisionNormalMethodBind = getMethod(cstring"RayCast",
        cstring"get_collision_normal")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastGetCollisionNormalMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastGetCollisionPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionPoint(self: RayCast): Vector3 =
  if isNil(rayCastGetCollisionPointMethodBind):
    rayCastGetCollisionPointMethodBind = getMethod(cstring"RayCast",
        cstring"get_collision_point")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastGetCollisionPointMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastIsCollidingMethodBind {.threadvar.}: ptr GodotMethodBind
proc isColliding(self: RayCast): bool =
  if isNil(rayCastIsCollidingMethodBind):
    rayCastIsCollidingMethodBind = getMethod(cstring"RayCast",
        cstring"is_colliding")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rayCastIsCollidingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rayCastRemoveExceptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeException(self: RayCast; node: Object) =
  if isNil(rayCastRemoveExceptionMethodBind):
    rayCastRemoveExceptionMethodBind = getMethod(cstring"RayCast",
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
  rayCastRemoveExceptionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rayCastRemoveExceptionRidMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeExceptionRid(self: RayCast; rid: RID) =
  if isNil(rayCastRemoveExceptionRidMethodBind):
    rayCastRemoveExceptionRidMethodBind = getMethod(cstring"RayCast",
        cstring"remove_exception_rid")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(rid)
  var ptrCallRet: pointer
  rayCastRemoveExceptionRidMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rayCastSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: RayCast; bit: int64; value: bool) =
  if isNil(rayCastSetCollisionMaskBitMethodBind):
    rayCastSetCollisionMaskBitMethodBind = getMethod(cstring"RayCast",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  rayCastSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
