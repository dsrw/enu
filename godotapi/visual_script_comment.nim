
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc description*(self: VisualScriptComment): string {.gcsafe, locks: 0.}
proc `description=`*(self: VisualScriptComment; val: string) {.gcsafe, locks: 0.}
proc size*(self: VisualScriptComment): Vector2 {.gcsafe, locks: 0.}
proc `size=`*(self: VisualScriptComment; val: Vector2) {.gcsafe, locks: 0.}
proc title*(self: VisualScriptComment): string {.gcsafe, locks: 0.}
proc `title=`*(self: VisualScriptComment; val: string) {.gcsafe, locks: 0.}
var visualScriptCommentGetDescriptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc description(self: VisualScriptComment): string =
  if isNil(visualScriptCommentGetDescriptionMethodBind):
    visualScriptCommentGetDescriptionMethodBind = getMethod(
        cstring"VisualScriptComment", cstring"get_description")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCommentGetDescriptionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCommentSetDescriptionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `description=`(self: VisualScriptComment; val: string) =
  if isNil(visualScriptCommentSetDescriptionMethodBind):
    visualScriptCommentSetDescriptionMethodBind = getMethod(
        cstring"VisualScriptComment", cstring"set_description")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptCommentSetDescriptionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var visualScriptCommentGetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc size(self: VisualScriptComment): Vector2 =
  if isNil(visualScriptCommentGetSizeMethodBind):
    visualScriptCommentGetSizeMethodBind = getMethod(
        cstring"VisualScriptComment", cstring"get_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  visualScriptCommentGetSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var visualScriptCommentSetSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `size=`(self: VisualScriptComment; val: Vector2) =
  if isNil(visualScriptCommentSetSizeMethodBind):
    visualScriptCommentSetSizeMethodBind = getMethod(
        cstring"VisualScriptComment", cstring"set_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  visualScriptCommentSetSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var visualScriptCommentGetTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc title(self: VisualScriptComment): string =
  if isNil(visualScriptCommentGetTitleMethodBind):
    visualScriptCommentGetTitleMethodBind = getMethod(
        cstring"VisualScriptComment", cstring"get_title")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  visualScriptCommentGetTitleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var visualScriptCommentSetTitleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `title=`(self: VisualScriptComment; val: string) =
  if isNil(visualScriptCommentSetTitleMethodBind):
    visualScriptCommentSetTitleMethodBind = getMethod(
        cstring"VisualScriptComment", cstring"set_title")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  visualScriptCommentSetTitleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
