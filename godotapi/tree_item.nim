
import
  godot, godottypes, godotinternal, objects

export
  godottypes, objects

const
  ALIGN_CENTER* = 1'i64
  ALIGN_LEFT* = 0'i64
  ALIGN_RIGHT* = 2'i64
  CELL_MODE_CHECK* = 1'i64
  CELL_MODE_CUSTOM* = 4'i64
  CELL_MODE_ICON* = 3'i64
  CELL_MODE_RANGE* = 2'i64
  CELL_MODE_STRING* = 0'i64
proc collapsed*(self: TreeItem): bool {.gcsafe, locks: 0.}
proc `collapsed=`*(self: TreeItem; val: bool) {.gcsafe, locks: 0.}
proc customMinimumHeight*(self: TreeItem): int64 {.gcsafe, locks: 0.}
proc `customMinimumHeight=`*(self: TreeItem; val: int64) {.gcsafe, locks: 0.}
proc disableFolding*(self: TreeItem): bool {.gcsafe, locks: 0.}
proc `disableFolding=`*(self: TreeItem; val: bool) {.gcsafe, locks: 0.}
proc addButton*(self: TreeItem; column: int64; button: Texture;
               buttonIdx: int64 = -1'i64; disabled: bool = false; tooltip: string = "") {.
    gcsafe, locks: 0.}
proc callRecursive*(self: TreeItem; methodd: string; variantArgs: varargs[Variant]): Variant {.
    gcsafe, locks: 0.}
proc clearCustomBgColor*(self: TreeItem; column: int64) {.gcsafe, locks: 0.}
proc clearCustomColor*(self: TreeItem; column: int64) {.gcsafe, locks: 0.}
proc deselect*(self: TreeItem; column: int64) {.gcsafe, locks: 0.}
proc eraseButton*(self: TreeItem; column: int64; buttonIdx: int64) {.gcsafe, locks: 0.}
proc getButton*(self: TreeItem; column: int64; buttonIdx: int64): Texture {.gcsafe,
    locks: 0.}
proc getButtonCount*(self: TreeItem; column: int64): int64 {.gcsafe, locks: 0.}
proc getButtonTooltip*(self: TreeItem; column: int64; buttonIdx: int64): string {.
    gcsafe, locks: 0.}
proc getCellMode*(self: TreeItem; column: int64): int64 {.gcsafe, locks: 0.}
proc getChildren*(self: TreeItem): TreeItem {.gcsafe, locks: 0.}
proc getCustomBgColor*(self: TreeItem; column: int64): Color {.gcsafe, locks: 0.}
proc getCustomColor*(self: TreeItem; column: int64): Color {.gcsafe, locks: 0.}
proc getExpandRight*(self: TreeItem; column: int64): bool {.gcsafe, locks: 0.}
proc getIcon*(self: TreeItem; column: int64): Texture {.gcsafe, locks: 0.}
proc getIconMaxWidth*(self: TreeItem; column: int64): int64 {.gcsafe, locks: 0.}
proc getIconModulate*(self: TreeItem; column: int64): Color {.gcsafe, locks: 0.}
proc getIconRegion*(self: TreeItem; column: int64): Rect2 {.gcsafe, locks: 0.}
proc getMetadata*(self: TreeItem; column: int64): Variant {.gcsafe, locks: 0.}
proc getNext*(self: TreeItem): TreeItem {.gcsafe, locks: 0.}
proc getNextVisible*(self: TreeItem; wrap: bool = false): TreeItem {.gcsafe, locks: 0.}
proc getParent*(self: TreeItem): TreeItem {.gcsafe, locks: 0.}
proc getPrev*(self: TreeItem): TreeItem {.gcsafe, locks: 0.}
proc getPrevVisible*(self: TreeItem; wrap: bool = false): TreeItem {.gcsafe, locks: 0.}
proc getRange*(self: TreeItem; column: int64): float64 {.gcsafe, locks: 0.}
proc getRangeConfig*(self: TreeItem; column: int64): Dictionary {.gcsafe, locks: 0.}
proc getSuffix*(self: TreeItem; column: int64): string {.gcsafe, locks: 0.}
proc getText*(self: TreeItem; column: int64): string {.gcsafe, locks: 0.}
proc getTextAlign*(self: TreeItem; column: int64): int64 {.gcsafe, locks: 0.}
proc getTooltip*(self: TreeItem; column: int64): string {.gcsafe, locks: 0.}
proc isButtonDisabled*(self: TreeItem; column: int64; buttonIdx: int64): bool {.gcsafe,
    locks: 0.}
