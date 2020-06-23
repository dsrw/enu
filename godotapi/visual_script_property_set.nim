
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

const
  ASSIGN_OP_ADD* = 1'i64
  ASSIGN_OP_BIT_AND* = 8'i64
  ASSIGN_OP_BIT_OR* = 9'i64
  ASSIGN_OP_BIT_XOR* = 10'i64
  ASSIGN_OP_DIV* = 4'i64
  ASSIGN_OP_MOD* = 5'i64
  ASSIGN_OP_MUL* = 3'i64
  ASSIGN_OP_NONE* = 0'i64
  ASSIGN_OP_SHIFT_LEFT* = 6'i64
  ASSIGN_OP_SHIFT_RIGHT* = 7'i64
  ASSIGN_OP_SUB* = 2'i64
  CALL_MODE_BASIC_TYPE* = 3'i64
  CALL_MODE_INSTANCE* = 2'i64
  CALL_MODE_NODE_PATH* = 1'i64
  CALL_MODE_SELF* = 0'i64
proc assignOp*(self: VisualScriptPropertySet): int64 {.gcsafe, locks: 0.}
proc `assignOp=`*(self: VisualScriptPropertySet; val: int64) {.gcsafe, locks: 0.}
proc baseScript*(self: VisualScriptPropertySet): string {.gcsafe, locks: 0.}
proc `baseScript=`*(self: VisualScriptPropertySet; val: string) {.gcsafe, locks: 0.}
proc baseType*(self: VisualScriptPropertySet): string {.gcsafe, locks: 0.}
proc `baseType=`*(self: VisualScriptPropertySet; val: string) {.gcsafe, locks: 0.}
proc basicType*(self: VisualScriptPropertySet): int64 {.gcsafe, locks: 0.}
proc `basicType=`*(self: VisualScriptPropertySet; val: int64) {.gcsafe, locks: 0.}
proc index*(self: VisualScriptPropertySet): string {.gcsafe, locks: 0.}
proc `index=`*(self: VisualScriptPropertySet; val: string) {.gcsafe, locks: 0.}
proc nodePath*(self: VisualScriptPropertySet): NodePath {.gcsafe, locks: 0.}
proc `nodePath=`*(self: VisualScriptPropertySet; val: NodePath) {.gcsafe, locks: 0.}
proc property*(self: VisualScriptPropertySet): string {.gcsafe, locks: 0.}
proc `property=`*(self: VisualScriptPropertySet; val: string) {.gcsafe, locks: 0.}
proc setMode*(self: VisualScriptPropertySet): int64 {.gcsafe, locks: 0.}
proc `setMode=`*(self: VisualScriptPropertySet; val: int64) {.gcsafe, locks: 0.}
proc typeCache*(self: VisualScriptPropertySet): Dictionary {.gcsafe, locks: 0.}
proc `typeCache=`*(self: VisualScriptPropertySet; val: Dictionary) {.gcsafe, locks: 0.}
var visualScriptPropertySetGetAssignOpMethodBind {.threadvar.}: ptr GodotMethodBind
proc assignOp(self: VisualScriptPropertySet): int64 =
  if isNil(visualScriptPropertySetGetAssignOpMethodBind):
    visualScriptPropertySetGetAssignOpMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_assign_op")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptPropertySetGetAssignOpMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptPropertySetSetAssignOpMethodBind {.threadvar.}: ptr GodotMethodBind
