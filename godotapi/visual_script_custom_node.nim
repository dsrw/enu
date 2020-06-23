
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  START_MODE_BEGIN_SEQUENCE* = 0'i64
  START_MODE_CONTINUE_SEQUENCE* = 1'i64
  START_MODE_RESUME_YIELD* = 2'i64
  STEP_EXIT_FUNCTION_BIT* = 134217728'i64
  STEP_GO_BACK_BIT* = 33554432'i64
  STEP_NO_ADVANCE_BIT* = 67108864'i64
  STEP_PUSH_STACK_BIT* = 16777216'i64
  STEP_YIELD_BIT* = 268435456'i64
method getCaption*(self: VisualScriptCustomNode): string {.gcsafe, locks: 0, base.}
method getCategory*(self: VisualScriptCustomNode): string {.gcsafe, locks: 0, base.}
method getInputValuePortCount*(self: VisualScriptCustomNode): int64 {.gcsafe,
    locks: 0, base.}
method getInputValuePortName*(self: VisualScriptCustomNode; idx: int64): string {.
    gcsafe, locks: 0, base.}
method getInputValuePortType*(self: VisualScriptCustomNode; idx: int64): int64 {.
    gcsafe, locks: 0, base.}
method getOutputSequencePortCount*(self: VisualScriptCustomNode): int64 {.gcsafe,
    locks: 0, base.}
method getOutputSequencePortText*(self: VisualScriptCustomNode; idx: int64): string {.
    gcsafe, locks: 0, base.}
method getOutputValuePortCount*(self: VisualScriptCustomNode): int64 {.gcsafe,
    locks: 0, base.}
method getOutputValuePortName*(self: VisualScriptCustomNode; idx: int64): string {.
    gcsafe, locks: 0, base.}
method getOutputValuePortType*(self: VisualScriptCustomNode; idx: int64): int64 {.
    gcsafe, locks: 0, base.}
method getText*(self: VisualScriptCustomNode): string {.gcsafe, locks: 0, base.}
method getWorkingMemorySize*(self: VisualScriptCustomNode): int64 {.gcsafe, locks: 0,
    base.}
method hasInputSequencePort*(self: VisualScriptCustomNode): bool {.gcsafe, locks: 0,
    base.}
method scriptChanged*(self: VisualScriptCustomNode) {.gcsafe, locks: 0, base.}
method step*(self: VisualScriptCustomNode; inputs: Array; outputs: Array;
            startMode: int64; workingMem: Array): Variant {.gcsafe, locks: 0, base.}
var visualScriptCustomNodeUnderscoregetCaptionMethodBind {.threadvar.}: ptr GodotMethodBind
method getCaption(self: VisualScriptCustomNode): string =
  if isNil(visualScriptCustomNodeUnderscoregetCaptionMethodBind):
    visualScriptCustomNodeUnderscoregetCaptionMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_caption")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomNodeUnderscoregetCaptionMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCustomNodeUnderscoregetCategoryMethodBind {.threadvar.}: ptr GodotMethodBind
method getCategory(self: VisualScriptCustomNode): string =
  if isNil(visualScriptCustomNodeUnderscoregetCategoryMethodBind):
    visualScriptCustomNodeUnderscoregetCategoryMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_category")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomNodeUnderscoregetCategoryMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCustomNodeUnderscoregetInputValuePortCountMethodBind {.threadvar.}: ptr GodotMethodBind
method getInputValuePortCount(self: VisualScriptCustomNode): int64 =
  if isNil(visualScriptCustomNodeUnderscoregetInputValuePortCountMethodBind):
    visualScriptCustomNodeUnderscoregetInputValuePortCountMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_input_value_port_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomNodeUnderscoregetInputValuePortCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptCustomNodeUnderscoregetInputValuePortNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getInputValuePortName(self: VisualScriptCustomNode; idx: int64): string =
  if isNil(visualScriptCustomNodeUnderscoregetInputValuePortNameMethodBind):
    visualScriptCustomNodeUnderscoregetInputValuePortNameMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_input_value_port_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomNodeUnderscoregetInputValuePortNameMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCustomNodeUnderscoregetInputValuePortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method getInputValuePortType(self: VisualScriptCustomNode; idx: int64): int64 =
  if isNil(visualScriptCustomNodeUnderscoregetInputValuePortTypeMethodBind):
    visualScriptCustomNodeUnderscoregetInputValuePortTypeMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_input_value_port_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomNodeUnderscoregetInputValuePortTypeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualScriptCustomNodeUnderscoregetOutputSequencePortCountMethodBind
    {.threadvar.}: ptr GodotMethodBind
