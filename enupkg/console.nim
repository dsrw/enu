import ../godotapi / [text_edit, scene_tree, node, input_event, input_event_key,
                      rich_text_label, global_constants],
       godot,
       strutils,
       globals

gdobj Console of RichTextLabel:
  var
    log_text = ""
    default_mouse_filter: int64

  proc init*() =
    logger = proc(level, msg: string) =
      self.log_text &= &"[b]{level.to_upper}[/b] {msg}\n"
    echo_console = proc(msg: string) =
      self.log_text &= &"{msg}\n"
    self.default_mouse_filter = self.mouse_filter

  method ready*() =
    self.bind_signals("mouse_captured", "mouse_released", "clear_console")

  method process*(delta: float) =
    if not self.log_text.is_empty():
      discard self.append_bbcode(self.log_text)
      self.log_text = ""

  method on_mouse_captured() =
    self.mouse_filter = MOUSE_FILTER_IGNORE

  method on_mouse_released() =
    self.mouse_filter = self.default_mouse_filter

  method on_clear_console() =
    self.clear()
