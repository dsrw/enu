
import
  godot, godottypes, godotinternal, video_stream

export
  godottypes, video_stream

proc file*(self: VideoStreamTheora): string {.gcsafe, locks: 0.}
proc `file=`*(self: VideoStreamTheora; val: string) {.gcsafe, locks: 0.}
var videoStreamTheoraGetFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc file(self: VideoStreamTheora): string =
  if isNil(videoStreamTheoraGetFileMethodBind):
    videoStreamTheoraGetFileMethodBind = getMethod(cstring"VideoStreamTheora",
        cstring"get_file")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  videoStreamTheoraGetFileMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var videoStreamTheoraSetFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc `file=`(self: VideoStreamTheora; val: string) =
  if isNil(videoStreamTheoraSetFileMethodBind):
    videoStreamTheoraSetFileMethodBind = getMethod(cstring"VideoStreamTheora",
        cstring"set_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  videoStreamTheoraSetFileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
