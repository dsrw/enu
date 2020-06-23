
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  PORT_TYPE_BOOLEAN* = 2'i64
  PORT_TYPE_MAX* = 5'i64
  PORT_TYPE_SAMPLER* = 4'i64
  PORT_TYPE_SCALAR* = 0'i64
  PORT_TYPE_TRANSFORM* = 3'i64
  PORT_TYPE_VECTOR* = 1'i64
proc defaultInputValues*(self: VisualShaderNode): Array {.gcsafe, locks: 0.}
proc `defaultInputValues=`*(self: VisualShaderNode; val: Array) {.gcsafe, locks: 0.}
proc outputPortForPreview*(self: VisualShaderNode): int64 {.gcsafe, locks: 0.}
proc `outputPortForPreview=`*(self: VisualShaderNode; val: int64) {.gcsafe, locks: 0.}
proc getInputPortDefaultValue*(self: VisualShaderNode; port: int64): Variant {.gcsafe,
    locks: 0.}
proc setInputPortDefaultValue*(self: VisualShaderNode; port: int64; value: Variant) {.
    gcsafe, locks: 0.}
var visualShaderNodeGetDefaultInputValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc defaultInputValues(self: VisualShaderNode): Array =
  if isNil(visualShaderNodeGetDefaultInputValuesMethodBind):
    visualShaderNodeGetDefaultInputValuesMethodBind = getMethod(
        cstring"VisualShaderNode", cstring"get_default_input_values")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeGetDefaultInputValuesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var visualShaderNodeSetDefaultInputValuesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `defaultInputValues=`(self: VisualShaderNode; val: Array) =
  if isNil(visualShaderNodeSetDefaultInputValuesMethodBind):
    visualShaderNodeSetDefaultInputValuesMethodBind = getMethod(
        cstring"VisualShaderNode", cstring"set_default_input_values")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  visualShaderNodeSetDefaultInputValuesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGetOutputPortForPreviewMethodBind {.threadvar.}: ptr GodotMethodBind
proc outputPortForPreview(self: VisualShaderNode): int64 =
  if isNil(visualShaderNodeGetOutputPortForPreviewMethodBind):
    visualShaderNodeGetOutputPortForPreviewMethodBind = getMethod(
        cstring"VisualShaderNode", cstring"get_output_port_for_preview")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeGetOutputPortForPreviewMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var visualShaderNodeSetOutputPortForPreviewMethodBind {.threadvar.}: ptr GodotMethodBind
proc `outputPortForPreview=`(self: VisualShaderNode; val: int64) =
  if isNil(visualShaderNodeSetOutputPortForPreviewMethodBind):
    visualShaderNodeSetOutputPortForPreviewMethodBind = getMethod(
        cstring"VisualShaderNode", cstring"set_output_port_for_preview")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualShaderNodeSetOutputPortForPreviewMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualShaderNodeGetInputPortDefaultValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInputPortDefaultValue(self: VisualShaderNode; port: int64): Variant =
  if isNil(visualShaderNodeGetInputPortDefaultValueMethodBind):
    visualShaderNodeGetInputPortDefaultValueMethodBind = getMethod(
        cstring"VisualShaderNode", cstring"get_input_port_default_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeGetInputPortDefaultValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var visualShaderNodeSetInputPortDefaultValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc setInputPortDefaultValue(self: VisualShaderNode; port: int64; value: Variant) =
  if isNil(visualShaderNodeSetInputPortDefaultValueMethodBind):
    visualShaderNodeSetInputPortDefaultValueMethodBind = getMethod(
        cstring"VisualShaderNode", cstring"set_input_port_default_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  visualShaderNodeSetInputPortDefaultValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
