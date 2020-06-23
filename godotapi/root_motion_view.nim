
import
  godot, godottypes, godotinternal, visual_instance

export
  godottypes, visual_instance

proc animationPath*(self: RootMotionView): NodePath {.gcsafe, locks: 0.}
proc `animationPath=`*(self: RootMotionView; val: NodePath) {.gcsafe, locks: 0.}
proc cellSize*(self: RootMotionView): float64 {.gcsafe, locks: 0.}
proc `cellSize=`*(self: RootMotionView; val: float64) {.gcsafe, locks: 0.}
proc color*(self: RootMotionView): Color {.gcsafe, locks: 0.}
proc `color=`*(self: RootMotionView; val: Color) {.gcsafe, locks: 0.}
proc radius*(self: RootMotionView): float64 {.gcsafe, locks: 0.}
proc `radius=`*(self: RootMotionView; val: float64) {.gcsafe, locks: 0.}
proc zeroY*(self: RootMotionView): bool {.gcsafe, locks: 0.}
proc `zeroY=`*(self: RootMotionView; val: bool) {.gcsafe, locks: 0.}
var rootMotionViewGetAnimationPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc animationPath(self: RootMotionView): NodePath =
  if isNil(rootMotionViewGetAnimationPathMethodBind):
    rootMotionViewGetAnimationPathMethodBind = getMethod(cstring"RootMotionView",
        cstring"get_animation_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  rootMotionViewGetAnimationPathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var rootMotionViewSetAnimationPathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `animationPath=`(self: RootMotionView; val: NodePath) =
  if isNil(rootMotionViewSetAnimationPathMethodBind):
    rootMotionViewSetAnimationPathMethodBind = getMethod(cstring"RootMotionView",
        cstring"set_animation_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  rootMotionViewSetAnimationPathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rootMotionViewGetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc cellSize(self: RootMotionView): float64 =
  if isNil(rootMotionViewGetCellSizeMethodBind):
    rootMotionViewGetCellSizeMethodBind = getMethod(cstring"RootMotionView",
        cstring"get_cell_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rootMotionViewGetCellSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rootMotionViewSetCellSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `cellSize=`(self: RootMotionView; val: float64) =
  if isNil(rootMotionViewSetCellSizeMethodBind):
    rootMotionViewSetCellSizeMethodBind = getMethod(cstring"RootMotionView",
        cstring"set_cell_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rootMotionViewSetCellSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var rootMotionViewGetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc color(self: RootMotionView): Color =
  if isNil(rootMotionViewGetColorMethodBind):
    rootMotionViewGetColorMethodBind = getMethod(cstring"RootMotionView",
        cstring"get_color")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rootMotionViewGetColorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rootMotionViewSetColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc `color=`(self: RootMotionView; val: Color) =
  if isNil(rootMotionViewSetColorMethodBind):
    rootMotionViewSetColorMethodBind = getMethod(cstring"RootMotionView",
        cstring"set_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rootMotionViewSetColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rootMotionViewGetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc radius(self: RootMotionView): float64 =
  if isNil(rootMotionViewGetRadiusMethodBind):
    rootMotionViewGetRadiusMethodBind = getMethod(cstring"RootMotionView",
        cstring"get_radius")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rootMotionViewGetRadiusMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rootMotionViewSetRadiusMethodBind {.threadvar.}: ptr GodotMethodBind
proc `radius=`(self: RootMotionView; val: float64) =
  if isNil(rootMotionViewSetRadiusMethodBind):
    rootMotionViewSetRadiusMethodBind = getMethod(cstring"RootMotionView",
        cstring"set_radius")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rootMotionViewSetRadiusMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var rootMotionViewGetZeroYMethodBind {.threadvar.}: ptr GodotMethodBind
proc zeroY(self: RootMotionView): bool =
  if isNil(rootMotionViewGetZeroYMethodBind):
    rootMotionViewGetZeroYMethodBind = getMethod(cstring"RootMotionView",
        cstring"get_zero_y")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  rootMotionViewGetZeroYMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var rootMotionViewSetZeroYMethodBind {.threadvar.}: ptr GodotMethodBind
proc `zeroY=`(self: RootMotionView; val: bool) =
  if isNil(rootMotionViewSetZeroYMethodBind):
    rootMotionViewSetZeroYMethodBind = getMethod(cstring"RootMotionView",
        cstring"set_zero_y")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  rootMotionViewSetZeroYMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
