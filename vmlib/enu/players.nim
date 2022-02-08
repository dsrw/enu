import types

let player* = PlayerType()
let me = player

proc get_position(): Vector3 = discard
proc get_rotation(): Vector3 = discard
proc set_velocity(v: Vector3) = discard
proc get_velocity(): Vector3 = discard

# me.ctrl.get_position = proc(): Vector3 =
#   get_position()
#
# me.ctrl.get_rotation = proc(): Vector3 =
#   get_rotation()
#
# me.ctrl.get_velocity = proc(): Vector3 =
#   get_velocity()
#
# me.ctrl.set_velocity = proc(v: Vector3) =
#   set_velocity(v)

proc bounce*(me: PlayerType, power = 1.0) =
  me.velocity = me.velocity + UP * power * 30
