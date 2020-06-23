
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

method canGenerateSmallPreview*(self: EditorResourcePreviewGenerator): bool {.
    gcsafe, locks: 0, base.}
method generate*(self: EditorResourcePreviewGenerator; fromm: Resource; size: Vector2): Texture {.
    gcsafe, locks: 0, base.}
method generateFromPath*(self: EditorResourcePreviewGenerator; path: string;
                        size: Vector2): Texture {.gcsafe, locks: 0, base.}
method generateSmallPreviewAutomatically*(self: EditorResourcePreviewGenerator): bool {.
    gcsafe, locks: 0, base.}
method handles*(self: EditorResourcePreviewGenerator; typee: string): bool {.gcsafe,
    locks: 0, base.}
var editorResourcePreviewGeneratorCanGenerateSmallPreviewMethodBind {.threadvar.}: ptr GodotMethodBind
method canGenerateSmallPreview(self: EditorResourcePreviewGenerator): bool =
  if isNil(editorResourcePreviewGeneratorCanGenerateSmallPreviewMethodBind):
    editorResourcePreviewGeneratorCanGenerateSmallPreviewMethodBind = getMethod(
        cstring"EditorResourcePreviewGenerator",
        cstring"can_generate_small_preview")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorResourcePreviewGeneratorCanGenerateSmallPreviewMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorResourcePreviewGeneratorGenerateMethodBind {.threadvar.}: ptr GodotMethodBind
method generate(self: EditorResourcePreviewGenerator; fromm: Resource; size: Vector2): Texture =
  if isNil(editorResourcePreviewGeneratorGenerateMethodBind):
    editorResourcePreviewGeneratorGenerateMethodBind = getMethod(
        cstring"EditorResourcePreviewGenerator", cstring"generate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not fromm.isNil:
    fromm.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(size)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorResourcePreviewGeneratorGenerateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorResourcePreviewGeneratorGenerateFromPathMethodBind {.threadvar.}: ptr GodotMethodBind
method generateFromPath(self: EditorResourcePreviewGenerator; path: string;
                       size: Vector2): Texture =
  if isNil(editorResourcePreviewGeneratorGenerateFromPathMethodBind):
    editorResourcePreviewGeneratorGenerateFromPathMethodBind = getMethod(
        cstring"EditorResourcePreviewGenerator", cstring"generate_from_path")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(size)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorResourcePreviewGeneratorGenerateFromPathMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorResourcePreviewGeneratorGenerateSmallPreviewAutomaticallyMethodBind
    {.threadvar.}: ptr GodotMethodBind
method generateSmallPreviewAutomatically(self: EditorResourcePreviewGenerator): bool =
  if isNil(editorResourcePreviewGeneratorGenerateSmallPreviewAutomaticallyMethodBind):
    editorResourcePreviewGeneratorGenerateSmallPreviewAutomaticallyMethodBind = getMethod(
        cstring"EditorResourcePreviewGenerator",
        cstring"generate_small_preview_automatically")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorResourcePreviewGeneratorGenerateSmallPreviewAutomaticallyMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorResourcePreviewGeneratorHandlesMethodBind {.threadvar.}: ptr GodotMethodBind
method handles(self: EditorResourcePreviewGenerator; typee: string): bool =
  if isNil(editorResourcePreviewGeneratorHandlesMethodBind):
    editorResourcePreviewGeneratorHandlesMethodBind = getMethod(
        cstring"EditorResourcePreviewGenerator", cstring"handles")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(typee)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorResourcePreviewGeneratorHandlesMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
