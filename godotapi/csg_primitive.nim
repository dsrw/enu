
import
  godot, godottypes, godotinternal, csg_shape

export
  godottypes, csg_shape

proc invertFaces*(self: CSGPrimitive): bool {.gcsafe, locks: 0.}
proc `invertFaces=`*(self: CSGPrimitive; val: bool) {.gcsafe, locks: 0.}
var cSGPrimitiveIsInvertingFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc invertFaces(self: CSGPrimitive): bool =
  if isNil(cSGPrimitiveIsInvertingFacesMethodBind):
    cSGPrimitiveIsInvertingFacesMethodBind = getMethod(cstring"CSGPrimitive",
        cstring"is_inverting_faces")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  cSGPrimitiveIsInvertingFacesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var cSGPrimitiveSetInvertFacesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `invertFaces=`(self: CSGPrimitive; val: bool) =
  if isNil(cSGPrimitiveSetInvertFacesMethodBind):
    cSGPrimitiveSetInvertFacesMethodBind = getMethod(cstring"CSGPrimitive",
        cstring"set_invert_faces")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  cSGPrimitiveSetInvertFacesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
