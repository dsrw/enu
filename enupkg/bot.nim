import engine

import ../godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial],
       godot,
       strutils,
       times,
       tables,
       os

export godot.print,
       strutils

type
  BotEnv = ref object
    body: KinematicBody
    delta: float

const
  VELOCITY = 1.0
  MOVE_SPEED = 102.0
  MOVE_DURATION = 0.052
var
  run_game* = true
  scripts* = new_table[string, iterator (bot_env:BotEnv)]()

template go*(rules) =
  const name = split_file(instantiationInfo(0, true).filename).name
  iterator build_rules*(bot_env:BotEnv) {.closure.} =
    var bot_env {.inject.} = bot_env
    rules
  bot.scripts.add(name, build_rules)

proc move(bot_env: BotEnv) =
  let body = bot_env.body
  let delta = bot_env.delta
  var facing = body.global_transform.basis[2]
  discard body.move_and_slide(-facing * MOVE_SPEED * delta, vec3(0, 1, 0))
  # if bot.reload:
  # 	bot._start_thread()

  # time += delta
  # if time >= bot.duration:
  # 	bot._next()
  # 	time = 0

  # var facing = bot.global_transform.basis.z
  # match bot.current_command:
  # 	"move_forward":
  # 		bot.move_and_slide(-facing * bot.MOVE_SPEED * delta, Vector3.UP)
  # 	"move_backward":
  # 		bot.move_and_slide(facing * bot.MOVE_SPEED * delta, Vector3.UP)
  # 	"turn_left":
  # 		bot.rotate(Vector3.UP, deg2rad(90 / bot.duration * delta))
  # 	"turn_right":
  # 		bot.rotate(Vector3.UP, deg2rad(-90 / bot.duration * delta))

template forward*(distance = 1.0) =
  godot.print("moving " & $distance & ":" & $VELOCITY)
  let finish = now() + int((distance * MOVE_DURATION) * 1000).milliseconds
  while now() < finish:
    move(bot_env)
    yield

template back*(distance = 1.0) =
  godot.print("moving " & $distance & ":" & $-VELOCITY)
  let finish = now() + int(distance).seconds
  while now() < finish:
    yield

template left*(degrees = 90.0) =
  godot.print("turning " & $degrees)
  let finish = now() + int(duration).seconds
  while now() < finish:
    yield

template right*(degrees = -90.0) =
  godot.print("turning " & $degrees)
  let finish = now() + int(duration).seconds
  while now() < finish:
    yield

template fd*(distance = 1.0) =
  forward(distance)

template bk*(distance = 1.0) =
  back(distance)

template lt*(distance = 1.0) =
  left(distance)

template rt*(distance = 1.0) =
  right(distance)

gdobj NimBot of KinematicBody:
  var skin: Spatial
  var material* {.gdExport.}: Material
  var name* {.gdExport.}: string
  var current_command: string
  var script: iterator(bot_env:BotEnv)
  var bot_env: BotEnv

  method ready*() =
    self.bot_env = BotEnv(body: self.as(KinematicBody), delta: 0.0)
    self.skin = self.get_node("Mannequiny").as(Spatial)
    let mesh = self.skin.get_node("root/Skeleton/body001").as(MeshInstance)
    mesh.material_override = self.material
    discard self.skin.callv("transition_to", new_array(1.new_variant))
    try:
      self.script = scripts[self.name]
    except:
      print(get_current_exception_msg())

  method process*(delta: float64) =
    if self.script == nil:
      print("nil script")
    else:
      self.bot_env.delta = delta
      self.script(self.bot_env)
