
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc lightMask*(self: LightOccluder2D): int64 {.gcsafe, locks: 0.}
proc `lightMask=`*(self: LightOccluder2D; val: int64) {.gcsafe, locks: 0.}
proc occluder*(self: LightOccluder2D): OccluderPolygon2D {.gcsafe, locks: 0.}
proc `occluder=`*(self: LightOccluder2D; val: OccluderPolygon2D) {.gcsafe, locks: 0.}
method polyChanged*(self: LightOccluder2D) {.gcsafe, locks: 0, base.}
var lightOccluder2DGetOccluderLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightMask(self: LightOccluder2D): int64 =
  if isNil(lightOccluder2DGetOccluderLightMaskMethodBind):
    lightOccluder2DGetOccluderLightMaskMethodBind = getMethod(
        cstring"LightOccluder2D", cstring"get_occluder_light_mask")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  lightOccluder2DGetOccluderLightMaskMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var lightOccluder2DSetOccluderLightMaskMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightMask=`(self: LightOccluder2D; val: int64) =
  if isNil(lightOccluder2DSetOccluderLightMaskMethodBind):
    lightOccluder2DSetOccluderLightMaskMethodBind = getMethod(
        cstring"LightOccluder2D", cstring"set_occluder_light_mask")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  lightOccluder2DSetOccluderLightMaskMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lightOccluder2DGetOccluderPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc occluder(self: LightOccluder2D): OccluderPolygon2D =
  if isNil(lightOccluder2DGetOccluderPolygonMethodBind):
    lightOccluder2DGetOccluderPolygonMethodBind = getMethod(
        cstring"LightOccluder2D", cstring"get_occluder_polygon")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  lightOccluder2DGetOccluderPolygonMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var lightOccluder2DSetOccluderPolygonMethodBind {.threadvar.}: ptr GodotMethodBind
proc `occluder=`(self: LightOccluder2D; val: OccluderPolygon2D) =
  if isNil(lightOccluder2DSetOccluderPolygonMethodBind):
    lightOccluder2DSetOccluderPolygonMethodBind = getMethod(
        cstring"LightOccluder2D", cstring"set_occluder_polygon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not val.isNil:
    val.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  lightOccluder2DSetOccluderPolygonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var lightOccluder2DUnderscorepolyChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method polyChanged(self: LightOccluder2D) =
  if isNil(lightOccluder2DUnderscorepolyChangedMethodBind):
    lightOccluder2DUnderscorepolyChangedMethodBind = getMethod(
        cstring"LightOccluder2D", cstring"_poly_changed")
  var ptrCallRet: pointer
  lightOccluder2DUnderscorepolyChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
