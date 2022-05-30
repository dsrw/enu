import std / [lists, algorithm]
import pkg / [godot, markdown, hmatching, print, model_citizen]
import godotapi / [rich_text_label, scroll_container, text_edit, theme,
                   dynamic_font, dynamic_font_data, style_box_flat]
import core, globals
import models / colors except Color

export scroll_container

const comment_color = col"808080"

proc stylebox(self: Control): StyleBoxFlat = 
  self.get_stylebox("normal").as(StyleBoxFlat)

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
    size* {.gd_export.} = 0
    current_label: RichTextLabel
    container: Node
    og_text_edit: TextEdit
    og_label*: RichTextLabel
    og_text_edit_color: Color
    og_label_color: Color
    needs_margin = false
    resized = false
    local_default_font: DynamicFont
    local_italic_font: DynamicFont
    local_bold_font: DynamicFont
    local_bold_italic_font: DynamicFont
    local_header_font: DynamicFont
    local_mono_font: DynamicFont

  proc add_label() =
    self.current_label = self.og_label.duplicate as RichTextLabel
    self.container.add_child(self.current_label)
    self.current_label.visible = true
    GameState.active.nodes.game.bind_signals(self.current_label, "meta_clicked")

  proc set_font_sizes =
    var size = 
      if self.size > 0:
        self.size
      else:
        GameState.active().config.font_size.value

    self.local_default_font.size = size
    self.local_italic_font.size = size
    self.local_bold_font.size = size
    self.local_bold_italic_font.size = size
    self.local_mono_font.size = size 
    self.local_header_font.size = size * 2

    var first = true
    for child in self.container.get_children:
      var child = child.as_object(Node)

      if child of TextEdit:
        var child = TextEdit(child)
        var height = child.get_line_count * child.get_line_height + 24
        let lines = dup child.text.split_lines.sorted_by_it(it.len)
        
        var size = child.rect_min_size
        size.y = float height
        if lines.len > 0:
          let str_size = 
            self.local_mono_font.get_string_size(" ".repeat(lines.len + 2))
          size.x = str_size.x
        child.rect_min_size = size
        child.rect_size = size
      elif child of RichTextLabel:
        var stylebox = self.current_label.stylebox
        stylebox.content_margin_bottom = 0
        
        if not first:
          stylebox.content_margin_top = float(size + 4)
        else:
          first = false

  proc add_text_edit(): TextEdit =
    result = self.og_text_edit.duplicate as TextEdit
    result.add_color_region("\"\"\"", "\"\"\"", ir_black[normal], false)
    result.add_color_region("\"", "\"", ir_black[text], false)
    result.add_color_region("#", "\n", comment_color, true)
    result.add_color_region("#[", "]#", comment_color, false)

  method ready() =
    self.bind_signals(self, "resized")
    self.container = self.get_node("VBoxContainer")
    self.og_text_edit = self.container.get_node("TextEdit") as TextEdit
    self.og_label = self.container.get_node("RichTextLabel") as RichTextLabel
    self.container.remove_child self.og_text_edit
    self.container.remove_child self.og_label
    self.og_text_edit_color = self.og_text_edit.stylebox.bg_color

    self.og_label_color = self.og_label.stylebox.bg_color

    # clone fonts so they can be resized without impacting other labels

    self.local_default_font = self.default_font.duplicate as DynamicFont
    self.local_italic_font = self.italic_font.duplicate as DynamicFont
    self.local_bold_font = self.bold_font.duplicate as DynamicFont
    self.local_bold_italic_font = self.bold_italic_font.duplicate as DynamicFont
    self.local_header_font = self.header_font.duplicate as DynamicFont
    self.local_mono_font = self.mono_font.duplicate as DynamicFont

    self.og_text_edit.add_font_override("font", self.local_mono_font)
    self.og_label.add_font_override("normal_font", self.local_default_font)
    
    GameState.active.config.font_size.changes:
      if added:
        self.set_font_sizes()

  method on_resized =
    if not self.resized:
      self.set_font_sizes()
      self.resized = true
    
  proc render_markdown(token: Token, list_position = 0, inline_blocks = false) =
    var list_position = list_position
    for t in token.children:
      var label = self.current_label
      if self.needs_margin and not (t of CodeBlock):
        label.newline
        self.needs_margin = false
        
      case t:
      of of Heading():
        label.with(push_font self.local_header_font, 
          push_color ir_black[keyword]) 
        self.render_markdown t
        label.with(pop, pop, newline)
        self.needs_margin = true

      of of Em():
        label.push_font self.local_italic_font
        self.render_markdown t
        label.pop

      of of Strong():
        label.push_font self.local_bold_font
        self.render_markdown t
        label.pop
        
      of of CodeSpan():
        label.with(push_font self.local_mono_font, push_color ir_black[number],
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
        self.render_markdown(t, 1)

      of of UL():
        self.render_markdown(t)

      of of LI():
        label.with(push_table 2, push_cell, push_font self.local_mono_font)

        if list_position > 0:
          label.add_text LI(t).marker & ". "
          inc list_position
        else:
          label.add_text "• "
        label.with(pop, pop, push_cell)
        self.render_markdown(t, inline_blocks = true)
        label.with(pop, pop, newline)

      of of Link():
        let t = Link(t)
        label.push_color(ir_black[variable])
        label.push_font self.local_bold_font
        label.push_meta(t.url.to_variant)
        label.add_text t.title
        echo "pushing title: ", t.title
        echo "doc ", t.doc
        echo "url ", t.url
        echo "rest? ", t
        self.render_markdown(t)
        label.pop
        label.pop
        label.pop

      of of Text():
        label.add_text t.doc

      of of SoftBreak():
        label.add_text " "
      else:
        self.render_markdown(t)

  proc update*() =
    self.resized = false
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
        