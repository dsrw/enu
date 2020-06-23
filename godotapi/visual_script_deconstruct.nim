
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc elemCache*(self: VisualScriptDeconstruct): Array {.gcsafe, locks: 0.}
proc `elemCache=`*(self: VisualScriptDeconstruct; val: Array) {.gcsafe, locks: 0.}
proc typee*(self: VisualScriptDeconstruct): int64 {.gcsafe, locks: 0.}
proc `typee=`*(self: VisualScriptDeconstruct; val: int64) {.gcsafe, locks: 0.}
var visualScriptDeconstructUnderscoregetElemCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc elemCache(self: VisualScriptDeconstruct): Array =
  if isNil(visualScriptDeconstructUnderscoregetElemCacheMethodBind):
    visualScriptDeconstructUnderscoregetElemCacheMethodBind = getMethod(
        cstring"VisualScriptDeconstruct", cstring"_get_elem_cache")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualScriptDeconstructUnderscoregetElemCacheMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var visualScriptDeconstructUnderscoresetElemCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc `elemCache=`(self: VisualScriptDeconstruct; val: Array) =
  if isNil(visualScriptDeconstructUnderscoresetElemCacheMethodBind):
    visualScriptDeconstructUnderscoresetElemCacheMethodBind = getMethod(
        cstring"VisualScriptDeconstruct", cstring"_set_elem_cache")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  visualScriptDeconstructUnderscoresetElemCacheMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualScriptDeconstructGetDeconstructTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc typee(self: VisualScriptDeconstruct): int64 =
  if isNil(visualScriptDeconstructGetDeconstructTypeMethodBind):
    visualScriptDeconstructGetDeconstructTypeMethodBind = getMethod(
        cstring"VisualScriptDeconstruct", cstring"get_deconstruct_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptDeconstructGetDeconstructTypeMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualScriptDeconstructSetDeconstructTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typee=`(self: VisualScriptDeconstruct; val: int64) =
  if isNil(visualScriptDeconstructSetDeconstructTypeMethodBind):
    visualScriptDeconstructSetDeconstructTypeMethodBind = getMethod(
        cstring"VisualScriptDeconstruct", cstring"set_deconstruct_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptDeconstructSetDeconstructTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
