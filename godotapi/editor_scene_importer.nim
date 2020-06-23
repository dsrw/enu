
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  IMPORT_ANIMATION* = 2'i64
  IMPORT_ANIMATION_DETECT_LOOP* = 4'i64
  IMPORT_ANIMATION_FORCE_ALL_TRACKS_IN_ALL_CLIPS* = 16'i64
  IMPORT_ANIMATION_KEEP_VALUE_TRACKS* = 32'i64
  IMPORT_ANIMATION_OPTIMIZE* = 8'i64
  IMPORT_FAIL_ON_MISSING_DEPENDENCIES* = 512'i64
  IMPORT_GENERATE_TANGENT_ARRAYS* = 256'i64
  IMPORT_MATERIALS_IN_INSTANCES* = 1024'i64
  IMPORT_SCENE* = 1'i64
  IMPORT_USE_COMPRESSION* = 2048'i64
method getExtensions*(self: EditorSceneImporter): Array {.gcsafe, locks: 0, base.}
method getImportFlags*(self: EditorSceneImporter): int64 {.gcsafe, locks: 0, base.}
method importAnimation*(self: EditorSceneImporter; path: string; flags: int64;
                       bakeFps: int64): Animation {.gcsafe, locks: 0, base.}
method importScene*(self: EditorSceneImporter; path: string; flags: int64;
                   bakeFps: int64): Node {.gcsafe, locks: 0, base.}
proc importAnimationFromOtherImporter*(self: EditorSceneImporter; path: string;
                                      flags: int64; bakeFps: int64): Animation {.
    gcsafe, locks: 0.}
proc importSceneFromOtherImporter*(self: EditorSceneImporter; path: string;
                                  flags: int64; bakeFps: int64): Node {.gcsafe,
    locks: 0.}
var editorSceneImporterUnderscoregetExtensionsMethodBind {.threadvar.}: ptr GodotMethodBind
method getExtensions(self: EditorSceneImporter): Array =
  if isNil(editorSceneImporterUnderscoregetExtensionsMethodBind):
    editorSceneImporterUnderscoregetExtensionsMethodBind = getMethod(
        cstring"EditorSceneImporter", cstring"_get_extensions")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  editorSceneImporterUnderscoregetExtensionsMethodBind.ptrCall(self.godotObject,
      nil, ptrCallRet)
  result = newArray(ptrCallVal)

var editorSceneImporterUnderscoregetImportFlagsMethodBind {.threadvar.}: ptr GodotMethodBind
method getImportFlags(self: EditorSceneImporter): int64 =
  if isNil(editorSceneImporterUnderscoregetImportFlagsMethodBind):
    editorSceneImporterUnderscoregetImportFlagsMethodBind = getMethod(
        cstring"EditorSceneImporter", cstring"_get_import_flags")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  editorSceneImporterUnderscoregetImportFlagsMethodBind.ptrCall(
      self.godotObject, nil, ptrCallRet)

var editorSceneImporterUnderscoreimportAnimationMethodBind {.threadvar.}: ptr GodotMethodBind
method importAnimation(self: EditorSceneImporter; path: string; flags: int64;
                      bakeFps: int64): Animation =
  if isNil(editorSceneImporterUnderscoreimportAnimationMethodBind):
    editorSceneImporterUnderscoreimportAnimationMethodBind = getMethod(
        cstring"EditorSceneImporter", cstring"_import_animation")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  argsToPassToGodot[][2] = unsafeAddr(bakeFps)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSceneImporterUnderscoreimportAnimationMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorSceneImporterUnderscoreimportSceneMethodBind {.threadvar.}: ptr GodotMethodBind
method importScene(self: EditorSceneImporter; path: string; flags: int64;
                  bakeFps: int64): Node =
  if isNil(editorSceneImporterUnderscoreimportSceneMethodBind):
    editorSceneImporterUnderscoreimportSceneMethodBind = getMethod(
        cstring"EditorSceneImporter", cstring"_import_scene")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  argsToPassToGodot[][2] = unsafeAddr(bakeFps)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSceneImporterUnderscoreimportSceneMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorSceneImporterImportAnimationFromOtherImporterMethodBind {.threadvar.}: ptr GodotMethodBind
proc importAnimationFromOtherImporter(self: EditorSceneImporter; path: string;
                                     flags: int64; bakeFps: int64): Animation =
  if isNil(editorSceneImporterImportAnimationFromOtherImporterMethodBind):
    editorSceneImporterImportAnimationFromOtherImporterMethodBind = getMethod(
        cstring"EditorSceneImporter",
        cstring"import_animation_from_other_importer")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  argsToPassToGodot[][2] = unsafeAddr(bakeFps)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSceneImporterImportAnimationFromOtherImporterMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var editorSceneImporterImportSceneFromOtherImporterMethodBind {.threadvar.}: ptr GodotMethodBind
proc importSceneFromOtherImporter(self: EditorSceneImporter; path: string;
                                 flags: int64; bakeFps: int64): Node =
  if isNil(editorSceneImporterImportSceneFromOtherImporterMethodBind):
    editorSceneImporterImportSceneFromOtherImporterMethodBind = getMethod(
        cstring"EditorSceneImporter", cstring"import_scene_from_other_importer")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(path)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(flags)
  argsToPassToGodot[][2] = unsafeAddr(bakeFps)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  editorSceneImporterImportSceneFromOtherImporterMethodBind.ptrCall(
      self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
