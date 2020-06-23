
import
  godot, godottypes, godotinternal, scroll_container

export
  godottypes, scroll_container

method editRequestChange*(self: EditorInspector; arg0: Object; arg1: string) {.gcsafe,
    locks: 0, base.}
method featureProfileChanged*(self: EditorInspector) {.gcsafe, locks: 0, base.}
method filterChanged*(self: EditorInspector; arg0: string) {.gcsafe, locks: 0, base.}
method multiplePropertiesChanged*(self: EditorInspector; arg0: PoolStringArray;
                                 arg1: Array) {.gcsafe, locks: 0, base.}
method nodeRemoved*(self: EditorInspector; arg0: Node) {.gcsafe, locks: 0, base.}
method objectIdSelected*(self: EditorInspector; arg0: string; arg1: int64) {.gcsafe,
    locks: 0, base.}
method propertyChanged*(self: EditorInspector; arg0: string; arg1: Variant;
                       arg2: string = ""; arg3: bool = false) {.gcsafe, locks: 0, base.}
method propertyChangedUpdateAll*(self: EditorInspector; arg0: string; arg1: Variant;
                                arg2: string; arg3: bool) {.gcsafe, locks: 0, base.}
method propertyChecked*(self: EditorInspector; arg0: string; arg1: bool) {.gcsafe,
    locks: 0, base.}
method propertyKeyed*(self: EditorInspector; arg0: string; arg1: bool) {.gcsafe,
    locks: 0, base.}
method propertyKeyedWithValue*(self: EditorInspector; arg0: string; arg1: Variant;
                              arg2: bool) {.gcsafe, locks: 0, base.}
method propertySelected*(self: EditorInspector; arg0: string; arg1: int64) {.gcsafe,
    locks: 0, base.}
method resourceSelected*(self: EditorInspector; arg0: string; arg1: Resource) {.gcsafe,
    locks: 0, base.}
method vscrollChanged*(self: EditorInspector; arg0: float64) {.gcsafe, locks: 0, base.}
proc refresh*(self: EditorInspector) {.gcsafe, locks: 0.}
var editorInspectorUnderscoreeditRequestChangeMethodBind {.threadvar.}: ptr GodotMethodBind
method editRequestChange(self: EditorInspector; arg0: Object; arg1: string) =
  if isNil(editorInspectorUnderscoreeditRequestChangeMethodBind):
    editorInspectorUnderscoreeditRequestChangeMethodBind = getMethod(
        cstring"EditorInspector", cstring"_edit_request_change")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(arg1)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  editorInspectorUnderscoreeditRequestChangeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var editorInspectorUnderscorefeatureProfileChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method featureProfileChanged(self: EditorInspector) =
  if isNil(editorInspectorUnderscorefeatureProfileChangedMethodBind):
    editorInspectorUnderscorefeatureProfileChangedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_feature_profile_changed")
  var ptrCallRet: pointer
  editorInspectorUnderscorefeatureProfileChangedMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorInspectorUnderscorefilterChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method filterChanged(self: EditorInspector; arg0: string) =
  if isNil(editorInspectorUnderscorefilterChangedMethodBind):
    editorInspectorUnderscorefilterChangedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_filter_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorInspectorUnderscorefilterChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorUnderscoremultiplePropertiesChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method multiplePropertiesChanged(self: EditorInspector; arg0: PoolStringArray;
                                arg1: Array) =
  if isNil(editorInspectorUnderscoremultiplePropertiesChangedMethodBind):
    editorInspectorUnderscoremultiplePropertiesChangedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_multiple_properties_changed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = arg0.godotPoolStringArray
  argsToPassToGodot[][1] = arg1.godotArray
  var ptrCallRet: pointer
  editorInspectorUnderscoremultiplePropertiesChangedMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)

