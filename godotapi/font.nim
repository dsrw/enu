
import
  godot, godottypes, godotinternal, resource

export
  godottypes, resource

proc draw*(self: Font; canvasItem: RID; position: Vector2; string: string;
          modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); clipW: int64 = -1'i64;
          outlineModulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) {.gcsafe, locks: 0.}
proc drawChar*(self: Font; canvasItem: RID; position: Vector2; char: int64;
              next: int64 = -1'i64; modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
              outline: bool = false): float64 {.gcsafe, locks: 0.}
proc getAscent*(self: Font): float64 {.gcsafe, locks: 0.}
proc getCharSize*(self: Font; char: int64; next: int64 = 0'i64): Vector2 {.gcsafe, locks: 0.}
proc getDescent*(self: Font): float64 {.gcsafe, locks: 0.}
proc getHeight*(self: Font): float64 {.gcsafe, locks: 0.}
proc getStringSize*(self: Font; string: string): Vector2 {.gcsafe, locks: 0.}
proc getWordwrapStringSize*(self: Font; string: string; width: float64): Vector2 {.
    gcsafe, locks: 0.}
proc hasOutline*(self: Font): bool {.gcsafe, locks: 0.}
proc isDistanceFieldHint*(self: Font): bool {.gcsafe, locks: 0.}
proc updateChanges*(self: Font) {.gcsafe, locks: 0.}
var fontDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc draw(self: Font; canvasItem: RID; position: Vector2; string: string;
         modulate: Color = initColor(1.0, 1.0, 1.0, 1.0); clipW: int64 = -1'i64;
         outlineModulate: Color = initColor(1.0, 1.0, 1.0, 1.0)) =
  if isNil(fontDrawMethodBind):
    fontDrawMethodBind = getMethod(cstring"Font", cstring"draw")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvasItem)
  argsToPassToGodot[][1] = unsafeAddr(position)
  var argToPassToGodot2 = toGodotString(string)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  argsToPassToGodot[][3] = unsafeAddr(modulate)
  argsToPassToGodot[][4] = unsafeAddr(clipW)
  argsToPassToGodot[][5] = unsafeAddr(outlineModulate)
  var ptrCallRet: pointer
  fontDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot2)

var fontDrawCharMethodBind {.threadvar.}: ptr GodotMethodBind
proc drawChar(self: Font; canvasItem: RID; position: Vector2; char: int64;
             next: int64 = -1'i64; modulate: Color = initColor(1.0, 1.0, 1.0, 1.0);
             outline: bool = false): float64 =
  if isNil(fontDrawCharMethodBind):
    fontDrawCharMethodBind = getMethod(cstring"Font", cstring"draw_char")
  var
    argsStatic: array[6, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(canvasItem)
  argsToPassToGodot[][1] = unsafeAddr(position)
  argsToPassToGodot[][2] = unsafeAddr(char)
  argsToPassToGodot[][3] = unsafeAddr(next)
  argsToPassToGodot[][4] = unsafeAddr(modulate)
  argsToPassToGodot[][5] = unsafeAddr(outline)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontDrawCharMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var fontGetAscentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getAscent(self: Font): float64 =
  if isNil(fontGetAscentMethodBind):
    fontGetAscentMethodBind = getMethod(cstring"Font", cstring"get_ascent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontGetAscentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fontGetCharSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCharSize(self: Font; char: int64; next: int64 = 0'i64): Vector2 =
  if isNil(fontGetCharSizeMethodBind):
    fontGetCharSizeMethodBind = getMethod(cstring"Font", cstring"get_char_size")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(char)
  argsToPassToGodot[][1] = unsafeAddr(next)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontGetCharSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var fontGetDescentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getDescent(self: Font): float64 =
  if isNil(fontGetDescentMethodBind):
    fontGetDescentMethodBind = getMethod(cstring"Font", cstring"get_descent")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontGetDescentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fontGetHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getHeight(self: Font): float64 =
  if isNil(fontGetHeightMethodBind):
    fontGetHeightMethodBind = getMethod(cstring"Font", cstring"get_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontGetHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fontGetStringSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getStringSize(self: Font; string: string): Vector2 =
  if isNil(fontGetStringSizeMethodBind):
    fontGetStringSizeMethodBind = getMethod(cstring"Font",
        cstring"get_string_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(string)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontGetStringSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot0)

var fontGetWordwrapStringSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getWordwrapStringSize(self: Font; string: string; width: float64): Vector2 =
  if isNil(fontGetWordwrapStringSizeMethodBind):
    fontGetWordwrapStringSizeMethodBind = getMethod(cstring"Font",
        cstring"get_wordwrap_string_size")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(string)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(width)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontGetWordwrapStringSizeMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  deinit(argToPassToGodot0)

var fontHasOutlineMethodBind {.threadvar.}: ptr GodotMethodBind
proc hasOutline(self: Font): bool =
  if isNil(fontHasOutlineMethodBind):
    fontHasOutlineMethodBind = getMethod(cstring"Font", cstring"has_outline")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontHasOutlineMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fontIsDistanceFieldHintMethodBind {.threadvar.}: ptr GodotMethodBind
proc isDistanceFieldHint(self: Font): bool =
  if isNil(fontIsDistanceFieldHintMethodBind):
    fontIsDistanceFieldHintMethodBind = getMethod(cstring"Font",
        cstring"is_distance_field_hint")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  fontIsDistanceFieldHintMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var fontUpdateChangesMethodBind {.threadvar.}: ptr GodotMethodBind
proc updateChanges(self: Font) =
  if isNil(fontUpdateChangesMethodBind):
    fontUpdateChangesMethodBind = getMethod(cstring"Font", cstring"update_changes")
  var ptrCallRet: pointer
  fontUpdateChangesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
