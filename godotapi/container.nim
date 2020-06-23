
import
  godot, godottypes, godotinternal, control

export
  godottypes, control

const
  NOTIFICATION_SORT_CHILDREN* = 50'i64
method childMinsizeChanged*(self: Container) {.gcsafe, locks: 0, base.}
method sortChildren*(self: Container) {.gcsafe, locks: 0, base.}
proc fitChildInRect*(self: Container; child: Control; rect: Rect2) {.gcsafe, locks: 0.}
proc queueSort*(self: Container) {.gcsafe, locks: 0.}
var containerUnderscorechildMinsizeChangedMethodBind {.threadvar.}: ptr GodotMethodBind
method childMinsizeChanged(self: Container) =
  if isNil(containerUnderscorechildMinsizeChangedMethodBind):
    containerUnderscorechildMinsizeChangedMethodBind = getMethod(
        cstring"Container", cstring"_child_minsize_changed")
  var ptrCallRet: pointer
  containerUnderscorechildMinsizeChangedMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var containerUnderscoresortChildrenMethodBind {.threadvar.}: ptr GodotMethodBind
method sortChildren(self: Container) =
  if isNil(containerUnderscoresortChildrenMethodBind):
    containerUnderscoresortChildrenMethodBind = getMethod(cstring"Container",
        cstring"_sort_children")
  var ptrCallRet: pointer
  containerUnderscoresortChildrenMethodBind.ptrCall(self.godotObject, nil,
      ptrCallRet)

var containerFitChildInRectMethodBind {.threadvar.}: ptr GodotMethodBind
proc fitChildInRect(self: Container; child: Control; rect: Rect2) =
  if isNil(containerFitChildInRectMethodBind):
    containerFitChildInRectMethodBind = getMethod(cstring"Container",
        cstring"fit_child_in_rect")
  var
    argsStatic: array[2, pointer]
    argsToPassToGodot = cast[ptr array[MAX_ARG_COUNT, pointer]](addr argsStatic)
  let argToPassToGodot0 = if not child.isNil:
    child.godotObject
  else:
    nil
  argsToPassToGodot[][0] = argToPassToGodot0
  argsToPassToGodot[][1] = unsafeAddr(rect)
  var ptrCallRet: pointer
  containerFitChildInRectMethodBind.ptrCall(self.godotObject, argsToPassToGodot,
      ptrCallRet)

var containerQueueSortMethodBind {.threadvar.}: ptr GodotMethodBind
proc queueSort(self: Container) =
  if isNil(containerQueueSortMethodBind):
    containerQueueSortMethodBind = getMethod(cstring"Container",
        cstring"queue_sort")
  var ptrCallRet: pointer
  containerQueueSortMethodBind.ptrCall(self.godotObject, nil, ptrCallRet)
