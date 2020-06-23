
import
  godot, godottypes, godotinternal, node

export
  godottypes, node

method previewReady*(self: EditorResourcePreview; arg0: string; arg1: Texture;
                    arg2: Texture; arg3: int64; arg4: string; arg5: Variant) {.gcsafe,
    locks: 0, base.}
proc addPreviewGenerator*(self: EditorResourcePreview;
                         generator: EditorResourcePreviewGenerator) {.gcsafe,
    locks: 0.}
proc checkForInvalidation*(self: EditorResourcePreview; path: string) {.gcsafe,
    locks: 0.}
proc queueEditedResourcePreview*(self: EditorResourcePreview; resource: Resource;
                                receiver: Object; receiverFunc: string;
                                userdata: Variant) {.gcsafe, locks: 0.}
proc queueResourcePreview*(self: EditorResourcePreview; path: string;
                          receiver: Object; receiverFunc: string; userdata: Variant) {.
    gcsafe, locks: 0.}
proc removePreviewGenerator*(self: EditorResourcePreview;
                            generator: EditorResourcePreviewGenerator) {.gcsafe,
    locks: 0.}
var editorResourcePreviewUnderscorepreviewReadyMethodBind {.threadvar.}: ptr GodotMethodBind
method previewReady(self: EditorResourcePreview; arg0: string; arg1: Texture;
                   arg2: Texture; arg3: int64; arg4: string; arg5: Variant) =
  if isNil(editorResourcePreviewUnderscorepreviewReadyMethodBind):
    editorResourcePreviewUnderscorepreviewReadyMethodBind = getMethod(
        cstring"EditorResourcePreview", cstring"_preview_ready")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(arg0)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not arg1.isNil:
    arg1.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  let argToPassToGodot2 = if not arg2.isNil:
    arg2.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  argsToPassToGodot[][3] = unsafeAddr(arg3)
  var argToPassToGodot4 = toGodotString(arg4)
  argsToPassToGodot[][4] = unsafeAddr(argToPassToGodot4)
  argsToPassToGodot[][5] = arg5.godotVariant
  var ptrCallRet: pointer
  editorResourcePreviewUnderscorepreviewReadyMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot4)

var editorResourcePreviewAddPreviewGeneratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc addPreviewGenerator(self: EditorResourcePreview;
                        generator: EditorResourcePreviewGenerator) =
  if isNil(editorResourcePreviewAddPreviewGeneratorMethodBind):
    editorResourcePreviewAddPreviewGeneratorMethodBind = getMethod(
        cstring"EditorResourcePreview", cstring"add_preview_generator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not generator.isNil:
    generator.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorResourcePreviewAddPreviewGeneratorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var editorResourcePreviewCheckForInvalidationMethodBind {.threadvar.}: ptr GodotMethodBind
proc checkForInvalidation(self: EditorResourcePreview; path: string) =
  if isNil(editorResourcePreviewCheckForInvalidationMethodBind):
    editorResourcePreviewCheckForInvalidationMethodBind = getMethod(
        cstring"EditorResourcePreview", cstring"check_for_invalidation")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  editorResourcePreviewCheckForInvalidationMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var editorResourcePreviewQueueEditedResourcePreviewMethodBind {.threadvar.}: ptr GodotMethodBind
proc queueEditedResourcePreview(self: EditorResourcePreview; resource: Resource;
                               receiver: Object; receiverFunc: string;
                               userdata: Variant) =
  if isNil(editorResourcePreviewQueueEditedResourcePreviewMethodBind):
    editorResourcePreviewQueueEditedResourcePreviewMethodBind = getMethod(
        cstring"EditorResourcePreview", cstring"queue_edited_resource_preview")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not resource.isNil:
    resource.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  let argToPassToGodot1 = if not receiver.isNil:
    receiver.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(receiverFunc)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = userdata.godotVariant
  var ptrCallRet: pointer
  editorResourcePreviewQueueEditedResourcePreviewMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var editorResourcePreviewQueueResourcePreviewMethodBind {.threadvar.}: ptr GodotMethodBind
proc queueResourcePreview(self: EditorResourcePreview; path: string;
                         receiver: Object; receiverFunc: string; userdata: Variant) =
  if isNil(editorResourcePreviewQueueResourcePreviewMethodBind):
    editorResourcePreviewQueueResourcePreviewMethodBind = getMethod(
        cstring"EditorResourcePreview", cstring"queue_resource_preview")
  var
    argsStatic: array[4, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not receiver.isNil:
    receiver.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(receiverFunc)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = userdata.godotVariant
  var ptrCallRet: pointer
  editorResourcePreviewQueueResourcePreviewMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot2)

var editorResourcePreviewRemovePreviewGeneratorMethodBind {.threadvar.}: ptr GodotMethodBind
proc removePreviewGenerator(self: EditorResourcePreview;
                           generator: EditorResourcePreviewGenerator) =
  if isNil(editorResourcePreviewRemovePreviewGeneratorMethodBind):
    editorResourcePreviewRemovePreviewGeneratorMethodBind = getMethod(
        cstring"EditorResourcePreview", cstring"remove_preview_generator")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not generator.isNil:
    generator.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  editorResourcePreviewRemovePreviewGeneratorMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