proc isChecked*(self: TreeItem; column: int64): bool {.gcsafe, locks: 0.}
proc isCustomSetAsButton*(self: TreeItem; column: int64): bool {.gcsafe, locks: 0.}
proc isEditable*(self: TreeItem; column: int64): bool {.gcsafe, locks: 0.}
proc isSelectable*(self: TreeItem; column: int64): bool {.gcsafe, locks: 0.}
proc isSelected*(self: TreeItem; column: int64): bool {.gcsafe, locks: 0.}
proc moveToBottom*(self: TreeItem) {.gcsafe, locks: 0.}
proc moveToTop*(self: TreeItem) {.gcsafe, locks: 0.}
proc removeChild*(self: TreeItem; child: Object) {.gcsafe, locks: 0.}
proc select*(self: TreeItem; column: int64) {.gcsafe, locks: 0.}
proc setButton*(self: TreeItem; column: int64; buttonIdx: int64; button: Texture) {.
    gcsafe, locks: 0.}
proc setButtonDisabled*(self: TreeItem; column: int64; buttonIdx: int64; disabled: bool) {.
    gcsafe, locks: 0.}
proc setCellMode*(self: TreeItem; column: int64; mode: int64) {.gcsafe, locks: 0.}
proc setChecked*(self: TreeItem; column: int64; checked: bool) {.gcsafe, locks: 0.}
proc setCustomAsButton*(self: TreeItem; column: int64; enable: bool) {.gcsafe, locks: 0.}
proc setCustomBgColor*(self: TreeItem; column: int64; color: Color;
                      justOutline: bool = false) {.gcsafe, locks: 0.}
proc setCustomColor*(self: TreeItem; column: int64; color: Color) {.gcsafe, locks: 0.}
proc setCustomDraw*(self: TreeItem; column: int64; objectt: Object; callback: string) {.
    gcsafe, locks: 0.}
proc setEditable*(self: TreeItem; column: int64; enabled: bool) {.gcsafe, locks: 0.}
proc setExpandRight*(self: TreeItem; column: int64; enable: bool) {.gcsafe, locks: 0.}
proc setIcon*(self: TreeItem; column: int64; texture: Texture) {.gcsafe, locks: 0.}
proc setIconMaxWidth*(self: TreeItem; column: int64; width: int64) {.gcsafe, locks: 0.}
proc setIconModulate*(self: TreeItem; column: int64; modulate: Color) {.gcsafe, locks: 0.}
proc setIconRegion*(self: TreeItem; column: int64; region: Rect2) {.gcsafe, locks: 0.}
proc setMetadata*(self: TreeItem; column: int64; meta: Variant) {.gcsafe, locks: 0.}
proc setRange*(self: TreeItem; column: int64; value: float64) {.gcsafe, locks: 0.}
proc setRangeConfig*(self: TreeItem; column: int64; min: float64; max: float64;
                    step: float64; expr: bool = false) {.gcsafe, locks: 0.}
proc setSelectable*(self: TreeItem; column: int64; selectable: bool) {.gcsafe, locks: 0.}
proc setSuffix*(self: TreeItem; column: int64; text: string) {.gcsafe, locks: 0.}
proc setText*(self: TreeItem; column: int64; text: string) {.gcsafe, locks: 0.}
proc setTextAlign*(self: TreeItem; column: int64; textAlign: int64) {.gcsafe, locks: 0.}
proc setTooltip*(self: TreeItem; column: int64; tooltip: string) {.gcsafe, locks: 0.}
var treeItemIsCollapsedMethodBind {.threadvar.}: ptr GodotMethodBind
proc collapsed(self: TreeItem): bool =
  if isNil(treeItemIsCollapsedMethodBind):
    treeItemIsCollapsedMethodBind = getMethod(cstring"TreeItem",
        cstring"is_collapsed")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsCollapsedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeItemSetCollapsedMethodBind {.threadvar.}: ptr GodotMethodBind
