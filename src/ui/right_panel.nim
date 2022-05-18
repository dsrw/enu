import pkg / [godot, model_citizen]
import godotapi / margin_container
import ui / markdown_label
import models / [types, states]

let state = GameState.active

gdobj RightPanel of MarginContainer:
  var label: MarkdownLabel
  method ready* =
    self.label = self.find_node("MarkdownLabel") as MarkdownLabel
    
    GameState.active().markdown.changes:
      if added:
        state.mouse_captured = false
        self.label.markdown = change.item
        self.visible = change.item != ""

