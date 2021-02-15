import helpers, strutils, logo
export helpers
{.push define: skip_3d.}
include logo #except turn_up, turn_down, tu, td
{.pop.}
var
  speed* = 1.0

proc echo*(msg: string)             = discard
proc play*(animation_name: string)  = discard
proc set_speed*(spd: float)         = speed = spd

proc walk*() =
  speed = 1.0
  play("walk")

proc run*() =
  speed = 5.0
  play("run")
