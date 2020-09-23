import ../godotapi / [text_edit, scene_tree, node, input_event, global_constants],
       godot,
       core, globals, engine,
       strutils, tables, compiler/lineinfos

gdobj Editor of TextEdit:
  var
    engine: Engine
    file_name = ""
    ff = false
    comment_color* {.gdExport.} = init_color(0.5, 0.5, 0.5)

  method unhandled_input*(event: InputEvent) =
    if self.visible:
      if event.is_action_pressed("toggle_mouse_captured"):
        hide_editor()
        self.get_tree().set_input_as_handled()

  proc configure_highlighting =
    # block comments
    self.add_color_region("#[", "]#", self.comment_color, false)
    # line comments
    self.add_color_region("#", "\n", self.comment_color, true)

  proc clear_errors =
    for i in 0..<self.get_line_count():
      self.set_line_as_marked(i, false)

  proc highlight_errors =
    self.clear_executing_line()
    if self.file_name in errors:
      for err in errors[self.file_name]:
        self.set_line_as_marked(int64(err.info.line - 1), true)

  proc `executing_line=`*(line: int) =
    if self.get_line_count >= line:
      self.set_executing_line(line)

  method ready* =
    self.bind_signals("save", "script_error")
    show_editor = proc(file_name: string, engine: Engine) =
      self.engine = engine
      self.file_name = file_name
      self.visible = true
      self.text = read_file(file_name)
      self.grab_focus()
      release_mouse()
      open_file = file_name
      self.clear_errors()
      self.highlight_errors()

      self.executing_line = int self.engine.current_line.line - 1
      self.engine.line_changed = proc(current: TLineInfo, previous: TLineInfo) =
        self.executing_line = int current.line - 1

    editing = proc: bool = self.visible

    hide_editor = proc =
      trigger("retarget")
      self.release_focus()
      capture_mouse()
      self.visible = false
      self.engine.line_changed = nil
      self.engine = nil

    self.configure_highlighting()

  method on_save* =
    if self.file_name != "":
      self.clear_errors()
      write_file(self.file_name, self.text)

  method on_script_error* =
    self.highlight_errors()
