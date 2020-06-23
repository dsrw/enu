
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  VisualScriptEditor = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(VisualScriptEditor, "_VisualScriptEditor", true)
var singletonVisualScriptEditor {.threadvar.}: VisualScriptEditor
proc addCustomNode*(name: string; category: string; script: Script) {.gcsafe, locks: 0.}
proc removeCustomNode*(name: string; category: string) {.gcsafe, locks: 0.}
var visualScriptEditorAddCustomNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc addCustomNode(name: string; category: string; script: Script) =
  if isNil(singletonVisualScriptEditor):
    singletonVisualScriptEditor = getSingleton[VisualScriptEditor]()
  let self = singletonVisualScriptEditor
  if isNil(visualScriptEditorAddCustomNodeMethodBind):
    visualScriptEditorAddCustomNodeMethodBind = getMethod(
        cstring"_VisualScriptEditor", cstring"add_custom_node")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(category)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  let argToPassToGodot2 = if not script.isNil:
    script.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  visualScriptEditorAddCustomNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var visualScriptEditorRemoveCustomNodeMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeCustomNode(name: string; category: string) =
  if isNil(singletonVisualScriptEditor):
    singletonVisualScriptEditor = getSingleton[VisualScriptEditor]()
  let self = singletonVisualScriptEditor
  if isNil(visualScriptEditorRemoveCustomNodeMethodBind):
    visualScriptEditorRemoveCustomNodeMethodBind = getMethod(
        cstring"_VisualScriptEditor", cstring"remove_custom_node")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(category)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  visualScriptEditorRemoveCustomNodeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
