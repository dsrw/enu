import pkg/godot
import godotapi/[viewport_container, input_event]
import core, nodes/player_node

gdobj MainViewport of ViewportContainer:
  method input*(event: InputEvent) =
    (state.nodes.player as PlayerNode).viewport_input(event)
