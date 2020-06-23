
import
  godot, godottypes, godotinternal, spatial_gizmo

export
  godottypes, spatial_gizmo

proc addCollisionSegments*(self: EditorSpatialGizmo; segments: PoolVector3Array) {.
    gcsafe, locks: 0.}
proc addCollisionTriangles*(self: EditorSpatialGizmo; triangles: TriangleMesh) {.
    gcsafe, locks: 0.}
proc addHandles*(self: EditorSpatialGizmo; handles: PoolVector3Array;
                material: Material; billboard: bool = false; secondary: bool = false) {.
    gcsafe, locks: 0.}
proc addLines*(self: EditorSpatialGizmo; lines: PoolVector3Array; material: Material;
              billboard: bool = false;
              modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) {.gcsafe, locks: 0.}
proc addMesh*(self: EditorSpatialGizmo; mesh: ArrayMesh; billboard: bool = false;
             skeleton: SkinReference = nil; material: Material = nil) {.gcsafe, locks: 0.}
proc addUnscaledBillboard*(self: EditorSpatialGizmo; material: Material;
                          defaultScale: float64 = 1.0;
                          modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) {.gcsafe,
    locks: 0.}
proc clear*(self: EditorSpatialGizmo) {.gcsafe, locks: 0.}
method commitHandle*(self: EditorSpatialGizmo; index: int64; restore: Variant;
                    cancel: bool) {.gcsafe, locks: 0, base.}
method getHandleName*(self: EditorSpatialGizmo; index: int64): string {.gcsafe,
    locks: 0, base.}
method getHandleValue*(self: EditorSpatialGizmo; index: int64): Variant {.gcsafe,
    locks: 0, base.}
proc getPlugin*(self: EditorSpatialGizmo): EditorSpatialGizmoPlugin {.gcsafe,
    locks: 0.}
proc getSpatialNode*(self: EditorSpatialGizmo): Spatial {.gcsafe, locks: 0.}
method isHandleHighlighted*(self: EditorSpatialGizmo; index: int64): bool {.gcsafe,
    locks: 0, base.}
method redraw*(self: EditorSpatialGizmo) {.gcsafe, locks: 0, base.}
method setHandle*(self: EditorSpatialGizmo; index: int64; camera: Camera;
                 point: Vector2) {.gcsafe, locks: 0, base.}
proc setHidden*(self: EditorSpatialGizmo; hidden: bool) {.gcsafe, locks: 0.}
proc setSpatialNode*(self: EditorSpatialGizmo; node: Node) {.gcsafe, locks: 0.}
var editorSpatialGizmoAddCollisionSegmentsMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCollisionSegments(self: EditorSpatialGizmo; segments: PoolVector3Array) =
  if isNil(editorSpatialGizmoAddCollisionSegmentsMethodBind):
    editorSpatialGizmoAddCollisionSegmentsMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"add_collision_segments")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = segments.godotPoolVector3Array
  var ptrCallRet: pointer
  editorSpatialGizmoAddCollisionSegmentsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoAddCollisionTrianglesMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCollisionTriangles(self: EditorSpatialGizmo; triangles: TriangleMesh) =
  if isNil(editorSpatialGizmoAddCollisionTrianglesMethodBind):
    editorSpatialGizmoAddCollisionTrianglesMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"add_collision_triangles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not triangles.isNil:
    triangles.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSpatialGizmoAddCollisionTrianglesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoAddHandlesMethodBind {.threadvar.}: ptr GodotMethodBind
proc addHandles(self: EditorSpatialGizmo; handles: PoolVector3Array;
               material: Material; billboard: bool = false; secondary: bool = false) =
  if isNil(editorSpatialGizmoAddHandlesMethodBind):
    editorSpatialGizmoAddHandlesMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"add_handles")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = handles.godotPoolVector3Array
  let argToPassToGodot1 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(billboard)
  argsToPassToGodot[][3] = unsafeAddr(secondary)
  var ptrCallRet: pointer
  editorSpatialGizmoAddHandlesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoAddLinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc addLines(self: EditorSpatialGizmo; lines: PoolVector3Array; material: Material;
             billboard: bool = false;
             modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) =
  if isNil(editorSpatialGizmoAddLinesMethodBind):
    editorSpatialGizmoAddLinesMethodBind = getMethod(cstring"EditorSpatialGizmo",
        cstring"add_lines")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = lines.godotPoolVector3Array
  let argToPassToGodot1 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(billboard)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  var ptrCallRet: pointer
  editorSpatialGizmoAddLinesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoAddMeshMethodBind {.threadvar.}: ptr GodotMethodBind
proc addMesh(self: EditorSpatialGizmo; mesh: ArrayMesh; billboard: bool = false;
            skeleton: SkinReference = nil; material: Material = nil) =
  if isNil(editorSpatialGizmoAddMeshMethodBind):
    editorSpatialGizmoAddMeshMethodBind = getMethod(cstring"EditorSpatialGizmo",
        cstring"add_mesh")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not mesh.isNil:
    mesh.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(billboard)
  let argToPassToGodot2 = if not skeleton.isNil:
    skeleton.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  let argToPassToGodot3 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][3] = argToPassToGodot3
  var ptrCallRet: pointer
  editorSpatialGizmoAddMeshMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoAddUnscaledBillboardMethodBind {.threadvar.}: ptr GodotMethodBind
