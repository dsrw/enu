
import
  godot, godottypes, godotinternal, collision_object

export
  godottypes, collision_object

const
  SPACE_OVERRIDE_COMBINE* = 1'i64
  SPACE_OVERRIDE_COMBINE_REPLACE* = 2'i64
  SPACE_OVERRIDE_DISABLED* = 0'i64
  SPACE_OVERRIDE_REPLACE* = 3'i64
  SPACE_OVERRIDE_REPLACE_COMBINE* = 4'i64
proc angularDamp*(self: Area): float64 {.gcsafe, locks: 0.}
proc `angularDamp=`*(self: Area; val: float64) {.gcsafe, locks: 0.}
proc audioBusName*(self: Area): string {.gcsafe, locks: 0.}
proc `audioBusName=`*(self: Area; val: string) {.gcsafe, locks: 0.}
proc audioBusOverride*(self: Area): bool {.gcsafe, locks: 0.}
proc `audioBusOverride=`*(self: Area; val: bool) {.gcsafe, locks: 0.}
proc collisionLayer*(self: Area): int64 {.gcsafe, locks: 0.}
proc `collisionLayer=`*(self: Area; val: int64) {.gcsafe, locks: 0.}
proc collisionMask*(self: Area): int64 {.gcsafe, locks: 0.}
proc `collisionMask=`*(self: Area; val: int64) {.gcsafe, locks: 0.}
proc gravity*(self: Area): float64 {.gcsafe, locks: 0.}
proc `gravity=`*(self: Area; val: float64) {.gcsafe, locks: 0.}
proc gravityDistanceScale*(self: Area): float64 {.gcsafe, locks: 0.}
proc `gravityDistanceScale=`*(self: Area; val: float64) {.gcsafe, locks: 0.}
proc gravityPoint*(self: Area): bool {.gcsafe, locks: 0.}
proc `gravityPoint=`*(self: Area; val: bool) {.gcsafe, locks: 0.}
proc gravityVec*(self: Area): Vector3 {.gcsafe, locks: 0.}
proc `gravityVec=`*(self: Area; val: Vector3) {.gcsafe, locks: 0.}
proc linearDamp*(self: Area): float64 {.gcsafe, locks: 0.}
proc `linearDamp=`*(self: Area; val: float64) {.gcsafe, locks: 0.}
proc monitorable*(self: Area): bool {.gcsafe, locks: 0.}
proc `monitorable=`*(self: Area; val: bool) {.gcsafe, locks: 0.}
proc monitoring*(self: Area): bool {.gcsafe, locks: 0.}
proc `monitoring=`*(self: Area; val: bool) {.gcsafe, locks: 0.}
proc priority*(self: Area): float64 {.gcsafe, locks: 0.}
proc `priority=`*(self: Area; val: float64) {.gcsafe, locks: 0.}
proc reverbBusAmount*(self: Area): float64 {.gcsafe, locks: 0.}
proc `reverbBusAmount=`*(self: Area; val: float64) {.gcsafe, locks: 0.}
proc reverbBusEnable*(self: Area): bool {.gcsafe, locks: 0.}
proc `reverbBusEnable=`*(self: Area; val: bool) {.gcsafe, locks: 0.}
proc reverbBusName*(self: Area): string {.gcsafe, locks: 0.}
proc `reverbBusName=`*(self: Area; val: string) {.gcsafe, locks: 0.}
proc reverbBusUniformity*(self: Area): float64 {.gcsafe, locks: 0.}
proc `reverbBusUniformity=`*(self: Area; val: float64) {.gcsafe, locks: 0.}
proc spaceOverride*(self: Area): int64 {.gcsafe, locks: 0.}
proc `spaceOverride=`*(self: Area; val: int64) {.gcsafe, locks: 0.}
method areaEnterTree*(self: Area; id: int64) {.gcsafe, locks: 0, base.}
method areaExitTree*(self: Area; id: int64) {.gcsafe, locks: 0, base.}
method areaInout*(self: Area; arg0: int64; arg1: RID; arg2: int64; arg3: int64; arg4: int64) {.
    gcsafe, locks: 0, base.}
