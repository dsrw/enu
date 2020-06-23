
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  FILTER_BLEND* = 3'i64
  FILTER_IGNORE* = 0'i64
  FILTER_PASS* = 1'i64
  FILTER_STOP* = 2'i64
proc filterEnabled*(self: AnimationNode): bool {.gcsafe, locks: 0.}
proc `filterEnabled=`*(self: AnimationNode; val: bool) {.gcsafe, locks: 0.}
proc filters*(self: AnimationNode): Array {.gcsafe, locks: 0.}
proc `filters=`*(self: AnimationNode; val: Array) {.gcsafe, locks: 0.}
proc addInput*(self: AnimationNode; name: string) {.gcsafe, locks: 0.}
proc blendAnimation*(self: AnimationNode; animation: string; time: float64;
                    delta: float64; seeked: bool; blend: float64) {.gcsafe, locks: 0.}
proc blendInput*(self: AnimationNode; inputIndex: int64; time: float64; seek: bool;
                blend: float64; filter: int64 = 0'i64; optimize: bool = true): float64 {.
    gcsafe, locks: 0.}
proc blendNode*(self: AnimationNode; name: string; node: AnimationNode; time: float64;
               seek: bool; blend: float64; filter: int64 = 0'i64; optimize: bool = true): float64 {.
    gcsafe, locks: 0.}
method getCaption*(self: AnimationNode): string {.gcsafe, locks: 0, base.}
method getChildByName*(self: AnimationNode; name: string): Object {.gcsafe, locks: 0,
    base.}
method getChildNodes*(self: AnimationNode): Dictionary {.gcsafe, locks: 0, base.}
proc getInputCount*(self: AnimationNode): int64 {.gcsafe, locks: 0.}
proc getInputName*(self: AnimationNode; input: int64): string {.gcsafe, locks: 0.}
proc getParameter*(self: AnimationNode; name: string): Variant {.gcsafe, locks: 0.}
method getParameterDefaultValue*(self: AnimationNode; name: string): Variant {.gcsafe,
    locks: 0, base.}
method getParameterList*(self: AnimationNode): Array {.gcsafe, locks: 0, base.}
method hasFilter*(self: AnimationNode): string {.gcsafe, locks: 0, base.}
proc isPathFiltered*(self: AnimationNode; path: NodePath): bool {.gcsafe, locks: 0.}
method process*(self: AnimationNode; time: float64; seek: bool) {.gcsafe, locks: 0, base.}
proc removeInput*(self: AnimationNode; index: int64) {.gcsafe, locks: 0.}
proc setFilterPath*(self: AnimationNode; path: NodePath; enable: bool) {.gcsafe,
    locks: 0.}
