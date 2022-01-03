import godotapi / [node, scene_tree, voxel_buffer],
       std / [strformat, strutils, sequtils, tables, sets]
import engine/engine, core, models / [states, types]
import pkg / [godot, model_citizen]
export strformat.`&`, states, types

type
  VoxData* = tuple[index: int, keep: bool]
  Vox* = tuple[location: Vector3, data: VoxData]
  VoxTable* = Table[Vector3, VoxData]

var
  reload_scripts*: proc()
  save_and_reload*: proc()
  save_scene*: proc(immediate = false)
  pause*: proc()
  logger*: proc(level, msg: string)
  echo_console*: proc(msg: string)
  config*: Config
  game_ready* = false
  gravity* = -240.0
  state* = GameState.init(Node, action_count = 6, action_index = 1)
  gid = 0

proc gen_id*(): string =
  result = $gid
  gid.inc

proc debug*(args: varargs[string, `$`]) =
  logger("debug", args.join)

proc info*(args: varargs[string, `$`]) =
  logger("info", args.join)

proc err*(args: varargs[string, `$`]) =
  logger "err", args.join

proc bind_signals*(receiver, sender: Node, signals: varargs[string]) =
  let send_node = if sender == nil:
    state.nodes.game
  else:
    sender

  for signal in signals:
    let meth = "_on_" & signal
    if not send_node.has_signal(signal):
      send_node.add_user_signal(signal)
    discard send_node.connect(signal, receiver, meth)

proc bind_signals*(receiver: Node, signals: varargs[string]) =
  bind_signals(receiver, nil, signals)

proc trigger*(node: Object, signal: string, args: varargs[Variant, `new_variant`]) =
  if not node.has_user_signal(signal):
    node.add_user_signal(signal)
  node.emit_signal(signal, args)

proc trigger*(signal: string, args: varargs[Variant]) =
  trigger(state.nodes.game, signal, args)

proc destroy*(node: Node) =
  node.get_parent.remove_child(node)
  node.queue_free()
  save_scene()
