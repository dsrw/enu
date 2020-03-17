import ../godotapi / [text_edit, scene_tree, node, input_event, input_event_key, global_constants],
       godot,
       globals,
       nre,
       strutils,
       utils


gdobj Editor of TextEdit:
  var
    file_name = ""

  method on_save*() =
    write_file(self.file_name, self.text)

  method ready*() {.gdExport.} =
    self.bind_signals("save")
    show_editor = proc(file_name: string) =
      self.file_name = file_name
      self.visible = true
      self.text = read_file(file_name)
      self.grab_focus()
      release_mouse()

    editing = proc():bool =
      result = self.visible and self.has_focus
      #print("editing: ", result)

    unfocus_editor = proc() =
      self.release_focus()

    hide_editor = proc() =
      self.visible = false

  method input*(event: InputEvent) =
    let e = event.as(InputEventKey)
    if e != nil and e.pressed:
      if e.scancode == KEY_TAB:
        self.accept_event()
        self.insert_text_at_cursor("  ")
      elif e.scancode == KEY_ENTER:
        self.accept_event()
        self.insert_text_at_cursor("\n" & detect_indent self.get_line(self.cursor_get_line))
