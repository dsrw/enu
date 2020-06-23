
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  MERGE_ALL* = 2'i64
  MERGE_DISABLE* = 0'i64
  MERGE_ENDS* = 1'i64
proc addDoMethod*(self: UndoRedo; objectt: Object; methodd: string;
                 variantArgs: varargs[Variant]) {.gcsafe, locks: 0.}
proc addDoProperty*(self: UndoRedo; objectt: Object; property: string; value: Variant) {.
    gcsafe, locks: 0.}
proc addDoReference*(self: UndoRedo; objectt: Object) {.gcsafe, locks: 0.}
proc addUndoMethod*(self: UndoRedo; objectt: Object; methodd: string;
                   variantArgs: varargs[Variant]) {.gcsafe, locks: 0.}
proc addUndoProperty*(self: UndoRedo; objectt: Object; property: string; value: Variant) {.
    gcsafe, locks: 0.}
proc addUndoReference*(self: UndoRedo; objectt: Object) {.gcsafe, locks: 0.}
proc clearHistory*(self: UndoRedo; increaseVersion: bool = true) {.gcsafe, locks: 0.}
proc commitAction*(self: UndoRedo) {.gcsafe, locks: 0.}
proc createAction*(self: UndoRedo; name: string; mergeMode: int64 = 0'i64) {.gcsafe,
    locks: 0.}
proc getCurrentActionName*(self: UndoRedo): string {.gcsafe, locks: 0.}
proc getVersion*(self: UndoRedo): int64 {.gcsafe, locks: 0.}
proc hasRedo*(self: UndoRedo): bool {.gcsafe, locks: 0.}
proc hasUndo*(self: UndoRedo): bool {.gcsafe, locks: 0.}
proc isCommitingAction*(self: UndoRedo): bool {.gcsafe, locks: 0.}
proc redo*(self: UndoRedo): bool {.gcsafe, locks: 0.}
proc undo*(self: UndoRedo): bool {.gcsafe, locks: 0.}
var undoRedoAddDoMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc addDoMethod(self: UndoRedo; objectt: Object; methodd: string;
                variantArgs: varargs[Variant]) =
  if isNil(undoRedoAddDoMethodMethodBind):
    undoRedoAddDoMethodMethodBind = getMethod(cstring"UndoRedo",
        cstring"add_do_method")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(2 + variantArgs.len)))))
  var variant0: GodotVariant
  initGodotVariant(variant0, objectt.godotObject)
  argsToPassToGodot[][0] = addr(variant0)
  var variant1: GodotVariant
  var variantString1: GodotString = toGodotString(methodd)
  initGodotVariant(variant1, variantString1)
  argsToPassToGodot[][1] = addr(variant1)
  var idx = 2
  while idx < cint(2 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 2].godotVariant
    inc idx
  let callRet {.used.} = undoRedoAddDoMethodMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(2 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variant1)
  deinit(variantString1)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  
var undoRedoAddDoPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc addDoProperty(self: UndoRedo; objectt: Object; property: string; value: Variant) =
  if isNil(undoRedoAddDoPropertyMethodBind):
    undoRedoAddDoPropertyMethodBind = getMethod(cstring"UndoRedo",
        cstring"add_do_property")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  undoRedoAddDoPropertyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var undoRedoAddDoReferenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addDoReference(self: UndoRedo; objectt: Object) =
  if isNil(undoRedoAddDoReferenceMethodBind):
    undoRedoAddDoReferenceMethodBind = getMethod(cstring"UndoRedo",
        cstring"add_do_reference")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  undoRedoAddDoReferenceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var undoRedoAddUndoMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc addUndoMethod(self: UndoRedo; objectt: Object; methodd: string;
                  variantArgs: varargs[Variant]) =
  if isNil(undoRedoAddUndoMethodMethodBind):
    undoRedoAddUndoMethodMethodBind = getMethod(cstring"UndoRedo",
        cstring"add_undo_method")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(2 + variantArgs.len)))))
  var variant0: GodotVariant
  initGodotVariant(variant0, objectt.godotObject)
  argsToPassToGodot[][0] = addr(variant0)
  var variant1: GodotVariant
  var variantString1: GodotString = toGodotString(methodd)
  initGodotVariant(variant1, variantString1)
  argsToPassToGodot[][1] = addr(variant1)
  var idx = 2
  while idx < cint(2 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 2].godotVariant
    inc idx
  let callRet {.used.} = undoRedoAddUndoMethodMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(2 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variant1)
  deinit(variantString1)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  
var undoRedoAddUndoPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc addUndoProperty(self: UndoRedo; objectt: Object; property: string; value: Variant) =
  if isNil(undoRedoAddUndoPropertyMethodBind):
    undoRedoAddUndoPropertyMethodBind = getMethod(cstring"UndoRedo",
        cstring"add_undo_property")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  undoRedoAddUndoPropertyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var undoRedoAddUndoReferenceMethodBind {.threadvar.}: ptr GodotMethodBind
proc addUndoReference(self: UndoRedo; objectt: Object) =
  if isNil(undoRedoAddUndoReferenceMethodBind):
    undoRedoAddUndoReferenceMethodBind = getMethod(cstring"UndoRedo",
        cstring"add_undo_reference")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  undoRedoAddUndoReferenceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var undoRedoClearHistoryMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearHistory(self: UndoRedo; increaseVersion: bool = true) =
  if isNil(undoRedoClearHistoryMethodBind):
    undoRedoClearHistoryMethodBind = getMethod(cstring"UndoRedo",
        cstring"clear_history")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(increaseVersion)
  var ptrCallRet: pointer
  undoRedoClearHistoryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var undoRedoCommitActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc commitAction(self: UndoRedo) =
  if isNil(undoRedoCommitActionMethodBind):
    undoRedoCommitActionMethodBind = getMethod(cstring"UndoRedo",
        cstring"commit_action")
  var ptrCallRet: pointer
  undoRedoCommitActionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var undoRedoCreateActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc createAction(self: UndoRedo; name: string; mergeMode: int64 = 0'i64) =
  if isNil(undoRedoCreateActionMethodBind):
    undoRedoCreateActionMethodBind = getMethod(cstring"UndoRedo",
        cstring"create_action")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(mergeMode)
  var ptrCallRet: pointer
  undoRedoCreateActionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var undoRedoGetCurrentActionNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentActionName(self: UndoRedo): string =
  if isNil(undoRedoGetCurrentActionNameMethodBind):
    undoRedoGetCurrentActionNameMethodBind = getMethod(cstring"UndoRedo",
        cstring"get_current_action_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  undoRedoGetCurrentActionNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var undoRedoGetVersionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVersion(self: UndoRedo): int64 =
  if isNil(undoRedoGetVersionMethodBind):
    undoRedoGetVersionMethodBind = getMethod(cstring"UndoRedo",
        cstring"get_version")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  undoRedoGetVersionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var undoRedoHasRedoMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasRedo(self: UndoRedo): bool =
  if isNil(undoRedoHasRedoMethodBind):
    undoRedoHasRedoMethodBind = getMethod(cstring"UndoRedo", cstring"has_redo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  undoRedoHasRedoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var undoRedoHasUndoMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasUndo(self: UndoRedo): bool =
  if isNil(undoRedoHasUndoMethodBind):
    undoRedoHasUndoMethodBind = getMethod(cstring"UndoRedo", cstring"has_undo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  undoRedoHasUndoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var undoRedoIsCommitingActionMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCommitingAction(self: UndoRedo): bool =
  if isNil(undoRedoIsCommitingActionMethodBind):
    undoRedoIsCommitingActionMethodBind = getMethod(cstring"UndoRedo",
        cstring"is_commiting_action")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  undoRedoIsCommitingActionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var undoRedoRedoMethodBind {.threadvar.}: ptr GodotMethodBind
proc redo(self: UndoRedo): bool =
  if isNil(undoRedoRedoMethodBind):
    undoRedoRedoMethodBind = getMethod(cstring"UndoRedo", cstring"redo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  undoRedoRedoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var undoRedoUndoMethodBind {.threadvar.}: ptr GodotMethodBind
proc undo(self: UndoRedo): bool =
  if isNil(undoRedoUndoMethodBind):
    undoRedoUndoMethodBind = getMethod(cstring"UndoRedo", cstring"undo")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  undoRedoUndoMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
