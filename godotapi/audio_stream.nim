
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc getLength*(self: AudioStream): float64 {.gcsafe, locks: 0.}
var audioStreamGetLengthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getLength(self: AudioStream): float64 =
  if isNil(audioStreamGetLengthMethodBind):
    audioStreamGetLengthMethodBind = getMethod(cstring"AudioStream",
        cstring"get_length")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  audioStreamGetLengthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
