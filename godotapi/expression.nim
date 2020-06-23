
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

proc execute*(self: Expression; inputs: Array = newArray(); baseInstance: Object = nil;
             showError: bool = true): Variant {.gcsafe, locks: 0.}
proc getErrorText*(self: Expression): string {.gcsafe, locks: 0.}
proc hasExecuteFailed*(self: Expression): bool {.gcsafe, locks: 0.}
proc parse*(self: Expression; expression: string;
           inputNames: PoolStringArray = newPoolStringArray()): Error {.gcsafe,
    locks: 0.}
var expressionExecuteMethodBind {.threadvar.}: ptr GodotMethodBind
proc execute(self: Expression; inputs: Array = newArray(); baseInstance: Object = nil;
            showError: bool = true): Variant =
  if isNil(expressionExecuteMethodBind):
    expressionExecuteMethodBind = getMethod(cstring"Expression", cstring"execute")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = inputs.godotArray
  let argToPassToGodot1 = if not baseInstance.isNil:
    baseInstance.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(showError)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  expressionExecuteMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = newVariant(ptrCallVal)

var expressionGetErrorTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getErrorText(self: Expression): string =
  if isNil(expressionGetErrorTextMethodBind):
    expressionGetErrorTextMethodBind = getMethod(cstring"Expression",
        cstring"get_error_text")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  expressionGetErrorTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var expressionHasExecuteFailedMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasExecuteFailed(self: Expression): bool =
  if isNil(expressionHasExecuteFailedMethodBind):
    expressionHasExecuteFailedMethodBind = getMethod(cstring"Expression",
        cstring"has_execute_failed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  expressionHasExecuteFailedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var expressionParseMethodBind {.threadvar.}: ptr GodotMethodBind
proc parse(self: Expression; expression: string;
          inputNames: PoolStringArray = newPoolStringArray()): Error =
  if isNil(expressionParseMethodBind):
    expressionParseMethodBind = getMethod(cstring"Expression", cstring"parse")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(expression)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = inputNames.godotPoolStringArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  expressionParseMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)
