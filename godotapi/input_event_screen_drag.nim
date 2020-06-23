
import
  godot, godottypes, godotinternal, input_event

export
  godottypes, input_event

proc index*(self: InputEventScreenDrag): int64 {.gcsafe, locks: 0.}
proc `index=`*(self: InputEventScreenDrag; val: int64) {.gcsafe, locks: 0.}
proc position*(self: InputEventScreenDrag): Vector2 {.gcsafe, locks: 0.}
proc `position=`*(self: InputEventScreenDrag; val: Vector2) {.gcsafe, locks: 0.}
proc relative*(self: InputEventScreenDrag): Vector2 {.gcsafe, locks: 0.}
proc `relative=`*(self: InputEventScreenDrag; val: Vector2) {.gcsafe, locks: 0.}
proc speed*(self: InputEventScreenDrag): Vector2 {.gcsafe, locks: 0.}
proc `speed=`*(self: InputEventScreenDrag; val: Vector2) {.gcsafe, locks: 0.}
var inputEventScreenDragGetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc index(self: InputEventScreenDrag): int64 =
  if isNil(inputEventScreenDragGetIndexMethodBind):
    inputEventScreenDragGetIndexMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"get_index")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventScreenDragGetIndexMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventScreenDragSetIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc `index=`(self: InputEventScreenDrag; val: int64) =
  if isNil(inputEventScreenDragSetIndexMethodBind):
    inputEventScreenDragSetIndexMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"set_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventScreenDragSetIndexMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventScreenDragGetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc position(self: InputEventScreenDrag): Vector2 =
  if isNil(inputEventScreenDragGetPositionMethodBind):
    inputEventScreenDragGetPositionMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"get_position")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventScreenDragGetPositionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventScreenDragSetPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `position=`(self: InputEventScreenDrag; val: Vector2) =
  if isNil(inputEventScreenDragSetPositionMethodBind):
    inputEventScreenDragSetPositionMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"set_position")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventScreenDragSetPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventScreenDragGetRelativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc relative(self: InputEventScreenDrag): Vector2 =
  if isNil(inputEventScreenDragGetRelativeMethodBind):
    inputEventScreenDragGetRelativeMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"get_relative")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventScreenDragGetRelativeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventScreenDragSetRelativeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `relative=`(self: InputEventScreenDrag; val: Vector2) =
  if isNil(inputEventScreenDragSetRelativeMethodBind):
    inputEventScreenDragSetRelativeMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"set_relative")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventScreenDragSetRelativeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventScreenDragGetSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc speed(self: InputEventScreenDrag): Vector2 =
  if isNil(inputEventScreenDragGetSpeedMethodBind):
    inputEventScreenDragGetSpeedMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"get_speed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventScreenDragGetSpeedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventScreenDragSetSpeedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `speed=`(self: InputEventScreenDrag; val: Vector2) =
  if isNil(inputEventScreenDragSetSpeedMethodBind):
    inputEventScreenDragSetSpeedMethodBind = getMethod(
        cstring"InputEventScreenDrag", cstring"set_speed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventScreenDragSetSpeedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