proc `collapsed=`(self: TreeItem; val: bool) =
  if isNil(treeItemSetCollapsedMethodBind):
    treeItemSetCollapsedMethodBind = getMethod(cstring"TreeItem",
        cstring"set_collapsed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeItemSetCollapsedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetCustomMinimumHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc customMinimumHeight(self: TreeItem): int64 =
  if isNil(treeItemGetCustomMinimumHeightMethodBind):
    treeItemGetCustomMinimumHeightMethodBind = getMethod(cstring"TreeItem",
        cstring"get_custom_minimum_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetCustomMinimumHeightMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var treeItemSetCustomMinimumHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `customMinimumHeight=`(self: TreeItem; val: int64) =
  if isNil(treeItemSetCustomMinimumHeightMethodBind):
    treeItemSetCustomMinimumHeightMethodBind = getMethod(cstring"TreeItem",
        cstring"set_custom_minimum_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeItemSetCustomMinimumHeightMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeItemIsFoldingDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc disableFolding(self: TreeItem): bool =
  if isNil(treeItemIsFoldingDisabledMethodBind):
    treeItemIsFoldingDisabledMethodBind = getMethod(cstring"TreeItem",
        cstring"is_folding_disabled")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsFoldingDisabledMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeItemSetDisableFoldingMethodBind {.threadvar.}: ptr GodotMethodBind
proc `disableFolding=`(self: TreeItem; val: bool) =
  if isNil(treeItemSetDisableFoldingMethodBind):
    treeItemSetDisableFoldingMethodBind = getMethod(cstring"TreeItem",
        cstring"set_disable_folding")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  treeItemSetDisableFoldingMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeItemAddButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc addButton(self: TreeItem; column: int64; button: Texture;
              buttonIdx: int64 = -1'i64; disabled: bool = false; tooltip: string = "") =
  if isNil(treeItemAddButtonMethodBind):
    treeItemAddButtonMethodBind = getMethod(cstring"TreeItem", cstring"add_button")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  let argToPassToGodot1 = if not button.isNil:
    button.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(buttonIdx)
  argsToPassToGodot[][3] = unsafeAddr(disabled)
  var argToPassToGodot4 = toGodotString(tooltip)
  argsToPassToGodot[][4] = unsafeAddr(argToPassToGodot4)
  var ptrCallRet: pointer
  treeItemAddButtonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot4)

var treeItemCallRecursiveMethodBind {.threadvar.}: ptr GodotMethodBind
proc callRecursive(self: TreeItem; methodd: string; variantArgs: varargs[Variant]): Variant =
  if isNil(treeItemCallRecursiveMethodBind):
    treeItemCallRecursiveMethodBind = getMethod(cstring"TreeItem",
        cstring"call_recursive")
  var
    callError: VariantCallError
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, ptr GodotVariant]](godotAlloc(
        cint(sizeof(ptr GodotVariant) * (cint(1 + variantArgs.len)))))
  var variant0: GodotVariant
  var variantString0: GodotString = toGodotString(methodd)
  initGodotVariant(variant0, variantString0)
  argsToPassToGodot[][0] = addr(variant0)
  var idx = 1
  while idx < cint(1 + variantArgs.len):
    argsToPassToGodot[][idx] = variantArgs[idx - 1].godotVariant
    inc idx
  let callRet {.used.} = treeItemCallRecursiveMethodBind.call(self.godotObject,
      argsToPassToGodot, cint(1 + variantArgs.len), callError)
  godotFree(argsToPassToGodot)
  deinit(variant0)
  deinit(variantString0)
  if callError.error != VariantCallErrorType.OK:
    raise newCallError(callError)
  let convErr = fromVariant(result, newVariant(callRet))
  if convErr != ConversionResult.OK:
    raise newConversionError(convErr)
  
var treeItemClearCustomBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCustomBgColor(self: TreeItem; column: int64) =
  if isNil(treeItemClearCustomBgColorMethodBind):
    treeItemClearCustomBgColorMethodBind = getMethod(cstring"TreeItem",
        cstring"clear_custom_bg_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  treeItemClearCustomBgColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeItemClearCustomColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc clearCustomColor(self: TreeItem; column: int64) =
  if isNil(treeItemClearCustomColorMethodBind):
    treeItemClearCustomColorMethodBind = getMethod(cstring"TreeItem",
        cstring"clear_custom_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  treeItemClearCustomColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemDeselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc deselect(self: TreeItem; column: int64) =
  if isNil(treeItemDeselectMethodBind):
    treeItemDeselectMethodBind = getMethod(cstring"TreeItem", cstring"deselect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  treeItemDeselectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var treeItemEraseButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc eraseButton(self: TreeItem; column: int64; buttonIdx: int64) =
  if isNil(treeItemEraseButtonMethodBind):
    treeItemEraseButtonMethodBind = getMethod(cstring"TreeItem",
        cstring"erase_button")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(buttonIdx)
  var ptrCallRet: pointer
  treeItemEraseButtonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeItemGetButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc getButton(self: TreeItem; column: int64; buttonIdx: int64): Texture =
  if isNil(treeItemGetButtonMethodBind):
    treeItemGetButtonMethodBind = getMethod(cstring"TreeItem", cstring"get_button")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(buttonIdx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetButtonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetButtonCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getButtonCount(self: TreeItem; column: int64): int64 =
  if isNil(treeItemGetButtonCountMethodBind):
    treeItemGetButtonCountMethodBind = getMethod(cstring"TreeItem",
        cstring"get_button_count")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetButtonCountMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetButtonTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc getButtonTooltip(self: TreeItem; column: int64; buttonIdx: int64): string =
  if isNil(treeItemGetButtonTooltipMethodBind):
    treeItemGetButtonTooltipMethodBind = getMethod(cstring"TreeItem",
        cstring"get_button_tooltip")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(buttonIdx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  treeItemGetButtonTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var treeItemGetCellModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCellMode(self: TreeItem; column: int64): int64 =
  if isNil(treeItemGetCellModeMethodBind):
    treeItemGetCellModeMethodBind = getMethod(cstring"TreeItem",
        cstring"get_cell_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetCellModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeItemGetChildrenMethodBind {.threadvar.}: ptr GodotMethodBind
proc getChildren(self: TreeItem): TreeItem =
  if isNil(treeItemGetChildrenMethodBind):
    treeItemGetChildrenMethodBind = getMethod(cstring"TreeItem",
        cstring"get_children")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetChildrenMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetCustomBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCustomBgColor(self: TreeItem; column: int64): Color =
  if isNil(treeItemGetCustomBgColorMethodBind):
    treeItemGetCustomBgColorMethodBind = getMethod(cstring"TreeItem",
        cstring"get_custom_bg_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetCustomBgColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetCustomColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getCustomColor(self: TreeItem; column: int64): Color =
  if isNil(treeItemGetCustomColorMethodBind):
    treeItemGetCustomColorMethodBind = getMethod(cstring"TreeItem",
        cstring"get_custom_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetCustomColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetExpandRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc getExpandRight(self: TreeItem; column: int64): bool =
  if isNil(treeItemGetExpandRightMethodBind):
    treeItemGetExpandRightMethodBind = getMethod(cstring"TreeItem",
        cstring"get_expand_right")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetExpandRightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIcon(self: TreeItem; column: int64): Texture =
  if isNil(treeItemGetIconMethodBind):
    treeItemGetIconMethodBind = getMethod(cstring"TreeItem", cstring"get_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetIconMaxWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIconMaxWidth(self: TreeItem; column: int64): int64 =
  if isNil(treeItemGetIconMaxWidthMethodBind):
    treeItemGetIconMaxWidthMethodBind = getMethod(cstring"TreeItem",
        cstring"get_icon_max_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetIconMaxWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetIconModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIconModulate(self: TreeItem; column: int64): Color =
  if isNil(treeItemGetIconModulateMethodBind):
    treeItemGetIconModulateMethodBind = getMethod(cstring"TreeItem",
        cstring"get_icon_modulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetIconModulateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetIconRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getIconRegion(self: TreeItem; column: int64): Rect2 =
  if isNil(treeItemGetIconRegionMethodBind):
    treeItemGetIconRegionMethodBind = getMethod(cstring"TreeItem",
        cstring"get_icon_region")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetIconRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getMetadata(self: TreeItem; column: int64): Variant =
  if isNil(treeItemGetMetadataMethodBind):
    treeItemGetMetadataMethodBind = getMethod(cstring"TreeItem",
        cstring"get_metadata")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  treeItemGetMetadataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = newVariant(ptrCallVal)

var treeItemGetNextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNext(self: TreeItem): TreeItem =
  if isNil(treeItemGetNextMethodBind):
    treeItemGetNextMethodBind = getMethod(cstring"TreeItem", cstring"get_next")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetNextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetNextVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getNextVisible(self: TreeItem; wrap: bool = false): TreeItem =
  if isNil(treeItemGetNextVisibleMethodBind):
    treeItemGetNextVisibleMethodBind = getMethod(cstring"TreeItem",
        cstring"get_next_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(wrap)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetNextVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetParentMethodBind {.threadvar.}: ptr GodotMethodBind
proc getParent(self: TreeItem): TreeItem =
  if isNil(treeItemGetParentMethodBind):
    treeItemGetParentMethodBind = getMethod(cstring"TreeItem", cstring"get_parent")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetParentMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetPrevMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPrev(self: TreeItem): TreeItem =
  if isNil(treeItemGetPrevMethodBind):
    treeItemGetPrevMethodBind = getMethod(cstring"TreeItem", cstring"get_prev")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetPrevMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetPrevVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPrevVisible(self: TreeItem; wrap: bool = false): TreeItem =
  if isNil(treeItemGetPrevVisibleMethodBind):
    treeItemGetPrevVisibleMethodBind = getMethod(cstring"TreeItem",
        cstring"get_prev_visible")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(wrap)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  treeItemGetPrevVisibleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var treeItemGetRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRange(self: TreeItem; column: int64): float64 =
  if isNil(treeItemGetRangeMethodBind):
    treeItemGetRangeMethodBind = getMethod(cstring"TreeItem", cstring"get_range")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetRangeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var treeItemGetRangeConfigMethodBind {.threadvar.}: ptr GodotMethodBind
proc getRangeConfig(self: TreeItem; column: int64): Dictionary =
  if isNil(treeItemGetRangeConfigMethodBind):
    treeItemGetRangeConfigMethodBind = getMethod(cstring"TreeItem",
        cstring"get_range_config")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  var ptrCallVal: GodotDictionary
  ptrCallRet = addr(ptrCallVal)
  treeItemGetRangeConfigMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newDictionary(ptrCallVal)

var treeItemGetSuffixMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSuffix(self: TreeItem; column: int64): string =
  if isNil(treeItemGetSuffixMethodBind):
    treeItemGetSuffixMethodBind = getMethod(cstring"TreeItem", cstring"get_suffix")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  treeItemGetSuffixMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var treeItemGetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getText(self: TreeItem; column: int64): string =
  if isNil(treeItemGetTextMethodBind):
    treeItemGetTextMethodBind = getMethod(cstring"TreeItem", cstring"get_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  treeItemGetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var treeItemGetTextAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTextAlign(self: TreeItem; column: int64): int64 =
  if isNil(treeItemGetTextAlignMethodBind):
    treeItemGetTextAlignMethodBind = getMethod(cstring"TreeItem",
        cstring"get_text_align")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemGetTextAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemGetTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc getTooltip(self: TreeItem; column: int64): string =
  if isNil(treeItemGetTooltipMethodBind):
    treeItemGetTooltipMethodBind = getMethod(cstring"TreeItem",
        cstring"get_tooltip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  treeItemGetTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var treeItemIsButtonDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isButtonDisabled(self: TreeItem; column: int64; buttonIdx: int64): bool =
  if isNil(treeItemIsButtonDisabledMethodBind):
    treeItemIsButtonDisabledMethodBind = getMethod(cstring"TreeItem",
        cstring"is_button_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(buttonIdx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsButtonDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemIsCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isChecked(self: TreeItem; column: int64): bool =
  if isNil(treeItemIsCheckedMethodBind):
    treeItemIsCheckedMethodBind = getMethod(cstring"TreeItem", cstring"is_checked")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsCheckedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var treeItemIsCustomSetAsButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc isCustomSetAsButton(self: TreeItem; column: int64): bool =
  if isNil(treeItemIsCustomSetAsButtonMethodBind):
    treeItemIsCustomSetAsButtonMethodBind = getMethod(cstring"TreeItem",
        cstring"is_custom_set_as_button")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsCustomSetAsButtonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeItemIsEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isEditable(self: TreeItem; column: int64): bool =
  if isNil(treeItemIsEditableMethodBind):
    treeItemIsEditableMethodBind = getMethod(cstring"TreeItem",
        cstring"is_editable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsEditableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var treeItemIsSelectableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSelectable(self: TreeItem; column: int64): bool =
  if isNil(treeItemIsSelectableMethodBind):
    treeItemIsSelectableMethodBind = getMethod(cstring"TreeItem",
        cstring"is_selectable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsSelectableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemIsSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSelected(self: TreeItem; column: int64): bool =
  if isNil(treeItemIsSelectedMethodBind):
    treeItemIsSelectedMethodBind = getMethod(cstring"TreeItem",
        cstring"is_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  treeItemIsSelectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var treeItemMoveToBottomMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveToBottom(self: TreeItem) =
  if isNil(treeItemMoveToBottomMethodBind):
    treeItemMoveToBottomMethodBind = getMethod(cstring"TreeItem",
        cstring"move_to_bottom")
  var ptrCallRet: pointer
  treeItemMoveToBottomMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeItemMoveToTopMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveToTop(self: TreeItem) =
  if isNil(treeItemMoveToTopMethodBind):
    treeItemMoveToTopMethodBind = getMethod(cstring"TreeItem",
        cstring"move_to_top")
  var ptrCallRet: pointer
  treeItemMoveToTopMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var treeItemRemoveChildMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeChild(self: TreeItem; child: Object) =
  if isNil(treeItemRemoveChildMethodBind):
    treeItemRemoveChildMethodBind = getMethod(cstring"TreeItem",
        cstring"remove_child")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not child.isNil:
    child.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  treeItemRemoveChildMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeItemSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc select(self: TreeItem; column: int64) =
  if isNil(treeItemSelectMethodBind):
    treeItemSelectMethodBind = getMethod(cstring"TreeItem", cstring"select")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var ptrCallRet: pointer
  treeItemSelectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var treeItemSetButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc setButton(self: TreeItem; column: int64; buttonIdx: int64; button: Texture) =
  if isNil(treeItemSetButtonMethodBind):
    treeItemSetButtonMethodBind = getMethod(cstring"TreeItem", cstring"set_button")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(buttonIdx)
  let argToPassToGodot2 = if not button.isNil:
    button.godotObject
  else:
    nil
  argsToPassToGodot[][2] = argToPassToGodot2
  var ptrCallRet: pointer
  treeItemSetButtonMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)

var treeItemSetButtonDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setButtonDisabled(self: TreeItem; column: int64; buttonIdx: int64; disabled: bool) =
  if isNil(treeItemSetButtonDisabledMethodBind):
    treeItemSetButtonDisabledMethodBind = getMethod(cstring"TreeItem",
        cstring"set_button_disabled")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(buttonIdx)
  argsToPassToGodot[][2] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  treeItemSetButtonDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeItemSetCellModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCellMode(self: TreeItem; column: int64; mode: int64) =
  if isNil(treeItemSetCellModeMethodBind):
    treeItemSetCellModeMethodBind = getMethod(cstring"TreeItem",
        cstring"set_cell_mode")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(mode)
  var ptrCallRet: pointer
  treeItemSetCellModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeItemSetCheckedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setChecked(self: TreeItem; column: int64; checked: bool) =
  if isNil(treeItemSetCheckedMethodBind):
    treeItemSetCheckedMethodBind = getMethod(cstring"TreeItem",
        cstring"set_checked")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(checked)
  var ptrCallRet: pointer
  treeItemSetCheckedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var treeItemSetCustomAsButtonMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCustomAsButton(self: TreeItem; column: int64; enable: bool) =
  if isNil(treeItemSetCustomAsButtonMethodBind):
    treeItemSetCustomAsButtonMethodBind = getMethod(cstring"TreeItem",
        cstring"set_custom_as_button")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  treeItemSetCustomAsButtonMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var treeItemSetCustomBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCustomBgColor(self: TreeItem; column: int64; color: Color;
                     justOutline: bool = false) =
  if isNil(treeItemSetCustomBgColorMethodBind):
    treeItemSetCustomBgColorMethodBind = getMethod(cstring"TreeItem",
        cstring"set_custom_bg_color")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(color)
  argsToPassToGodot[][2] = unsafeAddr(justOutline)
  var ptrCallRet: pointer
  treeItemSetCustomBgColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetCustomColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCustomColor(self: TreeItem; column: int64; color: Color) =
  if isNil(treeItemSetCustomColorMethodBind):
    treeItemSetCustomColorMethodBind = getMethod(cstring"TreeItem",
        cstring"set_custom_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(color)
  var ptrCallRet: pointer
  treeItemSetCustomColorMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetCustomDrawMethodBind {.threadvar.}: ptr GodotMethodBind
proc setCustomDraw(self: TreeItem; column: int64; objectt: Object; callback: string) =
  if isNil(treeItemSetCustomDrawMethodBind):
    treeItemSetCustomDrawMethodBind = getMethod(cstring"TreeItem",
        cstring"set_custom_draw")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  let argToPassToGodot1 = if not objectt.isNil:
    objectt.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var argToPassToGodot2 = toGodotString(callback)
  argsToPassToGodot[][2] = unsafeAddr(argToPassToGodot2)
  var ptrCallRet: pointer
  treeItemSetCustomDrawMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot2)

var treeItemSetEditableMethodBind {.threadvar.}: ptr GodotMethodBind
proc setEditable(self: TreeItem; column: int64; enabled: bool) =
  if isNil(treeItemSetEditableMethodBind):
    treeItemSetEditableMethodBind = getMethod(cstring"TreeItem",
        cstring"set_editable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(enabled)
  var ptrCallRet: pointer
  treeItemSetEditableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeItemSetExpandRightMethodBind {.threadvar.}: ptr GodotMethodBind
proc setExpandRight(self: TreeItem; column: int64; enable: bool) =
  if isNil(treeItemSetExpandRightMethodBind):
    treeItemSetExpandRightMethodBind = getMethod(cstring"TreeItem",
        cstring"set_expand_right")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  treeItemSetExpandRightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIcon(self: TreeItem; column: int64; texture: Texture) =
  if isNil(treeItemSetIconMethodBind):
    treeItemSetIconMethodBind = getMethod(cstring"TreeItem", cstring"set_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  treeItemSetIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)

var treeItemSetIconMaxWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIconMaxWidth(self: TreeItem; column: int64; width: int64) =
  if isNil(treeItemSetIconMaxWidthMethodBind):
    treeItemSetIconMaxWidthMethodBind = getMethod(cstring"TreeItem",
        cstring"set_icon_max_width")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(width)
  var ptrCallRet: pointer
  treeItemSetIconMaxWidthMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetIconModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIconModulate(self: TreeItem; column: int64; modulate: Color) =
  if isNil(treeItemSetIconModulateMethodBind):
    treeItemSetIconModulateMethodBind = getMethod(cstring"TreeItem",
        cstring"set_icon_modulate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(modulate)
  var ptrCallRet: pointer
  treeItemSetIconModulateMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetIconRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setIconRegion(self: TreeItem; column: int64; region: Rect2) =
  if isNil(treeItemSetIconRegionMethodBind):
    treeItemSetIconRegionMethodBind = getMethod(cstring"TreeItem",
        cstring"set_icon_region")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(region)
  var ptrCallRet: pointer
  treeItemSetIconRegionMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setMetadata(self: TreeItem; column: int64; meta: Variant) =
  if isNil(treeItemSetMetadataMethodBind):
    treeItemSetMetadataMethodBind = getMethod(cstring"TreeItem",
        cstring"set_metadata")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = meta.godotVariant
  var ptrCallRet: pointer
  treeItemSetMetadataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var treeItemSetRangeMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRange(self: TreeItem; column: int64; value: float64) =
  if isNil(treeItemSetRangeMethodBind):
    treeItemSetRangeMethodBind = getMethod(cstring"TreeItem", cstring"set_range")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(value)
  var ptrCallRet: pointer
  treeItemSetRangeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var treeItemSetRangeConfigMethodBind {.threadvar.}: ptr GodotMethodBind
proc setRangeConfig(self: TreeItem; column: int64; min: float64; max: float64;
                   step: float64; expr: bool = false) =
  if isNil(treeItemSetRangeConfigMethodBind):
    treeItemSetRangeConfigMethodBind = getMethod(cstring"TreeItem",
        cstring"set_range_config")
  var
    argsStatic: array[5, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(min)
  argsToPassToGodot[][2] = unsafeAddr(max)
  argsToPassToGodot[][3] = unsafeAddr(step)
  argsToPassToGodot[][4] = unsafeAddr(expr)
  var ptrCallRet: pointer
  treeItemSetRangeConfigMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetSelectableMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSelectable(self: TreeItem; column: int64; selectable: bool) =
  if isNil(treeItemSetSelectableMethodBind):
    treeItemSetSelectableMethodBind = getMethod(cstring"TreeItem",
        cstring"set_selectable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(selectable)
  var ptrCallRet: pointer
  treeItemSetSelectableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetSuffixMethodBind {.threadvar.}: ptr GodotMethodBind
proc setSuffix(self: TreeItem; column: int64; text: string) =
  if isNil(treeItemSetSuffixMethodBind):
    treeItemSetSuffixMethodBind = getMethod(cstring"TreeItem", cstring"set_suffix")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var argToPassToGodot1 = toGodotString(text)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  treeItemSetSuffixMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                      ptrCallRet)
  deinit(argToPassToGodot1)

var treeItemSetTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc setText(self: TreeItem; column: int64; text: string) =
  if isNil(treeItemSetTextMethodBind):
    treeItemSetTextMethodBind = getMethod(cstring"TreeItem", cstring"set_text")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var argToPassToGodot1 = toGodotString(text)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  treeItemSetTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot1)

var treeItemSetTextAlignMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTextAlign(self: TreeItem; column: int64; textAlign: int64) =
  if isNil(treeItemSetTextAlignMethodBind):
    treeItemSetTextAlignMethodBind = getMethod(cstring"TreeItem",
        cstring"set_text_align")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  argsToPassToGodot[][1] = unsafeAddr(textAlign)
  var ptrCallRet: pointer
  treeItemSetTextAlignMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var treeItemSetTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc setTooltip(self: TreeItem; column: int64; tooltip: string) =
  if isNil(treeItemSetTooltipMethodBind):
    treeItemSetTooltipMethodBind = getMethod(cstring"TreeItem",
        cstring"set_tooltip")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(column)
  var argToPassToGodot1 = toGodotString(tooltip)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  treeItemSetTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)
  deinit(argToPassToGodot1)
