import godotapi / [text_edit, scene_tree, node, input_event, input_event_key,
                   rich_text_label, global_constants, margin_container]
import godot, model_citizen
import std / strutils
import globals, core, prompt

let state = GameState.active

gdobj ConsoleNode of MarginContainer:
  var
    default_mouse_filter: int64
    output: RichTextLabel
    prompt: Prompt

  proc init*() =
    state.logger = proc(level, msg: string) =
      if level == "err":
        state.flags += ShowConsole
      state.console.log += &"[b]{level.to_upper}[/b] {msg}\n"

    state.flags.changes:
      self.visible = ConsoleVisible in state.flags

    state.console.log.changes:
      if added:
        echo change.item
        discard self.output.append_bbcode(change.item)
      elif removed:
        self.output.clear()
        discard self.output.append_bbcode(state.console.log.value.join("\n"))
        break

    self.default_mouse_filter = self.mouse_filter

  method ready*() =
    self.output = self.get_node("Output") as RichTextLabel
    self.prompt = self.get_node("Prompt") as Prompt

    GameState.active.flags.changes:
      if MouseCaptured.added:
        self.mouse_filter = MOUSE_FILTER_IGNORE
      elif MouseCaptured.removed:
        self.mouse_filter = self.default_mouse_filter

  method input*(event: InputEvent) =
    if ConsoleVisible in state.flags:
      if event.is_action_pressed("ui_cancel"):
        if not (event of InputEventJoypadButton) or CommandMode notin state.flags:
          state.flags -= ShowConsole
          self.get_tree().set_input_as_handled()
