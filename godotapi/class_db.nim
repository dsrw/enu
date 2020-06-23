
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

type
  ClassDB = ref object of Object
    ## singleton: true
    ## instanciable: false
    ## is_reference: false
  
registerClass(ClassDB, "_ClassDB", true)
var singletonClassDB {.threadvar.}: ClassDB
proc canInstance*(class: string): bool {.gcsafe, locks: 0.}
proc classExists*(class: string): bool {.gcsafe, locks: 0.}
proc classGetCategory*(class: string): string {.gcsafe, locks: 0.}
proc classGetIntegerConstant*(class: string; name: string): int64 {.gcsafe, locks: 0.}
proc classGetIntegerConstantList*(class: string; noInheritance: bool = false): PoolStringArray {.
    gcsafe, locks: 0.}
proc classGetMethodList*(class: string; noInheritance: bool = false): Array {.gcsafe,
    locks: 0.}
proc classGetProperty*(objectt: Object; property: string): Variant {.gcsafe, locks: 0.}
proc classGetPropertyList*(class: string; noInheritance: bool = false): Array {.gcsafe,
    locks: 0.}
proc classGetSignal*(class: string; signal: string): Dictionary {.gcsafe, locks: 0.}
proc classGetSignalList*(class: string; noInheritance: bool = false): Array {.gcsafe,
    locks: 0.}
proc classHasIntegerConstant*(class: string; name: string): bool {.gcsafe, locks: 0.}
proc classHasMethod*(class: string; methodd: string; noInheritance: bool = false): bool {.
    gcsafe, locks: 0.}
proc classHasSignal*(class: string; signal: string): bool {.gcsafe, locks: 0.}
proc classSetProperty*(objectt: Object; property: string; value: Variant): Error {.
    gcsafe, locks: 0.}
proc getClassList*(): PoolStringArray {.gcsafe, locks: 0.}
proc getInheritersFromClass*(class: string): PoolStringArray {.gcsafe, locks: 0.}
proc getParentClass*(class: string): string {.gcsafe, locks: 0.}
proc instance*(class: string): Variant {.gcsafe, locks: 0.}
proc isClassEnabled*(class: string): bool {.gcsafe, locks: 0.}
proc isParentClass*(class: string; inherits: string): bool {.gcsafe, locks: 0.}
var classDBCanInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc canInstance(class: string): bool =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBCanInstanceMethodBind):
    classDBCanInstanceMethodBind = getMethod(cstring"_ClassDB",
        cstring"can_instance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBCanInstanceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var classDBClassExistsMethodBind {.threadvar.}: ptr GodotMethodBind
proc classExists(class: string): bool =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassExistsMethodBind):
    classDBClassExistsMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_exists")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBClassExistsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot0)

var classDBClassGetCategoryMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetCategory(class: string): string =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetCategoryMethodBind):
    classDBClassGetCategoryMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_category")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  classDBClassGetCategoryMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var classDBClassGetIntegerConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetIntegerConstant(class: string; name: string): int64 =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetIntegerConstantMethodBind):
    classDBClassGetIntegerConstantMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_integer_constant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBClassGetIntegerConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var classDBClassGetIntegerConstantListMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetIntegerConstantList(class: string; noInheritance: bool = false): PoolStringArray =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetIntegerConstantListMethodBind):
    classDBClassGetIntegerConstantListMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_integer_constant_list")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(noInheritance)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  classDBClassGetIntegerConstantListMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var classDBClassGetMethodListMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetMethodList(class: string; noInheritance: bool = false): Array =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetMethodListMethodBind):
    classDBClassGetMethodListMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_method_list")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(noInheritance)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  classDBClassGetMethodListMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var classDBClassGetPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetProperty(objectt: Object; property: string): Variant =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetPropertyMethodBind):
    classDBClassGetPropertyMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_property")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  classDBClassGetPropertyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)
  result = newVariant(ptrCallVal)

var classDBClassGetPropertyListMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetPropertyList(class: string; noInheritance: bool = false): Array =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetPropertyListMethodBind):
    classDBClassGetPropertyListMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_property_list")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(noInheritance)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  classDBClassGetPropertyListMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var classDBClassGetSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetSignal(class: string; signal: string): Dictionary =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetSignalMethodBind):
    classDBClassGetSignalMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_signal")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(signal)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  classDBClassGetSignalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
  result = newDictionary(ptrCallVal)

