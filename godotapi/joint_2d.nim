
import
  godot, godottypes, godotinternal, node_2d

export
  godottypes, node_2d

proc bias*(self: Joint2D): float64 {.gcsafe, locks: 0.}
proc `bias=`*(self: Joint2D; val: float64) {.gcsafe, locks: 0.}
proc disableCollision*(self: Joint2D): bool {.gcsafe, locks: 0.}
proc `disableCollision=`*(self: Joint2D; val: bool) {.gcsafe, locks: 0.}
proc nodeA*(self: Joint2D): NodePath {.gcsafe, locks: 0.}
proc `nodeA=`*(self: Joint2D; val: NodePath) {.gcsafe, locks: 0.}
proc nodeB*(self: Joint2D): NodePath {.gcsafe, locks: 0.}
proc `nodeB=`*(self: Joint2D; val: NodePath) {.gcsafe, locks: 0.}
var joint2DGetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc bias(self: Joint2D): float64 =
  if isNil(joint2DGetBiasMethodBind):
    joint2DGetBiasMethodBind = getMethod(cstring"Joint2D", cstring"get_bias")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  joint2DGetBiasMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var joint2DSetBiasMethodBind {.threadvar.}: ptr GodotMethodBind
proc `bias=`(self: Joint2D; val: float64) =
  if isNil(joint2DSetBiasMethodBind):
    joint2DSetBiasMethodBind = getMethod(cstring"Joint2D", cstring"set_bias")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  joint2DSetBiasMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var joint2DGetExcludeNodesFromCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc disableCollision(self: Joint2D): bool =
  if isNil(joint2DGetExcludeNodesFromCollisionMethodBind):
    joint2DGetExcludeNodesFromCollisionMethodBind = getMethod(cstring"Joint2D",
        cstring"get_exclude_nodes_from_collision")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  joint2DGetExcludeNodesFromCollisionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var joint2DSetExcludeNodesFromCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disableCollision=`(self: Joint2D; val: bool) =
  if isNil(joint2DSetExcludeNodesFromCollisionMethodBind):
    joint2DSetExcludeNodesFromCollisionMethodBind = getMethod(cstring"Joint2D",
        cstring"set_exclude_nodes_from_collision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  joint2DSetExcludeNodesFromCollisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var joint2DGetNodeAMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeA(self: Joint2D): NodePath =
  if isNil(joint2DGetNodeAMethodBind):
    joint2DGetNodeAMethodBind = getMethod(cstring"Joint2D", cstring"get_node_a")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  joint2DGetNodeAMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var joint2DSetNodeAMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodeA=`(self: Joint2D; val: NodePath) =
  if isNil(joint2DSetNodeAMethodBind):
    joint2DSetNodeAMethodBind = getMethod(cstring"Joint2D", cstring"set_node_a")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  joint2DSetNodeAMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var joint2DGetNodeBMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodeB(self: Joint2D): NodePath =
  if isNil(joint2DGetNodeBMethodBind):
    joint2DGetNodeBMethodBind = getMethod(cstring"Joint2D", cstring"get_node_b")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  joint2DGetNodeBMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var joint2DSetNodeBMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodeB=`(self: Joint2D; val: NodePath) =
  if isNil(joint2DSetNodeBMethodBind):
    joint2DSetNodeBMethodBind = getMethod(cstring"Joint2D", cstring"set_node_b")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  joint2DSetNodeBMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
