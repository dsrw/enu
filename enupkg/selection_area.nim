import godot, ../godotapi / [area],
       globals, bot, player

const signals = ["target_in", "target_out", "target_fire"]

gdobj SelectionArea of Area:
  var
    bot*: NimBot

  method ready*() =
    self.bot = self.get_node("..") as NimBot
    bind_signals(self, self, signals)

  method on_target_in*() =
    if tool_mode == CodeMode:
      self.bot.highlight()
    else:
      get_player().aim_target.hide()

  method on_target_out*() =
    if tool_mode == CodeMode:
      self.bot.deselect()
    else:
      get_player().aim_target.show()

  method on_target_fire*() =
    self.bot.select()


