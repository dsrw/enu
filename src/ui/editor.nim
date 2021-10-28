import godotapi / [text_edit, scene_tree, node, input_event, global_constants,
                         input_event_key, style_box_flat]
import godot, compiler/lineinfos, model_citizen
import std / [strutils, tables]
import core, globals, game, engine/engine

gdobj Editor of TextEdit:
  var
    ff = false
    comment_color* {.gdExport.} = init_color(0.5, 0.5, 0.5)
    mouse_was_captured = false
    og_bg_color: Color
    dirty = false

  proc indent_new_line() =
    let column = int self.cursor_get_column - 1
    if column > 0:
      let
        line = self.get_line(self.cursor_get_line)[0..column]
        stripped = line.strip()

      if stripped.high > 0:
        let last = $stripped[stripped.high]

        if (stripped in w"var let const type") or last in w": =":
          let spaces = " ".repeat(line.indentation + 2)
          self.insert_text_at_cursor("\n" & spaces)
          self.get_tree.set_input_as_handled()

  method input*(event: InputEvent) =
    var event = event.as(InputEventKey)
    if not event.is_nil and event.pressed:
      if event.scancode == KEY_ENTER:
        self.indent_new_line()
      elif event.scancode == KEY_HOME:
        self.cursor_set_column(0)
        self.get_tree.set_input_as_handled()
      elif event.scancode == KEY_END:
        self.cursor_set_column self.get_line(self.cursor_get_line).len
        self.get_tree.set_input_as_handled()

  method unhandled_input*(event: InputEvent) =
    if self.visible:
      if event.is_action_pressed("ui_cancel"):
        if not (event of InputEventJoypadButton) or not state.command_mode:
          state.editing = false
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
    if not state.open_engine.is_nil:
      for err in state.open_engine.errors:
        self.set_line_as_marked(int64(err.info.line - 1), true)

  proc `executing_line=`*(line: int) =
    if self.get_line_count >= line:
      self.set_executing_line(line)

  method on_text_changed() =
    self.dirty = true

  method ready* =
    self.bind_signals w"save script_error command_mode_enabled command_mode_disabled"
    self.bind_signals(self, w"text_changed")
    var stylebox = self.get_stylebox("normal").as(StyleBoxFlat)
    self.og_bg_color = stylebox.bg_color

    state.target_flags.track proc(added, removed: set[TargetFlag]) =
      if CommandMode in added:
        if self.dirty:
          reload_scripts()
        self.mouse_filter = MOUSE_FILTER_IGNORE
        self.shortcut_keys_enabled = false
        self.readonly = true
        var stylebox = self.get_stylebox("normal").as(StyleBoxFlat)
        stylebox.bg_color = Color(r: 0, g: 0, b: 0, a: 0.4)

      if CommandMode in removed:
        self.mouse_filter = MOUSE_FILTER_STOP
        self.shortcut_keys_enabled = true
        self.readonly = false
        var stylebox = self.get_stylebox("normal").as(StyleBoxFlat)
        stylebox.bg_color = self.og_bg_color

      if Editing in added:
        self.visible = true
        self.text = read_file(state.open_file)
        self.file_name = state.open_file
        self.grab_focus()
        self.clear_errors()
        self.highlight_errors()

        self.executing_line = int state.open_engine.current_line.line - 1
        state.open_engine.line_changed = proc(current: TLineInfo, previous: TLineInfo) =
          self.executing_line = int current.line - 1

      if Editing in removed:
        if self.dirty:
          reload_scripts()
        self.release_focus()
        self.visible = false
        state.open_engine.line_changed = nil
        state.open_engine = nil

    self.configure_highlighting()

  method on_save* =
    if self.file_name != "":
      self.dirty = false
      self.clear_errors()
      write_file(state.open_file, self.text)

  method on_script_error* =
    self.highlight_errors()