var classDBClassGetSignalListMethodBind {.threadvar.}: ptr GodotMethodBind
proc classGetSignalList(class: string; noInheritance: bool = false): Array =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassGetSignalListMethodBind):
    classDBClassGetSignalListMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_get_signal_list")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(noInheritance)
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  classDBClassGetSignalListMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newArray(ptrCallVal)

var classDBClassHasIntegerConstantMethodBind {.threadvar.}: ptr GodotMethodBind
proc classHasIntegerConstant(class: string; name: string): bool =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassHasIntegerConstantMethodBind):
    classDBClassHasIntegerConstantMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_has_integer_constant")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(name)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBClassHasIntegerConstantMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var classDBClassHasMethodMethodBind {.threadvar.}: ptr GodotMethodBind
proc classHasMethod(class: string; methodd: string; noInheritance: bool = false): bool =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassHasMethodMethodBind):
    classDBClassHasMethodMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_has_method")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(methodd)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(noInheritance)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBClassHasMethodMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var classDBClassHasSignalMethodBind {.threadvar.}: ptr GodotMethodBind
proc classHasSignal(class: string; signal: string): bool =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassHasSignalMethodBind):
    classDBClassHasSignalMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_has_signal")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(signal)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBClassHasSignalMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)

var classDBClassSetPropertyMethodBind {.threadvar.}: ptr GodotMethodBind
proc classSetProperty(objectt: Object; property: string; value: Variant): Error =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBClassSetPropertyMethodBind):
    classDBClassSetPropertyMethodBind = getMethod(cstring"_ClassDB",
        cstring"class_set_property")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(property)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = value.godotVariant
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  classDBClassSetPropertyMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)
  result = Error(ptrCallVal)

var classDBGetClassListMethodBind {.threadvar.}: ptr GodotMethodBind
proc getClassList(): PoolStringArray =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBGetClassListMethodBind):
    classDBGetClassListMethodBind = getMethod(cstring"_ClassDB",
        cstring"get_class_list")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  classDBGetClassListMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolStringArray(ptrCallVal)

var classDBGetInheritersFromClassMethodBind {.threadvar.}: ptr GodotMethodBind
proc getInheritersFromClass(class: string): PoolStringArray =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBGetInheritersFromClassMethodBind):
    classDBGetInheritersFromClassMethodBind = getMethod(cstring"_ClassDB",
        cstring"get_inheriters_from_class")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolStringArray
  ptrCallRet = addr(ptrCallVal)
  classDBGetInheritersFromClassMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = newPoolStringArray(ptrCallVal)

var classDBGetParentClassMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParentClass(class: string): string =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBGetParentClassMethodBind):
    classDBGetParentClassMethodBind = getMethod(cstring"_ClassDB",
        cstring"get_parent_class")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  classDBGetParentClassMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var classDBInstanceMethodBind {.threadvar.}: ptr GodotMethodBind
proc instance(class: string): Variant =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBInstanceMethodBind):
    classDBInstanceMethodBind = getMethod(cstring"_ClassDB", cstring"instance")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  classDBInstanceMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)
  result = newVariant(ptrCallVal)

var classDBIsClassEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isClassEnabled(class: string): bool =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBIsClassEnabledMethodBind):
    classDBIsClassEnabledMethodBind = getMethod(cstring"_ClassDB",
        cstring"is_class_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBIsClassEnabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var classDBIsParentClassMethodBind {.threadvar.}: ptr GodotMethodBind
proc isParentClass(class: string; inherits: string): bool =
  if isNil(singletonClassDB):
    singletonClassDB = getSingleton[ClassDB]()
  let self = singletonClassDB
  if isNil(classDBIsParentClassMethodBind):
    classDBIsParentClassMethodBind = getMethod(cstring"_ClassDB",
        cstring"is_parent_class")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(class)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var argToPassToGodot1 = toGodotString(inherits)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  classDBIsParentClassMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)
  deinit(argToPassToGodot1)
