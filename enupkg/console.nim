import ../godotapi / [text_edit, scene_tree, node, input_event, input_event_key,
                      rich_text_label, global_constants],
       godot,
       strutils,
       globals

gdobj Console of RichTextLabel:
  var log_text = ""

  proc init*() =
    logger = proc(level, msg: string) =
      self.log_text &= &"[b]{level.to_upper}[/b] {msg}\n"

  method process*(delta: float) =
    if self.log_text != "":
      self.bbcode_text = self.log_text
      self.log_text = ""
