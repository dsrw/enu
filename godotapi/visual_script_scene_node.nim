
import
  godot, godottypes, godotinternal, visual_script_node

export
  godottypes, visual_script_node

proc nodePath*(self: VisualScriptSceneNode): NodePath {.gcsafe, locks: 0.}
proc `nodePath=`*(self: VisualScriptSceneNode; val: NodePath) {.gcsafe, locks: 0.}
var visualScriptSceneNodeGetNodePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodePath(self: VisualScriptSceneNode): NodePath =
  if isNil(visualScriptSceneNodeGetNodePathMethodBind):
    visualScriptSceneNodeGetNodePathMethodBind = getMethod(
        cstring"VisualScriptSceneNode", cstring"get_node_path")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  visualScriptSceneNodeGetNodePathMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newNodePath(ptrCallVal)

var visualScriptSceneNodeSetNodePathMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodePath=`(self: VisualScriptSceneNode; val: NodePath) =
  if isNil(visualScriptSceneNodeSetNodePathMethodBind):
    visualScriptSceneNodeSetNodePathMethodBind = getMethod(
        cstring"VisualScriptSceneNode", cstring"set_node_path")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  visualScriptSceneNodeSetNodePathMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
