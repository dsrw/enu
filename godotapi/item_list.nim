
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  ICON_MODE_LEFT* = 1'i64
  ICON_MODE_TOP* = 0'i64
  SELECT_MULTI* = 1'i64
  SELECT_SINGLE* = 0'i64
proc allowReselect*(self: ItemList): bool {.gcsafe, locks: 0.}
proc `allowReselect=`*(self: ItemList; val: bool) {.gcsafe, locks: 0.}
proc allowRmbSelect*(self: ItemList): bool {.gcsafe, locks: 0.}
proc `allowRmbSelect=`*(self: ItemList; val: bool) {.gcsafe, locks: 0.}
proc autoHeight*(self: ItemList): bool {.gcsafe, locks: 0.}
proc `autoHeight=`*(self: ItemList; val: bool) {.gcsafe, locks: 0.}
proc fixedColumnWidth*(self: ItemList): int64 {.gcsafe, locks: 0.}
proc `fixedColumnWidth=`*(self: ItemList; val: int64) {.gcsafe, locks: 0.}
proc fixedIconSize*(self: ItemList): Vector2 {.gcsafe, locks: 0.}
proc `fixedIconSize=`*(self: ItemList; val: Vector2) {.gcsafe, locks: 0.}
proc iconMode*(self: ItemList): int64 {.gcsafe, locks: 0.}
proc `iconMode=`*(self: ItemList; val: int64) {.gcsafe, locks: 0.}
proc iconScale*(self: ItemList): float64 {.gcsafe, locks: 0.}
proc `iconScale=`*(self: ItemList; val: float64) {.gcsafe, locks: 0.}
proc items*(self: ItemList): Array {.gcsafe, locks: 0.}
proc `items=`*(self: ItemList; val: Array) {.gcsafe, locks: 0.}
proc maxColumns*(self: ItemList): int64 {.gcsafe, locks: 0.}
proc `maxColumns=`*(self: ItemList; val: int64) {.gcsafe, locks: 0.}
proc maxTextLines*(self: ItemList): int64 {.gcsafe, locks: 0.}
proc `maxTextLines=`*(self: ItemList; val: int64) {.gcsafe, locks: 0.}
proc sameColumnWidth*(self: ItemList): bool {.gcsafe, locks: 0.}
proc `sameColumnWidth=`*(self: ItemList; val: bool) {.gcsafe, locks: 0.}
proc selectMode*(self: ItemList): int64 {.gcsafe, locks: 0.}
proc `selectMode=`*(self: ItemList; val: int64) {.gcsafe, locks: 0.}
method guiInput*(self: ItemList; event: InputEvent) {.gcsafe, locks: 0.}
method scrollChanged*(self: ItemList; arg0: float64) {.gcsafe, locks: 0, base.}
proc addIconItem*(self: ItemList; icon: Texture; selectable: bool = true) {.gcsafe,
    locks: 0.}
proc addItem*(self: ItemList; text: string; icon: Texture = nil; selectable: bool = true) {.
    gcsafe, locks: 0.}
proc clear*(self: ItemList) {.gcsafe, locks: 0.}
proc ensureCurrentIsVisible*(self: ItemList) {.gcsafe, locks: 0.}
proc getItemAtPosition*(self: ItemList; position: Vector2; exact: bool = false): int64 {.
    gcsafe, locks: 0.}
