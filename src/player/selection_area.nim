import godotapi / [area, control]
import godot
import ".." / [core, globals, game, world/bot]
import player

const signals = ["target_in", "target_out", "target_fire", "target_remove"]

gdobj SelectionArea of Area:
  var
    bot*: NimBot

  method ready*() =
    trace:
      self.bot = self.get_node("..") as NimBot
      bind_signals(self, self, signals)

  method on_target_in*() =
    if tool_mode == CodeMode:
      self.bot.highlight()
    else:
      get_player().aim_target.hide()
      self.bot.highlight()
      if get_game().mouse_captured:
        get_game().reticle.visible = true

  method on_target_out*() =
    if tool_mode == CodeMode:
      self.bot.deselect()
    else:
      self.bot.deselect()
      get_player().aim_target.show()
      get_game().reticle.visible = false

  method on_target_fire*() =
    if tool_mode == CodeMode:
      self.bot.select()

  method on_target_remove*() =
    if tool_mode != CodeMode:
      self.bot.destroy()
      get_player().aim_target.show()
      get_game().reticle.visible = false
      save_scene()
