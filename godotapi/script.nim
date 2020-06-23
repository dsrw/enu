
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc sourceCode*(self: Script): string {.gcsafe, locks: 0.}
proc `sourceCode=`*(self: Script; val: string) {.gcsafe, locks: 0.}
proc canInstance*(self: Script): bool {.gcsafe, locks: 0.}
proc getBaseScript*(self: Script): Script {.gcsafe, locks: 0.}
proc getInstanceBaseType*(self: Script): string {.gcsafe, locks: 0.}
proc getPropertyDefaultValue*(self: Script; property: string): Variant {.gcsafe,
    locks: 0.}
proc getScriptConstantMap*(self: Script): Dictionary {.gcsafe, locks: 0.}
proc getScriptMethodList*(self: Script): Array {.gcsafe, locks: 0.}
proc getScriptPropertyList*(self: Script): Array {.gcsafe, locks: 0.}
proc getScriptSignalList*(self: Script): Array {.gcsafe, locks: 0.}
proc hasScriptSignal*(self: Script; signalName: string): bool {.gcsafe, locks: 0.}
proc hasSourceCode*(self: Script): bool {.gcsafe, locks: 0.}
proc instanceHas*(self: Script; baseObject: Object): bool {.gcsafe, locks: 0.}
proc isTool*(self: Script): bool {.gcsafe, locks: 0.}
proc reload*(self: Script; keepState: bool = false): Error {.gcsafe, locks: 0.}
var scriptGetSourceCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc sourceCode(self: Script): string =
  if isNil(scriptGetSourceCodeMethodBind):
    scriptGetSourceCodeMethodBind = getMethod(cstring"Script",
        cstring"get_source_code")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  scriptGetSourceCodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var scriptSetSourceCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sourceCode=`(self: Script; val: string) =
  if isNil(scriptSetSourceCodeMethodBind):
    scriptSetSourceCodeMethodBind = getMethod(cstring"Script",
        cstring"set_source_code")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  scriptSetSourceCodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var scriptCanInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc canInstance(self: Script): bool =
  if isNil(scriptCanInstanceMethodBind):
    scriptCanInstanceMethodBind = getMethod(cstring"Script", cstring"can_instance")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scriptCanInstanceMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var scriptGetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc getBaseScript(self: Script): Script =
  if isNil(scriptGetBaseScriptMethodBind):
    scriptGetBaseScriptMethodBind = getMethod(cstring"Script",
        cstring"get_base_script")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  scriptGetBaseScriptMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var scriptGetInstanceBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstanceBaseType(self: Script): string =
  if isNil(scriptGetInstanceBaseTypeMethodBind):
    scriptGetInstanceBaseTypeMethodBind = getMethod(cstring"Script",
        cstring"get_instance_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  scriptGetInstanceBaseTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var scriptGetPropertyDefaultValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPropertyDefaultValue(self: Script; property: string): Variant =
  if isNil(scriptGetPropertyDefaultValueMethodBind):
    scriptGetPropertyDefaultValueMethodBind = getMethod(cstring"Script",
        cstring"get_property_default_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  scriptGetPropertyDefaultValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var scriptGetScriptConstantMapMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScriptConstantMap(self: Script): Dictionary =
  if isNil(scriptGetScriptConstantMapMethodBind):
    scriptGetScriptConstantMapMethodBind = getMethod(cstring"Script",
        cstring"get_script_constant_map")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  scriptGetScriptConstantMapMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var scriptGetScriptMethodListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScriptMethodList(self: Script): Array =
  if isNil(scriptGetScriptMethodListMethodBind):
    scriptGetScriptMethodListMethodBind = getMethod(cstring"Script",
        cstring"get_script_method_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  scriptGetScriptMethodListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var scriptGetScriptPropertyListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScriptPropertyList(self: Script): Array =
  if isNil(scriptGetScriptPropertyListMethodBind):
    scriptGetScriptPropertyListMethodBind = getMethod(cstring"Script",
        cstring"get_script_property_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  scriptGetScriptPropertyListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var scriptGetScriptSignalListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getScriptSignalList(self: Script): Array =
  if isNil(scriptGetScriptSignalListMethodBind):
    scriptGetScriptSignalListMethodBind = getMethod(cstring"Script",
        cstring"get_script_signal_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  scriptGetScriptSignalListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var scriptHasScriptSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasScriptSignal(self: Script; signalName: string): bool =
  if isNil(scriptHasScriptSignalMethodBind):
    scriptHasScriptSignalMethodBind = getMethod(cstring"Script",
        cstring"has_script_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(signalName)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scriptHasScriptSignalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var scriptHasSourceCodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSourceCode(self: Script): bool =
  if isNil(scriptHasSourceCodeMethodBind):
    scriptHasSourceCodeMethodBind = getMethod(cstring"Script",
        cstring"has_source_code")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scriptHasSourceCodeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var scriptInstanceHasMethodBind {.threadvar.}: ptr GodotMethodBind
proc instanceHas(self: Script; baseObject: Object): bool =
  if isNil(scriptInstanceHasMethodBind):
    scriptInstanceHasMethodBind = getMethod(cstring"Script", cstring"instance_has")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not baseObject.isNil:
    baseObject.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scriptInstanceHasMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var scriptIsToolMethodBind {.threadvar.}: ptr GodotMethodBind
proc isTool(self: Script): bool =
  if isNil(scriptIsToolMethodBind):
    scriptIsToolMethodBind = getMethod(cstring"Script", cstring"is_tool")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  scriptIsToolMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var scriptReloadMethodBind {.threadvar.}: ptr GodotMethodBind
proc reload(self: Script; keepState: bool = false): Error =
  if isNil(scriptReloadMethodBind):
    scriptReloadMethodBind = getMethod(cstring"Script", cstring"reload")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(keepState)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  scriptReloadMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)
