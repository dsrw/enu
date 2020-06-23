
import
  godot, godottypes, godotinternal, video_stream

export
  godottypes, video_stream

proc file*(self: VideoStreamWebm): string {.gcsafe, locks: 0.}
proc `file=`*(self: VideoStreamWebm; val: string) {.gcsafe, locks: 0.}
var videoStreamWebmGetFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc file(self: VideoStreamWebm): string =
  if isNil(videoStreamWebmGetFileMethodBind):
    videoStreamWebmGetFileMethodBind = getMethod(cstring"VideoStreamWebm",
        cstring"get_file")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  videoStreamWebmGetFileMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var videoStreamWebmSetFileMethodBind {.threadvar.}: ptr GodotMethodBind
proc `file=`(self: VideoStreamWebm; val: string) =
  if isNil(videoStreamWebmSetFileMethodBind):
    videoStreamWebmSetFileMethodBind = getMethod(cstring"VideoStreamWebm",
        cstring"set_file")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(val)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  videoStreamWebmSetFileMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