proc addUnscaledBillboard(self: EditorSpatialGizmo; material: Material;
                         defaultScale: float64 = 1.0;
                         modulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) =
  if isNil(editorSpatialGizmoAddUnscaledBillboardMethodBind):
    editorSpatialGizmoAddUnscaledBillboardMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"add_unscaled_billboard")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(defaultScale)
  argsToPassToGodot[][2] = unsafeAddr(modulate)
  var ptrCallRet: pointer
  editorSpatialGizmoAddUnscaledBillboardMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: EditorSpatialGizmo) =
  if isNil(editorSpatialGizmoClearMethodBind):
    editorSpatialGizmoClearMethodBind = getMethod(cstring"EditorSpatialGizmo",
        cstring"clear")
  var ptrCallRet: pointer
  editorSpatialGizmoClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorSpatialGizmoCommitHandleMethodBind {.threadvar.}: ptr GodotMethodBind
method commitHandle(self: EditorSpatialGizmo; index: int64; restore: Variant;
                   cancel: bool) =
  if isNil(editorSpatialGizmoCommitHandleMethodBind):
    editorSpatialGizmoCommitHandleMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"commit_handle")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  argsToPassToGodot[][1] = restore.godotVariant
  argsToPassToGodot[][2] = unsafeAddr(cancel)
  var ptrCallRet: pointer
  editorSpatialGizmoCommitHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoGetHandleNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getHandleName(self: EditorSpatialGizmo; index: int64): string =
  if isNil(editorSpatialGizmoGetHandleNameMethodBind):
    editorSpatialGizmoGetHandleNameMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"get_handle_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoGetHandleNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorSpatialGizmoGetHandleValueMethodBind {.threadvar.}: ptr GodotMethodBind
method getHandleValue(self: EditorSpatialGizmo; index: int64): Variant =
  if isNil(editorSpatialGizmoGetHandleValueMethodBind):
    editorSpatialGizmoGetHandleValueMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"get_handle_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoGetHandleValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var editorSpatialGizmoGetPluginMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPlugin(self: EditorSpatialGizmo): EditorSpatialGizmoPlugin =
  if isNil(editorSpatialGizmoGetPluginMethodBind):
    editorSpatialGizmoGetPluginMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"get_plugin")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoGetPluginMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorSpatialGizmoGetSpatialNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSpatialNode(self: EditorSpatialGizmo): Spatial =
  if isNil(editorSpatialGizmoGetSpatialNodeMethodBind):
    editorSpatialGizmoGetSpatialNodeMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"get_spatial_node")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoGetSpatialNodeMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorSpatialGizmoIsHandleHighlightedMethodBind {.threadvar.}: ptr GodotMethodBind
method isHandleHighlighted(self: EditorSpatialGizmo; index: int64): bool =
  if isNil(editorSpatialGizmoIsHandleHighlightedMethodBind):
    editorSpatialGizmoIsHandleHighlightedMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"is_handle_highlighted")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSpatialGizmoIsHandleHighlightedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoRedrawMethodBind {.threadvar.}: ptr GodotMethodBind
method redraw(self: EditorSpatialGizmo) =
  if isNil(editorSpatialGizmoRedrawMethodBind):
    editorSpatialGizmoRedrawMethodBind = getMethod(cstring"EditorSpatialGizmo",
        cstring"redraw")
  var ptrCallRet: pointer
  editorSpatialGizmoRedrawMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var editorSpatialGizmoSetHandleMethodBind {.threadvar.}: ptr GodotMethodBind
method setHandle(self: EditorSpatialGizmo; index: int64; camera: Camera; point: Vector2) =
  if isNil(editorSpatialGizmoSetHandleMethodBind):
    editorSpatialGizmoSetHandleMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"set_handle")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(index)
  let argToPassToGodot1 = if not camera.isNil:
    camera.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(point)
  var ptrCallRet: pointer
  editorSpatialGizmoSetHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoSetHiddenMethodBind {.threadvar.}: ptr GodotMethodBind
proc setHidden(self: EditorSpatialGizmo; hidden: bool) =
  if isNil(editorSpatialGizmoSetHiddenMethodBind):
    editorSpatialGizmoSetHiddenMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"set_hidden")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(hidden)
  var ptrCallRet: pointer
  editorSpatialGizmoSetHiddenMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoSetSpatialNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSpatialNode(self: EditorSpatialGizmo; node: Node) =
  if isNil(editorSpatialGizmoSetSpatialNodeMethodBind):
    editorSpatialGizmoSetSpatialNodeMethodBind = getMethod(
        cstring"EditorSpatialGizmo", cstring"set_spatial_node")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not node.isNil:
    node.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSpatialGizmoSetSpatialNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
