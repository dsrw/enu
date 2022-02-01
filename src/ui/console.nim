import godotapi / [text_edit, scene_tree, node, input_event, input_event_key,
                         rich_text_label, global_constants]
import godot, model_citizen
import std / strutils
import globals, core

let state = GameState.active

gdobj Console of RichTextLabel:
  var
    default_mouse_filter: int64

  proc init*() =
    state.logger = proc(level, msg: string) =
      if level == "err":
        self.visible = true
      state.console.log += &"[b]{level.to_upper}[/b] {msg}\n"

    state.console.visible.changes:
      if added: self.visible = change.item

    state.console.log.changes:
      if added:
        echo change.item
        discard self.append_bbcode(change.item)
      elif removed:
        self.clear()
        discard self.append_bbcode(state.console.log.value.join("\n"))
        break

    state.console.show_errors.changes:
      if added:
        state.console.visible.value = true

    self.default_mouse_filter = self.mouse_filter

  method ready*() =
    GameState.active.target_flags.changes:
      if MouseCaptured.added:
        self.mouse_filter = MOUSE_FILTER_IGNORE
      elif MouseCaptured.removed:
        self.mouse_filter = self.default_mouse_filter
