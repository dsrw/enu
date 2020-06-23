
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc addMaterial*(self: EditorSpatialGizmoPlugin; name: string;
                 material: SpatialMaterial) {.gcsafe, locks: 0.}
method canBeHidden*(self: EditorSpatialGizmoPlugin): bool {.gcsafe, locks: 0, base.}
method commitHandle*(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                    index: int64; restore: Variant; cancel: bool) {.gcsafe, locks: 0,
    base.}
method createGizmo*(self: EditorSpatialGizmoPlugin; spatial: Spatial): EditorSpatialGizmo {.
    gcsafe, locks: 0, base.}
proc createHandleMaterial*(self: EditorSpatialGizmoPlugin; name: string;
                          billboard: bool = false) {.gcsafe, locks: 0.}
proc createIconMaterial*(self: EditorSpatialGizmoPlugin; name: string;
                        texture: Texture; onTop: bool = false;
                        color: Color = initColor(1.0, 1.0, 1.0, 1.0)) {.gcsafe, locks: 0.}
proc createMaterial*(self: EditorSpatialGizmoPlugin; name: string; color: Color;
                    billboard: bool = false; onTop: bool = false;
                    useVertexColor: bool = false) {.gcsafe, locks: 0.}
method getHandleName*(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                     index: int64): string {.gcsafe, locks: 0, base.}
method getHandleValue*(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                      index: int64): Variant {.gcsafe, locks: 0, base.}
proc getMaterial*(self: EditorSpatialGizmoPlugin; name: string;
                 gizmo: EditorSpatialGizmo): SpatialMaterial {.gcsafe, locks: 0.}
method getName*(self: EditorSpatialGizmoPlugin): string {.gcsafe, locks: 0, base.}
method getPriority*(self: EditorSpatialGizmoPlugin): string {.gcsafe, locks: 0, base.}
method hasGizmo*(self: EditorSpatialGizmoPlugin; spatial: Spatial): bool {.gcsafe,
    locks: 0, base.}
method isHandleHighlighted*(self: EditorSpatialGizmoPlugin;
                           gizmo: EditorSpatialGizmo; index: int64): bool {.gcsafe,
    locks: 0, base.}
method isSelectableWhenHidden*(self: EditorSpatialGizmoPlugin): bool {.gcsafe,
    locks: 0, base.}
method redraw*(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo) {.gcsafe,
    locks: 0, base.}
method setHandle*(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                 index: int64; camera: Camera; point: Vector2) {.gcsafe, locks: 0, base.}
var editorSpatialGizmoPluginAddMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc addMaterial(self: EditorSpatialGizmoPlugin; name: string;
                material: SpatialMaterial) =
  if isNil(editorSpatialGizmoPluginAddMaterialMethodBind):
    editorSpatialGizmoPluginAddMaterialMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"add_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not material.isNil:
    material.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorSpatialGizmoPluginAddMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorSpatialGizmoPluginCanBeHiddenMethodBind {.threadvar.}: ptr GodotMethodBind
method canBeHidden(self: EditorSpatialGizmoPlugin): bool =
  if isNil(editorSpatialGizmoPluginCanBeHiddenMethodBind):
    editorSpatialGizmoPluginCanBeHiddenMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"can_be_hidden")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSpatialGizmoPluginCanBeHiddenMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorSpatialGizmoPluginCommitHandleMethodBind {.threadvar.}: ptr GodotMethodBind
method commitHandle(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                   index: int64; restore: Variant; cancel: bool) =
  if isNil(editorSpatialGizmoPluginCommitHandleMethodBind):
    editorSpatialGizmoPluginCommitHandleMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"commit_handle")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not gizmo.isNil:
    gizmo.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(index)
  argsToPassToGodot[][2] = restore.godotVariant
  argsToPassToGodot[][3] = unsafeAddr(cancel)
  var ptrCallRet: pointer
  editorSpatialGizmoPluginCommitHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoPluginCreateGizmoMethodBind {.threadvar.}: ptr GodotMethodBind
