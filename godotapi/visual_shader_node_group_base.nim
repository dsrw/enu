
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

proc size*(self: VisualShaderNodeGroupBase): Vector2 {.gcsafe, locks: 0.}
proc `size=`*(self: VisualShaderNodeGroupBase; val: Vector2) {.gcsafe, locks: 0.}
proc addInputPort*(self: VisualShaderNodeGroupBase; id: int64; typee: int64;
                  name: string) {.gcsafe, locks: 0.}
proc addOutputPort*(self: VisualShaderNodeGroupBase; id: int64; typee: int64;
                   name: string) {.gcsafe, locks: 0.}
proc clearInputPorts*(self: VisualShaderNodeGroupBase) {.gcsafe, locks: 0.}
proc clearOutputPorts*(self: VisualShaderNodeGroupBase) {.gcsafe, locks: 0.}
proc getFreeInputPortId*(self: VisualShaderNodeGroupBase): int64 {.gcsafe, locks: 0.}
proc getFreeOutputPortId*(self: VisualShaderNodeGroupBase): int64 {.gcsafe, locks: 0.}
proc getInputPortCount*(self: VisualShaderNodeGroupBase): int64 {.gcsafe, locks: 0.}
proc getInputs*(self: VisualShaderNodeGroupBase): string {.gcsafe, locks: 0.}
proc getOutputPortCount*(self: VisualShaderNodeGroupBase): int64 {.gcsafe, locks: 0.}
proc getOutputs*(self: VisualShaderNodeGroupBase): string {.gcsafe, locks: 0.}
proc hasInputPort*(self: VisualShaderNodeGroupBase; id: int64): bool {.gcsafe, locks: 0.}
proc hasOutputPort*(self: VisualShaderNodeGroupBase; id: int64): bool {.gcsafe,
    locks: 0.}
proc isValidPortName*(self: VisualShaderNodeGroupBase; name: string): bool {.gcsafe,
    locks: 0.}
proc removeInputPort*(self: VisualShaderNodeGroupBase; id: int64) {.gcsafe, locks: 0.}
proc removeOutputPort*(self: VisualShaderNodeGroupBase; id: int64) {.gcsafe, locks: 0.}
proc setInputPortName*(self: VisualShaderNodeGroupBase; id: int64; name: string) {.
    gcsafe, locks: 0.}
proc setInputPortType*(self: VisualShaderNodeGroupBase; id: int64; typee: int64) {.
    gcsafe, locks: 0.}
proc setInputs*(self: VisualShaderNodeGroupBase; inputs: string) {.gcsafe, locks: 0.}
proc setOutputPortName*(self: VisualShaderNodeGroupBase; id: int64; name: string) {.
    gcsafe, locks: 0.}
proc setOutputPortType*(self: VisualShaderNodeGroupBase; id: int64; typee: int64) {.
    gcsafe, locks: 0.}
