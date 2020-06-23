
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

proc borderColor*(self: ReferenceRect): Color {.gcsafe, locks: 0.}
proc `borderColor=`*(self: ReferenceRect; val: Color) {.gcsafe, locks: 0.}
proc editorOnly*(self: ReferenceRect): bool {.gcsafe, locks: 0.}
proc `editorOnly=`*(self: ReferenceRect; val: bool) {.gcsafe, locks: 0.}
var referenceRectGetBorderColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc borderColor(self: ReferenceRect): Color =
  if isNil(referenceRectGetBorderColorMethodBind):
    referenceRectGetBorderColorMethodBind = getMethod(cstring"ReferenceRect",
        cstring"get_border_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  referenceRectGetBorderColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var referenceRectSetBorderColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `borderColor=`(self: ReferenceRect; val: Color) =
  if isNil(referenceRectSetBorderColorMethodBind):
    referenceRectSetBorderColorMethodBind = getMethod(cstring"ReferenceRect",
        cstring"set_border_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  referenceRectSetBorderColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var referenceRectGetEditorOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc editorOnly(self: ReferenceRect): bool =
  if isNil(referenceRectGetEditorOnlyMethodBind):
    referenceRectGetEditorOnlyMethodBind = getMethod(cstring"ReferenceRect",
        cstring"get_editor_only")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  referenceRectGetEditorOnlyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var referenceRectSetEditorOnlyMethodBind {.threadvar.}: ptr GodotMethodBind
proc `editorOnly=`(self: ReferenceRect; val: bool) =
  if isNil(referenceRectSetEditorOnlyMethodBind):
    referenceRectSetEditorOnlyMethodBind = getMethod(cstring"ReferenceRect",
        cstring"set_editor_only")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  referenceRectSetEditorOnlyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
