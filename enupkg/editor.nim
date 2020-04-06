import ../godotapi / [text_edit, scene_tree, node, input_event, input_event_key, global_constants],
       godot,
       globals,
       strutils


gdobj Editor of TextEdit:
  var
    file_name = ""

  method on_save*() =
    write_file(self.file_name, self.text)

  method ready*() =
    self.bind_signals("save")
    show_editor = proc(file_name: string) =
      self.file_name = file_name
      self.visible = true
      self.text = read_file(file_name)
      self.grab_focus()
      release_mouse()

    editing = proc():bool =
      result = self.visible and self.has_focus

    unfocus_editor = proc() =
      self.release_focus()

    hide_editor = proc() =
      self.visible = false
