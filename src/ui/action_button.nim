import godotapi/[button, style_box_flat]
import godot
import ".."/[core, gdutils]

gdobj ActionButton of Button:
  method ready*() =
    let toolbar_size = state.config.toolbar_size
    self.rect_min_size = vec2(toolbar_size, toolbar_size)
    for style in ["hover", "pressed", "focus", "normal"]:
      var stylebox = self.get_stylebox(style).as(StyleBoxFlat)
      stylebox.set_corner_radius_all int 8 * (toolbar_size / 100)
    self.bind_signals self, "pressed"

  method on_pressed*() =
    self.get_parent.trigger("action_changed", self.name)
