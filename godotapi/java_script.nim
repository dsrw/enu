
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  JavaScript = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(JavaScript, "JavaScript", true)
var singletonJavaScript {.threadvar.}: JavaScript
proc eval*(code: string; useGlobalExecutionContext: bool = false): Variant {.gcsafe,
    locks: 0.}
var javaScriptEvalMethodBind {.threadvar.}: ptr GodotMethodBind
proc eval(code: string; useGlobalExecutionContext: bool = false): Variant =
  if isNil(singletonJavaScript):
    singletonJavaScript = getSingleton[JavaScript]()
  let self = singletonJavaScript
  if isNil(javaScriptEvalMethodBind):
    javaScriptEvalMethodBind = getMethod(cstring"JavaScript", cstring"eval")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(code)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(useGlobalExecutionContext)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  javaScriptEvalMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)
