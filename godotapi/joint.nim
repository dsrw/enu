
import
  godot, godottypes, godotinternal, spatial

export
  godottypes, spatial

proc collisionexcludeNodes*(self: Joint): bool {.gcsafe, locks: 0.}
proc `collisionexcludeNodes=`*(self: Joint; val: bool) {.gcsafe, locks: 0.}
proc nodesnodeA*(self: Joint): NodePath {.gcsafe, locks: 0.}
proc `nodesnodeA=`*(self: Joint; val: NodePath) {.gcsafe, locks: 0.}
proc nodesnodeB*(self: Joint): NodePath {.gcsafe, locks: 0.}
proc `nodesnodeB=`*(self: Joint; val: NodePath) {.gcsafe, locks: 0.}
proc solverpriority*(self: Joint): int64 {.gcsafe, locks: 0.}
proc `solverpriority=`*(self: Joint; val: int64) {.gcsafe, locks: 0.}
var jointGetExcludeNodesFromCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc collisionexcludeNodes(self: Joint): bool =
  if isNil(jointGetExcludeNodesFromCollisionMethodBind):
    jointGetExcludeNodesFromCollisionMethodBind = getMethod(cstring"Joint",
        cstring"get_exclude_nodes_from_collision")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  jointGetExcludeNodesFromCollisionMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var jointSetExcludeNodesFromCollisionMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collisionexcludeNodes=`(self: Joint; val: bool) =
  if isNil(jointSetExcludeNodesFromCollisionMethodBind):
    jointSetExcludeNodesFromCollisionMethodBind = getMethod(cstring"Joint",
        cstring"set_exclude_nodes_from_collision")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  jointSetExcludeNodesFromCollisionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var jointGetNodeAMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodesnodeA(self: Joint): NodePath =
  if isNil(jointGetNodeAMethodBind):
    jointGetNodeAMethodBind = getMethod(cstring"Joint", cstring"get_node_a")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  jointGetNodeAMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var jointSetNodeAMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodesnodeA=`(self: Joint; val: NodePath) =
  if isNil(jointSetNodeAMethodBind):
    jointSetNodeAMethodBind = getMethod(cstring"Joint", cstring"set_node_a")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  jointSetNodeAMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var jointGetNodeBMethodBind {.threadvar.}: ptr GodotMethodBind
proc nodesnodeB(self: Joint): NodePath =
  if isNil(jointGetNodeBMethodBind):
    jointGetNodeBMethodBind = getMethod(cstring"Joint", cstring"get_node_b")
  var ptrCallRet: pointer
  var ptrCallVal: GodotNodePath
  ptrCallRet = addr(ptrCallVal)
  jointGetNodeBMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newNodePath(ptrCallVal)

var jointSetNodeBMethodBind {.threadvar.}: ptr GodotMethodBind
proc `nodesnodeB=`(self: Joint; val: NodePath) =
  if isNil(jointSetNodeBMethodBind):
    jointSetNodeBMethodBind = getMethod(cstring"Joint", cstring"set_node_b")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotNodePath
  var ptrCallRet: pointer
  jointSetNodeBMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var jointGetSolverPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc solverpriority(self: Joint): int64 =
  if isNil(jointGetSolverPriorityMethodBind):
    jointGetSolverPriorityMethodBind = getMethod(cstring"Joint",
        cstring"get_solver_priority")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  jointGetSolverPriorityMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var jointSetSolverPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
proc `solverpriority=`(self: Joint; val: int64) =
  if isNil(jointSetSolverPriorityMethodBind):
    jointSetSolverPriorityMethodBind = getMethod(cstring"Joint",
        cstring"set_solver_priority")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  jointSetSolverPriorityMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