proc setParameter*(self: AnimationNode; name: string; value: Variant) {.gcsafe, locks: 0.}
var animationNodeIsFilterEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc filterEnabled(self: AnimationNode): bool =
  if isNil(animationNodeIsFilterEnabledMethodBind):
    animationNodeIsFilterEnabledMethodBind = getMethod(cstring"AnimationNode",
        cstring"is_filter_enabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeIsFilterEnabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationNodeSetFilterEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filterEnabled=`(self: AnimationNode; val: bool) =
  if isNil(animationNodeSetFilterEnabledMethodBind):
    animationNodeSetFilterEnabledMethodBind = getMethod(cstring"AnimationNode",
        cstring"set_filter_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  animationNodeSetFilterEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeUnderscoregetFiltersMethodBind {.threadvar.}: ptr GodotMethodBind
proc filters(self: AnimationNode): Array =
  if isNil(animationNodeUnderscoregetFiltersMethodBind):
    animationNodeUnderscoregetFiltersMethodBind = getMethod(
        cstring"AnimationNode", cstring"_get_filters")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  animationNodeUnderscoregetFiltersMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var animationNodeUnderscoresetFiltersMethodBind {.threadvar.}: ptr GodotMethodBind
proc `filters=`(self: AnimationNode; val: Array) =
  if isNil(animationNodeUnderscoresetFiltersMethodBind):
    animationNodeUnderscoresetFiltersMethodBind = getMethod(
        cstring"AnimationNode", cstring"_set_filters")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  animationNodeUnderscoresetFiltersMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeAddInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc addInput(self: AnimationNode; name: string) =
  if isNil(animationNodeAddInputMethodBind):
    animationNodeAddInputMethodBind = getMethod(cstring"AnimationNode",
        cstring"add_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  animationNodeAddInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendAnimation(self: AnimationNode; animation: string; time: float64;
                   delta: float64; seeked: bool; blend: float64) =
  if isNil(animationNodeBlendAnimationMethodBind):
    animationNodeBlendAnimationMethodBind = getMethod(cstring"AnimationNode",
        cstring"blend_animation")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(animation)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(time)
  argsToPassToGodot[][2] = unsafeAddr(delta)
  argsToPassToGodot[][3] = unsafeAddr(seeked)
  argsToPassToGodot[][4] = unsafeAddr(blend)
  var ptrCallRet: pointer
  animationNodeBlendAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeBlendInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendInput(self: AnimationNode; inputIndex: int64; time: float64; seek: bool;
               blend: float64; filter: int64 = 0'i64; optimize: bool = true): float64 =
  if isNil(animationNodeBlendInputMethodBind):
    animationNodeBlendInputMethodBind = getMethod(cstring"AnimationNode",
        cstring"blend_input")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(inputIndex)
  argsToPassToGodot[][1] = unsafeAddr(time)
  argsToPassToGodot[][2] = unsafeAddr(seek)
  argsToPassToGodot[][3] = unsafeAddr(blend)
  argsToPassToGodot[][4] = unsafeAddr(filter)
  argsToPassToGodot[][5] = unsafeAddr(optimize)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationNodeBlendNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendNode(self: AnimationNode; name: string; node: AnimationNode; time: float64;
              seek: bool; blend: float64; filter: int64 = 0'i64; optimize: bool = true): float64 =
  if isNil(animationNodeBlendNodeMethodBind):
    animationNodeBlendNodeMethodBind = getMethod(cstring"AnimationNode",
        cstring"blend_node")
  var
    argsStatic: array[7, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(time)
  argsToPassToGodot[][3] = unsafeAddr(seek)
  argsToPassToGodot[][4] = unsafeAddr(blend)
  argsToPassToGodot[][5] = unsafeAddr(filter)
  argsToPassToGodot[][6] = unsafeAddr(optimize)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeBlendNodeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var animationNodeGetCaptionMethodBind {.threadvar.}: ptr GodotMethodBind
method getCaption(self: AnimationNode): string =
  if isNil(animationNodeGetCaptionMethodBind):
    animationNodeGetCaptionMethodBind = getMethod(cstring"AnimationNode",
        cstring"get_caption")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeGetCaptionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeGetChildByNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getChildByName(self: AnimationNode; name: string): Object =
  if isNil(animationNodeGetChildByNameMethodBind):
    animationNodeGetChildByNameMethodBind = getMethod(cstring"AnimationNode",
        cstring"get_child_by_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  animationNodeGetChildByNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var animationNodeGetChildNodesMethodBind {.threadvar.}: ptr GodotMethodBind
method getChildNodes(self: AnimationNode): Dictionary =
  if isNil(animationNodeGetChildNodesMethodBind):
    animationNodeGetChildNodesMethodBind = getMethod(cstring"AnimationNode",
        cstring"get_child_nodes")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  animationNodeGetChildNodesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var animationNodeGetInputCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInputCount(self: AnimationNode): int64 =
  if isNil(animationNodeGetInputCountMethodBind):
    animationNodeGetInputCountMethodBind = getMethod(cstring"AnimationNode",
        cstring"get_input_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeGetInputCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var animationNodeGetInputNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInputName(self: AnimationNode; input: int64): string =
  if isNil(animationNodeGetInputNameMethodBind):
    animationNodeGetInputNameMethodBind = getMethod(cstring"AnimationNode",
        cstring"get_input_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(input)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeGetInputNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeGetParameterMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParameter(self: AnimationNode; name: string): Variant =
  if isNil(animationNodeGetParameterMethodBind):
    animationNodeGetParameterMethodBind = getMethod(cstring"AnimationNode",
        cstring"get_parameter")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  animationNodeGetParameterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var animationNodeGetParameterDefaultValueMethodBind {.threadvar.}: ptr GodotMethodBind
method getParameterDefaultValue(self: AnimationNode; name: string): Variant =
  if isNil(animationNodeGetParameterDefaultValueMethodBind):
    animationNodeGetParameterDefaultValueMethodBind = getMethod(
        cstring"AnimationNode", cstring"get_parameter_default_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  animationNodeGetParameterDefaultValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var animationNodeGetParameterListMethodBind {.threadvar.}: ptr GodotMethodBind
method getParameterList(self: AnimationNode): Array =
  if isNil(animationNodeGetParameterListMethodBind):
    animationNodeGetParameterListMethodBind = getMethod(cstring"AnimationNode",
        cstring"get_parameter_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  animationNodeGetParameterListMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var animationNodeHasFilterMethodBind {.threadvar.}: ptr GodotMethodBind
method hasFilter(self: AnimationNode): string =
  if isNil(animationNodeHasFilterMethodBind):
    animationNodeHasFilterMethodBind = getMethod(cstring"AnimationNode",
        cstring"has_filter")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  animationNodeHasFilterMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var animationNodeIsPathFilteredMethodBind {.threadvar.}: ptr GodotMethodBind
proc isPathFiltered(self: AnimationNode; path: NodePath): bool =
  if isNil(animationNodeIsPathFilteredMethodBind):
    animationNodeIsPathFilteredMethodBind = getMethod(cstring"AnimationNode",
        cstring"is_path_filtered")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  animationNodeIsPathFilteredMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeProcessMethodBind {.threadvar.}: ptr GodotMethodBind
method process(self: AnimationNode; time: float64; seek: bool) =
  if isNil(animationNodeProcessMethodBind):
    animationNodeProcessMethodBind = getMethod(cstring"AnimationNode",
        cstring"process")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(time)
  argsToPassToGodot[][1] = unsafeAddr(seek)
  var ptrCallRet: pointer
  animationNodeProcessMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationNodeRemoveInputMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeInput(self: AnimationNode; index: int64) =
  if isNil(animationNodeRemoveInputMethodBind):
    animationNodeRemoveInputMethodBind = getMethod(cstring"AnimationNode",
        cstring"remove_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  animationNodeRemoveInputMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var animationNodeSetFilterPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc setFilterPath(self: AnimationNode; path: NodePath; enable: bool) =
  if isNil(animationNodeSetFilterPathMethodBind):
    animationNodeSetFilterPathMethodBind = getMethod(cstring"AnimationNode",
        cstring"set_filter_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = path.godotNodePath
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  animationNodeSetFilterPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var animationNodeSetParameterMethodBind {.threadvar.}: ptr GodotMethodBind
proc setParameter(self: AnimationNode; name: string; value: Variant) =
  if isNil(animationNodeSetParameterMethodBind):
    animationNodeSetParameterMethodBind = getMethod(cstring"AnimationNode",
        cstring"set_parameter")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = value.godotVariant
  var ptrCallRet: pointer
  animationNodeSetParameterMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
