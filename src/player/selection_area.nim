import godotapi / [area, control]
import godot
import ".." / [core, globals, game, world/bot_node]
import player

const signals = ["target_in", "target_out", "target_fire", "target_remove"]

gdobj SelectionArea of Area:
  var
    bot*: BotNode

  method ready*() =
    self.bot = self.get_node("..") as BotNode
    bind_signals(self, self, signals)
    # TODO
    # if self.bot.unit.script_ctx.is_clone:
    #   self.collision_layer = 0

  method on_target_in*() =
    if tool_mode == CodeMode:
      discard
      # TODO
      #self.bot.highlight()
    else:
      state.reticle = true

  method on_target_out*() =
    # TODO
    #self.bot.deselect()
    state.reticle = true

  method on_target_fire*() =
    if tool_mode == CodeMode:
      discard
      # TODO
      #self.bot.select()

  method on_target_remove*() =
    if tool_mode != CodeMode:
      self.bot.destroy()
      state.target_block = true
      save_scene()
