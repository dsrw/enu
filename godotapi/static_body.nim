
import
  godot, godottypes, godotinternal, physics_body

export
  godottypes, physics_body

proc bounce*(self: StaticBody): float64 {.gcsafe, locks: 0.}
proc `bounce=`*(self: StaticBody; val: float64) {.gcsafe, locks: 0.}
proc constantAngularVelocity*(self: StaticBody): Vector3 {.gcsafe, locks: 0.}
proc `constantAngularVelocity=`*(self: StaticBody; val: Vector3) {.gcsafe, locks: 0.}
proc constantLinearVelocity*(self: StaticBody): Vector3 {.gcsafe, locks: 0.}
proc `constantLinearVelocity=`*(self: StaticBody; val: Vector3) {.gcsafe, locks: 0.}
proc friction*(self: StaticBody): float64 {.gcsafe, locks: 0.}
proc `friction=`*(self: StaticBody; val: float64) {.gcsafe, locks: 0.}
proc physicsMaterialOverride*(self: StaticBody): PhysicsMaterial {.gcsafe, locks: 0.}
proc `physicsMaterialOverride=`*(self: StaticBody; val: PhysicsMaterial) {.gcsafe,
    locks: 0.}
method reloadPhysicsCharacteristics*(self: StaticBody) {.gcsafe, locks: 0, base.}
var staticBodyGetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounce(self: StaticBody): float64 =
  if isNil(staticBodyGetBounceMethodBind):
    staticBodyGetBounceMethodBind = getMethod(cstring"StaticBody",
        cstring"get_bounce")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBodyGetBounceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var staticBodySetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounce=`(self: StaticBody; val: float64) =
  if isNil(staticBodySetBounceMethodBind):
    staticBodySetBounceMethodBind = getMethod(cstring"StaticBody",
        cstring"set_bounce")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBodySetBounceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var staticBodyGetConstantAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc constantAngularVelocity(self: StaticBody): Vector3 =
  if isNil(staticBodyGetConstantAngularVelocityMethodBind):
    staticBodyGetConstantAngularVelocityMethodBind = getMethod(
        cstring"StaticBody", cstring"get_constant_angular_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBodyGetConstantAngularVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var staticBodySetConstantAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constantAngularVelocity=`(self: StaticBody; val: Vector3) =
  if isNil(staticBodySetConstantAngularVelocityMethodBind):
    staticBodySetConstantAngularVelocityMethodBind = getMethod(
        cstring"StaticBody", cstring"set_constant_angular_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBodySetConstantAngularVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var staticBodyGetConstantLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc constantLinearVelocity(self: StaticBody): Vector3 =
  if isNil(staticBodyGetConstantLinearVelocityMethodBind):
    staticBodyGetConstantLinearVelocityMethodBind = getMethod(
        cstring"StaticBody", cstring"get_constant_linear_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBodyGetConstantLinearVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var staticBodySetConstantLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constantLinearVelocity=`(self: StaticBody; val: Vector3) =
  if isNil(staticBodySetConstantLinearVelocityMethodBind):
    staticBodySetConstantLinearVelocityMethodBind = getMethod(
        cstring"StaticBody", cstring"set_constant_linear_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBodySetConstantLinearVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var staticBodyGetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc friction(self: StaticBody): float64 =
  if isNil(staticBodyGetFrictionMethodBind):
    staticBodyGetFrictionMethodBind = getMethod(cstring"StaticBody",
        cstring"get_friction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBodyGetFrictionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var staticBodySetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `friction=`(self: StaticBody; val: float64) =
  if isNil(staticBodySetFrictionMethodBind):
    staticBodySetFrictionMethodBind = getMethod(cstring"StaticBody",
        cstring"set_friction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBodySetFrictionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var staticBodyGetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicsMaterialOverride(self: StaticBody): PhysicsMaterial =
  if isNil(staticBodyGetPhysicsMaterialOverrideMethodBind):
    staticBodyGetPhysicsMaterialOverrideMethodBind = getMethod(
        cstring"StaticBody", cstring"get_physics_material_override")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  staticBodyGetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var staticBodySetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `physicsMaterialOverride=`(self: StaticBody; val: PhysicsMaterial) =
  if isNil(staticBodySetPhysicsMaterialOverrideMethodBind):
    staticBodySetPhysicsMaterialOverrideMethodBind = getMethod(
        cstring"StaticBody", cstring"set_physics_material_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  staticBodySetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var staticBodyUnderscorereloadPhysicsCharacteristicsMethodBind {.threadvar.}: ptr GodotMethodBind
method reloadPhysicsCharacteristics(self: StaticBody) =
  if isNil(staticBodyUnderscorereloadPhysicsCharacteristicsMethodBind):
    staticBodyUnderscorereloadPhysicsCharacteristicsMethodBind = getMethod(
        cstring"StaticBody", cstring"_reload_physics_characteristics")
  var ptrCallRet: pointer
  staticBodyUnderscorereloadPhysicsCharacteristicsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
