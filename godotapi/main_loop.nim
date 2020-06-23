
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  NOTIFICATION_APP_PAUSED* = 1015'i64
  NOTIFICATION_APP_RESUMED* = 1014'i64
  NOTIFICATION_CRASH* = 1012'i64
  NOTIFICATION_OS_IME_UPDATE* = 1013'i64
  NOTIFICATION_OS_MEMORY_WARNING* = 1009'i64
  NOTIFICATION_TRANSLATION_CHANGED* = 1010'i64
  NOTIFICATION_WM_ABOUT* = 1011'i64
  NOTIFICATION_WM_FOCUS_IN* = 1004'i64
  NOTIFICATION_WM_FOCUS_OUT* = 1005'i64
  NOTIFICATION_WM_GO_BACK_REQUEST* = 1007'i64
  NOTIFICATION_WM_MOUSE_ENTER* = 1002'i64
  NOTIFICATION_WM_MOUSE_EXIT* = 1003'i64
  NOTIFICATION_WM_QUIT_REQUEST* = 1006'i64
  NOTIFICATION_WM_UNFOCUS_REQUEST* = 1008'i64
method dropFiles*(self: MainLoop; files: PoolStringArray; fromScreen: int64) {.gcsafe,
    locks: 0, base.}
method finalize*(self: MainLoop) {.gcsafe, locks: 0, base.}
method globalMenuAction*(self: MainLoop; id: Variant; meta: Variant) {.gcsafe, locks: 0,
    base.}
method idle*(self: MainLoop; delta: float64): bool {.gcsafe, locks: 0, base.}
method initialize*(self: MainLoop) {.gcsafe, locks: 0, base.}
method inputEvent*(self: MainLoop; event: InputEvent) {.gcsafe, locks: 0, base.}
method inputText*(self: MainLoop; text: string) {.gcsafe, locks: 0, base.}
method iteration*(self: MainLoop; delta: float64): bool {.gcsafe, locks: 0, base.}
proc finish*(self: MainLoop) {.gcsafe, locks: 0.}
proc idleImpl*(self: MainLoop; delta: float64): bool {.gcsafe, locks: 0.}
proc init*(self: MainLoop) {.gcsafe, locks: 0.}
proc inputEventImpl*(self: MainLoop; event: InputEvent) {.gcsafe, locks: 0.}
proc inputTextImpl*(self: MainLoop; text: string) {.gcsafe, locks: 0.}
proc iterationImpl*(self: MainLoop; delta: float64): bool {.gcsafe, locks: 0.}
var mainLoopUnderscoredropFilesMethodBind {.threadvar.}: ptr GodotMethodBind
method dropFiles(self: MainLoop; files: PoolStringArray; fromScreen: int64) =
  if isNil(mainLoopUnderscoredropFilesMethodBind):
    mainLoopUnderscoredropFilesMethodBind = getMethod(cstring"MainLoop",
        cstring"_drop_files")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = files.godotPoolStringArray
  argsToPassToGodot[][1] = unsafeAddr(fromScreen)
  var ptrCallRet: pointer
  mainLoopUnderscoredropFilesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var mainLoopUnderscorefinalizeMethodBind {.threadvar.}: ptr GodotMethodBind
method finalize(self: MainLoop) =
  if isNil(mainLoopUnderscorefinalizeMethodBind):
    mainLoopUnderscorefinalizeMethodBind = getMethod(cstring"MainLoop",
        cstring"_finalize")
  var ptrCallRet: pointer
  mainLoopUnderscorefinalizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mainLoopUnderscoreglobalMenuActionMethodBind {.threadvar.}: ptr GodotMethodBind
method globalMenuAction(self: MainLoop; id: Variant; meta: Variant) =
  if isNil(mainLoopUnderscoreglobalMenuActionMethodBind):
    mainLoopUnderscoreglobalMenuActionMethodBind = getMethod(cstring"MainLoop",
        cstring"_global_menu_action")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = id.godotVariant
  argsToPassToGodot[][1] = meta.godotVariant
  var ptrCallRet: pointer
  mainLoopUnderscoreglobalMenuActionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var mainLoopUnderscoreidleMethodBind {.threadvar.}: ptr GodotMethodBind
