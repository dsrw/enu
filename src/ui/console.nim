import godotapi / [text_edit, scene_tree, node, input_event, input_event_key,
                         rich_text_label, global_constants]
import godot, model_citizen
import std / strutils
import globals, core

gdobj Console of RichTextLabel:
  var
    log_text = ""
    default_mouse_filter: int64

  proc init*() =
    logger = proc(level, msg: string) =
      if level == "err":
        self.visible = true
      echo msg
      self.log_text &= &"[b]{level.to_upper}[/b] {msg}\n"
    echo_console = proc(msg: string) =
      self.log_text &= &"{msg}\n"
      self.visible = true
      echo msg
    self.default_mouse_filter = self.mouse_filter

  method ready*() =
    trace:
      self.bind_signals w"clear_console toggle_console"
    state.target_flags.track proc(changes: auto) =
      for change in changes:
        if MouseCaptured == change.obj and Added in change.changes:
          self.mouse_filter = MOUSE_FILTER_IGNORE
        elif MouseCaptured == change.obj and Removed in change.changes:
          self.mouse_filter = self.default_mouse_filter

  method process*(delta: float) =
    trace:
      if not self.log_text.is_empty():
        discard self.append_bbcode(self.log_text)
        self.log_text = ""

  method on_clear_console() =
    self.clear()

  method on_toggle_console() =
    self.visible = not self.visible
