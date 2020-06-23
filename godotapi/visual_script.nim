
import
  godot, godottypes, godotinternal, script

export
  godottypes, script

proc data*(self: VisualScript): Dictionary {.gcsafe, locks: 0.}
proc `data=`*(self: VisualScript; val: Dictionary) {.gcsafe, locks: 0.}
method nodePortsChanged*(self: VisualScript; arg0: int64) {.gcsafe, locks: 0, base.}
proc addCustomSignal*(self: VisualScript; name: string) {.gcsafe, locks: 0.}
proc addFunction*(self: VisualScript; name: string) {.gcsafe, locks: 0.}
proc addNode*(self: VisualScript; funcc: string; id: int64; node: VisualScriptNode;
             position: Vector2 = vec2(0.0, 0.0)) {.gcsafe, locks: 0.}
proc addVariable*(self: VisualScript; name: string;
                 defaultValue: Variant = newVariant(); exportt: bool = false) {.gcsafe,
    locks: 0.}
proc customSignalAddArgument*(self: VisualScript; name: string; typee: int64;
                             argname: string; index: int64 = -1'i64) {.gcsafe, locks: 0.}
proc customSignalGetArgumentCount*(self: VisualScript; name: string): int64 {.gcsafe,
    locks: 0.}
proc customSignalGetArgumentName*(self: VisualScript; name: string; argidx: int64): string {.
    gcsafe, locks: 0.}
proc customSignalGetArgumentType*(self: VisualScript; name: string; argidx: int64): int64 {.
    gcsafe, locks: 0.}
proc customSignalRemoveArgument*(self: VisualScript; name: string; argidx: int64) {.
    gcsafe, locks: 0.}
proc customSignalSetArgumentName*(self: VisualScript; name: string; argidx: int64;
                                 argname: string) {.gcsafe, locks: 0.}
proc customSignalSetArgumentType*(self: VisualScript; name: string; argidx: int64;
                                 typee: int64) {.gcsafe, locks: 0.}
proc customSignalSwapArgument*(self: VisualScript; name: string; argidx: int64;
                              withidx: int64) {.gcsafe, locks: 0.}
proc dataConnect*(self: VisualScript; funcc: string; fromNode: int64; fromPort: int64;
                 toNode: int64; toPort: int64) {.gcsafe, locks: 0.}
proc dataDisconnect*(self: VisualScript; funcc: string; fromNode: int64;
                    fromPort: int64; toNode: int64; toPort: int64) {.gcsafe, locks: 0.}
proc getFunctionNodeId*(self: VisualScript; name: string): int64 {.gcsafe, locks: 0.}
proc getFunctionScroll*(self: VisualScript; name: string): Vector2 {.gcsafe, locks: 0.}
proc getNode*(self: VisualScript; funcc: string; id: int64): VisualScriptNode {.gcsafe,
    locks: 0.}
proc getNodePosition*(self: VisualScript; funcc: string; id: int64): Vector2 {.gcsafe,
    locks: 0.}
proc getVariableDefaultValue*(self: VisualScript; name: string): Variant {.gcsafe,
    locks: 0.}
proc getVariableExport*(self: VisualScript; name: string): bool {.gcsafe, locks: 0.}
proc getVariableInfo*(self: VisualScript; name: string): Dictionary {.gcsafe, locks: 0.}
proc hasCustomSignal*(self: VisualScript; name: string): bool {.gcsafe, locks: 0.}
proc hasDataConnection*(self: VisualScript; funcc: string; fromNode: int64;
                       fromPort: int64; toNode: int64; toPort: int64): bool {.gcsafe,
    locks: 0.}
proc hasFunction*(self: VisualScript; name: string): bool {.gcsafe, locks: 0.}
proc hasNode*(self: VisualScript; funcc: string; id: int64): bool {.gcsafe, locks: 0.}
proc hasSequenceConnection*(self: VisualScript; funcc: string; fromNode: int64;
                           fromOutput: int64; toNode: int64): bool {.gcsafe, locks: 0.}
proc hasVariable*(self: VisualScript; name: string): bool {.gcsafe, locks: 0.}
proc removeCustomSignal*(self: VisualScript; name: string) {.gcsafe, locks: 0.}
proc removeFunction*(self: VisualScript; name: string) {.gcsafe, locks: 0.}
proc removeNode*(self: VisualScript; funcc: string; id: int64) {.gcsafe, locks: 0.}
proc removeVariable*(self: VisualScript; name: string) {.gcsafe, locks: 0.}
proc renameCustomSignal*(self: VisualScript; name: string; newName: string) {.gcsafe,
    locks: 0.}
proc renameFunction*(self: VisualScript; name: string; newName: string) {.gcsafe,
    locks: 0.}
proc renameVariable*(self: VisualScript; name: string; newName: string) {.gcsafe,
    locks: 0.}
proc sequenceConnect*(self: VisualScript; funcc: string; fromNode: int64;
                     fromOutput: int64; toNode: int64) {.gcsafe, locks: 0.}
proc sequenceDisconnect*(self: VisualScript; funcc: string; fromNode: int64;
                        fromOutput: int64; toNode: int64) {.gcsafe, locks: 0.}
proc setFunctionScroll*(self: VisualScript; name: string; ofs: Vector2) {.gcsafe,
    locks: 0.}
proc setInstanceBaseType*(self: VisualScript; typee: string) {.gcsafe, locks: 0.}
proc setNodePosition*(self: VisualScript; funcc: string; id: int64; position: Vector2) {.
    gcsafe, locks: 0.}
proc setVariableDefaultValue*(self: VisualScript; name: string; value: Variant) {.
    gcsafe, locks: 0.}
proc setVariableExport*(self: VisualScript; name: string; enable: bool) {.gcsafe,
    locks: 0.}
proc setVariableInfo*(self: VisualScript; name: string; value: Dictionary) {.gcsafe,
    locks: 0.}
var visualScriptUnderscoregetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc data(self: VisualScript): Dictionary =
  if isNil(visualScriptUnderscoregetDataMethodBind):
    visualScriptUnderscoregetDataMethodBind = getMethod(cstring"VisualScript",
        cstring"_get_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  visualScriptUnderscoregetDataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var visualScriptUnderscoresetDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc `data=`(self: VisualScript; val: Dictionary) =
  if isNil(visualScriptUnderscoresetDataMethodBind):
    visualScriptUnderscoresetDataMethodBind = getMethod(cstring"VisualScript",
        cstring"_set_data")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  visualScriptUnderscoresetDataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptUnderscorenodePortsChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodePortsChanged(self: VisualScript; arg0: int64) =
  if isNil(visualScriptUnderscorenodePortsChangedMethodBind):
    visualScriptUnderscorenodePortsChangedMethodBind = getMethod(
        cstring"VisualScript", cstring"_node_ports_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  visualScriptUnderscorenodePortsChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptAddCustomSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCustomSignal(self: VisualScript; name: string) =
  if isNil(visualScriptAddCustomSignalMethodBind):
    visualScriptAddCustomSignalMethodBind = getMethod(cstring"VisualScript",
        cstring"add_custom_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptAddCustomSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptAddFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc addFunction(self: VisualScript; name: string) =
  if isNil(visualScriptAddFunctionMethodBind):
    visualScriptAddFunctionMethodBind = getMethod(cstring"VisualScript",
        cstring"add_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptAddFunctionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptAddNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addNode(self: VisualScript; funcc: string; id: int64; node: VisualScriptNode;
            position: Vector2 = vec2(0.0, 0.0)) =
  if isNil(visualScriptAddNodeMethodBind):
    visualScriptAddNodeMethodBind = getMethod(cstring"VisualScript",
        cstring"add_node")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  let argToPassToGodot2 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(position)
  var ptrCallRet: pointer
  visualScriptAddNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptAddVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc addVariable(self: VisualScript; name: string;
                defaultValue: Variant = newVariant(); exportt: bool = false) =
  if isNil(visualScriptAddVariableMethodBind):
    visualScriptAddVariableMethodBind = getMethod(cstring"VisualScript",
        cstring"add_variable")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = defaultValue.godotVariant
  argsToPassToGodot[][2] = unsafeAddr(exportt)
  var ptrCallRet: pointer
  visualScriptAddVariableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptCustomSignalAddArgumentMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalAddArgument(self: VisualScript; name: string; typee: int64;
                            argname: string; index: int64 = -1'i64) =
  if isNil(visualScriptCustomSignalAddArgumentMethodBind):
    visualScriptCustomSignalAddArgumentMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_add_argument")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var argToPassToGodot2 = toGodotString(argname)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(index)
  var ptrCallRet: pointer
  visualScriptCustomSignalAddArgumentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var visualScriptCustomSignalGetArgumentCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalGetArgumentCount(self: VisualScript; name: string): int64 =
  if isNil(visualScriptCustomSignalGetArgumentCountMethodBind):
    visualScriptCustomSignalGetArgumentCountMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_get_argument_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomSignalGetArgumentCountMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptCustomSignalGetArgumentNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalGetArgumentName(self: VisualScript; name: string; argidx: int64): string =
  if isNil(visualScriptCustomSignalGetArgumentNameMethodBind):
    visualScriptCustomSignalGetArgumentNameMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_get_argument_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(argidx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomSignalGetArgumentNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCustomSignalGetArgumentTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalGetArgumentType(self: VisualScript; name: string; argidx: int64): int64 =
  if isNil(visualScriptCustomSignalGetArgumentTypeMethodBind):
    visualScriptCustomSignalGetArgumentTypeMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_get_argument_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(argidx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomSignalGetArgumentTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptCustomSignalRemoveArgumentMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalRemoveArgument(self: VisualScript; name: string; argidx: int64) =
  if isNil(visualScriptCustomSignalRemoveArgumentMethodBind):
    visualScriptCustomSignalRemoveArgumentMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_remove_argument")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(argidx)
  var ptrCallRet: pointer
  visualScriptCustomSignalRemoveArgumentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptCustomSignalSetArgumentNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalSetArgumentName(self: VisualScript; name: string; argidx: int64;
                                argname: string) =
  if isNil(visualScriptCustomSignalSetArgumentNameMethodBind):
    visualScriptCustomSignalSetArgumentNameMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_set_argument_name")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(argidx)
  var argToPassToGodot2 = toGodotString(argname)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  visualScriptCustomSignalSetArgumentNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var visualScriptCustomSignalSetArgumentTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalSetArgumentType(self: VisualScript; name: string; argidx: int64;
                                typee: int64) =
  if isNil(visualScriptCustomSignalSetArgumentTypeMethodBind):
    visualScriptCustomSignalSetArgumentTypeMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_set_argument_type")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(argidx)
  argsToPassToGodot[][2] = unsafeAddr(typee)
  var ptrCallRet: pointer
  visualScriptCustomSignalSetArgumentTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptCustomSignalSwapArgumentMethodBind {.threadvar.}: ptr GodotMethodBind
proc customSignalSwapArgument(self: VisualScript; name: string; argidx: int64;
                             withidx: int64) =
  if isNil(visualScriptCustomSignalSwapArgumentMethodBind):
    visualScriptCustomSignalSwapArgumentMethodBind = getMethod(
        cstring"VisualScript", cstring"custom_signal_swap_argument")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(argidx)
  argsToPassToGodot[][2] = unsafeAddr(withidx)
  var ptrCallRet: pointer
  visualScriptCustomSignalSwapArgumentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptDataConnectMethodBind {.threadvar.}: ptr GodotMethodBind
proc dataConnect(self: VisualScript; funcc: string; fromNode: int64; fromPort: int64;
                toNode: int64; toPort: int64) =
  if isNil(visualScriptDataConnectMethodBind):
    visualScriptDataConnectMethodBind = getMethod(cstring"VisualScript",
        cstring"data_connect")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  visualScriptDataConnectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptDataDisconnectMethodBind {.threadvar.}: ptr GodotMethodBind
proc dataDisconnect(self: VisualScript; funcc: string; fromNode: int64;
                   fromPort: int64; toNode: int64; toPort: int64) =
  if isNil(visualScriptDataDisconnectMethodBind):
    visualScriptDataDisconnectMethodBind = getMethod(cstring"VisualScript",
        cstring"data_disconnect")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  visualScriptDataDisconnectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptGetFunctionNodeIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFunctionNodeId(self: VisualScript; name: string): int64 =
  if isNil(visualScriptGetFunctionNodeIdMethodBind):
    visualScriptGetFunctionNodeIdMethodBind = getMethod(cstring"VisualScript",
        cstring"get_function_node_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptGetFunctionNodeIdMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptGetFunctionScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFunctionScroll(self: VisualScript; name: string): Vector2 =
  if isNil(visualScriptGetFunctionScrollMethodBind):
    visualScriptGetFunctionScrollMethodBind = getMethod(cstring"VisualScript",
        cstring"get_function_scroll")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptGetFunctionScrollMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptGetNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNode(self: VisualScript; funcc: string; id: int64): VisualScriptNode =
  if isNil(visualScriptGetNodeMethodBind):
    visualScriptGetNodeMethodBind = getMethod(cstring"VisualScript",
        cstring"get_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  visualScriptGetNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var visualScriptGetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodePosition(self: VisualScript; funcc: string; id: int64): Vector2 =
  if isNil(visualScriptGetNodePositionMethodBind):
    visualScriptGetNodePositionMethodBind = getMethod(cstring"VisualScript",
        cstring"get_node_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptGetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptGetVariableDefaultValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVariableDefaultValue(self: VisualScript; name: string): Variant =
  if isNil(visualScriptGetVariableDefaultValueMethodBind):
    visualScriptGetVariableDefaultValueMethodBind = getMethod(
        cstring"VisualScript", cstring"get_variable_default_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualScriptGetVariableDefaultValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var visualScriptGetVariableExportMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVariableExport(self: VisualScript; name: string): bool =
  if isNil(visualScriptGetVariableExportMethodBind):
    visualScriptGetVariableExportMethodBind = getMethod(cstring"VisualScript",
        cstring"get_variable_export")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptGetVariableExportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptGetVariableInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVariableInfo(self: VisualScript; name: string): Dictionary =
  if isNil(visualScriptGetVariableInfoMethodBind):
    visualScriptGetVariableInfoMethodBind = getMethod(cstring"VisualScript",
        cstring"get_variable_info")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  visualScriptGetVariableInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newDictionary(ptrCallVal)

var visualScriptHasCustomSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasCustomSignal(self: VisualScript; name: string): bool =
  if isNil(visualScriptHasCustomSignalMethodBind):
    visualScriptHasCustomSignalMethodBind = getMethod(cstring"VisualScript",
        cstring"has_custom_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptHasCustomSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptHasDataConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasDataConnection(self: VisualScript; funcc: string; fromNode: int64;
                      fromPort: int64; toNode: int64; toPort: int64): bool =
  if isNil(visualScriptHasDataConnectionMethodBind):
    visualScriptHasDataConnectionMethodBind = getMethod(cstring"VisualScript",
        cstring"has_data_connection")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromPort)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  argsToPassToGodot[][4] = unsafeAddr(toPort)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptHasDataConnectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptHasFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasFunction(self: VisualScript; name: string): bool =
  if isNil(visualScriptHasFunctionMethodBind):
    visualScriptHasFunctionMethodBind = getMethod(cstring"VisualScript",
        cstring"has_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptHasFunctionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptHasNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasNode(self: VisualScript; funcc: string; id: int64): bool =
  if isNil(visualScriptHasNodeMethodBind):
    visualScriptHasNodeMethodBind = getMethod(cstring"VisualScript",
        cstring"has_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptHasNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptHasSequenceConnectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasSequenceConnection(self: VisualScript; funcc: string; fromNode: int64;
                          fromOutput: int64; toNode: int64): bool =
  if isNil(visualScriptHasSequenceConnectionMethodBind):
    visualScriptHasSequenceConnectionMethodBind = getMethod(
        cstring"VisualScript", cstring"has_sequence_connection")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromOutput)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptHasSequenceConnectionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptHasVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasVariable(self: VisualScript; name: string): bool =
  if isNil(visualScriptHasVariableMethodBind):
    visualScriptHasVariableMethodBind = getMethod(cstring"VisualScript",
        cstring"has_variable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptHasVariableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptRemoveCustomSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCustomSignal(self: VisualScript; name: string) =
  if isNil(visualScriptRemoveCustomSignalMethodBind):
    visualScriptRemoveCustomSignalMethodBind = getMethod(cstring"VisualScript",
        cstring"remove_custom_signal")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptRemoveCustomSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptRemoveFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeFunction(self: VisualScript; name: string) =
  if isNil(visualScriptRemoveFunctionMethodBind):
    visualScriptRemoveFunctionMethodBind = getMethod(cstring"VisualScript",
        cstring"remove_function")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptRemoveFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptRemoveNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeNode(self: VisualScript; funcc: string; id: int64) =
  if isNil(visualScriptRemoveNodeMethodBind):
    visualScriptRemoveNodeMethodBind = getMethod(cstring"VisualScript",
        cstring"remove_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  visualScriptRemoveNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptRemoveVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeVariable(self: VisualScript; name: string) =
  if isNil(visualScriptRemoveVariableMethodBind):
    visualScriptRemoveVariableMethodBind = getMethod(cstring"VisualScript",
        cstring"remove_variable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptRemoveVariableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptRenameCustomSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameCustomSignal(self: VisualScript; name: string; newName: string) =
  if isNil(visualScriptRenameCustomSignalMethodBind):
    visualScriptRenameCustomSignalMethodBind = getMethod(cstring"VisualScript",
        cstring"rename_custom_signal")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualScriptRenameCustomSignalMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var visualScriptRenameFunctionMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameFunction(self: VisualScript; name: string; newName: string) =
  if isNil(visualScriptRenameFunctionMethodBind):
    visualScriptRenameFunctionMethodBind = getMethod(cstring"VisualScript",
        cstring"rename_function")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualScriptRenameFunctionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var visualScriptRenameVariableMethodBind {.threadvar.}: ptr GodotMethodBind
proc renameVariable(self: VisualScript; name: string; newName: string) =
  if isNil(visualScriptRenameVariableMethodBind):
    visualScriptRenameVariableMethodBind = getMethod(cstring"VisualScript",
        cstring"rename_variable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(newName)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualScriptRenameVariableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var visualScriptSequenceConnectMethodBind {.threadvar.}: ptr GodotMethodBind
proc sequenceConnect(self: VisualScript; funcc: string; fromNode: int64;
                    fromOutput: int64; toNode: int64) =
  if isNil(visualScriptSequenceConnectMethodBind):
    visualScriptSequenceConnectMethodBind = getMethod(cstring"VisualScript",
        cstring"sequence_connect")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromOutput)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  var ptrCallRet: pointer
  visualScriptSequenceConnectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptSequenceDisconnectMethodBind {.threadvar.}: ptr GodotMethodBind
proc sequenceDisconnect(self: VisualScript; funcc: string; fromNode: int64;
                       fromOutput: int64; toNode: int64) =
  if isNil(visualScriptSequenceDisconnectMethodBind):
    visualScriptSequenceDisconnectMethodBind = getMethod(cstring"VisualScript",
        cstring"sequence_disconnect")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(fromNode)
  argsToPassToGodot[][2] = unsafeAddr(fromOutput)
  argsToPassToGodot[][3] = unsafeAddr(toNode)
  var ptrCallRet: pointer
  visualScriptSequenceDisconnectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptSetFunctionScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFunctionScroll(self: VisualScript; name: string; ofs: Vector2) =
  if isNil(visualScriptSetFunctionScrollMethodBind):
    visualScriptSetFunctionScrollMethodBind = getMethod(cstring"VisualScript",
        cstring"set_function_scroll")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(ofs)
  var ptrCallRet: pointer
  visualScriptSetFunctionScrollMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptSetInstanceBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInstanceBaseType(self: VisualScript; typee: string) =
  if isNil(visualScriptSetInstanceBaseTypeMethodBind):
    visualScriptSetInstanceBaseTypeMethodBind = getMethod(cstring"VisualScript",
        cstring"set_instance_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptSetInstanceBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptSetNodePositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setNodePosition(self: VisualScript; funcc: string; id: int64; position: Vector2) =
  if isNil(visualScriptSetNodePositionMethodBind):
    visualScriptSetNodePositionMethodBind = getMethod(cstring"VisualScript",
        cstring"set_node_position")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(funcc)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  argsToPassToGodot[][2] = unsafeAddr(position)
  var ptrCallRet: pointer
  visualScriptSetNodePositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptSetVariableDefaultValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVariableDefaultValue(self: VisualScript; name: string; value: Variant) =
  if isNil(visualScriptSetVariableDefaultValueMethodBind):
    visualScriptSetVariableDefaultValueMethodBind = getMethod(
        cstring"VisualScript", cstring"set_variable_default_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  visualScriptSetVariableDefaultValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptSetVariableExportMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVariableExport(self: VisualScript; name: string; enable: bool) =
  if isNil(visualScriptSetVariableExportMethodBind):
    visualScriptSetVariableExportMethodBind = getMethod(cstring"VisualScript",
        cstring"set_variable_export")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  visualScriptSetVariableExportMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptSetVariableInfoMethodBind {.threadvar.}: ptr GodotMethodBind
proc setVariableInfo(self: VisualScript; name: string; value: Dictionary) =
  if isNil(visualScriptSetVariableInfoMethodBind):
    visualScriptSetVariableInfoMethodBind = getMethod(cstring"VisualScript",
        cstring"set_variable_info")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotDictionary
  var ptrCallRet: pointer
  visualScriptSetVariableInfoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
