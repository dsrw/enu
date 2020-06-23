
import
  godot, godottypes, godotinternal, reference

export
  godottypes, reference

const
  NODE_CDATA* = 5'i64
  NODE_COMMENT* = 4'i64
  NODE_ELEMENT* = 1'i64
  NODE_ELEMENT_END* = 2'i64
  NODE_NONE* = 0'i64
  NODE_TEXT* = 3'i64
  NODE_UNKNOWN* = 6'i64
proc getAttributeCount*(self: XMLParser): int64 {.gcsafe, locks: 0.}
proc getAttributeName*(self: XMLParser; idx: int64): string {.gcsafe, locks: 0.}
proc getAttributeValue*(self: XMLParser; idx: int64): string {.gcsafe, locks: 0.}
proc getCurrentLine*(self: XMLParser): int64 {.gcsafe, locks: 0.}
proc getNamedAttributeValue*(self: XMLParser; name: string): string {.gcsafe, locks: 0.}
proc getNamedAttributeValueSafe*(self: XMLParser; name: string): string {.gcsafe,
    locks: 0.}
proc getNodeData*(self: XMLParser): string {.gcsafe, locks: 0.}
proc getNodeName*(self: XMLParser): string {.gcsafe, locks: 0.}
proc getNodeOffset*(self: XMLParser): int64 {.gcsafe, locks: 0.}
proc getNodeType*(self: XMLParser): int64 {.gcsafe, locks: 0.}
proc hasAttribute*(self: XMLParser; name: string): bool {.gcsafe, locks: 0.}
proc isEmpty*(self: XMLParser): bool {.gcsafe, locks: 0.}
proc open*(self: XMLParser; file: string): Error {.gcsafe, locks: 0.}
proc openBuffer*(self: XMLParser; buffer: PoolByteArray): Error {.gcsafe, locks: 0.}
proc read*(self: XMLParser): Error {.gcsafe, locks: 0.}
proc seek*(self: XMLParser; position: int64): Error {.gcsafe, locks: 0.}
proc skipSection*(self: XMLParser) {.gcsafe, locks: 0.}
var xMLParserGetAttributeCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAttributeCount(self: XMLParser): int64 =
  if isNil(xMLParserGetAttributeCountMethodBind):
    xMLParserGetAttributeCountMethodBind = getMethod(cstring"XMLParser",
        cstring"get_attribute_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  xMLParserGetAttributeCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var xMLParserGetAttributeNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAttributeName(self: XMLParser; idx: int64): string =
  if isNil(xMLParserGetAttributeNameMethodBind):
    xMLParserGetAttributeNameMethodBind = getMethod(cstring"XMLParser",
        cstring"get_attribute_name")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  xMLParserGetAttributeNameMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var xMLParserGetAttributeValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAttributeValue(self: XMLParser; idx: int64): string =
  if isNil(xMLParserGetAttributeValueMethodBind):
    xMLParserGetAttributeValueMethodBind = getMethod(cstring"XMLParser",
        cstring"get_attribute_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  xMLParserGetAttributeValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var xMLParserGetCurrentLineMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCurrentLine(self: XMLParser): int64 =
  if isNil(xMLParserGetCurrentLineMethodBind):
    xMLParserGetCurrentLineMethodBind = getMethod(cstring"XMLParser",
        cstring"get_current_line")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  xMLParserGetCurrentLineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var xMLParserGetNamedAttributeValueMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNamedAttributeValue(self: XMLParser; name: string): string =
  if isNil(xMLParserGetNamedAttributeValueMethodBind):
    xMLParserGetNamedAttributeValueMethodBind = getMethod(cstring"XMLParser",
        cstring"get_named_attribute_value")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  xMLParserGetNamedAttributeValueMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var xMLParserGetNamedAttributeValueSafeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNamedAttributeValueSafe(self: XMLParser; name: string): string =
  if isNil(xMLParserGetNamedAttributeValueSafeMethodBind):
    xMLParserGetNamedAttributeValueSafeMethodBind = getMethod(cstring"XMLParser",
        cstring"get_named_attribute_value_safe")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  xMLParserGetNamedAttributeValueSafeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = $ptrCallVal
  deinit(ptrCallVal)

var xMLParserGetNodeDataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeData(self: XMLParser): string =
  if isNil(xMLParserGetNodeDataMethodBind):
    xMLParserGetNodeDataMethodBind = getMethod(cstring"XMLParser",
        cstring"get_node_data")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  xMLParserGetNodeDataMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var xMLParserGetNodeNameMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeName(self: XMLParser): string =
  if isNil(xMLParserGetNodeNameMethodBind):
    xMLParserGetNodeNameMethodBind = getMethod(cstring"XMLParser",
        cstring"get_node_name")
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  xMLParserGetNodeNameMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var xMLParserGetNodeOffsetMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeOffset(self: XMLParser): int64 =
  if isNil(xMLParserGetNodeOffsetMethodBind):
    xMLParserGetNodeOffsetMethodBind = getMethod(cstring"XMLParser",
        cstring"get_node_offset")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  xMLParserGetNodeOffsetMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var xMLParserGetNodeTypeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNodeType(self: XMLParser): int64 =
  if isNil(xMLParserGetNodeTypeMethodBind):
    xMLParserGetNodeTypeMethodBind = getMethod(cstring"XMLParser",
        cstring"get_node_type")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  xMLParserGetNodeTypeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var xMLParserHasAttributeMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasAttribute(self: XMLParser; name: string): bool =
  if isNil(xMLParserHasAttributeMethodBind):
    xMLParserHasAttributeMethodBind = getMethod(cstring"XMLParser",
        cstring"has_attribute")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(name)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  xMLParserHasAttributeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot0)

var xMLParserIsEmptyMethodBind {.threadvar.}: ptr GodotMethodBind
proc isEmpty(self: XMLParser): bool =
  if isNil(xMLParserIsEmptyMethodBind):
    xMLParserIsEmptyMethodBind = getMethod(cstring"XMLParser", cstring"is_empty")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  xMLParserIsEmptyMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var xMLParserOpenMethodBind {.threadvar.}: ptr GodotMethodBind
proc open(self: XMLParser; file: string): Error =
  if isNil(xMLParserOpenMethodBind):
    xMLParserOpenMethodBind = getMethod(cstring"XMLParser", cstring"open")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(file)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  xMLParserOpenMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)
  result = Error(ptrCallVal)

