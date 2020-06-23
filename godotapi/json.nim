
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  JSON = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(JSON, "_JSON", true)
var singletonJSON {.threadvar.}: JSON
proc parse*(json: string): JSONParseResult {.gcsafe, locks: 0.}
proc print*(value: Variant; indent: string = ""; sortKeys: bool = false): string {.gcsafe,
    locks: 0.}
var jSONParseMethodBind {.threadvar.}: ptr GodotMethodBind
proc parse(json: string): JSONParseResult =
  if isNil(singletonJSON):
    singletonJSON = getSingleton[JSON]()
  let self = singletonJSON
  if isNil(jSONParseMethodBind):
    jSONParseMethodBind = getMethod(cstring"_JSON", cstring"parse")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(json)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  jSONParseMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var jSONPrintMethodBind {.threadvar.}: ptr GodotMethodBind
proc print(value: Variant; indent: string = ""; sortKeys: bool = false): string =
  if isNil(singletonJSON):
    singletonJSON = getSingleton[JSON]()
  let self = singletonJSON
  if isNil(jSONPrintMethodBind):
    jSONPrintMethodBind = getMethod(cstring"_JSON", cstring"print")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = value.godotVariant
  var argToPassToGodot1 = toGodotString(indent)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(sortKeys)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  jSONPrintMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot1)
  result = $ptrCallVal
  deinit(ptrCallVal)
