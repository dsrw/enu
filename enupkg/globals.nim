import ../godotapi / [node, scene_tree],
       godot,
       sets

var
  editing*: proc():bool
  show_editor*: proc(file: string)
  unfocus_editor*: proc()
  hide_editor*: proc()
  capture_mouse*: proc()
  release_mouse*: proc()
  save_and_reload*: proc()
  pause*: proc()
  selected_items*: seq[proc()] = @[]
  game_node: Node
  known_signals: seq[string] = @[]

proc bind_signals*(node: Node, signals: varargs[string]) =
  if game_node == nil: game_node = node.get_tree().root.get_node("Game")
  for signal in signals:
    if signal notin known_signals:
      game_node.add_user_signal(signal)
      known_signals.add(signal)
    let meth = "_on_" & signal
    discard game_node.connect(signal, node, meth)

proc trigger*(signal: string, args: varargs[Variant]) =
  game_node.emit_signal(signal, args)

