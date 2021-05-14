import ../godotapi / [node, scene_tree, voxel_buffer]
import godot, json_serialization, compiler/lineinfos
import engine/engine, core, api/directions
import std / [strformat, math, strutils, sequtils, tables, sets, colors]

export strformat.`&`

type
  ToolMode* = enum
    CodeMode, BlockMode, ObjectMode

  StateRefs = ref object
    player*: Node
    game*: Node




  #BlockColors* = enum


  VoxData* = tuple[index, offset: int, keep: bool]
  Vox* = tuple[location: Vector3, data: VoxData]
  VoxTable* = Table[Vector3, VoxData]

  Config* = object of RootObj
    downscale*: int
    font_size*: int
    dock_icon_size*: float
    world*: string
    show_stats*: bool
    world_dir* {.dont_serialize.}: string
    script_dir* {.dont_serialize.}: string
    screen_scale* {.dont_serialize.}: float
    scene* {.dont_serialize.}: string
    lib_dir* {.dont_serialize.}: string

const
  CMP_EPSILON = 0.00001

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

proc roughly_zero[T](s: T): bool =
  abs(s) < CMP_EPSILON

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

proc is_axis_aligned*(v: Vector3): bool {.inline.} =
  v in [Up, Down, Left, Right, Forward, Back]

proc init_color*(color: colors.Color): godot.Color =
  let rgb = extract_rgb color
  result = init_color(rgb.r.float / 256, rgb.g.float / 256, rgb.b.float / 256)

proc init_color*(hex: 0..0xffffff): godot.Color =
  result = init_color colors.Color(hex)
