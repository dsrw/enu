
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc defaultInputValues*(self: VisualScriptNode): Array {.gcsafe, locks: 0.}
proc `defaultInputValues=`*(self: VisualScriptNode; val: Array) {.gcsafe, locks: 0.}
proc getDefaultInputValue*(self: VisualScriptNode; portIdx: int64): Variant {.gcsafe,
    locks: 0.}
proc getVisualScript*(self: VisualScriptNode): VisualScript {.gcsafe, locks: 0.}
proc portsChangedNotify*(self: VisualScriptNode) {.gcsafe, locks: 0.}
proc setDefaultInputValue*(self: VisualScriptNode; portIdx: int64; value: Variant) {.
    gcsafe, locks: 0.}
var visualScriptNodeUnderscoregetDefaultInputValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc defaultInputValues(self: VisualScriptNode): Array =
  if isNil(visualScriptNodeUnderscoregetDefaultInputValuesMethodBind):
    visualScriptNodeUnderscoregetDefaultInputValuesMethodBind = getMethod(
        cstring"VisualScriptNode", cstring"_get_default_input_values")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualScriptNodeUnderscoregetDefaultInputValuesMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var visualScriptNodeUnderscoresetDefaultInputValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `defaultInputValues=`(self: VisualScriptNode; val: Array) =
  if isNil(visualScriptNodeUnderscoresetDefaultInputValuesMethodBind):
    visualScriptNodeUnderscoresetDefaultInputValuesMethodBind = getMethod(
        cstring"VisualScriptNode", cstring"_set_default_input_values")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  visualScriptNodeUnderscoresetDefaultInputValuesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualScriptNodeGetDefaultInputValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDefaultInputValue(self: VisualScriptNode; portIdx: int64): Variant =
  if isNil(visualScriptNodeGetDefaultInputValueMethodBind):
    visualScriptNodeGetDefaultInputValueMethodBind = getMethod(
        cstring"VisualScriptNode", cstring"get_default_input_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(portIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualScriptNodeGetDefaultInputValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var visualScriptNodeGetVisualScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVisualScript(self: VisualScriptNode): VisualScript =
  if isNil(visualScriptNodeGetVisualScriptMethodBind):
    visualScriptNodeGetVisualScriptMethodBind = getMethod(
        cstring"VisualScriptNode", cstring"get_visual_script")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  visualScriptNodeGetVisualScriptMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var visualScriptNodePortsChangedNotifyMethodBind {.threadvar.}: ptr GodotMethodBind
proc portsChangedNotify(self: VisualScriptNode) =
  if isNil(visualScriptNodePortsChangedNotifyMethodBind):
    visualScriptNodePortsChangedNotifyMethodBind = getMethod(
        cstring"VisualScriptNode", cstring"ports_changed_notify")
  var ptrCallRet: pointer
  visualScriptNodePortsChangedNotifyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptNodeSetDefaultInputValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc setDefaultInputValue(self: VisualScriptNode; portIdx: int64; value: Variant) =
  if isNil(visualScriptNodeSetDefaultInputValueMethodBind):
    visualScriptNodeSetDefaultInputValueMethodBind = getMethod(
        cstring"VisualScriptNode", cstring"set_default_input_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(portIdx)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  visualScriptNodeSetDefaultInputValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
