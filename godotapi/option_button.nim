
import
  godot, godottypes, godotinternal, button

export
  godottypes, button

proc items*(self: OptionButton): Array {.gcsafe, locks: 0.}
proc `items=`*(self: OptionButton; val: Array) {.gcsafe, locks: 0.}
method focused*(self: OptionButton; arg0: int64) {.gcsafe, locks: 0, base.}
method selectInt*(self: OptionButton; arg0: int64) {.gcsafe, locks: 0, base.}
method selected*(self: OptionButton; arg0: int64) {.gcsafe, locks: 0, base.}
proc addIconItem*(self: OptionButton; texture: Texture; label: string;
                 id: int64 = -1'i64) {.gcsafe, locks: 0.}
proc addItem*(self: OptionButton; label: string; id: int64 = -1'i64) {.gcsafe, locks: 0.}
proc addSeparator*(self: OptionButton) {.gcsafe, locks: 0.}
proc clear*(self: OptionButton) {.gcsafe, locks: 0.}
proc getItemCount*(self: OptionButton): int64 {.gcsafe, locks: 0.}
proc getItemIcon*(self: OptionButton; idx: int64): Texture {.gcsafe, locks: 0.}
proc getItemId*(self: OptionButton; idx: int64): int64 {.gcsafe, locks: 0.}
proc getItemIndex*(self: OptionButton; id: int64): int64 {.gcsafe, locks: 0.}
proc getItemMetadata*(self: OptionButton; idx: int64): Variant {.gcsafe, locks: 0.}
proc getItemText*(self: OptionButton; idx: int64): string {.gcsafe, locks: 0.}
proc getPopup*(self: OptionButton): PopupMenu {.gcsafe, locks: 0.}
proc getSelected*(self: OptionButton): int64 {.gcsafe, locks: 0.}
proc getSelectedId*(self: OptionButton): int64 {.gcsafe, locks: 0.}
proc getSelectedMetadata*(self: OptionButton): Variant {.gcsafe, locks: 0.}
proc isItemDisabled*(self: OptionButton; idx: int64): bool {.gcsafe, locks: 0.}
proc removeItem*(self: OptionButton; idx: int64) {.gcsafe, locks: 0.}
proc select*(self: OptionButton; idx: int64) {.gcsafe, locks: 0.}
proc setItemDisabled*(self: OptionButton; idx: int64; disabled: bool) {.gcsafe, locks: 0.}
proc setItemIcon*(self: OptionButton; idx: int64; texture: Texture) {.gcsafe, locks: 0.}
proc setItemId*(self: OptionButton; idx: int64; id: int64) {.gcsafe, locks: 0.}
proc setItemMetadata*(self: OptionButton; idx: int64; metadata: Variant) {.gcsafe,
    locks: 0.}
proc setItemText*(self: OptionButton; idx: int64; text: string) {.gcsafe, locks: 0.}
var optionButtonUnderscoregetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc items(self: OptionButton): Array =
  if isNil(optionButtonUnderscoregetItemsMethodBind):
    optionButtonUnderscoregetItemsMethodBind = getMethod(cstring"OptionButton",
        cstring"_get_items")
  var ptrCallRet: pointer
  var ptrCallVal: GodotArray
  ptrCallRet = addr(ptrCallVal)
  optionButtonUnderscoregetItemsMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newArray(ptrCallVal)

var optionButtonUnderscoresetItemsMethodBind {.threadvar.}: ptr GodotMethodBind
proc `items=`(self: OptionButton; val: Array) =
  if isNil(optionButtonUnderscoresetItemsMethodBind):
    optionButtonUnderscoresetItemsMethodBind = getMethod(cstring"OptionButton",
        cstring"_set_items")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = val.godotArray
  var ptrCallRet: pointer
  optionButtonUnderscoresetItemsMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var optionButtonUnderscorefocusedMethodBind {.threadvar.}: ptr GodotMethodBind
method focused(self: OptionButton; arg0: int64) =
  if isNil(optionButtonUnderscorefocusedMethodBind):
    optionButtonUnderscorefocusedMethodBind = getMethod(cstring"OptionButton",
        cstring"_focused")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  optionButtonUnderscorefocusedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var optionButtonUnderscoreselectIntMethodBind {.threadvar.}: ptr GodotMethodBind
method selectInt(self: OptionButton; arg0: int64) =
  if isNil(optionButtonUnderscoreselectIntMethodBind):
    optionButtonUnderscoreselectIntMethodBind = getMethod(cstring"OptionButton",
        cstring"_select_int")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  optionButtonUnderscoreselectIntMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var optionButtonUnderscoreselectedMethodBind {.threadvar.}: ptr GodotMethodBind
method selected(self: OptionButton; arg0: int64) =
  if isNil(optionButtonUnderscoreselectedMethodBind):
    optionButtonUnderscoreselectedMethodBind = getMethod(cstring"OptionButton",
        cstring"_selected")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(arg0)
  var ptrCallRet: pointer
  optionButtonUnderscoreselectedMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var optionButtonAddIconItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addIconItem(self: OptionButton; texture: Texture; label: string;
                id: int64 = -1'i64) =
  if isNil(optionButtonAddIconItemMethodBind):
    optionButtonAddIconItemMethodBind = getMethod(cstring"OptionButton",
        cstring"add_icon_item")
  var
    argsStatic: array[3, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  var argToPassToGodot1 = toGodotString(label)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  argsToPassToGodot[][2] = unsafeAddr(id)
  var ptrCallRet: pointer
  optionButtonAddIconItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)

var optionButtonAddItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc addItem(self: OptionButton; label: string; id: int64 = -1'i64) =
  if isNil(optionButtonAddItemMethodBind):
    optionButtonAddItemMethodBind = getMethod(cstring"OptionButton",
        cstring"add_item")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  var argToPassToGodot0 = toGodotString(label)
  argsToPassToGodot[][0] = unsafeAddr(argToPassToGodot0)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  optionButtonAddItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                        ptrCallRet)
  deinit(argToPassToGodot0)

var optionButtonAddSeparatorMethodBind {.threadvar.}: ptr GodotMethodBind
proc addSeparator(self: OptionButton) =
  if isNil(optionButtonAddSeparatorMethodBind):
    optionButtonAddSeparatorMethodBind = getMethod(cstring"OptionButton",
        cstring"add_separator")
  var ptrCallRet: pointer
  optionButtonAddSeparatorMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var optionButtonClearMethodBind {.threadvar.}: ptr GodotMethodBind
proc clear(self: OptionButton) =
  if isNil(optionButtonClearMethodBind):
    optionButtonClearMethodBind = getMethod(cstring"OptionButton", cstring"clear")
  var ptrCallRet: pointer
  optionButtonClearMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var optionButtonGetItemCountMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemCount(self: OptionButton): int64 =
  if isNil(optionButtonGetItemCountMethodBind):
    optionButtonGetItemCountMethodBind = getMethod(cstring"OptionButton",
        cstring"get_item_count")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  optionButtonGetItemCountMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var optionButtonGetItemIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemIcon(self: OptionButton; idx: int64): Texture =
  if isNil(optionButtonGetItemIconMethodBind):
    optionButtonGetItemIconMethodBind = getMethod(cstring"OptionButton",
        cstring"get_item_icon")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  optionButtonGetItemIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var optionButtonGetItemIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemId(self: OptionButton; idx: int64): int64 =
  if isNil(optionButtonGetItemIdMethodBind):
    optionButtonGetItemIdMethodBind = getMethod(cstring"OptionButton",
        cstring"get_item_id")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  optionButtonGetItemIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var optionButtonGetItemIndexMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemIndex(self: OptionButton; id: int64): int64 =
  if isNil(optionButtonGetItemIndexMethodBind):
    optionButtonGetItemIndexMethodBind = getMethod(cstring"OptionButton",
        cstring"get_item_index")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(id)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  optionButtonGetItemIndexMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var optionButtonGetItemMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemMetadata(self: OptionButton; idx: int64): Variant =
  if isNil(optionButtonGetItemMetadataMethodBind):
    optionButtonGetItemMetadataMethodBind = getMethod(cstring"OptionButton",
        cstring"get_item_metadata")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  optionButtonGetItemMetadataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)
  result = newVariant(ptrCallVal)

var optionButtonGetItemTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc getItemText(self: OptionButton; idx: int64): string =
  if isNil(optionButtonGetItemTextMethodBind):
    optionButtonGetItemTextMethodBind = getMethod(cstring"OptionButton",
        cstring"get_item_text")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  var ptrCallVal: GodotString
  ptrCallRet = addr(ptrCallVal)
  optionButtonGetItemTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  result = $ptrCallVal
  deinit(ptrCallVal)

var optionButtonGetPopupMethodBind {.threadvar.}: ptr GodotMethodBind
proc getPopup(self: OptionButton): PopupMenu =
  if isNil(optionButtonGetPopupMethodBind):
    optionButtonGetPopupMethodBind = getMethod(cstring"OptionButton",
        cstring"get_popup")
  var ptrCallRet: pointer
  var ptrCallVal: ptr GodotObject
  ptrCallRet = addr(ptrCallVal)
  optionButtonGetPopupMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
  result = asNimGodotObject[type(result)](ptrCallVal, false, true)

var optionButtonGetSelectedMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelected(self: OptionButton): int64 =
  if isNil(optionButtonGetSelectedMethodBind):
    optionButtonGetSelectedMethodBind = getMethod(cstring"OptionButton",
        cstring"get_selected")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  optionButtonGetSelectedMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var optionButtonGetSelectedIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectedId(self: OptionButton): int64 =
  if isNil(optionButtonGetSelectedIdMethodBind):
    optionButtonGetSelectedIdMethodBind = getMethod(cstring"OptionButton",
        cstring"get_selected_id")
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  optionButtonGetSelectedIdMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)

var optionButtonGetSelectedMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc getSelectedMetadata(self: OptionButton): Variant =
  if isNil(optionButtonGetSelectedMetadataMethodBind):
    optionButtonGetSelectedMetadataMethodBind = getMethod(cstring"OptionButton",
        cstring"get_selected_metadata")
  var ptrCallRet: pointer
  var ptrCallVal: GodotVariant
  ptrCallRet = addr(ptrCallVal)
  optionButtonGetSelectedMetadataMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)
  result = newVariant(ptrCallVal)

var optionButtonIsItemDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc isItemDisabled(self: OptionButton; idx: int64): bool =
  if isNil(optionButtonIsItemDisabledMethodBind):
    optionButtonIsItemDisabledMethodBind = getMethod(cstring"OptionButton",
        cstring"is_item_disabled")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  ptrCallRet = addr(result)
  optionButtonIsItemDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var optionButtonRemoveItemMethodBind {.threadvar.}: ptr GodotMethodBind
proc removeItem(self: OptionButton; idx: int64) =
  if isNil(optionButtonRemoveItemMethodBind):
    optionButtonRemoveItemMethodBind = getMethod(cstring"OptionButton",
        cstring"remove_item")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  optionButtonRemoveItemMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var optionButtonSelectMethodBind {.threadvar.}: ptr GodotMethodBind
proc select(self: OptionButton; idx: int64) =
  if isNil(optionButtonSelectMethodBind):
    optionButtonSelectMethodBind = getMethod(cstring"OptionButton",
        cstring"select")
  var
    argsStatic: array[1, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var ptrCallRet: pointer
  optionButtonSelectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
                                       ptrCallRet)

var optionButtonSetItemDisabledMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemDisabled(self: OptionButton; idx: int64; disabled: bool) =
  if isNil(optionButtonSetItemDisabledMethodBind):
    optionButtonSetItemDisabledMethodBind = getMethod(cstring"OptionButton",
        cstring"set_item_disabled")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(disabled)
  var ptrCallRet: pointer
  optionButtonSetItemDisabledMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var optionButtonSetItemIconMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemIcon(self: OptionButton; idx: int64; texture: Texture) =
  if isNil(optionButtonSetItemIconMethodBind):
    optionButtonSetItemIconMethodBind = getMethod(cstring"OptionButton",
        cstring"set_item_icon")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  let argToPassToGodot1 = if not texture.isNil:
    texture.godotObject
  else:
    nil
  argsToPassToGodot[][1] = argToPassToGodot1
  var ptrCallRet: pointer
  optionButtonSetItemIconMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var optionButtonSetItemIdMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemId(self: OptionButton; idx: int64; id: int64) =
  if isNil(optionButtonSetItemIdMethodBind):
    optionButtonSetItemIdMethodBind = getMethod(cstring"OptionButton",
        cstring"set_item_id")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = unsafeAddr(id)
  var ptrCallRet: pointer
  optionButtonSetItemIdMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var optionButtonSetItemMetadataMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemMetadata(self: OptionButton; idx: int64; metadata: Variant) =
  if isNil(optionButtonSetItemMetadataMethodBind):
    optionButtonSetItemMetadataMethodBind = getMethod(cstring"OptionButton",
        cstring"set_item_metadata")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  argsToPassToGodot[][1] = metadata.godotVariant
  var ptrCallRet: pointer
  optionButtonSetItemMetadataMethodBind.ptrCall(self.godotObject,
      argsToPassToGodot, ptrCallRet)

var optionButtonSetItemTextMethodBind {.threadvar.}: ptr GodotMethodBind
proc setItemText(self: OptionButton; idx: int64; text: string) =
  if isNil(optionButtonSetItemTextMethodBind):
    optionButtonSetItemTextMethodBind = getMethod(cstring"OptionButton",
        cstring"set_item_text")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  argsToPassToGodot[][0] = unsafeAddr(idx)
  var argToPassToGodot1 = toGodotString(text)
  argsToPassToGodot[][1] = unsafeAddr(argToPassToGodot1)
  var ptrCallRet: pointer
  optionButtonSetItemTextMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)
  deinit(argToPassToGodot1)
