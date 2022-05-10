import std / lists
import pkg / [godot, markdown, hmatching, print, model_citizen]
import godotapi / [rich_text_label, scroll_container, text_edit, theme,
                   dynamic_font, dynamic_font_data, style_box]
import core, globals, models / colors

const comment_color = col"808080"

gdobj MarkdownLabel of ScrollContainer:
  var
    markdown* {.gd_export, hint: MultilineText.}: string
    old_markdown: string
    default_font* {.gd_export.}:DynamicFont
    italic_font* {.gd_export.}: DynamicFont
    bold_font* {.gd_export.}: DynamicFont
    bold_italic_font* {.gd_export.}: DynamicFont
    header_font* {.gd_export.}: DynamicFont
    mono_font* {.gd_export.}: DynamicFont
    current_label: RichTextLabel
    container: Node
    og_text_edit: TextEdit
    og_label: RichTextLabel
    needs_margin = false

  proc add_label() =
    self.current_label = self.og_label.duplicate as RichTextLabel
    self.container.add_child(self.current_label)
    self.current_label.visible = true

  proc set_font_sizes = 
    let config = GameState.active.config
    self.default_font.size = config.font_size.value
    self.italic_font.size = config.font_size.value
    self.bold_font.size = config.font_size.value
    self.bold_italic_font.size = config.font_size.value
    self.mono_font.size = config.font_size.value
    self.header_font.size = config.font_size.value * 2
    var first = true
    for child in self.container.get_children:
      var child = child.as_object(Node)

      if child of TextEdit:
        var child = TextEdit(child)
        var height = child.get_line_count * child.get_line_height + 18
        var size = child.rect_min_size
        size.y = float height
        child.rect_min_size = size
        child.rect_size = size
      elif child of RichTextLabel:
        var stylebox = self.current_label.get_stylebox("normal")
        stylebox.content_margin_bottom = 0
        self.current_label.add_stylebox_override("normal", stylebox)

        if not first:
          stylebox = self.current_label.get_stylebox("normal")
          stylebox.content_margin_top = float(config.font_size.value + 4)
          self.current_label.add_stylebox_override("normal", stylebox)
        else:
          first = false

  proc add_text_edit(): TextEdit =
    result = self.og_text_edit.duplicate as TextEdit
    result.add_color_region("#", "\n", comment_color, true)
    result.add_color_region("#[", "]#", comment_color, false)
    
  method ready() =
    self.container = self.get_node("VBoxContainer")
    self.og_text_edit = self.container.get_node("TextEdit") as TextEdit
    self.og_label = self.container.get_node("RichTextLabel") as RichTextLabel
    self.container.remove_child self.og_text_edit
    self.container.remove_child self.og_label

    self.og_text_edit.add_font_override("font", self.mono_font)
    self.og_label.add_font_override("normal_font", self.default_font)
    
    GameState.active.config.font_size.value = 32
    GameState.active.config.font_size.changes:
      if added:
        self.set_font_sizes()
    
  proc render_markdown(token: Token, list_position = 0, inline_blocks = false) =
    var list_position = list_position
    for t in token.children:
      var label = self.current_label
      if self.needs_margin and not (t of CodeBlock):
        label.newline
        self.needs_margin = false
      case t:
      of of Heading():
        label.with(push_font self.header_font, push_color ir_black[keyword]) 
        self.render_markdown t
        label.with(pop, pop, newline)
        self.needs_margin = true
        
      of of CodeSpan():
        label.with(push_font self.mono_font, push_color ir_black[number],
                   add_text t.doc)
        self.render_markdown t
        label.with(pop, pop)

      of of CodeBlock():
        self.needs_margin = false
        
        var editor = self.add_text_edit()
        editor.text = t.doc[0..^2]
        editor.visible = true
        self.container.add_child editor
        self.add_label()
   
      of of Paragraph():
        self.render_markdown(t, inline_blocks = inline_blocks)
        if not inline_blocks:
          label.newline
        self.needs_margin = true

      of of OL():
        label.push_indent 2
        self.render_markdown(t, 1)
        label.pop

      of of UL():
        label.push_indent 2
        self.render_markdown(t)
        label.pop

      of of LI():
        label.push_font self.mono_font
        if list_position > 0:
          label.add_text LI(t).marker & ". "
          inc list_position
        else:
          label.add_text "• "
        label.pop
        self.render_markdown(t, inline_blocks = true)
        label.with(newline)
        self.needs_margin = true

      of of Text():
        label.add_text t.doc

      of of SoftBreak():
        label.newline
        if inline_blocks:
          label.with(push_font self.mono_font, add_text "  ", pop)
      else:
        self.render_markdown(t)
        
  method process(delta: float) =
    if self.markdown != self.old_markdown:
      for child in self.container.get_children:
        var child = child.as_object(Node)
        self.container.remove_child(child)
        child.queue_free

      self.add_label()
      self.old_markdown = self.markdown
      var root = Document()
      discard markdown(self.markdown, root=root)
      self.needs_margin = false
      self.render_markdown(root)
      self.set_font_sizes()
