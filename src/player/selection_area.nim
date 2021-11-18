import godotapi / [area, control]
import godot
import ".." / [core, globals, game, world/bot]
import player

const signals = ["target_in", "target_out", "target_fire", "target_remove"]

gdobj SelectionArea of Area:
  var
    bot*: NimBot

  method ready*() =
    self.bot = self.get_node("..") as NimBot
    bind_signals(self, self, signals)
    if self.bot.unit.script_ctx.is_clone:
      self.collision_layer = 0

  method on_target_in*() =
    if tool_mode == CodeMode:
      self.bot.highlight()
    else:
      state.reticle = true

  method on_target_out*() =
    self.bot.deselect()
    state.reticle = true

  method on_target_fire*() =
    if tool_mode == CodeMode:
      self.bot.select()

  method on_target_remove*() =
    if tool_mode != CodeMode:
      self.bot.destroy()
      state.target_block = true
      save_scene()
