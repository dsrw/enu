import types

type
  PlayerType* = ref object of ScriptNode3D

let player* = PlayerType(ctrl: Controller())
let self = player

proc quit*(exit_code = 0) = discard
proc get_position(): Vector3 = discard
proc get_rotation(): Vector3 = discard

self.ctrl.get_position = proc(): Vector3 =
  get_position()

self.ctrl.get_rotation = proc(): Vector3 =
  get_rotation()
