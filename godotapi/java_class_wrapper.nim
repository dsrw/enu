
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  JavaClassWrapper = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(JavaClassWrapper, "JavaClassWrapper", true)
var singletonJavaClassWrapper {.threadvar.}: JavaClassWrapper
proc wrap*(name: string): JavaClass {.gcsafe, locks: 0.}
var javaClassWrapperWrapMethodBind {.threadvar.}: ptr GodotMethodBind
proc wrap(name: string): JavaClass =
  if isNil(singletonJavaClassWrapper):
    singletonJavaClassWrapper = getSingleton[JavaClassWrapper]()
  let self = singletonJavaClassWrapper
  if isNil(javaClassWrapperWrapMethodBind):
    javaClassWrapperWrapMethodBind = getMethod(cstring"JavaClassWrapper",
        cstring"wrap")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  javaClassWrapperWrapMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)