method getOutputSequencePortCount(self: VisualScriptCustomNode): int64 =
  if isNil(visualScriptCustomNodeUnderscoregetOutputSequencePortCountMethodBind):
    visualScriptCustomNodeUnderscoregetOutputSequencePortCountMethodBind = getMethod(
        cstring"VisualScriptCustomNode",
        cstring"_get_output_sequence_port_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomNodeUnderscoregetOutputSequencePortCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptCustomNodeUnderscoregetOutputSequencePortTextMethodBind
    {.threadvar.}: ptr GodotMethodBind
method getOutputSequencePortText(self: VisualScriptCustomNode; idx: int64): string =
  if isNil(visualScriptCustomNodeUnderscoregetOutputSequencePortTextMethodBind):
    visualScriptCustomNodeUnderscoregetOutputSequencePortTextMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_output_sequence_port_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomNodeUnderscoregetOutputSequencePortTextMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCustomNodeUnderscoregetOutputValuePortCountMethodBind
    {.threadvar.}: ptr GodotMethodBind
method getOutputValuePortCount(self: VisualScriptCustomNode): int64 =
  if isNil(visualScriptCustomNodeUnderscoregetOutputValuePortCountMethodBind):
    visualScriptCustomNodeUnderscoregetOutputValuePortCountMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_output_value_port_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomNodeUnderscoregetOutputValuePortCountMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptCustomNodeUnderscoregetOutputValuePortNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getOutputValuePortName(self: VisualScriptCustomNode; idx: int64): string =
  if isNil(visualScriptCustomNodeUnderscoregetOutputValuePortNameMethodBind):
    visualScriptCustomNodeUnderscoregetOutputValuePortNameMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_output_value_port_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomNodeUnderscoregetOutputValuePortNameMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCustomNodeUnderscoregetOutputValuePortTypeMethodBind {.threadvar.}: ptr GodotMethodBind
method getOutputValuePortType(self: VisualScriptCustomNode; idx: int64): int64 =
  if isNil(visualScriptCustomNodeUnderscoregetOutputValuePortTypeMethodBind):
    visualScriptCustomNodeUnderscoregetOutputValuePortTypeMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_output_value_port_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomNodeUnderscoregetOutputValuePortTypeMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var visualScriptCustomNodeUnderscoregetTextMethodBind {.threadvar.}: ptr GodotMethodBind
method getText(self: VisualScriptCustomNode): string =
  if isNil(visualScriptCustomNodeUnderscoregetTextMethodBind):
    visualScriptCustomNodeUnderscoregetTextMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomNodeUnderscoregetTextMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCustomNodeUnderscoregetWorkingMemorySizeMethodBind {.threadvar.}: ptr GodotMethodBind
method getWorkingMemorySize(self: VisualScriptCustomNode): int64 =
  if isNil(visualScriptCustomNodeUnderscoregetWorkingMemorySizeMethodBind):
    visualScriptCustomNodeUnderscoregetWorkingMemorySizeMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_get_working_memory_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomNodeUnderscoregetWorkingMemorySizeMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptCustomNodeUnderscorehasInputSequencePortMethodBind {.threadvar.}: ptr GodotMethodBind
method hasInputSequencePort(self: VisualScriptCustomNode): bool =
  if isNil(visualScriptCustomNodeUnderscorehasInputSequencePortMethodBind):
    visualScriptCustomNodeUnderscorehasInputSequencePortMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_has_input_sequence_port")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCustomNodeUnderscorehasInputSequencePortMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptCustomNodeUnderscorescriptChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method scriptChanged(self: VisualScriptCustomNode) =
  if isNil(visualScriptCustomNodeUnderscorescriptChangedMethodBind):
    visualScriptCustomNodeUnderscorescriptChangedMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_script_changed")
  var ptrCallRet: pointer
  visualScriptCustomNodeUnderscorescriptChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var visualScriptCustomNodeUnderscorestepMethodBind {.threadvar.}: ptr GodotMethodBind
method step(self: VisualScriptCustomNode; inputs: Array; outputs: Array;
           startMode: int64; workingMem: Array): Variant =
  if isNil(visualScriptCustomNodeUnderscorestepMethodBind):
    visualScriptCustomNodeUnderscorestepMethodBind = getMethod(
        cstring"VisualScriptCustomNode", cstring"_step")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = inputs.godotArray
  argsToPassToGodot[][1] = outputs.godotArray
  argsToPassToGodot[][2] = unsafeAddr(startMode)
  argsToPassToGodot[][3] = workingMem.godotArray
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  visualScriptCustomNodeUnderscorestepMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)
