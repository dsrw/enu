import godotapi / [margin_container, line_edit, rich_text_label, font, style_box, dynamic_font, dynamic_font_data]
import pkg / [godot]
import globals, models / [types, states]

let state = GameState.active

const prompt = "[color=#FF00FF] ❯ [/color]"
gdobj Prompt of MarginContainer:
  var
    view: RichTextLabel
    editor: LineEdit

  method ready =
    self.view = self.get_node("View") as RichTextLabel
    self.editor = self.get_node("Editor") as LineEdit
    self.bind_signals(self.editor, "gui_input", "text_changed")
    self.bind_signals(state.nodes.game, "ready")

  method on_ready =
    self.view.bb_code_text = prompt
    let size = self.editor.get_font("normal_font").get_string_size(self.view.text).x
    echo "FONT", self.editor.get_font("normal_font").DynamicFont.font_data.font_path
    var stylebox = self.editor.get_stylebox("normal").duplicate() as StyleBox
    stylebox.content_margin_left = size
    self.editor.add_stylebox_override("normal", stylebox)

  method on_text_changed(new_text: string) =
    discard

  method on_gui_input(event: InputEvent) =
    echo "INPUT!!!!"
    #self.view.bbcode_text = "[style color=#FF00FF] ❯ [/style]ēnu"
    #self.editor.text = "   "
