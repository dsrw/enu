import ../godotapi / [text_edit, scene_tree, node, input_event, global_constants],
       godot,
       globals,
       strutils


gdobj Editor of TextEdit:
  var
    file_name = ""
    ff = false
    comment_color* {.gdExport.} = init_color(0.5, 0.5, 0.5)

  method on_save*() =
    write_file(self.file_name, self.text)

  method unhandled_input*(event: InputEvent) =
    if self.visible:
      if event.is_action_pressed("toggle_mouse_captured"):
        hide_editor()
        self.get_tree().set_input_as_handled()

  proc configure_highlighting() =
    # block comments
    self.add_color_region("#[", "]#", self.comment_color, false)
    # line comments
    self.add_color_region("#", "\n", self.comment_color, true)

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

    self.configure_highlighting()