proc `assignOp=`(self: VisualScriptPropertySet; val: int64) =
  if isNil(visualScriptPropertySetSetAssignOpMethodBind):
    visualScriptPropertySetSetAssignOpMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_assign_op")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptPropertySetSetAssignOpMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptPropertySetGetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseScript(self: VisualScriptPropertySet): string =
  if isNil(visualScriptPropertySetGetBaseScriptMethodBind):
    visualScriptPropertySetGetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_base_script")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertySetGetBaseScriptMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertySetSetBaseScriptMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseScript=`(self: VisualScriptPropertySet; val: string) =
  if isNil(visualScriptPropertySetSetBaseScriptMethodBind):
    visualScriptPropertySetSetBaseScriptMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_base_script")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertySetSetBaseScriptMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertySetGetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc baseType(self: VisualScriptPropertySet): string =
  if isNil(visualScriptPropertySetGetBaseTypeMethodBind):
    visualScriptPropertySetGetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_base_type")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertySetGetBaseTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertySetSetBaseTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `baseType=`(self: VisualScriptPropertySet; val: string) =
  if isNil(visualScriptPropertySetSetBaseTypeMethodBind):
    visualScriptPropertySetSetBaseTypeMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_base_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertySetSetBaseTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertySetGetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc basicType(self: VisualScriptPropertySet): int64 =
  if isNil(visualScriptPropertySetGetBasicTypeMethodBind):
    visualScriptPropertySetGetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_basic_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptPropertySetGetBasicTypeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptPropertySetSetBasicTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `basicType=`(self: VisualScriptPropertySet; val: int64) =
  if isNil(visualScriptPropertySetSetBasicTypeMethodBind):
    visualScriptPropertySetSetBasicTypeMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_basic_type")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptPropertySetSetBasicTypeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptPropertySetGetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc index(self: VisualScriptPropertySet): string =
  if isNil(visualScriptPropertySetGetIndexMethodBind):
    visualScriptPropertySetGetIndexMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_index")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertySetGetIndexMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertySetSetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `index=`(self: VisualScriptPropertySet; val: string) =
  if isNil(visualScriptPropertySetSetIndexMethodBind):
    visualScriptPropertySetSetIndexMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertySetSetIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertySetGetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodePath(self: VisualScriptPropertySet): NodePath =
  if isNil(visualScriptPropertySetGetBasePathMethodBind):
    visualScriptPropertySetGetBasePathMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_base_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertySetGetBasePathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var visualScriptPropertySetSetBasePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodePath=`(self: VisualScriptPropertySet; val: NodePath) =
  if isNil(visualScriptPropertySetSetBasePathMethodBind):
    visualScriptPropertySetSetBasePathMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_base_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  visualScriptPropertySetSetBasePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptPropertySetGetPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc property(self: VisualScriptPropertySet): string =
  if isNil(visualScriptPropertySetGetPropertyMethodBind):
    visualScriptPropertySetGetPropertyMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_property")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertySetGetPropertyMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptPropertySetSetPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `property=`(self: VisualScriptPropertySet; val: string) =
  if isNil(visualScriptPropertySetSetPropertyMethodBind):
    visualScriptPropertySetSetPropertyMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_property")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptPropertySetSetPropertyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptPropertySetGetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMode(self: VisualScriptPropertySet): int64 =
  if isNil(visualScriptPropertySetGetCallModeMethodBind):
    visualScriptPropertySetGetCallModeMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"get_call_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptPropertySetGetCallModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var visualScriptPropertySetSetCallModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `setMode=`(self: VisualScriptPropertySet; val: int64) =
  if isNil(visualScriptPropertySetSetCallModeMethodBind):
    visualScriptPropertySetSetCallModeMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"set_call_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptPropertySetSetCallModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptPropertySetUnderscoregetTypeCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc typeCache(self: VisualScriptPropertySet): Dictionary =
  if isNil(visualScriptPropertySetUnderscoregetTypeCacheMethodBind):
    visualScriptPropertySetUnderscoregetTypeCacheMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"_get_type_cache")
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  visualScriptPropertySetUnderscoregetTypeCacheMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)
  result = newDictionary(ptrCallVal)

var visualScriptPropertySetUnderscoresetTypeCacheMethodBind {.threadvar.}: ptr GodotMethodBind
proc `typeCache=`(self: VisualScriptPropertySet; val: Dictionary) =
  if isNil(visualScriptPropertySetUnderscoresetTypeCacheMethodBind):
    visualScriptPropertySetUnderscoresetTypeCacheMethodBind = getMethod(
        cstring"VisualScriptPropertySet", cstring"_set_type_cache")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotDictionary
  var ptrCallRet: pointer
  visualScriptPropertySetUnderscoresetTypeCacheMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
