
import
  godot, godottypes, godotinternal, physics_body_2d

export
  godottypes, physics_body_2d

proc bounce*(self: StaticBody2D): float64 {.gcsafe, locks: 0.}
proc `bounce=`*(self: StaticBody2D; val: float64) {.gcsafe, locks: 0.}
proc constantAngularVelocity*(self: StaticBody2D): float64 {.gcsafe, locks: 0.}
proc `constantAngularVelocity=`*(self: StaticBody2D; val: float64) {.gcsafe, locks: 0.}
proc constantLinearVelocity*(self: StaticBody2D): Vector2 {.gcsafe, locks: 0.}
proc `constantLinearVelocity=`*(self: StaticBody2D; val: Vector2) {.gcsafe, locks: 0.}
proc friction*(self: StaticBody2D): float64 {.gcsafe, locks: 0.}
proc `friction=`*(self: StaticBody2D; val: float64) {.gcsafe, locks: 0.}
proc physicsMaterialOverride*(self: StaticBody2D): PhysicsMaterial {.gcsafe, locks: 0.}
proc `physicsMaterialOverride=`*(self: StaticBody2D; val: PhysicsMaterial) {.gcsafe,
    locks: 0.}
method reloadPhysicsCharacteristics*(self: StaticBody2D) {.gcsafe, locks: 0, base.}
var staticBody2DGetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc bounce(self: StaticBody2D): float64 =
  if isNil(staticBody2DGetBounceMethodBind):
    staticBody2DGetBounceMethodBind = getMethod(cstring"StaticBody2D",
        cstring"get_bounce")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBody2DGetBounceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var staticBody2DSetBounceMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bounce=`(self: StaticBody2D; val: float64) =
  if isNil(staticBody2DSetBounceMethodBind):
    staticBody2DSetBounceMethodBind = getMethod(cstring"StaticBody2D",
        cstring"set_bounce")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBody2DSetBounceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var staticBody2DGetConstantAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc constantAngularVelocity(self: StaticBody2D): float64 =
  if isNil(staticBody2DGetConstantAngularVelocityMethodBind):
    staticBody2DGetConstantAngularVelocityMethodBind = getMethod(
        cstring"StaticBody2D", cstring"get_constant_angular_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBody2DGetConstantAngularVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var staticBody2DSetConstantAngularVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constantAngularVelocity=`(self: StaticBody2D; val: float64) =
  if isNil(staticBody2DSetConstantAngularVelocityMethodBind):
    staticBody2DSetConstantAngularVelocityMethodBind = getMethod(
        cstring"StaticBody2D", cstring"set_constant_angular_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBody2DSetConstantAngularVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var staticBody2DGetConstantLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc constantLinearVelocity(self: StaticBody2D): Vector2 =
  if isNil(staticBody2DGetConstantLinearVelocityMethodBind):
    staticBody2DGetConstantLinearVelocityMethodBind = getMethod(
        cstring"StaticBody2D", cstring"get_constant_linear_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBody2DGetConstantLinearVelocityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var staticBody2DSetConstantLinearVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constantLinearVelocity=`(self: StaticBody2D; val: Vector2) =
  if isNil(staticBody2DSetConstantLinearVelocityMethodBind):
    staticBody2DSetConstantLinearVelocityMethodBind = getMethod(
        cstring"StaticBody2D", cstring"set_constant_linear_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBody2DSetConstantLinearVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var staticBody2DGetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc friction(self: StaticBody2D): float64 =
  if isNil(staticBody2DGetFrictionMethodBind):
    staticBody2DGetFrictionMethodBind = getMethod(cstring"StaticBody2D",
        cstring"get_friction")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  staticBody2DGetFrictionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var staticBody2DSetFrictionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `friction=`(self: StaticBody2D; val: float64) =
  if isNil(staticBody2DSetFrictionMethodBind):
    staticBody2DSetFrictionMethodBind = getMethod(cstring"StaticBody2D",
        cstring"set_friction")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  staticBody2DSetFrictionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var staticBody2DGetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc physicsMaterialOverride(self: StaticBody2D): PhysicsMaterial =
  if isNil(staticBody2DGetPhysicsMaterialOverrideMethodBind):
    staticBody2DGetPhysicsMaterialOverrideMethodBind = getMethod(
        cstring"StaticBody2D", cstring"get_physics_material_override")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  staticBody2DGetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var staticBody2DSetPhysicsMaterialOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `physicsMaterialOverride=`(self: StaticBody2D; val: PhysicsMaterial) =
  if isNil(staticBody2DSetPhysicsMaterialOverrideMethodBind):
    staticBody2DSetPhysicsMaterialOverrideMethodBind = getMethod(
        cstring"StaticBody2D", cstring"set_physics_material_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  staticBody2DSetPhysicsMaterialOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var staticBody2DUnderscorereloadPhysicsCharacteristicsMethodBind {.threadvar.}: ptr GodotMethodBind
method reloadPhysicsCharacteristics(self: StaticBody2D) =
  if isNil(staticBody2DUnderscorereloadPhysicsCharacteristicsMethodBind):
    staticBody2DUnderscorereloadPhysicsCharacteristicsMethodBind = getMethod(
        cstring"StaticBody2D", cstring"_reload_physics_characteristics")
  var ptrCallRet: pointer
  staticBody2DUnderscorereloadPhysicsCharacteristicsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