method createGizmo(self: EditorSpatialGizmoPlugin; spatial: Spatial): EditorSpatialGizmo =
  if isNil(editorSpatialGizmoPluginCreateGizmoMethodBind):
    editorSpatialGizmoPluginCreateGizmoMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"create_gizmo")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not spatial.isNil:
    spatial.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoPluginCreateGizmoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorSpatialGizmoPluginCreateHandleMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc createHandleMaterial(self: EditorSpatialGizmoPlugin; name: string;
                         billboard: bool = false) =
  if isNil(editorSpatialGizmoPluginCreateHandleMaterialMethodBind):
    editorSpatialGizmoPluginCreateHandleMaterialMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"create_handle_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(billboard)
  var ptrCallRet: pointer
  editorSpatialGizmoPluginCreateHandleMaterialMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorSpatialGizmoPluginCreateIconMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc createIconMaterial(self: EditorSpatialGizmoPlugin; name: string;
                       texture: Texture; onTop: bool = false;
                       color: Color = initColor(1.0, 1.0, 1.0, 1.0)) =
  if isNil(editorSpatialGizmoPluginCreateIconMaterialMethodBind):
    editorSpatialGizmoPluginCreateIconMaterialMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"create_icon_material")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(onTop)
  argsToPassToGodot[][3] = unsafeAddr(color)
  var ptrCallRet: pointer
  editorSpatialGizmoPluginCreateIconMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorSpatialGizmoPluginCreateMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc createMaterial(self: EditorSpatialGizmoPlugin; name: string; color: Color;
                   billboard: bool = false; onTop: bool = false;
                   useVertexColor: bool = false) =
  if isNil(editorSpatialGizmoPluginCreateMaterialMethodBind):
    editorSpatialGizmoPluginCreateMaterialMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"create_material")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = unsafeAddr(billboard)
  argsToPassToGodot[][3] = unsafeAddr(onTop)
  argsToPassToGodot[][4] = unsafeAddr(useVertexColor)
  var ptrCallRet: pointer
  editorSpatialGizmoPluginCreateMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorSpatialGizmoPluginGetHandleNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getHandleName(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                    index: int64): string =
  if isNil(editorSpatialGizmoPluginGetHandleNameMethodBind):
    editorSpatialGizmoPluginGetHandleNameMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"get_handle_name")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not gizmo.isNil:
    gizmo.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoPluginGetHandleNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorSpatialGizmoPluginGetHandleValueMethodBind {.threadvar.}: ptr GodotMethodBind
method getHandleValue(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                     index: int64): Variant =
  if isNil(editorSpatialGizmoPluginGetHandleValueMethodBind):
    editorSpatialGizmoPluginGetHandleValueMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"get_handle_value")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not gizmo.isNil:
    gizmo.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoPluginGetHandleValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var editorSpatialGizmoPluginGetMaterialMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMaterial(self: EditorSpatialGizmoPlugin; name: string;
                gizmo: EditorSpatialGizmo): SpatialMaterial =
  if isNil(editorSpatialGizmoPluginGetMaterialMethodBind):
    editorSpatialGizmoPluginGetMaterialMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"get_material")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not gizmo.isNil:
    gizmo.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoPluginGetMaterialMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorSpatialGizmoPluginGetNameMethodBind {.threadvar.}: ptr GodotMethodBind
method getName(self: EditorSpatialGizmoPlugin): string =
  if isNil(editorSpatialGizmoPluginGetNameMethodBind):
    editorSpatialGizmoPluginGetNameMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"get_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoPluginGetNameMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorSpatialGizmoPluginGetPriorityMethodBind {.threadvar.}: ptr GodotMethodBind
method getPriority(self: EditorSpatialGizmoPlugin): string =
  if isNil(editorSpatialGizmoPluginGetPriorityMethodBind):
    editorSpatialGizmoPluginGetPriorityMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"get_priority")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  editorSpatialGizmoPluginGetPriorityMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var editorSpatialGizmoPluginHasGizmoMethodBind {.threadvar.}: ptr GodotMethodBind
method hasGizmo(self: EditorSpatialGizmoPlugin; spatial: Spatial): bool =
  if isNil(editorSpatialGizmoPluginHasGizmoMethodBind):
    editorSpatialGizmoPluginHasGizmoMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"has_gizmo")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not spatial.isNil:
    spatial.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSpatialGizmoPluginHasGizmoMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoPluginIsHandleHighlightedMethodBind {.threadvar.}: ptr GodotMethodBind
method isHandleHighlighted(self: EditorSpatialGizmoPlugin;
                          gizmo: EditorSpatialGizmo; index: int64): bool =
  if isNil(editorSpatialGizmoPluginIsHandleHighlightedMethodBind):
    editorSpatialGizmoPluginIsHandleHighlightedMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"is_handle_highlighted")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not gizmo.isNil:
    gizmo.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(index)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSpatialGizmoPluginIsHandleHighlightedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoPluginIsSelectableWhenHiddenMethodBind {.threadvar.}: ptr GodotMethodBind
method isSelectableWhenHidden(self: EditorSpatialGizmoPlugin): bool =
  if isNil(editorSpatialGizmoPluginIsSelectableWhenHiddenMethodBind):
    editorSpatialGizmoPluginIsSelectableWhenHiddenMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"is_selectable_when_hidden")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSpatialGizmoPluginIsSelectableWhenHiddenMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorSpatialGizmoPluginRedrawMethodBind {.threadvar.}: ptr GodotMethodBind
method redraw(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo) =
  if isNil(editorSpatialGizmoPluginRedrawMethodBind):
    editorSpatialGizmoPluginRedrawMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"redraw")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not gizmo.isNil:
    gizmo.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorSpatialGizmoPluginRedrawMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorSpatialGizmoPluginSetHandleMethodBind {.threadvar.}: ptr GodotMethodBind
method setHandle(self: EditorSpatialGizmoPlugin; gizmo: EditorSpatialGizmo;
                index: int64; camera: Camera; point: Vector2) =
  if isNil(editorSpatialGizmoPluginSetHandleMethodBind):
    editorSpatialGizmoPluginSetHandleMethodBind = getMethod(
        cstring"EditorSpatialGizmoPlugin", cstring"set_handle")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not gizmo.isNil:
    gizmo.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(index)
  let argToPassToGodot2 = if not camera.isNil:
    camera.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(point)
  var ptrCallRet: pointer
  editorSpatialGizmoPluginSetHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
