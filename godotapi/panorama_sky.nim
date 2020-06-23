
import
  godot, godottypes, godotinternal, sky

export
  godottypes, sky

proc panorama*(self: PanoramaSky): Texture {.gcsafe, locks: 0.}
proc `panorama=`*(self: PanoramaSky; val: Texture) {.gcsafe, locks: 0.}
var panoramaSkyGetPanoramaMethodBind {.threadvar.}: ptr GodotMethodBind
proc panorama(self: PanoramaSky): Texture =
  if isNil(panoramaSkyGetPanoramaMethodBind):
    panoramaSkyGetPanoramaMethodBind = getMethod(cstring"PanoramaSky",
        cstring"get_panorama")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  panoramaSkyGetPanoramaMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var panoramaSkySetPanoramaMethodBind {.threadvar.}: ptr GodotMethodBind
proc `panorama=`(self: PanoramaSky; val: Texture) =
  if isNil(panoramaSkySetPanoramaMethodBind):
    panoramaSkySetPanoramaMethodBind = getMethod(cstring"PanoramaSky",
        cstring"set_panorama")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  panoramaSkySetPanoramaMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
