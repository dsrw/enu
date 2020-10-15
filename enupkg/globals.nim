import ../godotapi / [node, scene_tree, voxel_buffer],
       godot,
       engine, core,
       strformat, math, strutils, sequtils, compiler/lineinfos, tables, sets

export strformat.`&`

type
  ToolMode* = enum
    CodeMode, BlockMode, ObjectMode

  StateRefs = ref object
    player*: Node
    game*: Node

  Vox* = tuple[location: Vector3, index: int, offset: int, keep: bool]

const
  CMP_EPSILON = 0.00001
  UP* = vec3(0, 1, 0)
  DOWN* = vec3(0, -1, 0)
  BACK* = vec3(0, 0, 1)
  FORWARD* = vec3(0, 0, -1)

var
  editing*: proc:bool
  errors*: Table[string, seq[tuple[msg: string, info: TLineInfo]]]
  show_editor*: proc(file: string, engine: Engine)
  hide_editor*: proc()
  capture_mouse*: proc()
  release_mouse*: proc()
  reload_scripts*: proc()
  save_and_reload*: proc()
  save_scene*: proc(file_name = "default")
  pause*: proc()
  logger*: proc(level, msg: string)
  echo_console*: proc(msg: string)
  game_node*: Node
  tool_mode* = BlockMode
  state* = new StateRefs
  open_file* = ""
  action_index* = 1
  action_count* = 4
  max_grid_index* = 0
  skip_next_mouse_move* = false
  fire_down* = false
  remove_down* = false
  command_mode* = false

proc join_args[T](args: varargs[T]): string =
  args.map_it(&"'{it}'").join " "

proc roughly_zero[T](s: T): bool =
  abs(s) < CMP_EPSILON

proc debug*[T](args: varargs[T]) =
  let msg = join_args(args)
  logger("debug", msg)

proc info*[T](args: varargs[T]) =
  logger("info", join_args(args))

proc err*[T](args: varargs[T]) =
  let joined = join_args(args)
  logger "err", joined

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

proc lerp*(self, other, t: float): float {.inline.} =
  self + t * (other - self)

proc wrap*[T](value, min, max: T): float =
  let range = max - min
  if range.roughly_zero:
    min
  else:
    value - (range * floor((value - min) / range))

proc x*(b: Basis): Vector3 {.inline.} =
  vec3(b[0].x, b[1].x, b[2].x)

proc y*(b: Basis): Vector3 {.inline.} =
  vec3(b[0].y, b[1].y, b[2].y)

proc z*(b: Basis): Vector3 {.inline.} =
  vec3(b[0].z, b[1].z, b[2].z)

proc round*(v: Vector3): Vector3 {.inline.} =
  vec3(v.x.round(), v.y.round(), v.z.round())
