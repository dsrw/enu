
import
  godot, godottypes, godotinternal, collision_object_2d

export
  godottypes, collision_object_2d

const
  SPACE_OVERRIDE_COMBINE* = 1'i64
  SPACE_OVERRIDE_COMBINE_REPLACE* = 2'i64
  SPACE_OVERRIDE_DISABLED* = 0'i64
  SPACE_OVERRIDE_REPLACE* = 3'i64
  SPACE_OVERRIDE_REPLACE_COMBINE* = 4'i64
proc angularDamp*(self: Area2D): float64 {.gcsafe, locks: 0.}
proc `angularDamp=`*(self: Area2D; val: float64) {.gcsafe, locks: 0.}
proc audioBusName*(self: Area2D): string {.gcsafe, locks: 0.}
proc `audioBusName=`*(self: Area2D; val: string) {.gcsafe, locks: 0.}
proc audioBusOverride*(self: Area2D): bool {.gcsafe, locks: 0.}
proc `audioBusOverride=`*(self: Area2D; val: bool) {.gcsafe, locks: 0.}
proc collisionLayer*(self: Area2D): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: Area2D; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: Area2D): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: Area2D; val: int64) {.gcsafe, locks: 0.}
proc gravity*(self: Area2D): float64 {.gcsafe, locks: 0.}
proc `gravity=`*(self: Area2D; val: float64) {.gcsafe, locks: 0.}
proc gravityDistanceScale*(self: Area2D): float64 {.gcsafe, locks: 0.}
proc `gravityDistanceScale=`*(self: Area2D; val: float64) {.gcsafe, locks: 0.}
proc gravityPoint*(self: Area2D): bool {.gcsafe, locks: 0.}
proc `gravityPoint=`*(self: Area2D; val: bool) {.gcsafe, locks: 0.}
proc gravityVec*(self: Area2D): Vector2 {.gcsafe, locks: 0.}
proc `gravityVec=`*(self: Area2D; val: Vector2) {.gcsafe, locks: 0.}
proc linearDamp*(self: Area2D): float64 {.gcsafe, locks: 0.}
proc `linearDamp=`*(self: Area2D; val: float64) {.gcsafe, locks: 0.}
proc monitorable*(self: Area2D): bool {.gcsafe, locks: 0.}
proc `monitorable=`*(self: Area2D; val: bool) {.gcsafe, locks: 0.}
proc monitoring*(self: Area2D): bool {.gcsafe, locks: 0.}
proc `monitoring=`*(self: Area2D; val: bool) {.gcsafe, locks: 0.}
proc priority*(self: Area2D): float64 {.gcsafe, locks: 0.}
proc `priority=`*(self: Area2D; val: float64) {.gcsafe, locks: 0.}
proc spaceOverride*(self: Area2D): int64 {.gcsafe, locks: 0.}
proc `spaceOverride=`*(self: Area2D; val: int64) {.gcsafe, locks: 0.}
method areaEnterTree*(self: Area2D; id: int64) {.gcsafe, locks: 0, base.}
method areaExitTree*(self: Area2D; id: int64) {.gcsafe, locks: 0, base.}
method areaInout*(self: Area2D; arg0: int64; arg1: RID; arg2: int64; arg3: int64;
                 arg4: int64) {.gcsafe, locks: 0, base.}
method bodyEnterTree*(self: Area2D; id: int64) {.gcsafe, locks: 0, base.}
method bodyExitTree*(self: Area2D; id: int64) {.gcsafe, locks: 0, base.}
method bodyInout*(self: Area2D; arg0: int64; arg1: RID; arg2: int64; arg3: int64;
                 arg4: int64) {.gcsafe, locks: 0, base.}
