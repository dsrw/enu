import pkg / [godot, model_citizen]
import godotapi / [area, control]
import core, globals, world/bot_node

const signals = ["target_in", "target_out", "target_fire", "target_remove"]
let state = GameState.active

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
    if state.tool.value == Code:
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
    if state.tool.value == Code:
      discard
      # TODO
      #self.bot.select()

  method on_target_remove*() =
    if state.tool.value != Code:
      self.bot.destroy()
      state.target_block = true
      save_scene()
