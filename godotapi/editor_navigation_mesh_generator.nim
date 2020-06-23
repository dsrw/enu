
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

proc bake*(self: EditorNavigationMeshGenerator; navMesh: NavigationMesh;
          rootNode: Node) {.gcsafe, locks: 0.}
proc clear*(self: EditorNavigationMeshGenerator; navMesh: NavigationMesh) {.gcsafe,
    locks: 0.}
var editorNavigationMeshGeneratorBakeMethodBind {.threadvar.}: ptr GodotMethodBind
proc bake(self: EditorNavigationMeshGenerator; navMesh: NavigationMesh;
         rootNode: Node) =
  if isNil(editorNavigationMeshGeneratorBakeMethodBind):
    editorNavigationMeshGeneratorBakeMethodBind = getMethod(
        cstring"EditorNavigationMeshGenerator", cstring"bake")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not navMesh.isNil:
    navMesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not rootNode.isNil:
    rootNode.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorNavigationMeshGeneratorBakeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorNavigationMeshGeneratorClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: EditorNavigationMeshGenerator; navMesh: NavigationMesh) =
  if isNil(editorNavigationMeshGeneratorClearMethodBind):
    editorNavigationMeshGeneratorClearMethodBind = getMethod(
        cstring"EditorNavigationMeshGenerator", cstring"clear")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not navMesh.isNil:
    navMesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorNavigationMeshGeneratorClearMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
