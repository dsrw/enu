import godot,
       godotapi / [node, scene_tree, voxel_buffer],
       std / [strformat, strutils, sequtils, tables, sets]
import engine/engine, core, models

export strformat.`&`, states

type
  ToolMode* = enum
    CodeMode, BlockMode, ObjectMode

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
  game_node*: Node
  data_node*: Node
  tool_mode* = BlockMode
  action_index* = 1
  action_count* = 6
  game_ready* = false
  gravity* = -240.0
  state* = GameState()

proc debug*(args: varargs[string, `$`]) =
  logger("debug", args.join)

proc info*(args: varargs[string, `$`]) =
  logger("info", args.join)

proc err*(args: varargs[string, `$`]) =
  logger "err", args.join

proc vec3*[T](v: V3[T]): Vector3 =
  vec3(float v.x, float v.y, float v.z)

proc v3*(v: Vector3): V3[float] = (float v.x, float v.y, float v.z)

proc bind_signals*(receiver, sender: Node, signals: varargs[string]) =
  let send_node = if sender == nil:
    if game_node == nil: game_node = receiver.get_tree().root.get_node("Game")
    game_node
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
  trigger(game_node, signal, args)

proc destroy*(node: Node) =
  node.get_parent.remove_child(node)
  node.queue_free()
  save_scene()
