
import
  godot, godottypes, godotinternal, texture

export
  godottypes, texture

proc viewportPath*(self: ViewportTexture): NodePath {.gcsafe, locks: 0.}
proc `viewportPath=`*(self: ViewportTexture; val: NodePath) {.gcsafe, locks: 0.}
var viewportTextureGetViewportPathInSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc viewportPath(self: ViewportTexture): NodePath =
  if isNil(viewportTextureGetViewportPathInSceneMethodBind):
    viewportTextureGetViewportPathInSceneMethodBind = getMethod(
        cstring"ViewportTexture", cstring"get_viewport_path_in_scene")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  viewportTextureGetViewportPathInSceneMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var viewportTextureSetViewportPathInSceneMethodBind {.threadvar.}: ptr GodotMethodBind
proc `viewportPath=`(self: ViewportTexture; val: NodePath) =
  if isNil(viewportTextureSetViewportPathInSceneMethodBind):
    viewportTextureSetViewportPathInSceneMethodBind = getMethod(
        cstring"ViewportTexture", cstring"set_viewport_path_in_scene")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  viewportTextureSetViewportPathInSceneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
