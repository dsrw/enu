
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc addInputDataPort*(self: VisualScriptLists; typee: int64; name: string;
                      index: int64) {.gcsafe, locks: 0.}
proc addOutputDataPort*(self: VisualScriptLists; typee: int64; name: string;
                       index: int64) {.gcsafe, locks: 0.}
proc removeInputDataPort*(self: VisualScriptLists; index: int64) {.gcsafe, locks: 0.}
proc removeOutputDataPort*(self: VisualScriptLists; index: int64) {.gcsafe, locks: 0.}
proc setInputDataPortName*(self: VisualScriptLists; index: int64; name: string) {.
    gcsafe, locks: 0.}
proc setInputDataPortType*(self: VisualScriptLists; index: int64; typee: int64) {.
    gcsafe, locks: 0.}
proc setOutputDataPortName*(self: VisualScriptLists; index: int64; name: string) {.
    gcsafe, locks: 0.}
proc setOutputDataPortType*(self: VisualScriptLists; index: int64; typee: int64) {.
    gcsafe, locks: 0.}
var visualScriptListsAddInputDataPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc addInputDataPort(self: VisualScriptLists; typee: int64; name: string; index: int64) =
  if isNil(visualScriptListsAddInputDataPortMethodBind):
    visualScriptListsAddInputDataPortMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"add_input_data_port")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(index)
  var ptrCallRet: pointer
  visualScriptListsAddInputDataPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualScriptListsAddOutputDataPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc addOutputDataPort(self: VisualScriptLists; typee: int64; name: string;
                      index: int64) =
  if isNil(visualScriptListsAddOutputDataPortMethodBind):
    visualScriptListsAddOutputDataPortMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"add_output_data_port")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(typee)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(index)
  var ptrCallRet: pointer
  visualScriptListsAddOutputDataPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualScriptListsRemoveInputDataPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeInputDataPort(self: VisualScriptLists; index: int64) =
  if isNil(visualScriptListsRemoveInputDataPortMethodBind):
    visualScriptListsRemoveInputDataPortMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"remove_input_data_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  visualScriptListsRemoveInputDataPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptListsRemoveOutputDataPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeOutputDataPort(self: VisualScriptLists; index: int64) =
  if isNil(visualScriptListsRemoveOutputDataPortMethodBind):
    visualScriptListsRemoveOutputDataPortMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"remove_output_data_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  visualScriptListsRemoveOutputDataPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptListsSetInputDataPortNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputDataPortName(self: VisualScriptLists; index: int64; name: string) =
  if isNil(visualScriptListsSetInputDataPortNameMethodBind):
    visualScriptListsSetInputDataPortNameMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"set_input_data_port_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualScriptListsSetInputDataPortNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualScriptListsSetInputDataPortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputDataPortType(self: VisualScriptLists; index: int64; typee: int64) =
  if isNil(visualScriptListsSetInputDataPortTypeMethodBind):
    visualScriptListsSetInputDataPortTypeMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"set_input_data_port_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var ptrCallRet: pointer
  visualScriptListsSetInputDataPortTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptListsSetOutputDataPortNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOutputDataPortName(self: VisualScriptLists; index: int64; name: string) =
  if isNil(visualScriptListsSetOutputDataPortNameMethodBind):
    visualScriptListsSetOutputDataPortNameMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"set_output_data_port_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualScriptListsSetOutputDataPortNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualScriptListsSetOutputDataPortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOutputDataPortType(self: VisualScriptLists; index: int64; typee: int64) =
  if isNil(visualScriptListsSetOutputDataPortTypeMethodBind):
    visualScriptListsSetOutputDataPortTypeMethodBind = getMethod(
        cstring"VisualScriptLists", cstring"set_output_data_port_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var ptrCallRet: pointer
  visualScriptListsSetOutputDataPortTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
