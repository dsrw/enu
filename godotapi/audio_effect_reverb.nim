
import
  godot, godottypes, godotinternal, audio_effect

export
  godottypes, audio_effect

proc damping*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `damping=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
proc dry*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `dry=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
proc hipass*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `hipass=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
proc predelayFeedback*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `predelayFeedback=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
proc predelayMsec*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `predelayMsec=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
proc roomSize*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `roomSize=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
proc spread*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `spread=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
proc wet*(self: AudioEffectReverb): float64 {.gcsafe, locks: 0.}
proc `wet=`*(self: AudioEffectReverb; val: float64) {.gcsafe, locks: 0.}
var audioEffectReverbGetDampingMethodBind {.threadvar.}: ptr GodotMethodBind
proc damping(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetDampingMethodBind):
    audioEffectReverbGetDampingMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"get_damping")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetDampingMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectReverbSetDampingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `damping=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetDampingMethodBind):
    audioEffectReverbSetDampingMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"set_damping")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetDampingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectReverbGetDryMethodBind {.threadvar.}: ptr GodotMethodBind
proc dry(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetDryMethodBind):
    audioEffectReverbGetDryMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"get_dry")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetDryMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectReverbSetDryMethodBind {.threadvar.}: ptr GodotMethodBind
proc `dry=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetDryMethodBind):
    audioEffectReverbSetDryMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"set_dry")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetDryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioEffectReverbGetHpfMethodBind {.threadvar.}: ptr GodotMethodBind
proc hipass(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetHpfMethodBind):
    audioEffectReverbGetHpfMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"get_hpf")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetHpfMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectReverbSetHpfMethodBind {.threadvar.}: ptr GodotMethodBind
proc `hipass=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetHpfMethodBind):
    audioEffectReverbSetHpfMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"set_hpf")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetHpfMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var audioEffectReverbGetPredelayFeedbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc predelayFeedback(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetPredelayFeedbackMethodBind):
    audioEffectReverbGetPredelayFeedbackMethodBind = getMethod(
        cstring"AudioEffectReverb", cstring"get_predelay_feedback")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetPredelayFeedbackMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectReverbSetPredelayFeedbackMethodBind {.threadvar.}: ptr GodotMethodBind
proc `predelayFeedback=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetPredelayFeedbackMethodBind):
    audioEffectReverbSetPredelayFeedbackMethodBind = getMethod(
        cstring"AudioEffectReverb", cstring"set_predelay_feedback")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetPredelayFeedbackMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectReverbGetPredelayMsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc predelayMsec(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetPredelayMsecMethodBind):
    audioEffectReverbGetPredelayMsecMethodBind = getMethod(
        cstring"AudioEffectReverb", cstring"get_predelay_msec")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetPredelayMsecMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var audioEffectReverbSetPredelayMsecMethodBind {.threadvar.}: ptr GodotMethodBind
proc `predelayMsec=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetPredelayMsecMethodBind):
    audioEffectReverbSetPredelayMsecMethodBind = getMethod(
        cstring"AudioEffectReverb", cstring"set_predelay_msec")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetPredelayMsecMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectReverbGetRoomSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc roomSize(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetRoomSizeMethodBind):
    audioEffectReverbGetRoomSizeMethodBind = getMethod(
        cstring"AudioEffectReverb", cstring"get_room_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetRoomSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectReverbSetRoomSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `roomSize=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetRoomSizeMethodBind):
    audioEffectReverbSetRoomSizeMethodBind = getMethod(
        cstring"AudioEffectReverb", cstring"set_room_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetRoomSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectReverbGetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc spread(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetSpreadMethodBind):
    audioEffectReverbGetSpreadMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"get_spread")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetSpreadMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectReverbSetSpreadMethodBind {.threadvar.}: ptr GodotMethodBind
proc `spread=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetSpreadMethodBind):
    audioEffectReverbSetSpreadMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"set_spread")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetSpreadMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var audioEffectReverbGetWetMethodBind {.threadvar.}: ptr GodotMethodBind
proc wet(self: AudioEffectReverb): float64 =
  if isNil(audioEffectReverbGetWetMethodBind):
    audioEffectReverbGetWetMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"get_wet")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioEffectReverbGetWetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var audioEffectReverbSetWetMethodBind {.threadvar.}: ptr GodotMethodBind
proc `wet=`(self: AudioEffectReverb; val: float64) =
  if isNil(audioEffectReverbSetWetMethodBind):
    audioEffectReverbSetWetMethodBind = getMethod(cstring"AudioEffectReverb",
        cstring"set_wet")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  audioEffectReverbSetWetMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
