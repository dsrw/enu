
import
  godot, godottypes, godotinternal, material

export
  godottypes, material

const
  BLEND_MODE_ADD* = 1'i64
  BLEND_MODE_MIX* = 0'i64
  BLEND_MODE_MUL* = 3'i64
  BLEND_MODE_PREMULT_ALPHA* = 4'i64
  BLEND_MODE_SUB* = 2'i64
  LIGHT_MODE_LIGHT_ONLY* = 2'i64
  LIGHT_MODE_NORMAL* = 0'i64
  LIGHT_MODE_UNSHADED* = 1'i64
proc blendMode*(self: CanvasItemMaterial): int64 {.gcsafe, locks: 0.}
proc `blendMode=`*(self: CanvasItemMaterial; val: int64) {.gcsafe, locks: 0.}
proc lightMode*(self: CanvasItemMaterial): int64 {.gcsafe, locks: 0.}
proc `lightMode=`*(self: CanvasItemMaterial; val: int64) {.gcsafe, locks: 0.}
proc particlesAnimHFrames*(self: CanvasItemMaterial): int64 {.gcsafe, locks: 0.}
proc `particlesAnimHFrames=`*(self: CanvasItemMaterial; val: int64) {.gcsafe, locks: 0.}
proc particlesAnimLoop*(self: CanvasItemMaterial): bool {.gcsafe, locks: 0.}
proc `particlesAnimLoop=`*(self: CanvasItemMaterial; val: bool) {.gcsafe, locks: 0.}
proc particlesAnimVFrames*(self: CanvasItemMaterial): int64 {.gcsafe, locks: 0.}
proc `particlesAnimVFrames=`*(self: CanvasItemMaterial; val: int64) {.gcsafe, locks: 0.}
proc particlesAnimation*(self: CanvasItemMaterial): bool {.gcsafe, locks: 0.}
proc `particlesAnimation=`*(self: CanvasItemMaterial; val: bool) {.gcsafe, locks: 0.}
var canvasItemMaterialGetBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc blendMode(self: CanvasItemMaterial): int64 =
  if isNil(canvasItemMaterialGetBlendModeMethodBind):
    canvasItemMaterialGetBlendModeMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"get_blend_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemMaterialGetBlendModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemMaterialSetBlendModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `blendMode=`(self: CanvasItemMaterial; val: int64) =
  if isNil(canvasItemMaterialSetBlendModeMethodBind):
    canvasItemMaterialSetBlendModeMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"set_blend_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemMaterialSetBlendModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemMaterialGetLightModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc lightMode(self: CanvasItemMaterial): int64 =
  if isNil(canvasItemMaterialGetLightModeMethodBind):
    canvasItemMaterialGetLightModeMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"get_light_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemMaterialGetLightModeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemMaterialSetLightModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `lightMode=`(self: CanvasItemMaterial; val: int64) =
  if isNil(canvasItemMaterialSetLightModeMethodBind):
    canvasItemMaterialSetLightModeMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"set_light_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemMaterialSetLightModeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemMaterialGetParticlesAnimHFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesAnimHFrames(self: CanvasItemMaterial): int64 =
  if isNil(canvasItemMaterialGetParticlesAnimHFramesMethodBind):
    canvasItemMaterialGetParticlesAnimHFramesMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"get_particles_anim_h_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemMaterialGetParticlesAnimHFramesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var canvasItemMaterialSetParticlesAnimHFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `particlesAnimHFrames=`(self: CanvasItemMaterial; val: int64) =
  if isNil(canvasItemMaterialSetParticlesAnimHFramesMethodBind):
    canvasItemMaterialSetParticlesAnimHFramesMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"set_particles_anim_h_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemMaterialSetParticlesAnimHFramesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemMaterialGetParticlesAnimLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesAnimLoop(self: CanvasItemMaterial): bool =
  if isNil(canvasItemMaterialGetParticlesAnimLoopMethodBind):
    canvasItemMaterialGetParticlesAnimLoopMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"get_particles_anim_loop")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemMaterialGetParticlesAnimLoopMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var canvasItemMaterialSetParticlesAnimLoopMethodBind {.threadvar.}: ptr GodotMethodBind
proc `particlesAnimLoop=`(self: CanvasItemMaterial; val: bool) =
  if isNil(canvasItemMaterialSetParticlesAnimLoopMethodBind):
    canvasItemMaterialSetParticlesAnimLoopMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"set_particles_anim_loop")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemMaterialSetParticlesAnimLoopMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemMaterialGetParticlesAnimVFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesAnimVFrames(self: CanvasItemMaterial): int64 =
  if isNil(canvasItemMaterialGetParticlesAnimVFramesMethodBind):
    canvasItemMaterialGetParticlesAnimVFramesMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"get_particles_anim_v_frames")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemMaterialGetParticlesAnimVFramesMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var canvasItemMaterialSetParticlesAnimVFramesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `particlesAnimVFrames=`(self: CanvasItemMaterial; val: int64) =
  if isNil(canvasItemMaterialSetParticlesAnimVFramesMethodBind):
    canvasItemMaterialSetParticlesAnimVFramesMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"set_particles_anim_v_frames")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemMaterialSetParticlesAnimVFramesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var canvasItemMaterialGetParticlesAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc particlesAnimation(self: CanvasItemMaterial): bool =
  if isNil(canvasItemMaterialGetParticlesAnimationMethodBind):
    canvasItemMaterialGetParticlesAnimationMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"get_particles_animation")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  canvasItemMaterialGetParticlesAnimationMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)

var canvasItemMaterialSetParticlesAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
proc `particlesAnimation=`(self: CanvasItemMaterial; val: bool) =
  if isNil(canvasItemMaterialSetParticlesAnimationMethodBind):
    canvasItemMaterialSetParticlesAnimationMethodBind = getMethod(
        cstring"CanvasItemMaterial", cstring"set_particles_animation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  canvasItemMaterialSetParticlesAnimationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
