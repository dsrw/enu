
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  CALL_MODE_INSTANCE* = 2'i64
  CALL_MODE_NODE_PATH* = 1'i64
  CALL_MODE_SELF* = 0'i64
proc baseScript*(self: VisualScriptPropertyGet): string {.gcsafe, locks: 0.}
proc `baseScript=`*(self: VisualScriptPropertyGet; val: string) {.gcsafe, locks: 0.}
proc baseType*(self: VisualScriptPropertyGet): string {.gcsafe, locks: 0.}
proc `baseType=`*(self: VisualScriptPropertyGet; val: string) {.gcsafe, locks: 0.}
proc basicType*(self: VisualScriptPropertyGet): int64 {.gcsafe, locks: 0.}
proc `basicType=`*(self: VisualScriptPropertyGet; val: int64) {.gcsafe, locks: 0.}
proc index*(self: VisualScriptPropertyGet): string {.gcsafe, locks: 0.}
proc `index=`*(self: VisualScriptPropertyGet; val: string) {.gcsafe, locks: 0.}
proc nodePath*(self: VisualScriptPropertyGet): NodePath {.gcsafe, locks: 0.}
proc `nodePath=`*(self: VisualScriptPropertyGet; val: NodePath) {.gcsafe, locks: 0.}
proc property*(self: VisualScriptPropertyGet): string {.gcsafe, locks: 0.}
proc `property=`*(self: VisualScriptPropertyGet; val: string) {.gcsafe, locks: 0.}
proc setMode*(self: VisualScriptPropertyGet): int64 {.gcsafe, locks: 0.}
proc `setMode=`*(self: VisualScriptPropertyGet; val: int64) {.gcsafe, locks: 0.}
proc typeCache*(self: VisualScriptPropertyGet): int64 {.gcsafe, locks: 0.}
proc `typeCache=`*(self: VisualScriptPropertyGet; val: int64) {.gcsafe, locks: 0.}
var visualScriptPropertyGetGetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseScript(self: VisualScriptPropertyGet): string =
  if isNil(visualScriptPropertyGetGetBaseScriptMethodBind):
    visualScriptPropertyGetGetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"get_base_script")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertyGetGetBaseScriptMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertyGetSetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseScript=`(self: VisualScriptPropertyGet; val: string) =
  if isNil(visualScriptPropertyGetSetBaseScriptMethodBind):
    visualScriptPropertyGetSetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"set_base_script")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertyGetSetBaseScriptMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertyGetGetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseType(self: VisualScriptPropertyGet): string =
  if isNil(visualScriptPropertyGetGetBaseTypeMethodBind):
    visualScriptPropertyGetGetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"get_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertyGetGetBaseTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertyGetSetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseType=`(self: VisualScriptPropertyGet; val: string) =
  if isNil(visualScriptPropertyGetSetBaseTypeMethodBind):
    visualScriptPropertyGetSetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"set_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertyGetSetBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertyGetGetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc basicType(self: VisualScriptPropertyGet): int64 =
  if isNil(visualScriptPropertyGetGetBasicTypeMethodBind):
    visualScriptPropertyGetGetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"get_basic_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptPropertyGetGetBasicTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptPropertyGetSetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `basicType=`(self: VisualScriptPropertyGet; val: int64) =
  if isNil(visualScriptPropertyGetSetBasicTypeMethodBind):
    visualScriptPropertyGetSetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"set_basic_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptPropertyGetSetBasicTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptPropertyGetGetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc index(self: VisualScriptPropertyGet): string =
  if isNil(visualScriptPropertyGetGetIndexMethodBind):
    visualScriptPropertyGetGetIndexMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"get_index")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertyGetGetIndexMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertyGetSetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `index=`(self: VisualScriptPropertyGet; val: string) =
  if isNil(visualScriptPropertyGetSetIndexMethodBind):
    visualScriptPropertyGetSetIndexMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"set_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertyGetSetIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertyGetGetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodePath(self: VisualScriptPropertyGet): NodePath =
  if isNil(visualScriptPropertyGetGetBasePathMethodBind):
    visualScriptPropertyGetGetBasePathMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"get_base_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertyGetGetBasePathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var visualScriptPropertyGetSetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodePath=`(self: VisualScriptPropertyGet; val: NodePath) =
  if isNil(visualScriptPropertyGetSetBasePathMethodBind):
    visualScriptPropertyGetSetBasePathMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"set_base_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  visualScriptPropertyGetSetBasePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptPropertyGetGetPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc property(self: VisualScriptPropertyGet): string =
  if isNil(visualScriptPropertyGetGetPropertyMethodBind):
    visualScriptPropertyGetGetPropertyMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"get_property")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertyGetGetPropertyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertyGetSetPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `property=`(self: VisualScriptPropertyGet; val: string) =
  if isNil(visualScriptPropertyGetSetPropertyMethodBind):
    visualScriptPropertyGetSetPropertyMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"set_property")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertyGetSetPropertyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertyGetGetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMode(self: VisualScriptPropertyGet): int64 =
  if isNil(visualScriptPropertyGetGetCallModeMethodBind):
    visualScriptPropertyGetGetCallModeMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"get_call_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptPropertyGetGetCallModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptPropertyGetSetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `setMode=`(self: VisualScriptPropertyGet; val: int64) =
  if isNil(visualScriptPropertyGetSetCallModeMethodBind):
    visualScriptPropertyGetSetCallModeMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"set_call_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptPropertyGetSetCallModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptPropertyGetUnderscoregetTypeCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc typeCache(self: VisualScriptPropertyGet): int64 =
  if isNil(visualScriptPropertyGetUnderscoregetTypeCacheMethodBind):
    visualScriptPropertyGetUnderscoregetTypeCacheMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"_get_type_cache")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptPropertyGetUnderscoregetTypeCacheMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptPropertyGetUnderscoresetTypeCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typeCache=`(self: VisualScriptPropertyGet; val: int64) =
  if isNil(visualScriptPropertyGetUnderscoresetTypeCacheMethodBind):
    visualScriptPropertyGetUnderscoresetTypeCacheMethodBind = getMethod(
        cstring"VisualScriptPropertyGet", cstring"_set_type_cache")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptPropertyGetUnderscoresetTypeCacheMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