method idle(self: MainLoop; delta: float64): bool =
  if isNil(mainLoopUnderscoreidleMethodBind):
    mainLoopUnderscoreidleMethodBind = getMethod(cstring"MainLoop", cstring"_idle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mainLoopUnderscoreidleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var mainLoopUnderscoreinitializeMethodBind {.threadvar.}: ptr GodotMethodBind
method initialize(self: MainLoop) =
  if isNil(mainLoopUnderscoreinitializeMethodBind):
    mainLoopUnderscoreinitializeMethodBind = getMethod(cstring"MainLoop",
        cstring"_initialize")
  var ptrCallRet: pointer
  mainLoopUnderscoreinitializeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mainLoopUnderscoreinputEventMethodBind {.threadvar.}: ptr GodotMethodBind
method inputEvent(self: MainLoop; event: InputEvent) =
  if isNil(mainLoopUnderscoreinputEventMethodBind):
    mainLoopUnderscoreinputEventMethodBind = getMethod(cstring"MainLoop",
        cstring"_input_event")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  mainLoopUnderscoreinputEventMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var mainLoopUnderscoreinputTextMethodBind {.threadvar.}: ptr GodotMethodBind
method inputText(self: MainLoop; text: string) =
  if isNil(mainLoopUnderscoreinputTextMethodBind):
    mainLoopUnderscoreinputTextMethodBind = getMethod(cstring"MainLoop",
        cstring"_input_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  mainLoopUnderscoreinputTextMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var mainLoopUnderscoreiterationMethodBind {.threadvar.}: ptr GodotMethodBind
method iteration(self: MainLoop; delta: float64): bool =
  if isNil(mainLoopUnderscoreiterationMethodBind):
    mainLoopUnderscoreiterationMethodBind = getMethod(cstring"MainLoop",
        cstring"_iteration")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mainLoopUnderscoreiterationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var mainLoopFinishMethodBind {.threadvar.}: ptr GodotMethodBind
proc finish(self: MainLoop) =
  if isNil(mainLoopFinishMethodBind):
    mainLoopFinishMethodBind = getMethod(cstring"MainLoop", cstring"finish")
  var ptrCallRet: pointer
  mainLoopFinishMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mainLoopIdleMethodBind {.threadvar.}: ptr GodotMethodBind
proc idleImpl(self: MainLoop; delta: float64): bool =
  if isNil(mainLoopIdleMethodBind):
    mainLoopIdleMethodBind = getMethod(cstring"MainLoop", cstring"idle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mainLoopIdleMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var mainLoopInitMethodBind {.threadvar.}: ptr GodotMethodBind
proc init(self: MainLoop) =
  if isNil(mainLoopInitMethodBind):
    mainLoopInitMethodBind = getMethod(cstring"MainLoop", cstring"init")
  var ptrCallRet: pointer
  mainLoopInitMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var mainLoopInputEventMethodBind {.threadvar.}: ptr GodotMethodBind
proc inputEventImpl(self: MainLoop; event: InputEvent) =
  if isNil(mainLoopInputEventMethodBind):
    mainLoopInputEventMethodBind = getMethod(cstring"MainLoop",
        cstring"input_event")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  mainLoopInputEventMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var mainLoopInputTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc inputTextImpl(self: MainLoop; text: string) =
  if isNil(mainLoopInputTextMethodBind):
    mainLoopInputTextMethodBind = getMethod(cstring"MainLoop", cstring"input_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  mainLoopInputTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var mainLoopIterationMethodBind {.threadvar.}: ptr GodotMethodBind
proc iterationImpl(self: MainLoop; delta: float64): bool =
  if isNil(mainLoopIterationMethodBind):
    mainLoopIterationMethodBind = getMethod(cstring"MainLoop", cstring"iteration")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(delta)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  mainLoopIterationMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
