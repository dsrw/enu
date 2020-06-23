
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc basicType*(self: VisualScriptBasicTypeConstant): int64 {.gcsafe, locks: 0.}
proc `basicType=`*(self: VisualScriptBasicTypeConstant; val: int64) {.gcsafe, locks: 0.}
proc constant*(self: VisualScriptBasicTypeConstant): string {.gcsafe, locks: 0.}
proc `constant=`*(self: VisualScriptBasicTypeConstant; val: string) {.gcsafe, locks: 0.}
var visualScriptBasicTypeConstantGetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc basicType(self: VisualScriptBasicTypeConstant): int64 =
  if isNil(visualScriptBasicTypeConstantGetBasicTypeMethodBind):
    visualScriptBasicTypeConstantGetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptBasicTypeConstant", cstring"get_basic_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptBasicTypeConstantGetBasicTypeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualScriptBasicTypeConstantSetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `basicType=`(self: VisualScriptBasicTypeConstant; val: int64) =
  if isNil(visualScriptBasicTypeConstantSetBasicTypeMethodBind):
    visualScriptBasicTypeConstantSetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptBasicTypeConstant", cstring"set_basic_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptBasicTypeConstantSetBasicTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptBasicTypeConstantGetBasicTypeConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc constant(self: VisualScriptBasicTypeConstant): string =
  if isNil(visualScriptBasicTypeConstantGetBasicTypeConstantMethodBind):
    visualScriptBasicTypeConstantGetBasicTypeConstantMethodBind = getMethod(
        cstring"VisualScriptBasicTypeConstant", cstring"get_basic_type_constant")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptBasicTypeConstantGetBasicTypeConstantMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptBasicTypeConstantSetBasicTypeConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc `constant=`(self: VisualScriptBasicTypeConstant; val: string) =
  if isNil(visualScriptBasicTypeConstantSetBasicTypeConstantMethodBind):
    visualScriptBasicTypeConstantSetBasicTypeConstantMethodBind = getMethod(
        cstring"VisualScriptBasicTypeConstant", cstring"set_basic_type_constant")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptBasicTypeConstantSetBasicTypeConstantMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
