
import
  godot, godottypes, godotinternal, base_button

export
  godottypes, base_button

const
  UNDERLINE_MODE_ALWAYS* = 0'i64
  UNDERLINE_MODE_NEVER* = 2'i64
  UNDERLINE_MODE_ON_HOVER* = 1'i64
proc text*(self: LinkButton): string {.gcsafe, locks: 0.}
proc `text=`*(self: LinkButton; val: string) {.gcsafe, locks: 0.}
proc underline*(self: LinkButton): int64 {.gcsafe, locks: 0.}
proc `underline=`*(self: LinkButton; val: int64) {.gcsafe, locks: 0.}
var linkButtonGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc text(self: LinkButton): string =
  if isNil(linkButtonGetTextMethodBind):
    linkButtonGetTextMethodBind = getMethod(cstring"LinkButton", cstring"get_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  linkButtonGetTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var linkButtonSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc `text=`(self: LinkButton; val: string) =
  if isNil(linkButtonSetTextMethodBind):
    linkButtonSetTextMethodBind = getMethod(cstring"LinkButton", cstring"set_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  linkButtonSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var linkButtonGetUnderlineModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc underline(self: LinkButton): int64 =
  if isNil(linkButtonGetUnderlineModeMethodBind):
    linkButtonGetUnderlineModeMethodBind = getMethod(cstring"LinkButton",
        cstring"get_underline_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  linkButtonGetUnderlineModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var linkButtonSetUnderlineModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `underline=`(self: LinkButton; val: int64) =
  if isNil(linkButtonSetUnderlineModeMethodBind):
    linkButtonSetUnderlineModeMethodBind = getMethod(cstring"LinkButton",
        cstring"set_underline_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  linkButtonSetUnderlineModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
