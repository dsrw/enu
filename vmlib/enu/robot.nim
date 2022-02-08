import helpers, strutils, types, math
var move_mode = 1
import base_api

proc walk*() =
  me.speed = 1.0
  #me.play("walk")

proc run*() =
  me.speed = 5.0
  #me.play("run")

