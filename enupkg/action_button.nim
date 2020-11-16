import ../godotapi / [button, style_box_flat],
       godot,
       core, globals

gdobj ActionButton of Button:
  method ready*() =
    trace:
      self.rect_size = vec2(config.dock_icon_size, config.dock_icon_size)
      for style in w"hover pressed focus normal":
        var stylebox = self.get_stylebox(style).as(StyleBoxFlat)
        stylebox.set_corner_radius_all int 8 * (config.dock_icon_size / 100)
      self.bind_signals self, "pressed"

  method on_pressed*() =
    self.get_parent.trigger("action_changed", self.name)
