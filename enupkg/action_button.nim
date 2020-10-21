import ../godotapi / [button],
       godot,
       core, globals

gdobj ActionButton of Button:
  method ready*() =
    trace:
      self.bind_signals self, "pressed"

  method on_pressed*() =
    self.get_parent.trigger("action_changed", self.name)