var editorInspectorUnderscorenodeRemovedMethodBind {.threadvar.}: ptr GodotMethodBind
method nodeRemoved(self: EditorInspector; arg0: Node) =
  if isNil(editorInspectorUnderscorenodeRemovedMethodBind):
    editorInspectorUnderscorenodeRemovedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_node_removed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not arg0.isNil:
    arg0.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorInspectorUnderscorenodeRemovedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorInspectorUnderscoreobjectIdSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method objectIdSelected(self: EditorInspector; arg0: string; arg1: int64) =
  if isNil(editorInspectorUnderscoreobjectIdSelectedMethodBind):
    editorInspectorUnderscoreobjectIdSelectedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_object_id_selected")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  editorInspectorUnderscoreobjectIdSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorUnderscorepropertyChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method propertyChanged(self: EditorInspector; arg0: string; arg1: Variant;
                      arg2: string = ""; arg3: bool = false) =
  if isNil(editorInspectorUnderscorepropertyChangedMethodBind):
    editorInspectorUnderscorepropertyChangedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_property_changed")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = arg1.godotVariant
  var argToPassToGodot2 = toGodotString(arg2)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  var ptrCallRet: pointer
  editorInspectorUnderscorepropertyChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var editorInspectorUnderscorepropertyChangedUpdateAllMethodBind {.threadvar.}: ptr GodotMethodBind
method propertyChangedUpdateAll(self: EditorInspector; arg0: string; arg1: Variant;
                               arg2: string; arg3: bool) =
  if isNil(editorInspectorUnderscorepropertyChangedUpdateAllMethodBind):
    editorInspectorUnderscorepropertyChangedUpdateAllMethodBind = getMethod(
        cstring"EditorInspector", cstring"_property_changed_update_all")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = arg1.godotVariant
  var argToPassToGodot2 = toGodotString(arg2)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  var ptrCallRet: pointer
  editorInspectorUnderscorepropertyChangedUpdateAllMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var editorInspectorUnderscorepropertyCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
method propertyChecked(self: EditorInspector; arg0: string; arg1: bool) =
  if isNil(editorInspectorUnderscorepropertyCheckedMethodBind):
    editorInspectorUnderscorepropertyCheckedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_property_checked")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  editorInspectorUnderscorepropertyCheckedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorUnderscorepropertyKeyedMethodBind {.threadvar.}: ptr GodotMethodBind
method propertyKeyed(self: EditorInspector; arg0: string; arg1: bool) =
  if isNil(editorInspectorUnderscorepropertyKeyedMethodBind):
    editorInspectorUnderscorepropertyKeyedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_property_keyed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  editorInspectorUnderscorepropertyKeyedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorUnderscorepropertyKeyedWithValueMethodBind {.threadvar.}: ptr GodotMethodBind
method propertyKeyedWithValue(self: EditorInspector; arg0: string; arg1: Variant;
                             arg2: bool) =
  if isNil(editorInspectorUnderscorepropertyKeyedWithValueMethodBind):
    editorInspectorUnderscorepropertyKeyedWithValueMethodBind = getMethod(
        cstring"EditorInspector", cstring"_property_keyed_with_value")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = arg1.godotVariant
  argsToPassToGodot[][2] = unsafeAddr(arg2)
  var ptrCallRet: pointer
  editorInspectorUnderscorepropertyKeyedWithValueMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorUnderscorepropertySelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method propertySelected(self: EditorInspector; arg0: string; arg1: int64) =
  if isNil(editorInspectorUnderscorepropertySelectedMethodBind):
    editorInspectorUnderscorepropertySelectedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_property_selected")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(arg1)
  var ptrCallRet: pointer
  editorInspectorUnderscorepropertySelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorUnderscoreresourceSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
method resourceSelected(self: EditorInspector; arg0: string; arg1: Resource) =
  if isNil(editorInspectorUnderscoreresourceSelectedMethodBind):
    editorInspectorUnderscoreresourceSelectedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_resource_selected")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorInspectorUnderscoreresourceSelectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorUnderscorevscrollChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method vscrollChanged(self: EditorInspector; arg0: float64) =
  if isNil(editorInspectorUnderscorevscrollChangedMethodBind):
    editorInspectorUnderscorevscrollChangedMethodBind = getMethod(
        cstring"EditorInspector", cstring"_vscroll_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  editorInspectorUnderscorevscrollChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorInspectorRefreshMethodBind {.threadvar.}: ptr GodotMethodBind
proc refresh(self: EditorInspector) =
  if isNil(editorInspectorRefreshMethodBind):
    editorInspectorRefreshMethodBind = getMethod(cstring"EditorInspector",
        cstring"refresh")
  var ptrCallRet: pointer
  editorInspectorRefreshMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
