
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc steps*(self: VisualScriptSequence): int64 {.gcsafe, locks: 0.}
proc `steps=`*(self: VisualScriptSequence; val: int64) {.gcsafe, locks: 0.}
var visualScriptSequenceGetStepsMethodBind {.threadvar.}: ptr GodotMethodBind
proc steps(self: VisualScriptSequence): int64 =
  if isNil(visualScriptSequenceGetStepsMethodBind):
    visualScriptSequenceGetStepsMethodBind = getMethod(
        cstring"VisualScriptSequence", cstring"get_steps")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptSequenceGetStepsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualScriptSequenceSetStepsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `steps=`(self: VisualScriptSequence; val: int64) =
  if isNil(visualScriptSequenceSetStepsMethodBind):
    visualScriptSequenceSetStepsMethodBind = getMethod(
        cstring"VisualScriptSequence", cstring"set_steps")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptSequenceSetStepsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