method bodyEnterTree*(self: Area; id: int64) {.gcsafe, locks: 0, base.}
method bodyExitTree*(self: Area; id: int64) {.gcsafe, locks: 0, base.}
method bodyInout*(self: Area; arg0: int64; arg1: RID; arg2: int64; arg3: int64; arg4: int64) {.
    gcsafe, locks: 0, base.}
proc getCollisionLayerBit*(self: Area; bit: int64): bool {.gcsafe, locks: 0.}
proc getCollisionMaskBit*(self: Area; bit: int64): bool {.gcsafe, locks: 0.}
proc getOverlappingAreas*(self: Area): Array {.gcsafe, locks: 0.}
proc getOverlappingBodies*(self: Area): Array {.gcsafe, locks: 0.}
proc overlapsArea*(self: Area; area: Node): bool {.gcsafe, locks: 0.}
proc overlapsBody*(self: Area; body: Node): bool {.gcsafe, locks: 0.}
proc setCollisionLayerBit*(self: Area; bit: int64; value: bool) {.gcsafe, locks: 0.}
proc setCollisionMaskBit*(self: Area; bit: int64; value: bool) {.gcsafe, locks: 0.}
var areaGetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc angularDamp(self: Area): float64 =
  if isNil(areaGetAngularDampMethodBind):
    areaGetAngularDampMethodBind = getMethod(cstring"Area",
        cstring"get_angular_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetAngularDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetAngularDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `angularDamp=`(self: Area; val: float64) =
  if isNil(areaSetAngularDampMethodBind):
    areaSetAngularDampMethodBind = getMethod(cstring"Area",
        cstring"set_angular_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetAngularDampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var areaGetAudioBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioBusName(self: Area): string =
  if isNil(areaGetAudioBusMethodBind):
    areaGetAudioBusMethodBind = getMethod(cstring"Area", cstring"get_audio_bus")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  areaGetAudioBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var areaSetAudioBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioBusName=`(self: Area; val: string) =
  if isNil(areaSetAudioBusMethodBind):
    areaSetAudioBusMethodBind = getMethod(cstring"Area", cstring"set_audio_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  areaSetAudioBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var areaIsOverridingAudioBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc audioBusOverride(self: Area): bool =
  if isNil(areaIsOverridingAudioBusMethodBind):
    areaIsOverridingAudioBusMethodBind = getMethod(cstring"Area",
        cstring"is_overriding_audio_bus")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaIsOverridingAudioBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetAudioBusOverrideMethodBind {.threadvar.}: ptr GodotMethodBind
proc `audioBusOverride=`(self: Area; val: bool) =
  if isNil(areaSetAudioBusOverrideMethodBind):
    areaSetAudioBusOverrideMethodBind = getMethod(cstring"Area",
        cstring"set_audio_bus_override")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetAudioBusOverrideMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionLayer(self: Area): int64 =
  if isNil(areaGetCollisionLayerMethodBind):
    areaGetCollisionLayerMethodBind = getMethod(cstring"Area",
        cstring"get_collision_layer")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetCollisionLayerMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetCollisionLayerMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionLayer=`(self: Area; val: int64) =
  if isNil(areaSetCollisionLayerMethodBind):
    areaSetCollisionLayerMethodBind = getMethod(cstring"Area",
        cstring"set_collision_layer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetCollisionLayerMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionMask(self: Area): int64 =
  if isNil(areaGetCollisionMaskMethodBind):
    areaGetCollisionMaskMethodBind = getMethod(cstring"Area",
        cstring"get_collision_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetCollisionMaskMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetCollisionMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionMask=`(self: Area; val: int64) =
  if isNil(areaSetCollisionMaskMethodBind):
    areaSetCollisionMaskMethodBind = getMethod(cstring"Area",
        cstring"set_collision_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetCollisionMaskMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravity(self: Area): float64 =
  if isNil(areaGetGravityMethodBind):
    areaGetGravityMethodBind = getMethod(cstring"Area", cstring"get_gravity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetGravityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetGravityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravity=`(self: Area; val: float64) =
  if isNil(areaSetGravityMethodBind):
    areaSetGravityMethodBind = getMethod(cstring"Area", cstring"set_gravity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetGravityMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var areaGetGravityDistanceScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityDistanceScale(self: Area): float64 =
  if isNil(areaGetGravityDistanceScaleMethodBind):
    areaGetGravityDistanceScaleMethodBind = getMethod(cstring"Area",
        cstring"get_gravity_distance_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetGravityDistanceScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetGravityDistanceScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityDistanceScale=`(self: Area; val: float64) =
  if isNil(areaSetGravityDistanceScaleMethodBind):
    areaSetGravityDistanceScaleMethodBind = getMethod(cstring"Area",
        cstring"set_gravity_distance_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetGravityDistanceScaleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var areaIsGravityAPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityPoint(self: Area): bool =
  if isNil(areaIsGravityAPointMethodBind):
    areaIsGravityAPointMethodBind = getMethod(cstring"Area",
        cstring"is_gravity_a_point")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaIsGravityAPointMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetGravityIsPointMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityPoint=`(self: Area; val: bool) =
  if isNil(areaSetGravityIsPointMethodBind):
    areaSetGravityIsPointMethodBind = getMethod(cstring"Area",
        cstring"set_gravity_is_point")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetGravityIsPointMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetGravityVectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc gravityVec(self: Area): Vector3 =
  if isNil(areaGetGravityVectorMethodBind):
    areaGetGravityVectorMethodBind = getMethod(cstring"Area",
        cstring"get_gravity_vector")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetGravityVectorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetGravityVectorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gravityVec=`(self: Area; val: Vector3) =
  if isNil(areaSetGravityVectorMethodBind):
    areaSetGravityVectorMethodBind = getMethod(cstring"Area",
        cstring"set_gravity_vector")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetGravityVectorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc linearDamp(self: Area): float64 =
  if isNil(areaGetLinearDampMethodBind):
    areaGetLinearDampMethodBind = getMethod(cstring"Area",
        cstring"get_linear_damp")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetLinearDampMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetLinearDampMethodBind {.threadvar.}: ptr GodotMethodBind
proc `linearDamp=`(self: Area; val: float64) =
  if isNil(areaSetLinearDampMethodBind):
    areaSetLinearDampMethodBind = getMethod(cstring"Area",
        cstring"set_linear_damp")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetLinearDampMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var areaIsMonitorableMethodBind {.threadvar.}: ptr GodotMethodBind
proc monitorable(self: Area): bool =
  if isNil(areaIsMonitorableMethodBind):
    areaIsMonitorableMethodBind = getMethod(cstring"Area", cstring"is_monitorable")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaIsMonitorableMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetMonitorableMethodBind {.threadvar.}: ptr GodotMethodBind
proc `monitorable=`(self: Area; val: bool) =
  if isNil(areaSetMonitorableMethodBind):
    areaSetMonitorableMethodBind = getMethod(cstring"Area",
        cstring"set_monitorable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetMonitorableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var areaIsMonitoringMethodBind {.threadvar.}: ptr GodotMethodBind
proc monitoring(self: Area): bool =
  if isNil(areaIsMonitoringMethodBind):
    areaIsMonitoringMethodBind = getMethod(cstring"Area", cstring"is_monitoring")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaIsMonitoringMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetMonitoringMethodBind {.threadvar.}: ptr GodotMethodBind
proc `monitoring=`(self: Area; val: bool) =
  if isNil(areaSetMonitoringMethodBind):
    areaSetMonitoringMethodBind = getMethod(cstring"Area", cstring"set_monitoring")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetMonitoringMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var areaGetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc priority(self: Area): float64 =
  if isNil(areaGetPriorityMethodBind):
    areaGetPriorityMethodBind = getMethod(cstring"Area", cstring"get_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetPriorityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `priority=`(self: Area; val: float64) =
  if isNil(areaSetPriorityMethodBind):
    areaSetPriorityMethodBind = getMethod(cstring"Area", cstring"set_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetPriorityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var areaGetReverbAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc reverbBusAmount(self: Area): float64 =
  if isNil(areaGetReverbAmountMethodBind):
    areaGetReverbAmountMethodBind = getMethod(cstring"Area",
        cstring"get_reverb_amount")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetReverbAmountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetReverbAmountMethodBind {.threadvar.}: ptr GodotMethodBind
proc `reverbBusAmount=`(self: Area; val: float64) =
  if isNil(areaSetReverbAmountMethodBind):
    areaSetReverbAmountMethodBind = getMethod(cstring"Area",
        cstring"set_reverb_amount")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetReverbAmountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var areaIsUsingReverbBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc reverbBusEnable(self: Area): bool =
  if isNil(areaIsUsingReverbBusMethodBind):
    areaIsUsingReverbBusMethodBind = getMethod(cstring"Area",
        cstring"is_using_reverb_bus")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaIsUsingReverbBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetUseReverbBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `reverbBusEnable=`(self: Area; val: bool) =
  if isNil(areaSetUseReverbBusMethodBind):
    areaSetUseReverbBusMethodBind = getMethod(cstring"Area",
        cstring"set_use_reverb_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetUseReverbBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var areaGetReverbBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc reverbBusName(self: Area): string =
  if isNil(areaGetReverbBusMethodBind):
    areaGetReverbBusMethodBind = getMethod(cstring"Area", cstring"get_reverb_bus")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  areaGetReverbBusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var areaSetReverbBusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `reverbBusName=`(self: Area; val: string) =
  if isNil(areaSetReverbBusMethodBind):
    areaSetReverbBusMethodBind = getMethod(cstring"Area", cstring"set_reverb_bus")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  areaSetReverbBusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)
  deinit(argToPassToGodot0)

var areaGetReverbUniformityMethodBind {.threadvar.}: ptr GodotMethodBind
proc reverbBusUniformity(self: Area): float64 =
  if isNil(areaGetReverbUniformityMethodBind):
    areaGetReverbUniformityMethodBind = getMethod(cstring"Area",
        cstring"get_reverb_uniformity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetReverbUniformityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetReverbUniformityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `reverbBusUniformity=`(self: Area; val: float64) =
  if isNil(areaSetReverbUniformityMethodBind):
    areaSetReverbUniformityMethodBind = getMethod(cstring"Area",
        cstring"set_reverb_uniformity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetReverbUniformityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc spaceOverride(self: Area): int64 =
  if isNil(areaGetSpaceOverrideModeMethodBind):
    areaGetSpaceOverrideModeMethodBind = getMethod(cstring"Area",
        cstring"get_space_override_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetSpaceOverrideModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var areaSetSpaceOverrideModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spaceOverride=`(self: Area; val: int64) =
  if isNil(areaSetSpaceOverrideModeMethodBind):
    areaSetSpaceOverrideModeMethodBind = getMethod(cstring"Area",
        cstring"set_space_override_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  areaSetSpaceOverrideModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaUnderscoreareaEnterTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method areaEnterTree(self: Area; id: int64) =
  if isNil(areaUnderscoreareaEnterTreeMethodBind):
    areaUnderscoreareaEnterTreeMethodBind = getMethod(cstring"Area",
        cstring"_area_enter_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  areaUnderscoreareaEnterTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var areaUnderscoreareaExitTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method areaExitTree(self: Area; id: int64) =
  if isNil(areaUnderscoreareaExitTreeMethodBind):
    areaUnderscoreareaExitTreeMethodBind = getMethod(cstring"Area",
        cstring"_area_exit_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  areaUnderscoreareaExitTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var areaUnderscoreareaInoutMethodBind {.threadvar.}: ptr GodotMethodBind
method areaInout(self: Area; arg0: int64; arg1: RID; arg2: int64; arg3: int64; arg4: int64) =
  if isNil(areaUnderscoreareaInoutMethodBind):
    areaUnderscoreareaInoutMethodBind = getMethod(cstring"Area",
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
  areaUnderscoreareaInoutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaUnderscorebodyEnterTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyEnterTree(self: Area; id: int64) =
  if isNil(areaUnderscorebodyEnterTreeMethodBind):
    areaUnderscorebodyEnterTreeMethodBind = getMethod(cstring"Area",
        cstring"_body_enter_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  areaUnderscorebodyEnterTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var areaUnderscorebodyExitTreeMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyExitTree(self: Area; id: int64) =
  if isNil(areaUnderscorebodyExitTreeMethodBind):
    areaUnderscorebodyExitTreeMethodBind = getMethod(cstring"Area",
        cstring"_body_exit_tree")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  areaUnderscorebodyExitTreeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var areaUnderscorebodyInoutMethodBind {.threadvar.}: ptr GodotMethodBind
method bodyInout(self: Area; arg0: int64; arg1: RID; arg2: int64; arg3: int64; arg4: int64) =
  if isNil(areaUnderscorebodyInoutMethodBind):
    areaUnderscorebodyInoutMethodBind = getMethod(cstring"Area",
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
  areaUnderscorebodyInoutMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionLayerBit(self: Area; bit: int64): bool =
  if isNil(areaGetCollisionLayerBitMethodBind):
    areaGetCollisionLayerBitMethodBind = getMethod(cstring"Area",
        cstring"get_collision_layer_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetCollisionLayerBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCollisionMaskBit(self: Area; bit: int64): bool =
  if isNil(areaGetCollisionMaskBitMethodBind):
    areaGetCollisionMaskBitMethodBind = getMethod(cstring"Area",
        cstring"get_collision_mask_bit")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  areaGetCollisionMaskBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaGetOverlappingAreasMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOverlappingAreas(self: Area): Array =
  if isNil(areaGetOverlappingAreasMethodBind):
    areaGetOverlappingAreasMethodBind = getMethod(cstring"Area",
        cstring"get_overlapping_areas")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  areaGetOverlappingAreasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var areaGetOverlappingBodiesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOverlappingBodies(self: Area): Array =
  if isNil(areaGetOverlappingBodiesMethodBind):
    areaGetOverlappingBodiesMethodBind = getMethod(cstring"Area",
        cstring"get_overlapping_bodies")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  areaGetOverlappingBodiesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var areaOverlapsAreaMethodBind {.threadvar.}: ptr GodotMethodBind
proc overlapsArea(self: Area; area: Node): bool =
  if isNil(areaOverlapsAreaMethodBind):
    areaOverlapsAreaMethodBind = getMethod(cstring"Area", cstring"overlaps_area")
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
  areaOverlapsAreaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var areaOverlapsBodyMethodBind {.threadvar.}: ptr GodotMethodBind
proc overlapsBody(self: Area; body: Node): bool =
  if isNil(areaOverlapsBodyMethodBind):
    areaOverlapsBodyMethodBind = getMethod(cstring"Area", cstring"overlaps_body")
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
  areaOverlapsBodyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var areaSetCollisionLayerBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionLayerBit(self: Area; bit: int64; value: bool) =
  if isNil(areaSetCollisionLayerBitMethodBind):
    areaSetCollisionLayerBitMethodBind = getMethod(cstring"Area",
        cstring"set_collision_layer_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  areaSetCollisionLayerBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var areaSetCollisionMaskBitMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCollisionMaskBit(self: Area; bit: int64; value: bool) =
  if isNil(areaSetCollisionMaskBitMethodBind):
    areaSetCollisionMaskBitMethodBind = getMethod(cstring"Area",
        cstring"set_collision_mask_bit")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(bit)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  areaSetCollisionMaskBitMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