var xMLParserOpenBufferMethodBind {.threadvar.}: ptr GodotMethodBind
proc openBuffer(self: XMLParser; buffer: PoolByteArray): Error =
  if isNil(xMLParserOpenBufferMethodBind):
    xMLParserOpenBufferMethodBind = getMethod(cstring"XMLParser",
        cstring"open_buffer")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = buffer.godotPoolByteArray
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  xMLParserOpenBufferMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = Error(ptrCallVal)

var xMLParserReadMethodBind {.threadvar.}: ptr GodotMethodBind
proc read(self: XMLParser): Error =
  if isNil(xMLParserReadMethodBind):
    xMLParserReadMethodBind = getMethod(cstring"XMLParser", cstring"read")
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  xMLParserReadMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = Error(ptrCallVal)

var xMLParserSeekMethodBind {.threadvar.}: ptr GodotMethodBind
proc seek(self: XMLParser; position: int64): Error =
  if isNil(xMLParserSeekMethodBind):
    xMLParserSeekMethodBind = getMethod(cstring"XMLParser", cstring"seek")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  var ptrCallRet: pointer
  var ptrCallVal: int64
  ptrCallRet = addr(ptrCallVal)
  xMLParserSeekMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  result = Error(ptrCallVal)

var xMLParserSkipSectionMethodBind {.threadvar.}: ptr GodotMethodBind
proc skipSection(self: XMLParser) =
  if isNil(xMLParserSkipSectionMethodBind):
    xMLParserSkipSectionMethodBind = getMethod(cstring"XMLParser",
        cstring"skip_section")
  var ptrCallRet: pointer
  xMLParserSkipSectionMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