proc setOutputs*(self: VisualShaderNodeGroupBase; outputs: string) {.gcsafe, locks: 0.}
var visualShaderNodeGroupBaseGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: VisualShaderNodeGroupBase): Vector2 =
  if isNil(visualShaderNodeGroupBaseGetSizeMethodBind):
    visualShaderNodeGroupBaseGetSizeMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseGetSizeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualShaderNodeGroupBaseSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: VisualShaderNodeGroupBase; val: Vector2) =
  if isNil(visualShaderNodeGroupBaseSetSizeMethodBind):
    visualShaderNodeGroupBaseSetSizeMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseSetSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGroupBaseAddInputPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc addInputPort(self: VisualShaderNodeGroupBase; id: int64; typee: int64;
                 name: string) =
  if isNil(visualShaderNodeGroupBaseAddInputPortMethodBind):
    visualShaderNodeGroupBaseAddInputPortMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"add_input_port")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var argToPassToGodot2 = toGodotString(name)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseAddInputPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var visualShaderNodeGroupBaseAddOutputPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc addOutputPort(self: VisualShaderNodeGroupBase; id: int64; typee: int64;
                  name: string) =
  if isNil(visualShaderNodeGroupBaseAddOutputPortMethodBind):
    visualShaderNodeGroupBaseAddOutputPortMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"add_output_port")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var argToPassToGodot2 = toGodotString(name)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseAddOutputPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var visualShaderNodeGroupBaseClearInputPortsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearInputPorts(self: VisualShaderNodeGroupBase) =
  if isNil(visualShaderNodeGroupBaseClearInputPortsMethodBind):
    visualShaderNodeGroupBaseClearInputPortsMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"clear_input_ports")
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseClearInputPortsMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeGroupBaseClearOutputPortsMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearOutputPorts(self: VisualShaderNodeGroupBase) =
  if isNil(visualShaderNodeGroupBaseClearOutputPortsMethodBind):
    visualShaderNodeGroupBaseClearOutputPortsMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"clear_output_ports")
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseClearOutputPortsMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeGroupBaseGetFreeInputPortIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFreeInputPortId(self: VisualShaderNodeGroupBase): int64 =
  if isNil(visualShaderNodeGroupBaseGetFreeInputPortIdMethodBind):
    visualShaderNodeGroupBaseGetFreeInputPortIdMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"get_free_input_port_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseGetFreeInputPortIdMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeGroupBaseGetFreeOutputPortIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getFreeOutputPortId(self: VisualShaderNodeGroupBase): int64 =
  if isNil(visualShaderNodeGroupBaseGetFreeOutputPortIdMethodBind):
    visualShaderNodeGroupBaseGetFreeOutputPortIdMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"get_free_output_port_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseGetFreeOutputPortIdMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeGroupBaseGetInputPortCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInputPortCount(self: VisualShaderNodeGroupBase): int64 =
  if isNil(visualShaderNodeGroupBaseGetInputPortCountMethodBind):
    visualShaderNodeGroupBaseGetInputPortCountMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"get_input_port_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseGetInputPortCountMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeGroupBaseGetInputsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInputs(self: VisualShaderNodeGroupBase): string =
  if isNil(visualShaderNodeGroupBaseGetInputsMethodBind):
    visualShaderNodeGroupBaseGetInputsMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"get_inputs")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeGroupBaseGetInputsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeGroupBaseGetOutputPortCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOutputPortCount(self: VisualShaderNodeGroupBase): int64 =
  if isNil(visualShaderNodeGroupBaseGetOutputPortCountMethodBind):
    visualShaderNodeGroupBaseGetOutputPortCountMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"get_output_port_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseGetOutputPortCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeGroupBaseGetOutputsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getOutputs(self: VisualShaderNodeGroupBase): string =
  if isNil(visualShaderNodeGroupBaseGetOutputsMethodBind):
    visualShaderNodeGroupBaseGetOutputsMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"get_outputs")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeGroupBaseGetOutputsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeGroupBaseHasInputPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasInputPort(self: VisualShaderNodeGroupBase; id: int64): bool =
  if isNil(visualShaderNodeGroupBaseHasInputPortMethodBind):
    visualShaderNodeGroupBaseHasInputPortMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"has_input_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseHasInputPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGroupBaseHasOutputPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasOutputPort(self: VisualShaderNodeGroupBase; id: int64): bool =
  if isNil(visualShaderNodeGroupBaseHasOutputPortMethodBind):
    visualShaderNodeGroupBaseHasOutputPortMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"has_output_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseHasOutputPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGroupBaseIsValidPortNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc isValidPortName(self: VisualShaderNodeGroupBase; name: string): bool =
  if isNil(visualShaderNodeGroupBaseIsValidPortNameMethodBind):
    visualShaderNodeGroupBaseIsValidPortNameMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"is_valid_port_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGroupBaseIsValidPortNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualShaderNodeGroupBaseRemoveInputPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeInputPort(self: VisualShaderNodeGroupBase; id: int64) =
  if isNil(visualShaderNodeGroupBaseRemoveInputPortMethodBind):
    visualShaderNodeGroupBaseRemoveInputPortMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"remove_input_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseRemoveInputPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGroupBaseRemoveOutputPortMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeOutputPort(self: VisualShaderNodeGroupBase; id: int64) =
  if isNil(visualShaderNodeGroupBaseRemoveOutputPortMethodBind):
    visualShaderNodeGroupBaseRemoveOutputPortMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"remove_output_port")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseRemoveOutputPortMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGroupBaseSetInputPortNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputPortName(self: VisualShaderNodeGroupBase; id: int64; name: string) =
  if isNil(visualShaderNodeGroupBaseSetInputPortNameMethodBind):
    visualShaderNodeGroupBaseSetInputPortNameMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"set_input_port_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseSetInputPortNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualShaderNodeGroupBaseSetInputPortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputPortType(self: VisualShaderNodeGroupBase; id: int64; typee: int64) =
  if isNil(visualShaderNodeGroupBaseSetInputPortTypeMethodBind):
    visualShaderNodeGroupBaseSetInputPortTypeMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"set_input_port_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseSetInputPortTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGroupBaseSetInputsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputs(self: VisualShaderNodeGroupBase; inputs: string) =
  if isNil(visualShaderNodeGroupBaseSetInputsMethodBind):
    visualShaderNodeGroupBaseSetInputsMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"set_inputs")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(inputs)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseSetInputsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualShaderNodeGroupBaseSetOutputPortNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOutputPortName(self: VisualShaderNodeGroupBase; id: int64; name: string) =
  if isNil(visualShaderNodeGroupBaseSetOutputPortNameMethodBind):
    visualShaderNodeGroupBaseSetOutputPortNameMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"set_output_port_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseSetOutputPortNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var visualShaderNodeGroupBaseSetOutputPortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOutputPortType(self: VisualShaderNodeGroupBase; id: int64; typee: int64) =
  if isNil(visualShaderNodeGroupBaseSetOutputPortTypeMethodBind):
    visualShaderNodeGroupBaseSetOutputPortTypeMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"set_output_port_type")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseSetOutputPortTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGroupBaseSetOutputsMethodBind {.threadvar.}: ptr GodotMethodBind
proc setOutputs(self: VisualShaderNodeGroupBase; outputs: string) =
  if isNil(visualShaderNodeGroupBaseSetOutputsMethodBind):
    visualShaderNodeGroupBaseSetOutputsMethodBind = getMethod(
        cstring"VisualShaderNodeGroupBase", cstring"set_outputs")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(outputs)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualShaderNodeGroupBaseSetOutputsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