proc getItemCount*(self: ItemList): int64 {.gcsafe, locks: 0.}
proc getItemCustomBgColor*(self: ItemList; idx: int64): Color {.gcsafe, locks: 0.}
proc getItemCustomFgColor*(self: ItemList; idx: int64): Color {.gcsafe, locks: 0.}
proc getItemIcon*(self: ItemList; idx: int64): Texture {.gcsafe, locks: 0.}
proc getItemIconModulate*(self: ItemList; idx: int64): Color {.gcsafe, locks: 0.}
proc getItemIconRegion*(self: ItemList; idx: int64): Rect2 {.gcsafe, locks: 0.}
proc getItemMetadata*(self: ItemList; idx: int64): Variant {.gcsafe, locks: 0.}
proc getItemText*(self: ItemList; idx: int64): string {.gcsafe, locks: 0.}
proc getItemTooltip*(self: ItemList; idx: int64): string {.gcsafe, locks: 0.}
proc getSelectedItems*(self: ItemList): PoolIntArray {.gcsafe, locks: 0.}
proc getVScroll*(self: ItemList): VScrollBar {.gcsafe, locks: 0.}
proc isAnythingSelected*(self: ItemList): bool {.gcsafe, locks: 0.}
proc isItemDisabled*(self: ItemList; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemIconTransposed*(self: ItemList; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemSelectable*(self: ItemList; idx: int64): bool {.gcsafe, locks: 0.}
proc isItemTooltipEnabled*(self: ItemList; idx: int64): bool {.gcsafe, locks: 0.}
proc isSelected*(self: ItemList; idx: int64): bool {.gcsafe, locks: 0.}
proc moveItem*(self: ItemList; fromIdx: int64; toIdx: int64) {.gcsafe, locks: 0.}
proc removeItem*(self: ItemList; idx: int64) {.gcsafe, locks: 0.}
proc select*(self: ItemList; idx: int64; single: bool = true) {.gcsafe, locks: 0.}
proc setItemCustomBgColor*(self: ItemList; idx: int64; customBgColor: Color) {.gcsafe,
    locks: 0.}
proc setItemCustomFgColor*(self: ItemList; idx: int64; customFgColor: Color) {.gcsafe,
    locks: 0.}
proc setItemDisabled*(self: ItemList; idx: int64; disabled: bool) {.gcsafe, locks: 0.}
proc setItemIcon*(self: ItemList; idx: int64; icon: Texture) {.gcsafe, locks: 0.}
proc setItemIconModulate*(self: ItemList; idx: int64; modulate: Color) {.gcsafe,
    locks: 0.}
proc setItemIconRegion*(self: ItemList; idx: int64; rect: Rect2) {.gcsafe, locks: 0.}
proc setItemIconTransposed*(self: ItemList; idx: int64; transposed: bool) {.gcsafe,
    locks: 0.}
proc setItemMetadata*(self: ItemList; idx: int64; metadata: Variant) {.gcsafe, locks: 0.}
proc setItemSelectable*(self: ItemList; idx: int64; selectable: bool) {.gcsafe, locks: 0.}
proc setItemText*(self: ItemList; idx: int64; text: string) {.gcsafe, locks: 0.}
proc setItemTooltip*(self: ItemList; idx: int64; tooltip: string) {.gcsafe, locks: 0.}
proc setItemTooltipEnabled*(self: ItemList; idx: int64; enable: bool) {.gcsafe, locks: 0.}
proc sortItemsByText*(self: ItemList) {.gcsafe, locks: 0.}
proc unselect*(self: ItemList; idx: int64) {.gcsafe, locks: 0.}
proc unselectAll*(self: ItemList) {.gcsafe, locks: 0.}
var itemListGetAllowReselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowReselect(self: ItemList): bool =
  if isNil(itemListGetAllowReselectMethodBind):
    itemListGetAllowReselectMethodBind = getMethod(cstring"ItemList",
        cstring"get_allow_reselect")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetAllowReselectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetAllowReselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowReselect=`(self: ItemList; val: bool) =
  if isNil(itemListSetAllowReselectMethodBind):
    itemListSetAllowReselectMethodBind = getMethod(cstring"ItemList",
        cstring"set_allow_reselect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetAllowReselectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListGetAllowRmbSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc allowRmbSelect(self: ItemList): bool =
  if isNil(itemListGetAllowRmbSelectMethodBind):
    itemListGetAllowRmbSelectMethodBind = getMethod(cstring"ItemList",
        cstring"get_allow_rmb_select")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetAllowRmbSelectMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetAllowRmbSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc `allowRmbSelect=`(self: ItemList; val: bool) =
  if isNil(itemListSetAllowRmbSelectMethodBind):
    itemListSetAllowRmbSelectMethodBind = getMethod(cstring"ItemList",
        cstring"set_allow_rmb_select")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetAllowRmbSelectMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListHasAutoHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc autoHeight(self: ItemList): bool =
  if isNil(itemListHasAutoHeightMethodBind):
    itemListHasAutoHeightMethodBind = getMethod(cstring"ItemList",
        cstring"has_auto_height")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListHasAutoHeightMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetAutoHeightMethodBind {.threadvar.}: ptr GodotMethodBind
proc `autoHeight=`(self: ItemList; val: bool) =
  if isNil(itemListSetAutoHeightMethodBind):
    itemListSetAutoHeightMethodBind = getMethod(cstring"ItemList",
        cstring"set_auto_height")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetAutoHeightMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListGetFixedColumnWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixedColumnWidth(self: ItemList): int64 =
  if isNil(itemListGetFixedColumnWidthMethodBind):
    itemListGetFixedColumnWidthMethodBind = getMethod(cstring"ItemList",
        cstring"get_fixed_column_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetFixedColumnWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetFixedColumnWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fixedColumnWidth=`(self: ItemList; val: int64) =
  if isNil(itemListSetFixedColumnWidthMethodBind):
    itemListSetFixedColumnWidthMethodBind = getMethod(cstring"ItemList",
        cstring"set_fixed_column_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetFixedColumnWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetFixedIconSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc fixedIconSize(self: ItemList): Vector2 =
  if isNil(itemListGetFixedIconSizeMethodBind):
    itemListGetFixedIconSizeMethodBind = getMethod(cstring"ItemList",
        cstring"get_fixed_icon_size")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetFixedIconSizeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetFixedIconSizeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `fixedIconSize=`(self: ItemList; val: Vector2) =
  if isNil(itemListSetFixedIconSizeMethodBind):
    itemListSetFixedIconSizeMethodBind = getMethod(cstring"ItemList",
        cstring"set_fixed_icon_size")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetFixedIconSizeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListGetIconModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc iconMode(self: ItemList): int64 =
  if isNil(itemListGetIconModeMethodBind):
    itemListGetIconModeMethodBind = getMethod(cstring"ItemList",
        cstring"get_icon_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetIconModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetIconModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `iconMode=`(self: ItemList; val: int64) =
  if isNil(itemListSetIconModeMethodBind):
    itemListSetIconModeMethodBind = getMethod(cstring"ItemList",
        cstring"set_icon_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetIconModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var itemListGetIconScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc iconScale(self: ItemList): float64 =
  if isNil(itemListGetIconScaleMethodBind):
    itemListGetIconScaleMethodBind = getMethod(cstring"ItemList",
        cstring"get_icon_scale")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetIconScaleMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetIconScaleMethodBind {.threadvar.}: ptr GodotMethodBind
proc `iconScale=`(self: ItemList; val: float64) =
  if isNil(itemListSetIconScaleMethodBind):
    itemListSetIconScaleMethodBind = getMethod(cstring"ItemList",
        cstring"set_icon_scale")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetIconScaleMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListUnderscoregetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc items(self: ItemList): Array =
  if isNil(itemListUnderscoregetItemsMethodBind):
    itemListUnderscoregetItemsMethodBind = getMethod(cstring"ItemList",
        cstring"_get_items")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  itemListUnderscoregetItemsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newArray(ptrCallVal)

var itemListUnderscoresetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `items=`(self: ItemList; val: Array) =
  if isNil(itemListUnderscoresetItemsMethodBind):
    itemListUnderscoresetItemsMethodBind = getMethod(cstring"ItemList",
        cstring"_set_items")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  itemListUnderscoresetItemsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetMaxColumnsMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxColumns(self: ItemList): int64 =
  if isNil(itemListGetMaxColumnsMethodBind):
    itemListGetMaxColumnsMethodBind = getMethod(cstring"ItemList",
        cstring"get_max_columns")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetMaxColumnsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetMaxColumnsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxColumns=`(self: ItemList; val: int64) =
  if isNil(itemListSetMaxColumnsMethodBind):
    itemListSetMaxColumnsMethodBind = getMethod(cstring"ItemList",
        cstring"set_max_columns")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetMaxColumnsMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListGetMaxTextLinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc maxTextLines(self: ItemList): int64 =
  if isNil(itemListGetMaxTextLinesMethodBind):
    itemListGetMaxTextLinesMethodBind = getMethod(cstring"ItemList",
        cstring"get_max_text_lines")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetMaxTextLinesMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetMaxTextLinesMethodBind {.threadvar.}: ptr GodotMethodBind
proc `maxTextLines=`(self: ItemList; val: int64) =
  if isNil(itemListSetMaxTextLinesMethodBind):
    itemListSetMaxTextLinesMethodBind = getMethod(cstring"ItemList",
        cstring"set_max_text_lines")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetMaxTextLinesMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListIsSameColumnWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc sameColumnWidth(self: ItemList): bool =
  if isNil(itemListIsSameColumnWidthMethodBind):
    itemListIsSameColumnWidthMethodBind = getMethod(cstring"ItemList",
        cstring"is_same_column_width")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListIsSameColumnWidthMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetSameColumnWidthMethodBind {.threadvar.}: ptr GodotMethodBind
proc `sameColumnWidth=`(self: ItemList; val: bool) =
  if isNil(itemListSetSameColumnWidthMethodBind):
    itemListSetSameColumnWidthMethodBind = getMethod(cstring"ItemList",
        cstring"set_same_column_width")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetSameColumnWidthMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetSelectModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc selectMode(self: ItemList): int64 =
  if isNil(itemListGetSelectModeMethodBind):
    itemListGetSelectModeMethodBind = getMethod(cstring"ItemList",
        cstring"get_select_mode")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetSelectModeMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListSetSelectModeMethodBind {.threadvar.}: ptr GodotMethodBind
proc `selectMode=`(self: ItemList; val: int64) =
  if isNil(itemListSetSelectModeMethodBind):
    itemListSetSelectModeMethodBind = getMethod(cstring"ItemList",
        cstring"set_select_mode")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(val)
  var ptrCallRet: pointer
  itemListSetSelectModeMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListUnderscoreguiInputMethodBind {.threadvar.}: ptr GodotMethodBind
method guiInput(self: ItemList; event: InputEvent) =
  if isNil(itemListUnderscoreguiInputMethodBind):
    itemListUnderscoreguiInputMethodBind = getMethod(cstring"ItemList",
        cstring"_gui_input")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not event.isNil:
    event.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var ptrCallRet: pointer
  itemListUnderscoreguiInputMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListUnderscorescrollChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method scrollChanged(self: ItemList; arg0: float64) =
  if isNil(itemListUnderscorescrollChangedMethodBind):
    itemListUnderscorescrollChangedMethodBind = getMethod(cstring"ItemList",
        cstring"_scroll_changed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  itemListUnderscorescrollChangedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListAddIconItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconItem(self: ItemList; icon: Texture; selectable: bool = true) =
  if isNil(itemListAddIconItemMethodBind):
    itemListAddIconItemMethodBind = getMethod(cstring"ItemList",
        cstring"add_icon_item")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(selectable)
  var ptrCallRet: pointer
  itemListAddIconItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var itemListAddItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addItem(self: ItemList; text: string; icon: Texture = nil; selectable: bool = true) =
  if isNil(itemListAddItemMethodBind):
    itemListAddItemMethodBind = getMethod(cstring"ItemList", cstring"add_item")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(text)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  let argToPassToGodot1 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  argsToPassToGodot[][2] = unsafeAddr(selectable)
  var ptrCallRet: pointer
  itemListAddItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                    ptrCallRet)
  deinit(argToPassToGodot0)

var itemListClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: ItemList) =
  if isNil(itemListClearMethodBind):
    itemListClearMethodBind = getMethod(cstring"ItemList", cstring"clear")
  var ptrCallRet: pointer
  itemListClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListEnsureCurrentIsVisibleMethodBind {.threadvar.}: ptr GodotMethodBind
proc ensureCurrentIsVisible(self: ItemList) =
  if isNil(itemListEnsureCurrentIsVisibleMethodBind):
    itemListEnsureCurrentIsVisibleMethodBind = getMethod(cstring"ItemList",
        cstring"ensure_current_is_visible")
  var ptrCallRet: pointer
  itemListEnsureCurrentIsVisibleMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var itemListGetItemAtPositionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemAtPosition(self: ItemList; position: Vector2; exact: bool = false): int64 =
  if isNil(itemListGetItemAtPositionMethodBind):
    itemListGetItemAtPositionMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_at_position")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(position)
  argsToPassToGodot[][1] = unsafeAddr(exact)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetItemAtPositionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetItemCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemCount(self: ItemList): int64 =
  if isNil(itemListGetItemCountMethodBind):
    itemListGetItemCountMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetItemCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListGetItemCustomBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemCustomBgColor(self: ItemList; idx: int64): Color =
  if isNil(itemListGetItemCustomBgColorMethodBind):
    itemListGetItemCustomBgColorMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_custom_bg_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetItemCustomBgColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetItemCustomFgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemCustomFgColor(self: ItemList; idx: int64): Color =
  if isNil(itemListGetItemCustomFgColorMethodBind):
    itemListGetItemCustomFgColorMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_custom_fg_color")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetItemCustomFgColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetItemIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemIcon(self: ItemList; idx: int64): Texture =
  if isNil(itemListGetItemIconMethodBind):
    itemListGetItemIconMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  itemListGetItemIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var itemListGetItemIconModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemIconModulate(self: ItemList; idx: int64): Color =
  if isNil(itemListGetItemIconModulateMethodBind):
    itemListGetItemIconModulateMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_icon_modulate")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetItemIconModulateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetItemIconRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemIconRegion(self: ItemList; idx: int64): Rect2 =
  if isNil(itemListGetItemIconRegionMethodBind):
    itemListGetItemIconRegionMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_icon_region")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListGetItemIconRegionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListGetItemMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemMetadata(self: ItemList; idx: int64): Variant =
  if isNil(itemListGetItemMetadataMethodBind):
    itemListGetItemMetadataMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_metadata")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  itemListGetItemMetadataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = newVariant(ptrCallVal)

var itemListGetItemTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemText(self: ItemList; idx: int64): string =
  if isNil(itemListGetItemTextMethodBind):
    itemListGetItemTextMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  itemListGetItemTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var itemListGetItemTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemTooltip(self: ItemList; idx: int64): string =
  if isNil(itemListGetItemTooltipMethodBind):
    itemListGetItemTooltipMethodBind = getMethod(cstring"ItemList",
        cstring"get_item_tooltip")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  itemListGetItemTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var itemListGetSelectedItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectedItems(self: ItemList): PoolIntArray =
  if isNil(itemListGetSelectedItemsMethodBind):
    itemListGetSelectedItemsMethodBind = getMethod(cstring"ItemList",
        cstring"get_selected_items")
  var ptrCallRet: pointer
  var ptrCallVal: GodotPoolIntArray
  ptrCallRet = addr(ptrCallVal)
  itemListGetSelectedItemsMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = newPoolIntArray(ptrCallVal)

var itemListGetVScrollMethodBind {.threadvar.}: ptr GodotMethodBind
proc getVScroll(self: ItemList): VScrollBar =
  if isNil(itemListGetVScrollMethodBind):
    itemListGetVScrollMethodBind = getMethod(cstring"ItemList",
        cstring"get_v_scroll")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  itemListGetVScrollMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var itemListIsAnythingSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isAnythingSelected(self: ItemList): bool =
  if isNil(itemListIsAnythingSelectedMethodBind):
    itemListIsAnythingSelectedMethodBind = getMethod(cstring"ItemList",
        cstring"is_anything_selected")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListIsAnythingSelectedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListIsItemDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemDisabled(self: ItemList; idx: int64): bool =
  if isNil(itemListIsItemDisabledMethodBind):
    itemListIsItemDisabledMethodBind = getMethod(cstring"ItemList",
        cstring"is_item_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListIsItemDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListIsItemIconTransposedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemIconTransposed(self: ItemList; idx: int64): bool =
  if isNil(itemListIsItemIconTransposedMethodBind):
    itemListIsItemIconTransposedMethodBind = getMethod(cstring"ItemList",
        cstring"is_item_icon_transposed")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListIsItemIconTransposedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListIsItemSelectableMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemSelectable(self: ItemList; idx: int64): bool =
  if isNil(itemListIsItemSelectableMethodBind):
    itemListIsItemSelectableMethodBind = getMethod(cstring"ItemList",
        cstring"is_item_selectable")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListIsItemSelectableMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListIsItemTooltipEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemTooltipEnabled(self: ItemList; idx: int64): bool =
  if isNil(itemListIsItemTooltipEnabledMethodBind):
    itemListIsItemTooltipEnabledMethodBind = getMethod(cstring"ItemList",
        cstring"is_item_tooltip_enabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListIsItemTooltipEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListIsSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc isSelected(self: ItemList; idx: int64): bool =
  if isNil(itemListIsSelectedMethodBind):
    itemListIsSelectedMethodBind = getMethod(cstring"ItemList",
        cstring"is_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  itemListIsSelectedMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var itemListMoveItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc moveItem(self: ItemList; fromIdx: int64; toIdx: int64) =
  if isNil(itemListMoveItemMethodBind):
    itemListMoveItemMethodBind = getMethod(cstring"ItemList", cstring"move_item")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(fromIdx)
  argsToPassToGodot[][1] = unsafeAddr(toIdx)
  var ptrCallRet: pointer
  itemListMoveItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var itemListRemoveItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeItem(self: ItemList; idx: int64) =
  if isNil(itemListRemoveItemMethodBind):
    itemListRemoveItemMethodBind = getMethod(cstring"ItemList",
        cstring"remove_item")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  itemListRemoveItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var itemListSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc select(self: ItemList; idx: int64; single: bool = true) =
  if isNil(itemListSelectMethodBind):
    itemListSelectMethodBind = getMethod(cstring"ItemList", cstring"select")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(single)
  var ptrCallRet: pointer
  itemListSelectMethodBind.ptrCall(self.godotObject, argsToPassToGodot, ptrCallRet)

var itemListSetItemCustomBgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemCustomBgColor(self: ItemList; idx: int64; customBgColor: Color) =
  if isNil(itemListSetItemCustomBgColorMethodBind):
    itemListSetItemCustomBgColorMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_custom_bg_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(customBgColor)
  var ptrCallRet: pointer
  itemListSetItemCustomBgColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListSetItemCustomFgColorMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemCustomFgColor(self: ItemList; idx: int64; customFgColor: Color) =
  if isNil(itemListSetItemCustomFgColorMethodBind):
    itemListSetItemCustomFgColorMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_custom_fg_color")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(customFgColor)
  var ptrCallRet: pointer
  itemListSetItemCustomFgColorMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListSetItemDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemDisabled(self: ItemList; idx: int64; disabled: bool) =
  if isNil(itemListSetItemDisabledMethodBind):
    itemListSetItemDisabledMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  itemListSetItemDisabledMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListSetItemIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemIcon(self: ItemList; idx: int64; icon: Texture) =
  if isNil(itemListSetItemIconMethodBind):
    itemListSetItemIconMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  let argToPassToGodot1 = if not icon.isNil:
    icon.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  itemListSetItemIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)

var itemListSetItemIconModulateMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemIconModulate(self: ItemList; idx: int64; modulate: Color) =
  if isNil(itemListSetItemIconModulateMethodBind):
    itemListSetItemIconModulateMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_icon_modulate")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(modulate)
  var ptrCallRet: pointer
  itemListSetItemIconModulateMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListSetItemIconRegionMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemIconRegion(self: ItemList; idx: int64; rect: Rect2) =
  if isNil(itemListSetItemIconRegionMethodBind):
    itemListSetItemIconRegionMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_icon_region")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(rect)
  var ptrCallRet: pointer
  itemListSetItemIconRegionMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListSetItemIconTransposedMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemIconTransposed(self: ItemList; idx: int64; transposed: bool) =
  if isNil(itemListSetItemIconTransposedMethodBind):
    itemListSetItemIconTransposedMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_icon_transposed")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(transposed)
  var ptrCallRet: pointer
  itemListSetItemIconTransposedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListSetItemMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemMetadata(self: ItemList; idx: int64; metadata: Variant) =
  if isNil(itemListSetItemMetadataMethodBind):
    itemListSetItemMetadataMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_metadata")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = metadata.godotVariant
  var ptrCallRet: pointer
  itemListSetItemMetadataMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var itemListSetItemSelectableMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemSelectable(self: ItemList; idx: int64; selectable: bool) =
  if isNil(itemListSetItemSelectableMethodBind):
    itemListSetItemSelectableMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_selectable")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(selectable)
  var ptrCallRet: pointer
  itemListSetItemSelectableMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListSetItemTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemText(self: ItemList; idx: int64; text: string) =
  if isNil(itemListSetItemTextMethodBind):
    itemListSetItemTextMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_text")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var argToPassToGodot1 = toGodotString(text)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  itemListSetItemTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot1)

var itemListSetItemTooltipMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemTooltip(self: ItemList; idx: int64; tooltip: string) =
  if isNil(itemListSetItemTooltipMethodBind):
    itemListSetItemTooltipMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_tooltip")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var argToPassToGodot1 = toGodotString(tooltip)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  itemListSetItemTooltipMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var itemListSetItemTooltipEnabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemTooltipEnabled(self: ItemList; idx: int64; enable: bool) =
  if isNil(itemListSetItemTooltipEnabledMethodBind):
    itemListSetItemTooltipEnabledMethodBind = getMethod(cstring"ItemList",
        cstring"set_item_tooltip_enabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(enable)
  var ptrCallRet: pointer
  itemListSetItemTooltipEnabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var itemListSortItemsByTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc sortItemsByText(self: ItemList) =
  if isNil(itemListSortItemsByTextMethodBind):
    itemListSortItemsByTextMethodBind = getMethod(cstring"ItemList",
        cstring"sort_items_by_text")
  var ptrCallRet: pointer
  itemListSortItemsByTextMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var itemListUnselectMethodBind {.threadvar.}: ptr GodotMethodBind
proc unselect(self: ItemList; idx: int64) =
  if isNil(itemListUnselectMethodBind):
    itemListUnselectMethodBind = getMethod(cstring"ItemList", cstring"unselect")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  itemListUnselectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                     ptrCallRet)

var itemListUnselectAllMethodBind {.threadvar.}: ptr GodotMethodBind
proc unselectAll(self: ItemList) =
  if isNil(itemListUnselectAllMethodBind):
    itemListUnselectAllMethodBind = getMethod(cstring"ItemList",
        cstring"unselect_all")
  var ptrCallRet: pointer
  itemListUnselectAllMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
