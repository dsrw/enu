import godotapi / [text_edit, scene_tree, node, input_event, input_event_key,
                         rich_text_label, global_constants]
import godot
import std / strutils
import core, models / states

gdobj Console of RichTextLabel:
  var
    default_mouse_filter: int64

  proc init*() =
    state.logger = proc(level, msg: string) =
      if level == "err":
        self.visible = true
      state.console.log += &"[b]{level.to_upper}[/b] {msg}\n"

    state.flags.changes:
      self.visible = ConsoleVisible in state.flags

    state.console.log.changes:
      if added:
        discard self.append_bbcode(change.item)
      elif removed:
        self.clear()
        discard self.append_bbcode(state.console.log.value.join("\n"))
        break

    self.default_mouse_filter = self.mouse_filter

  method ready*() =
    state.flags.changes:
      if MouseCaptured.added:
        self.mouse_filter = MOUSE_FILTER_IGNORE
      elif MouseCaptured.removed:
        self.mouse_filter = self.default_mouse_filter
