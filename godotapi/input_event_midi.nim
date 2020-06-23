
import
  godot, godottypes, godotinternal, input_event

export
  godottypes, input_event

proc channel*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `channel=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
proc controllerNumber*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `controllerNumber=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
proc controllerValue*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `controllerValue=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
proc instrument*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `instrument=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
proc message*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `message=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
proc pitch*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `pitch=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
proc pressure*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `pressure=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
proc velocity*(self: InputEventMIDI): int64 {.gcsafe, locks: 0.}
proc `velocity=`*(self: InputEventMIDI; val: int64) {.gcsafe, locks: 0.}
var inputEventMIDIGetChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc channel(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetChannelMethodBind):
    inputEventMIDIGetChannelMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"get_channel")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetChannelMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMIDISetChannelMethodBind {.threadvar.}: ptr GodotMethodBind
proc `channel=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetChannelMethodBind):
    inputEventMIDISetChannelMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"set_channel")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetChannelMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventMIDIGetControllerNumberMethodBind {.threadvar.}: ptr GodotMethodBind
proc controllerNumber(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetControllerNumberMethodBind):
    inputEventMIDIGetControllerNumberMethodBind = getMethod(
        cstring"InputEventMIDI", cstring"get_controller_number")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetControllerNumberMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMIDISetControllerNumberMethodBind {.threadvar.}: ptr GodotMethodBind
proc `controllerNumber=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetControllerNumberMethodBind):
    inputEventMIDISetControllerNumberMethodBind = getMethod(
        cstring"InputEventMIDI", cstring"set_controller_number")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetControllerNumberMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMIDIGetControllerValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc controllerValue(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetControllerValueMethodBind):
    inputEventMIDIGetControllerValueMethodBind = getMethod(
        cstring"InputEventMIDI", cstring"get_controller_value")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetControllerValueMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var inputEventMIDISetControllerValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc `controllerValue=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetControllerValueMethodBind):
    inputEventMIDISetControllerValueMethodBind = getMethod(
        cstring"InputEventMIDI", cstring"set_controller_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetControllerValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMIDIGetInstrumentMethodBind {.threadvar.}: ptr GodotMethodBind
proc instrument(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetInstrumentMethodBind):
    inputEventMIDIGetInstrumentMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"get_instrument")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetInstrumentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMIDISetInstrumentMethodBind {.threadvar.}: ptr GodotMethodBind
proc `instrument=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetInstrumentMethodBind):
    inputEventMIDISetInstrumentMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"set_instrument")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetInstrumentMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMIDIGetMessageMethodBind {.threadvar.}: ptr GodotMethodBind
proc message(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetMessageMethodBind):
    inputEventMIDIGetMessageMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"get_message")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetMessageMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMIDISetMessageMethodBind {.threadvar.}: ptr GodotMethodBind
proc `message=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetMessageMethodBind):
    inputEventMIDISetMessageMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"set_message")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetMessageMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventMIDIGetPitchMethodBind {.threadvar.}: ptr GodotMethodBind
proc pitch(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetPitchMethodBind):
    inputEventMIDIGetPitchMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"get_pitch")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetPitchMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMIDISetPitchMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pitch=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetPitchMethodBind):
    inputEventMIDISetPitchMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"set_pitch")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetPitchMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var inputEventMIDIGetPressureMethodBind {.threadvar.}: ptr GodotMethodBind
proc pressure(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetPressureMethodBind):
    inputEventMIDIGetPressureMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"get_pressure")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetPressureMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMIDISetPressureMethodBind {.threadvar.}: ptr GodotMethodBind
proc `pressure=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetPressureMethodBind):
    inputEventMIDISetPressureMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"set_pressure")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetPressureMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var inputEventMIDIGetVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc velocity(self: InputEventMIDI): int64 =
  if isNil(inputEventMIDIGetVelocityMethodBind):
    inputEventMIDIGetVelocityMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"get_velocity")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  inputEventMIDIGetVelocityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var inputEventMIDISetVelocityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `velocity=`(self: InputEventMIDI; val: int64) =
  if isNil(inputEventMIDISetVelocityMethodBind):
    inputEventMIDISetVelocityMethodBind = getMethod(cstring"InputEventMIDI",
        cstring"set_velocity")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  inputEventMIDISetVelocityMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
