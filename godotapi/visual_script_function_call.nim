
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  CALL_MODE_BASIC_TYPE* = 3'i64
  CALL_MODE_INSTANCE* = 2'i64
  CALL_MODE_NODE_PATH* = 1'i64
  CALL_MODE_SELF* = 0'i64
  CALL_MODE_SINGLETON* = 4'i64
  RPC_DISABLED* = 0'i64
  RPC_RELIABLE* = 1'i64
  RPC_RELIABLE_TO_ID* = 3'i64
  RPC_UNRELIABLE* = 2'i64
  RPC_UNRELIABLE_TO_ID* = 4'i64
proc argumentCache*(self: VisualScriptFunctionCall): Dictionary {.gcsafe, locks: 0.}
proc `argumentCache=`*(self: VisualScriptFunctionCall; val: Dictionary) {.gcsafe,
    locks: 0.}
proc baseScript*(self: VisualScriptFunctionCall): string {.gcsafe, locks: 0.}
proc `baseScript=`*(self: VisualScriptFunctionCall; val: string) {.gcsafe, locks: 0.}
proc baseType*(self: VisualScriptFunctionCall): string {.gcsafe, locks: 0.}
proc `baseType=`*(self: VisualScriptFunctionCall; val: string) {.gcsafe, locks: 0.}
proc basicType*(self: VisualScriptFunctionCall): int64 {.gcsafe, locks: 0.}
proc `basicType=`*(self: VisualScriptFunctionCall; val: int64) {.gcsafe, locks: 0.}
proc callMode*(self: VisualScriptFunctionCall): int64 {.gcsafe, locks: 0.}
proc `callMode=`*(self: VisualScriptFunctionCall; val: int64) {.gcsafe, locks: 0.}
proc function*(self: VisualScriptFunctionCall): string {.gcsafe, locks: 0.}
proc `function=`*(self: VisualScriptFunctionCall; val: string) {.gcsafe, locks: 0.}
proc nodePath*(self: VisualScriptFunctionCall): NodePath {.gcsafe, locks: 0.}
proc `nodePath=`*(self: VisualScriptFunctionCall; val: NodePath) {.gcsafe, locks: 0.}
proc rpcCallMode*(self: VisualScriptFunctionCall): int64 {.gcsafe, locks: 0.}
proc `rpcCallMode=`*(self: VisualScriptFunctionCall; val: int64) {.gcsafe, locks: 0.}
proc singleton*(self: VisualScriptFunctionCall): string {.gcsafe, locks: 0.}
proc `singleton=`*(self: VisualScriptFunctionCall; val: string) {.gcsafe, locks: 0.}
proc useDefaultArgs*(self: VisualScriptFunctionCall): int64 {.gcsafe, locks: 0.}
proc `useDefaultArgs=`*(self: VisualScriptFunctionCall; val: int64) {.gcsafe, locks: 0.}
proc validate*(self: VisualScriptFunctionCall): bool {.gcsafe, locks: 0.}
proc `validate=`*(self: VisualScriptFunctionCall; val: bool) {.gcsafe, locks: 0.}
var visualScriptFunctionCallUnderscoregetArgumentCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc argumentCache(self: VisualScriptFunctionCall): Dictionary =
  if isNil(visualScriptFunctionCallUnderscoregetArgumentCacheMethodBind):
    visualScriptFunctionCallUnderscoregetArgumentCacheMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"_get_argument_cache")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  visualScriptFunctionCallUnderscoregetArgumentCacheMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var visualScriptFunctionCallUnderscoresetArgumentCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc `argumentCache=`(self: VisualScriptFunctionCall; val: Dictionary) =
  if isNil(visualScriptFunctionCallUnderscoresetArgumentCacheMethodBind):
    visualScriptFunctionCallUnderscoresetArgumentCacheMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"_set_argument_cache")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  visualScriptFunctionCallUnderscoresetArgumentCacheMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualScriptFunctionCallGetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseScript(self: VisualScriptFunctionCall): string =
  if isNil(visualScriptFunctionCallGetBaseScriptMethodBind):
    visualScriptFunctionCallGetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_base_script")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptFunctionCallGetBaseScriptMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptFunctionCallSetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseScript=`(self: VisualScriptFunctionCall; val: string) =
  if isNil(visualScriptFunctionCallSetBaseScriptMethodBind):
    visualScriptFunctionCallSetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_base_script")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetBaseScriptMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptFunctionCallGetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseType(self: VisualScriptFunctionCall): string =
  if isNil(visualScriptFunctionCallGetBaseTypeMethodBind):
    visualScriptFunctionCallGetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptFunctionCallGetBaseTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptFunctionCallSetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseType=`(self: VisualScriptFunctionCall; val: string) =
  if isNil(visualScriptFunctionCallSetBaseTypeMethodBind):
    visualScriptFunctionCallSetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptFunctionCallGetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc basicType(self: VisualScriptFunctionCall): int64 =
  if isNil(visualScriptFunctionCallGetBasicTypeMethodBind):
    visualScriptFunctionCallGetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_basic_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptFunctionCallGetBasicTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptFunctionCallSetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `basicType=`(self: VisualScriptFunctionCall; val: int64) =
  if isNil(visualScriptFunctionCallSetBasicTypeMethodBind):
    visualScriptFunctionCallSetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_basic_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetBasicTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptFunctionCallGetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc callMode(self: VisualScriptFunctionCall): int64 =
  if isNil(visualScriptFunctionCallGetCallModeMethodBind):
    visualScriptFunctionCallGetCallModeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_call_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptFunctionCallGetCallModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptFunctionCallSetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `callMode=`(self: VisualScriptFunctionCall; val: int64) =
  if isNil(visualScriptFunctionCallSetCallModeMethodBind):
    visualScriptFunctionCallSetCallModeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_call_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetCallModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptFunctionCallGetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc function(self: VisualScriptFunctionCall): string =
  if isNil(visualScriptFunctionCallGetFunctionMethodBind):
    visualScriptFunctionCallGetFunctionMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_function")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptFunctionCallGetFunctionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptFunctionCallSetFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `function=`(self: VisualScriptFunctionCall; val: string) =
  if isNil(visualScriptFunctionCallSetFunctionMethodBind):
    visualScriptFunctionCallSetFunctionMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptFunctionCallGetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodePath(self: VisualScriptFunctionCall): NodePath =
  if isNil(visualScriptFunctionCallGetBasePathMethodBind):
    visualScriptFunctionCallGetBasePathMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_base_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  visualScriptFunctionCallGetBasePathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var visualScriptFunctionCallSetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodePath=`(self: VisualScriptFunctionCall; val: NodePath) =
  if isNil(visualScriptFunctionCallSetBasePathMethodBind):
    visualScriptFunctionCallSetBasePathMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_base_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  visualScriptFunctionCallSetBasePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptFunctionCallGetRpcCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc rpcCallMode(self: VisualScriptFunctionCall): int64 =
  if isNil(visualScriptFunctionCallGetRpcCallModeMethodBind):
    visualScriptFunctionCallGetRpcCallModeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_rpc_call_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptFunctionCallGetRpcCallModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptFunctionCallSetRpcCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `rpcCallMode=`(self: VisualScriptFunctionCall; val: int64) =
  if isNil(visualScriptFunctionCallSetRpcCallModeMethodBind):
    visualScriptFunctionCallSetRpcCallModeMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_rpc_call_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetRpcCallModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptFunctionCallGetSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc singleton(self: VisualScriptFunctionCall): string =
  if isNil(visualScriptFunctionCallGetSingletonMethodBind):
    visualScriptFunctionCallGetSingletonMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_singleton")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptFunctionCallGetSingletonMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptFunctionCallSetSingletonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `singleton=`(self: VisualScriptFunctionCall; val: string) =
  if isNil(visualScriptFunctionCallSetSingletonMethodBind):
    visualScriptFunctionCallSetSingletonMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_singleton")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetSingletonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptFunctionCallGetUseDefaultArgsMethodBind {.threadvar.}: ptr GodotMethodBind
