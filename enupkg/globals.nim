import ../godotapi / [node, scene_tree],
       godot,
       strformat, math

export strformat.`&`

const
  CMP_EPSILON = 0.00001
  UP* = vec3(0, 1, 0)
  DOWN* = vec3(0, -1, 0)
  BACK* = vec3(0, 0, 1)
  FORWARD* = vec3(0, 0, -1)

var
  editing*: proc():bool
  show_editor*: proc(file: string)
  unfocus_editor*: proc()
  hide_editor*: proc()
  capture_mouse*: proc()
  release_mouse*: proc()
  save_and_reload*: proc()
  pause*: proc()
  place_block*: proc(point, normal: Vector3, index = 0)
  selected_items*: seq[proc()] = @[]
  game_node*: Node
  known_signals: seq[string] = @[]
  last_debug_msg: string

  logger*: proc(level, msg: string)
  init*: seq[proc()] = @[]

proc join_args[T](args: varargs[T]): string =
  if args.len == 1:
    $args[0]
  elif args.len > 1:
    $args[0] & " " & $args[1..0]
  else:
    $args

proc is_zero_approx(s: float): bool =
  abs(s) < CMP_EPSILON

proc debug*[T](args: varargs[T]) =
  let msg = join_args(args)
  if msg != last_debug_msg:
    logger("debug", msg)
    last_debug_msg = msg

proc info*[T](args: varargs[T]) =
  logger("info", join_args(args))

proc err*[T](args: varargs[T]) =
  logger("err", join_args(args))


proc bind_signals*(node: Node, signals: varargs[string]) =
  debug("Binding " & $signals)
  if game_node == nil: game_node = node.get_tree().root.get_node("Game")
  for signal in signals:
    if signal notin known_signals:
      game_node.add_user_signal(signal)
      known_signals.add(signal)
    let meth = "_on_" & signal
    discard game_node.connect(signal, node, meth)

proc trigger*(signal: string, args: varargs[Variant]) =
  game_node.emit_signal(signal, args)

proc lerp*(self, other, t: float): float {.inline.} =
  self + t * (other - self)

proc wrapf*(value, min, max: float): float =
  let range = max - min
  if is_zero_approx(range):
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
