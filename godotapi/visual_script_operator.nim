
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc operator*(self: VisualScriptOperator): int64 {.gcsafe, locks: 0.}
proc `operator=`*(self: VisualScriptOperator; val: int64) {.gcsafe, locks: 0.}
proc typee*(self: VisualScriptOperator): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualScriptOperator; val: int64) {.gcsafe, locks: 0.}
var visualScriptOperatorGetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc operator(self: VisualScriptOperator): int64 =
  if isNil(visualScriptOperatorGetOperatorMethodBind):
    visualScriptOperatorGetOperatorMethodBind = getMethod(
        cstring"VisualScriptOperator", cstring"get_operator")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptOperatorGetOperatorMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptOperatorSetOperatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `operator=`(self: VisualScriptOperator; val: int64) =
  if isNil(visualScriptOperatorSetOperatorMethodBind):
    visualScriptOperatorSetOperatorMethodBind = getMethod(
        cstring"VisualScriptOperator", cstring"set_operator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptOperatorSetOperatorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptOperatorGetTypedMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualScriptOperator): int64 =
  if isNil(visualScriptOperatorGetTypedMethodBind):
    visualScriptOperatorGetTypedMethodBind = getMethod(
        cstring"VisualScriptOperator", cstring"get_typed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptOperatorGetTypedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualScriptOperatorSetTypedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualScriptOperator; val: int64) =
  if isNil(visualScriptOperatorSetTypedMethodBind):
    visualScriptOperatorSetTypedMethodBind = getMethod(
        cstring"VisualScriptOperator", cstring"set_typed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptOperatorSetTypedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
