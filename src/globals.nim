import godotapi / [node, scene_tree, voxel_buffer],
       godot, hashes,
       engine/engine, core,
       strformat, math, strutils, sequtils, compiler/lineinfos, tables, sets

export strformat.`&`

type
  ToolMode* = enum
    CodeMode, BlockMode, ObjectMode

  StateRefs = ref object
    player*: Node
    game*: Node

  VoxData* = tuple[index: int, keep: bool]
  Vox* = tuple[location: Vector3, data: VoxData]
  VoxTable* = Table[Vector3, VoxData]

  Config* = object
    font_size*: int
    dock_icon_size*: float
    world*: string
    show_stats*: bool
    target_fps*: float
    min_render_scale*: float
    world_dir*: string
    script_dir*: string
    scene*: string
    lib_dir*: string

var
  editing*: proc:bool
  show_editor*: proc(file: string, engine: Engine)
  hide_editor*: proc()
  capture_mouse*: proc()
  release_mouse*: proc()
  reload_scripts*: proc()
  save_and_reload*: proc()
  save_scene*: proc(immediate = false)
  pause*: proc()
  logger*: proc(level, msg: string)
  echo_console*: proc(msg: string)
  game_node*: Node
  data_node*: Node
  tool_mode* = BlockMode
  state* = new StateRefs
  open_file* = ""
  action_index* = 1
  action_count* = 6
  skip_next_mouse_move* = false
  command_mode* = false
  config*: Config
  game_ready* = false

proc debug*(args: varargs[string, `$`]) =
  logger("debug", args.join)

proc info*(args: varargs[string, `$`]) =
  logger("info", args.join)

proc err*(args: varargs[string, `$`]) =
  logger "err", args.join

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
