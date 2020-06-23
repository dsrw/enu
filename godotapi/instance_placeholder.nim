
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

proc createInstance*(self: InstancePlaceholder; replace: bool = false;
                    customScene: PackedScene = nil): Node {.gcsafe, locks: 0.}
proc getInstancePath*(self: InstancePlaceholder): string {.gcsafe, locks: 0.}
proc getStoredValues*(self: InstancePlaceholder; withOrder: bool = false): Dictionary {.
    gcsafe, locks: 0.}
proc replaceByInstance*(self: InstancePlaceholder; customScene: PackedScene = nil) {.
    gcsafe, locks: 0.}
var instancePlaceholderCreateInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc createInstance(self: InstancePlaceholder; replace: bool = false;
                   customScene: PackedScene = nil): Node =
  if isNil(instancePlaceholderCreateInstanceMethodBind):
    instancePlaceholderCreateInstanceMethodBind = getMethod(
        cstring"InstancePlaceholder", cstring"create_instance")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(replace)
  let argToPassToGodot1 = if not customScene.isNil:
    customScene.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  instancePlaceholderCreateInstanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var instancePlaceholderGetInstancePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInstancePath(self: InstancePlaceholder): string =
  if isNil(instancePlaceholderGetInstancePathMethodBind):
    instancePlaceholderGetInstancePathMethodBind = getMethod(
        cstring"InstancePlaceholder", cstring"get_instance_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  instancePlaceholderGetInstancePathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var instancePlaceholderGetStoredValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStoredValues(self: InstancePlaceholder; withOrder: bool = false): Dictionary =
  if isNil(instancePlaceholderGetStoredValuesMethodBind):
    instancePlaceholderGetStoredValuesMethodBind = getMethod(
        cstring"InstancePlaceholder", cstring"get_stored_values")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(withOrder)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  instancePlaceholderGetStoredValuesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newDictionary(ptrCallVal)

var instancePlaceholderReplaceByInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc replaceByInstance(self: InstancePlaceholder; customScene: PackedScene = nil) =
  if isNil(instancePlaceholderReplaceByInstanceMethodBind):
    instancePlaceholderReplaceByInstanceMethodBind = getMethod(
        cstring"InstancePlaceholder", cstring"replace_by_instance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not customScene.isNil:
    customScene.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  instancePlaceholderReplaceByInstanceMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
