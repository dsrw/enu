import ../godotapi / [text_edit, scene_tree, node, input_event, global_constants],
       godot,
       globals, game,
       strutils


gdobj Editor of TextEdit:
  var
    file_name = ""
    ff = false

  method on_save*() =
    write_file(self.file_name, self.text)

  method input*(event: InputEvent) =
    if self.visible:
      if event.is_action_pressed("toggle_mouse_captured"):
        hide_editor()
        self.get_tree().set_input_as_handled()

  method ready*() =
    self.bind_signals("save")
    show_editor = proc(file_name: string) =
      self.file_name = file_name
      self.visible = true
      self.text = read_file(file_name)
      self.grab_focus()
      release_mouse()
      open_file = file_name

    editing = proc():bool = self.visible

    hide_editor = proc() =
      self.release_focus()
      capture_mouse()
      self.visible = false
