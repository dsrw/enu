
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

const
  RENDER_PRIORITY_MAX* = 127'i64
  RENDER_PRIORITY_MIN* = -128'i64
proc nextPass*(self: Material): Material {.gcsafe, locks: 0.}
proc `nextPass=`*(self: Material; val: Material) {.gcsafe, locks: 0.}
proc renderPriority*(self: Material): int64 {.gcsafe, locks: 0.}
proc `renderPriority=`*(self: Material; val: int64) {.gcsafe, locks: 0.}
var materialGetNextPassMethodBind {.threadvar.}: ptr GodotMethodBind
proc nextPass(self: Material): Material =
  if isNil(materialGetNextPassMethodBind):
    materialGetNextPassMethodBind = getMethod(cstring"Material",
        cstring"get_next_pass")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  materialGetNextPassMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var materialSetNextPassMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nextPass=`(self: Material; val: Material) =
  if isNil(materialSetNextPassMethodBind):
    materialSetNextPassMethodBind = getMethod(cstring"Material",
        cstring"set_next_pass")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  materialSetNextPassMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var materialGetRenderPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc renderPriority(self: Material): int64 =
  if isNil(materialGetRenderPriorityMethodBind):
    materialGetRenderPriorityMethodBind = getMethod(cstring"Material",
        cstring"get_render_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  materialGetRenderPriorityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var materialSetRenderPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `renderPriority=`(self: Material; val: int64) =
  if isNil(materialSetRenderPriorityMethodBind):
    materialSetRenderPriorityMethodBind = getMethod(cstring"Material",
        cstring"set_render_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  materialSetRenderPriorityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
