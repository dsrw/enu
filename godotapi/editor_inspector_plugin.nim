
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc addCustomControl*(self: EditorInspectorPlugin; control: Control) {.gcsafe,
    locks: 0.}
proc addPropertyEditor*(self: EditorInspectorPlugin; property: string;
                       editor: Control) {.gcsafe, locks: 0.}
proc addPropertyEditorForMultipleProperties*(self: EditorInspectorPlugin;
    label: string; properties: PoolStringArray; editor: Control) {.gcsafe, locks: 0.}
method canHandle*(self: EditorInspectorPlugin; objectt: Object): bool {.gcsafe,
    locks: 0, base.}
method parseBegin*(self: EditorInspectorPlugin; objectt: Object) {.gcsafe, locks: 0,
    base.}
method parseCategory*(self: EditorInspectorPlugin; objectt: Object; category: string) {.
    gcsafe, locks: 0, base.}
method parseEnd*(self: EditorInspectorPlugin) {.gcsafe, locks: 0, base.}
method parseProperty*(self: EditorInspectorPlugin; objectt: Object; typee: int64;
                     path: string; hint: int64; hintText: string; usage: int64): bool {.
    gcsafe, locks: 0, base.}
var editorInspectorPluginAddCustomControlMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCustomControl(self: EditorInspectorPlugin; control: Control) =
  if isNil(editorInspectorPluginAddCustomControlMethodBind):
    editorInspectorPluginAddCustomControlMethodBind = getMethod(
        cstring"EditorInspectorPlugin", cstring"add_custom_control")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not control.isNil:
    control.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorInspectorPluginAddCustomControlMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorInspectorPluginAddPropertyEditorMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPropertyEditor(self: EditorInspectorPlugin; property: string; editor: Control) =
  if isNil(editorInspectorPluginAddPropertyEditorMethodBind):
    editorInspectorPluginAddPropertyEditorMethodBind = getMethod(
        cstring"EditorInspectorPlugin", cstring"add_property_editor")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(property)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not editor.isNil:
    editor.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  editorInspectorPluginAddPropertyEditorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorPluginAddPropertyEditorForMultiplePropertiesMethodBind
    {.threadvar.}: ptr GodotMethodBind
proc addPropertyEditorForMultipleProperties(self: EditorInspectorPlugin;
    label: string; properties: PoolStringArray; editor: Control) =
  if isNil(editorInspectorPluginAddPropertyEditorForMultiplePropertiesMethodBind):
    editorInspectorPluginAddPropertyEditorForMultiplePropertiesMethodBind = getMethod(
        cstring"EditorInspectorPlugin",
        cstring"add_property_editor_for_multiple_properties")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = properties.godotPoolStringArray
  let argToPassToGodot2 = if not editor.isNil:
    editor.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  editorInspectorPluginAddPropertyEditorForMultiplePropertiesMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorInspectorPluginCanHandleMethodBind {.threadvar.}: ptr GodotMethodBind
method canHandle(self: EditorInspectorPlugin; objectt: Object): bool =
  if isNil(editorInspectorPluginCanHandleMethodBind):
    editorInspectorPluginCanHandleMethodBind = getMethod(
        cstring"EditorInspectorPlugin", cstring"can_handle")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorInspectorPluginCanHandleMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorInspectorPluginParseBeginMethodBind {.threadvar.}: ptr GodotMethodBind
method parseBegin(self: EditorInspectorPlugin; objectt: Object) =
  if isNil(editorInspectorPluginParseBeginMethodBind):
    editorInspectorPluginParseBeginMethodBind = getMethod(
        cstring"EditorInspectorPlugin", cstring"parse_begin")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorInspectorPluginParseBeginMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorInspectorPluginParseCategoryMethodBind {.threadvar.}: ptr GodotMethodBind
method parseCategory(self: EditorInspectorPlugin; objectt: Object; category: string) =
  if isNil(editorInspectorPluginParseCategoryMethodBind):
    editorInspectorPluginParseCategoryMethodBind = getMethod(
        cstring"EditorInspectorPlugin", cstring"parse_category")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(category)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  editorInspectorPluginParseCategoryMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)

var editorInspectorPluginParseEndMethodBind {.threadvar.}: ptr GodotMethodBind
method parseEnd(self: EditorInspectorPlugin) =
  if isNil(editorInspectorPluginParseEndMethodBind):
    editorInspectorPluginParseEndMethodBind = getMethod(
        cstring"EditorInspectorPlugin", cstring"parse_end")
  var ptrCallRet: pointer
  editorInspectorPluginParseEndMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var editorInspectorPluginParsePropertyMethodBind {.threadvar.}: ptr GodotMethodBind
method parseProperty(self: EditorInspectorPlugin; objectt: Object; typee: int64;
                    path: string; hint: int64; hintText: string; usage: int64): bool =
  if isNil(editorInspectorPluginParsePropertyMethodBind):
    editorInspectorPluginParsePropertyMethodBind = getMethod(
        cstring"EditorInspectorPlugin", cstring"parse_property")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(typee)
  var argToPassToGodot2 = toGodotString(path)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(hint)
  var argToPassToGodot4 = toGodotString(hintText)
  argsToPassToGodot[][4] = unsafeAddr(argToPassToGodot4)
  argsToPassToGodot[][5] = unsafeAddr(usage)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorInspectorPluginParsePropertyMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)
  deinit(argToPassToGodot4)
