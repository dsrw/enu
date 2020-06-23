
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc locale*(self: Translation): string {.gcsafe, locks: 0.}
proc `locale=`*(self: Translation; val: string) {.gcsafe, locks: 0.}
proc messages*(self: Translation): PoolStringArray {.gcsafe, locks: 0.}
proc `messages=`*(self: Translation; val: PoolStringArray) {.gcsafe, locks: 0.}
proc addMessage*(self: Translation; srcMessage: string; xlatedMessage: string) {.
    gcsafe, locks: 0.}
proc eraseMessage*(self: Translation; srcMessage: string) {.gcsafe, locks: 0.}
proc getMessage*(self: Translation; srcMessage: string): string {.gcsafe, locks: 0.}
proc getMessageCount*(self: Translation): int64 {.gcsafe, locks: 0.}
proc getMessageList*(self: Translation): PoolStringArray {.gcsafe, locks: 0.}
var translationGetLocaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc locale(self: Translation): string =
  if isNil(translationGetLocaleMethodBind):
    translationGetLocaleMethodBind = getMethod(cstring"Translation",
        cstring"get_locale")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  translationGetLocaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var translationSetLocaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `locale=`(self: Translation; val: string) =
  if isNil(translationSetLocaleMethodBind):
    translationSetLocaleMethodBind = getMethod(cstring"Translation",
        cstring"set_locale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  translationSetLocaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var translationUnderscoregetMessagesMethodBind {.threadvar.}: ptr GodotMethodBind
proc messages(self: Translation): PoolStringArray =
  if isNil(translationUnderscoregetMessagesMethodBind):
    translationUnderscoregetMessagesMethodBind = getMethod(cstring"Translation",
        cstring"_get_messages")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  translationUnderscoregetMessagesMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var translationUnderscoresetMessagesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `messages=`(self: Translation; val: PoolStringArray) =
  if isNil(translationUnderscoresetMessagesMethodBind):
    translationUnderscoresetMessagesMethodBind = getMethod(cstring"Translation",
        cstring"_set_messages")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotPoolStringArray
  var ptrCallRet: pointer
  translationUnderscoresetMessagesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var translationAddMessageMethodBind {.threadvar.}: ptr GodotMethodBind
proc addMessage(self: Translation; srcMessage: string; xlatedMessage: string) =
  if isNil(translationAddMessageMethodBind):
    translationAddMessageMethodBind = getMethod(cstring"Translation",
        cstring"add_message")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(srcMessage)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(xlatedMessage)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  translationAddMessageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var translationEraseMessageMethodBind {.threadvar.}: ptr GodotMethodBind
proc eraseMessage(self: Translation; srcMessage: string) =
  if isNil(translationEraseMessageMethodBind):
    translationEraseMessageMethodBind = getMethod(cstring"Translation",
        cstring"erase_message")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(srcMessage)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  translationEraseMessageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var translationGetMessageMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMessage(self: Translation; srcMessage: string): string =
  if isNil(translationGetMessageMethodBind):
    translationGetMessageMethodBind = getMethod(cstring"Translation",
        cstring"get_message")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(srcMessage)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  translationGetMessageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var translationGetMessageCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMessageCount(self: Translation): int64 =
  if isNil(translationGetMessageCountMethodBind):
    translationGetMessageCountMethodBind = getMethod(cstring"Translation",
        cstring"get_message_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  translationGetMessageCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var translationGetMessageListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMessageList(self: Translation): PoolStringArray =
  if isNil(translationGetMessageListMethodBind):
    translationGetMessageListMethodBind = getMethod(cstring"Translation",
        cstring"get_message_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  translationGetMessageListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)