proc useDefaultArgs(self: VisualScriptFunctionCall): int64 =
  if isNil(visualScriptFunctionCallGetUseDefaultArgsMethodBind):
    visualScriptFunctionCallGetUseDefaultArgsMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_use_default_args")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptFunctionCallGetUseDefaultArgsMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualScriptFunctionCallSetUseDefaultArgsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `useDefaultArgs=`(self: VisualScriptFunctionCall; val: int64) =
  if isNil(visualScriptFunctionCallSetUseDefaultArgsMethodBind):
    visualScriptFunctionCallSetUseDefaultArgsMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_use_default_args")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetUseDefaultArgsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptFunctionCallGetValidateMethodBind {.threadvar.}: ptr GodotMethodBind
proc validate(self: VisualScriptFunctionCall): bool =
  if isNil(visualScriptFunctionCallGetValidateMethodBind):
    visualScriptFunctionCallGetValidateMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"get_validate")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptFunctionCallGetValidateMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptFunctionCallSetValidateMethodBind {.threadvar.}: ptr GodotMethodBind
proc `validate=`(self: VisualScriptFunctionCall; val: bool) =
  if isNil(visualScriptFunctionCallSetValidateMethodBind):
    visualScriptFunctionCallSetValidateMethodBind = getMethod(
        cstring"VisualScriptFunctionCall", cstring"set_validate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptFunctionCallSetValidateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