proc getCollisionLayerBit*(self: Area2D; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: Area2D; bit: int64): bool {.gcsafe, locks: 0.}
proc getOverlappingAreas*(self: Area2D): Array {.gcsafe, locks: 0.}
proc getOverlappingBodies*(self: Area2D): Array {.gcsafe, locks: 0.}
proc overlapsArea*(self: Area2D; area: Node): bool {.gcsafe, locks: 0.}
proc overlapsBody*(self: Area2D; body: Node): bool {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: Area2D; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: Area2D; bit: int64; value: bool) {.gcsafe, locks: 0.}
var area2DGetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularDamp(self: Area2D): float64 =
  if isNil(area2DGetAngularDampMethodBind):
    area2DGetAngularDampMethodBind = getMethod(cstring"Area2D",
        cstring"get_angular_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetAngularDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularDamp=`(self: Area2D; val: float64) =
  if isNil(area2DSetAngularDampMethodBind):
    area2DSetAngularDampMethodBind = getMethod(cstring"Area2D",
        cstring"set_angular_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetAngularDampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var area2DGetAudioBusNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioBusName(self: Area2D): string =
  if isNil(area2DGetAudioBusNameMethodBind):
    area2DGetAudioBusNameMethodBind = getMethod(cstring"Area2D",
        cstring"get_audio_bus_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  area2DGetAudioBusNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var area2DSetAudioBusNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioBusName=`(self: Area2D; val: string) =
  if isNil(area2DSetAudioBusNameMethodBind):
    area2DSetAudioBusNameMethodBind = getMethod(cstring"Area2D",
        cstring"set_audio_bus_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  area2DSetAudioBusNameMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var area2DIsOverridingAudioBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioBusOverride(self: Area2D): bool =
  if isNil(area2DIsOverridingAudioBusMethodBind):
    area2DIsOverridingAudioBusMethodBind = getMethod(cstring"Area2D",
        cstring"is_overriding_audio_bus")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DIsOverridingAudioBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetAudioBusOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioBusOverride=`(self: Area2D; val: bool) =
  if isNil(area2DSetAudioBusOverrideMethodBind):
    area2DSetAudioBusOverrideMethodBind = getMethod(cstring"Area2D",
        cstring"set_audio_bus_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetAudioBusOverrideMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: Area2D): int64 =
  if isNil(area2DGetCollisionLayerMethodBind):
    area2DGetCollisionLayerMethodBind = getMethod(cstring"Area2D",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: Area2D; val: int64) =
  if isNil(area2DSetCollisionLayerMethodBind):
    area2DSetCollisionLayerMethodBind = getMethod(cstring"Area2D",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetCollisionLayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var area2DGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: Area2D): int64 =
  if isNil(area2DGetCollisionMaskMethodBind):
    area2DGetCollisionMaskMethodBind = getMethod(cstring"Area2D",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: Area2D; val: int64) =
  if isNil(area2DSetCollisionMaskMethodBind):
    area2DSetCollisionMaskMethodBind = getMethod(cstring"Area2D",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetCollisionMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var area2DGetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravity(self: Area2D): float64 =
  if isNil(area2DGetGravityMethodBind):
    area2DGetGravityMethodBind = getMethod(cstring"Area2D", cstring"get_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetGravityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravity=`(self: Area2D; val: float64) =
  if isNil(area2DSetGravityMethodBind):
    area2DSetGravityMethodBind = getMethod(cstring"Area2D", cstring"set_gravity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetGravityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var area2DGetGravityDistanceScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityDistanceScale(self: Area2D): float64 =
  if isNil(area2DGetGravityDistanceScaleMethodBind):
    area2DGetGravityDistanceScaleMethodBind = getMethod(cstring"Area2D",
        cstring"get_gravity_distance_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetGravityDistanceScaleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var area2DSetGravityDistanceScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityDistanceScale=`(self: Area2D; val: float64) =
  if isNil(area2DSetGravityDistanceScaleMethodBind):
    area2DSetGravityDistanceScaleMethodBind = getMethod(cstring"Area2D",
        cstring"set_gravity_distance_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetGravityDistanceScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DIsGravityAPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityPoint(self: Area2D): bool =
  if isNil(area2DIsGravityAPointMethodBind):
    area2DIsGravityAPointMethodBind = getMethod(cstring"Area2D",
        cstring"is_gravity_a_point")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DIsGravityAPointMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetGravityIsPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityPoint=`(self: Area2D; val: bool) =
  if isNil(area2DSetGravityIsPointMethodBind):
    area2DSetGravityIsPointMethodBind = getMethod(cstring"Area2D",
        cstring"set_gravity_is_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetGravityIsPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var area2DGetGravityVectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityVec(self: Area2D): Vector2 =
  if isNil(area2DGetGravityVectorMethodBind):
    area2DGetGravityVectorMethodBind = getMethod(cstring"Area2D",
        cstring"get_gravity_vector")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetGravityVectorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetGravityVectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityVec=`(self: Area2D; val: Vector2) =
  if isNil(area2DSetGravityVectorMethodBind):
    area2DSetGravityVectorMethodBind = getMethod(cstring"Area2D",
        cstring"set_gravity_vector")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetGravityVectorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var area2DGetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearDamp(self: Area2D): float64 =
  if isNil(area2DGetLinearDampMethodBind):
    area2DGetLinearDampMethodBind = getMethod(cstring"Area2D",
        cstring"get_linear_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetLinearDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearDamp=`(self: Area2D; val: float64) =
  if isNil(area2DSetLinearDampMethodBind):
    area2DSetLinearDampMethodBind = getMethod(cstring"Area2D",
        cstring"set_linear_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetLinearDampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var area2DIsMonitorableMethodBind {.threadvar.}: ptr GodotMethodBind
proc monitorable(self: Area2D): bool =
  if isNil(area2DIsMonitorableMethodBind):
    area2DIsMonitorableMethodBind = getMethod(cstring"Area2D",
        cstring"is_monitorable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DIsMonitorableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetMonitorableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `monitorable=`(self: Area2D; val: bool) =
  if isNil(area2DSetMonitorableMethodBind):
    area2DSetMonitorableMethodBind = getMethod(cstring"Area2D",
        cstring"set_monitorable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetMonitorableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var area2DIsMonitoringMethodBind {.threadvar.}: ptr GodotMethodBind
proc monitoring(self: Area2D): bool =
  if isNil(area2DIsMonitoringMethodBind):
    area2DIsMonitoringMethodBind = getMethod(cstring"Area2D",
        cstring"is_monitoring")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DIsMonitoringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetMonitoringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `monitoring=`(self: Area2D; val: bool) =
  if isNil(area2DSetMonitoringMethodBind):
    area2DSetMonitoringMethodBind = getMethod(cstring"Area2D",
        cstring"set_monitoring")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetMonitoringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var area2DGetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc priority(self: Area2D): float64 =
  if isNil(area2DGetPriorityMethodBind):
    area2DGetPriorityMethodBind = getMethod(cstring"Area2D", cstring"get_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetPriorityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `priority=`(self: Area2D; val: float64) =
  if isNil(area2DSetPriorityMethodBind):
    area2DSetPriorityMethodBind = getMethod(cstring"Area2D", cstring"set_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetPriorityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var area2DGetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceOverride(self: Area2D): int64 =
  if isNil(area2DGetSpaceOverrideModeMethodBind):
    area2DGetSpaceOverrideModeMethodBind = getMethod(cstring"Area2D",
        cstring"get_space_override_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetSpaceOverrideModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var area2DSetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spaceOverride=`(self: Area2D; val: int64) =
  if isNil(area2DSetSpaceOverrideModeMethodBind):
    area2DSetSpaceOverrideModeMethodBind = getMethod(cstring"Area2D",
        cstring"set_space_override_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  area2DSetSpaceOverrideModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DUnderscoreareaEnterTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method areaEnterTree(self: Area2D; id: int64) =
  if isNil(area2DUnderscoreareaEnterTreeMethodBind):
    area2DUnderscoreareaEnterTreeMethodBind = getMethod(cstring"Area2D",
        cstring"_area_enter_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  area2DUnderscoreareaEnterTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DUnderscoreareaExitTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method areaExitTree(self: Area2D; id: int64) =
  if isNil(area2DUnderscoreareaExitTreeMethodBind):
    area2DUnderscoreareaExitTreeMethodBind = getMethod(cstring"Area2D",
        cstring"_area_exit_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  area2DUnderscoreareaExitTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DUnderscoreareaInoutMethodBind {.threadvar.}: ptr GodotMethodBind
method areaInout(self: Area2D; arg0: int64; arg1: RID; arg2: int64; arg3: int64;
                arg4: int64) =
  if isNil(area2DUnderscoreareaInoutMethodBind):
    area2DUnderscoreareaInoutMethodBind = getMethod(cstring"Area2D",
        cstring"_area_inout")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  argsToPassToGodot[][2] = unsafeAddr(arg2)
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  argsToPassToGodot[][4] = unsafeAddr(arg4)
  var ptrCallRet: pointer
  area2DUnderscoreareaInoutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DUnderscorebodyEnterTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyEnterTree(self: Area2D; id: int64) =
  if isNil(area2DUnderscorebodyEnterTreeMethodBind):
    area2DUnderscorebodyEnterTreeMethodBind = getMethod(cstring"Area2D",
        cstring"_body_enter_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  area2DUnderscorebodyEnterTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DUnderscorebodyExitTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyExitTree(self: Area2D; id: int64) =
  if isNil(area2DUnderscorebodyExitTreeMethodBind):
    area2DUnderscorebodyExitTreeMethodBind = getMethod(cstring"Area2D",
        cstring"_body_exit_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  area2DUnderscorebodyExitTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DUnderscorebodyInoutMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyInout(self: Area2D; arg0: int64; arg1: RID; arg2: int64; arg3: int64;
                arg4: int64) =
  if isNil(area2DUnderscorebodyInoutMethodBind):
    area2DUnderscorebodyInoutMethodBind = getMethod(cstring"Area2D",
        cstring"_body_inout")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  argsToPassToGodot[][2] = unsafeAddr(arg2)
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  argsToPassToGodot[][4] = unsafeAddr(arg4)
  var ptrCallRet: pointer
  area2DUnderscorebodyInoutMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: Area2D; bit: int64): bool =
  if isNil(area2DGetCollisionLayerBitMethodBind):
    area2DGetCollisionLayerBitMethodBind = getMethod(cstring"Area2D",
        cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: Area2D; bit: int64): bool =
  if isNil(area2DGetCollisionMaskBitMethodBind):
    area2DGetCollisionMaskBitMethodBind = getMethod(cstring"Area2D",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DGetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DGetOverlappingAreasMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOverlappingAreas(self: Area2D): Array =
  if isNil(area2DGetOverlappingAreasMethodBind):
    area2DGetOverlappingAreasMethodBind = getMethod(cstring"Area2D",
        cstring"get_overlapping_areas")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  area2DGetOverlappingAreasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var area2DGetOverlappingBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOverlappingBodies(self: Area2D): Array =
  if isNil(area2DGetOverlappingBodiesMethodBind):
    area2DGetOverlappingBodiesMethodBind = getMethod(cstring"Area2D",
        cstring"get_overlapping_bodies")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  area2DGetOverlappingBodiesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var area2DOverlapsAreaMethodBind {.threadvar.}: ptr GodotMethodBind
proc overlapsArea(self: Area2D; area: Node): bool =
  if isNil(area2DOverlapsAreaMethodBind):
    area2DOverlapsAreaMethodBind = getMethod(cstring"Area2D",
        cstring"overlaps_area")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not area.isNil:
    area.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DOverlapsAreaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var area2DOverlapsBodyMethodBind {.threadvar.}: ptr GodotMethodBind
proc overlapsBody(self: Area2D; body: Node): bool =
  if isNil(area2DOverlapsBodyMethodBind):
    area2DOverlapsBodyMethodBind = getMethod(cstring"Area2D",
        cstring"overlaps_body")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not body.isNil:
    body.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  area2DOverlapsBodyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var area2DSetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: Area2D; bit: int64; value: bool) =
  if isNil(area2DSetCollisionLayerBitMethodBind):
    area2DSetCollisionLayerBitMethodBind = getMethod(cstring"Area2D",
        cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  area2DSetCollisionLayerBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var area2DSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: Area2D; bit: int64; value: bool) =
  if isNil(area2DSetCollisionMaskBitMethodBind):
    area2DSetCollisionMaskBitMethodBind = getMethod(cstring"Area2D",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  area2DSetCollisionMaskBitMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
