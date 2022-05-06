import std / lists
import pkg / [godot, markdown, hmatching, print]
import godotapi / [rich_text_label, theme, dynamic_font, dynamic_font_data]
import core, globals, models / colors

gdobj MarkdownLabel of RichTextLabel:
  var
    markdown* {.gd_export, hint: MultilineText.}: string
    old_markdown: string
    heading: DynamicFont

  method ready() =
    assert self.theme
    assert self.theme.default_font
    self.heading = self.get_font("bold_font").duplicate.as(DynamicFont)
    self.heading.size = 60

  proc render_markdown(token: Token, list_position = 0, inline_blocks = false) =
    var list_position = list_position
    for t in token.children:
      case t:
      of of Heading():
        self.with(newline, push_font self.heading, push_color ir_black[keyword], 
                  render_markdown t, pop, pop, newline, newline, newline)
        
      of of CodeSpan():
        self.with(push_mono, push_color ir_black[number], add_text t.doc, 
                  render_markdown t, pop, pop)

      of of CodeBlock():
        self.with(push_mono, push_color ir_black[operator],
                  push_indent 1, add_text t.doc, pop, pop, pop,
                  newline)

      of of Paragraph():
        self.render_markdown(t, inline_blocks = inline_blocks)
        if not inline_blocks:
          self.newline
          self.newline

      of of OL():
        self.with(push_indent 2, render_markdown(t, 1), pop)

      of of UL():
        self.with(push_indent 2, render_markdown(t), pop)

      of of LI():
        self.push_mono
        if list_position > 0:
          self.add_text LI(t).marker & ". "
          inc list_position
        else:
          self.add_text "• "
        self.with(pop, render_markdown(t, inline_blocks = true), 
                  newline, newline)

      of of Text():
        self.add_text t.doc

      of of SoftBreak():
        self.newline
        if inline_blocks:
          self.with(push_mono, add_text "  ", pop)
      else:
        self.render_markdown(t)
        
  method process(delta: float) =
    if self.markdown != self.old_markdown:
      self.old_markdown = self.markdown
      var root = Document()
      echo markdown(self.markdown, root=root)
      when false:
        for c in colors.Theme:
          self.push_color ir_black[c]
          self.add_text $c
          self.pop
          self.newline
        self.newline
      self.render_markdown(root)
