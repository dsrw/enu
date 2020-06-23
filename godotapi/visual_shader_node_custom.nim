
import
  godot, godottypes, godotinternal, visual_shader_node

export
  godottypes, visual_shader_node

method getCategory*(self: VisualShaderNodeCustom): string {.gcsafe, locks: 0, base.}
method getCode*(self: VisualShaderNodeCustom; inputVars: Array; outputVars: Array;
               mode: int64; typee: int64): string {.gcsafe, locks: 0, base.}
method getDescription*(self: VisualShaderNodeCustom): string {.gcsafe, locks: 0, base.}
method getGlobalCode*(self: VisualShaderNodeCustom; mode: int64): string {.gcsafe,
    locks: 0, base.}
method getInputPortCount*(self: VisualShaderNodeCustom): int64 {.gcsafe, locks: 0, base.}
method getInputPortName*(self: VisualShaderNodeCustom; port: int64): string {.gcsafe,
    locks: 0, base.}
method getInputPortType*(self: VisualShaderNodeCustom; port: int64): int64 {.gcsafe,
    locks: 0, base.}
method getName*(self: VisualShaderNodeCustom): string {.gcsafe, locks: 0, base.}
method getOutputPortCount*(self: VisualShaderNodeCustom): int64 {.gcsafe, locks: 0,
    base.}
method getOutputPortName*(self: VisualShaderNodeCustom; port: int64): string {.gcsafe,
    locks: 0, base.}
method getOutputPortType*(self: VisualShaderNodeCustom; port: int64): int64 {.gcsafe,
    locks: 0, base.}
method getReturnIconType*(self: VisualShaderNodeCustom): int64 {.gcsafe, locks: 0, base.}
method getSubcategory*(self: VisualShaderNodeCustom): string {.gcsafe, locks: 0, base.}
var visualShaderNodeCustomUnderscoregetCategoryMethodBind {.threadvar.}: ptr GodotMethodBind
method getCategory(self: VisualShaderNodeCustom): string =
  if isNil(visualShaderNodeCustomUnderscoregetCategoryMethodBind):
    visualShaderNodeCustomUnderscoregetCategoryMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_category")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetCategoryMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeCustomUnderscoregetCodeMethodBind {.threadvar.}: ptr GodotMethodBind
method getCode(self: VisualShaderNodeCustom; inputVars: Array; outputVars: Array;
              mode: int64; typee: int64): string =
  if isNil(visualShaderNodeCustomUnderscoregetCodeMethodBind):
    visualShaderNodeCustomUnderscoregetCodeMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_code")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = inputVars.godotArray
  argsToPassToGodot[][1] = outputVars.godotArray
  argsToPassToGodot[][2] = unsafeAddr(mode)
  argsToPassToGodot[][3] = unsafeAddr(typee)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetCodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeCustomUnderscoregetDescriptionMethodBind {.threadvar.}: ptr GodotMethodBind
method getDescription(self: VisualShaderNodeCustom): string =
  if isNil(visualShaderNodeCustomUnderscoregetDescriptionMethodBind):
    visualShaderNodeCustomUnderscoregetDescriptionMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_description")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetDescriptionMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeCustomUnderscoregetGlobalCodeMethodBind {.threadvar.}: ptr GodotMethodBind
method getGlobalCode(self: VisualShaderNodeCustom; mode: int64): string =
  if isNil(visualShaderNodeCustomUnderscoregetGlobalCodeMethodBind):
    visualShaderNodeCustomUnderscoregetGlobalCodeMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_global_code")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(mode)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetGlobalCodeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeCustomUnderscoregetInputPortCountMethodBind {.threadvar.}: ptr GodotMethodBind
method getInputPortCount(self: VisualShaderNodeCustom): int64 =
  if isNil(visualShaderNodeCustomUnderscoregetInputPortCountMethodBind):
    visualShaderNodeCustomUnderscoregetInputPortCountMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_input_port_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCustomUnderscoregetInputPortCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeCustomUnderscoregetInputPortNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getInputPortName(self: VisualShaderNodeCustom; port: int64): string =
  if isNil(visualShaderNodeCustomUnderscoregetInputPortNameMethodBind):
    visualShaderNodeCustomUnderscoregetInputPortNameMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_input_port_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetInputPortNameMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeCustomUnderscoregetInputPortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method getInputPortType(self: VisualShaderNodeCustom; port: int64): int64 =
  if isNil(visualShaderNodeCustomUnderscoregetInputPortTypeMethodBind):
    visualShaderNodeCustomUnderscoregetInputPortTypeMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_input_port_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCustomUnderscoregetInputPortTypeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualShaderNodeCustomUnderscoregetNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getName(self: VisualShaderNodeCustom): string =
  if isNil(visualShaderNodeCustomUnderscoregetNameMethodBind):
    visualShaderNodeCustomUnderscoregetNameMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetNameMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeCustomUnderscoregetOutputPortCountMethodBind {.threadvar.}: ptr GodotMethodBind
method getOutputPortCount(self: VisualShaderNodeCustom): int64 =
  if isNil(visualShaderNodeCustomUnderscoregetOutputPortCountMethodBind):
    visualShaderNodeCustomUnderscoregetOutputPortCountMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_output_port_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCustomUnderscoregetOutputPortCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeCustomUnderscoregetOutputPortNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getOutputPortName(self: VisualShaderNodeCustom; port: int64): string =
  if isNil(visualShaderNodeCustomUnderscoregetOutputPortNameMethodBind):
    visualShaderNodeCustomUnderscoregetOutputPortNameMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_output_port_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetOutputPortNameMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualShaderNodeCustomUnderscoregetOutputPortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method getOutputPortType(self: VisualShaderNodeCustom; port: int64): int64 =
  if isNil(visualShaderNodeCustomUnderscoregetOutputPortTypeMethodBind):
    visualShaderNodeCustomUnderscoregetOutputPortTypeMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_output_port_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(port)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCustomUnderscoregetOutputPortTypeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualShaderNodeCustomUnderscoregetReturnIconTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method getReturnIconType(self: VisualShaderNodeCustom): int64 =
  if isNil(visualShaderNodeCustomUnderscoregetReturnIconTypeMethodBind):
    visualShaderNodeCustomUnderscoregetReturnIconTypeMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_return_icon_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualShaderNodeCustomUnderscoregetReturnIconTypeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualShaderNodeCustomUnderscoregetSubcategoryMethodBind {.threadvar.}: ptr GodotMethodBind
method getSubcategory(self: VisualShaderNodeCustom): string =
  if isNil(visualShaderNodeCustomUnderscoregetSubcategoryMethodBind):
    visualShaderNodeCustomUnderscoregetSubcategoryMethodBind = getMethod(
        cstring"VisualShaderNodeCustom", cstring"_get_subcategory")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualShaderNodeCustomUnderscoregetSubcategoryMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)
