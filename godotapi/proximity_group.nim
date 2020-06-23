
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

const
  MODE_PROXY* = 0'i64
  MODE_SIGNAL* = 1'i64
proc dispatchMode*(self: ProximityGroup): int64 {.gcsafe, locks: 0.}
proc `dispatchMode=`*(self: ProximityGroup; val: int64) {.gcsafe, locks: 0.}
proc gridRadius*(self: ProximityGroup): Vector3 {.gcsafe, locks: 0.}
proc `gridRadius=`*(self: ProximityGroup; val: Vector3) {.gcsafe, locks: 0.}
proc groupName*(self: ProximityGroup): string {.gcsafe, locks: 0.}
proc `groupName=`*(self: ProximityGroup; val: string) {.gcsafe, locks: 0.}
method proximityGroupBroadcast*(self: ProximityGroup; name: string; params: Variant) {.
    gcsafe, locks: 0, base.}
proc broadcast*(self: ProximityGroup; name: string; parameters: Variant) {.gcsafe,
    locks: 0.}
var proximityGroupGetDispatchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc dispatchMode(self: ProximityGroup): int64 =
  if isNil(proximityGroupGetDispatchModeMethodBind):
    proximityGroupGetDispatchModeMethodBind = getMethod(cstring"ProximityGroup",
        cstring"get_dispatch_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proximityGroupGetDispatchModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var proximityGroupSetDispatchModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dispatchMode=`(self: ProximityGroup; val: int64) =
  if isNil(proximityGroupSetDispatchModeMethodBind):
    proximityGroupSetDispatchModeMethodBind = getMethod(cstring"ProximityGroup",
        cstring"set_dispatch_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proximityGroupSetDispatchModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proximityGroupGetGridRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc gridRadius(self: ProximityGroup): Vector3 =
  if isNil(proximityGroupGetGridRadiusMethodBind):
    proximityGroupGetGridRadiusMethodBind = getMethod(cstring"ProximityGroup",
        cstring"get_grid_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  proximityGroupGetGridRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var proximityGroupSetGridRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `gridRadius=`(self: ProximityGroup; val: Vector3) =
  if isNil(proximityGroupSetGridRadiusMethodBind):
    proximityGroupSetGridRadiusMethodBind = getMethod(cstring"ProximityGroup",
        cstring"set_grid_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  proximityGroupSetGridRadiusMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var proximityGroupGetGroupNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc groupName(self: ProximityGroup): string =
  if isNil(proximityGroupGetGroupNameMethodBind):
    proximityGroupGetGroupNameMethodBind = getMethod(cstring"ProximityGroup",
        cstring"get_group_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  proximityGroupGetGroupNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var proximityGroupSetGroupNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc `groupName=`(self: ProximityGroup; val: string) =
  if isNil(proximityGroupSetGroupNameMethodBind):
    proximityGroupSetGroupNameMethodBind = getMethod(cstring"ProximityGroup",
        cstring"set_group_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  proximityGroupSetGroupNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var proximityGroupUnderscoreproximityGroupBroadcastMethodBind {.threadvar.}: ptr GodotMethodBind
method proximityGroupBroadcast(self: ProximityGroup; name: string; params: Variant) =
  if isNil(proximityGroupUnderscoreproximityGroupBroadcastMethodBind):
    proximityGroupUnderscoreproximityGroupBroadcastMethodBind = getMethod(
        cstring"ProximityGroup", cstring"_proximity_group_broadcast")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = params.godotVariant
  var ptrCallRet: pointer
  proximityGroupUnderscoreproximityGroupBroadcastMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var proximityGroupBroadcastMethodBind {.threadvar.}: ptr GodotMethodBind
proc broadcast(self: ProximityGroup; name: string; parameters: Variant) =
  if isNil(proximityGroupBroadcastMethodBind):
    proximityGroupBroadcastMethodBind = getMethod(cstring"ProximityGroup",
        cstring"broadcast")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = parameters.godotVariant
  var ptrCallRet: pointer
  proximityGroupBroadcastMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
