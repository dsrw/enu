import helpers
export helpers

var
  speed* = 1.0

# API
proc forward*(steps = 1.0)         = discard
proc back*(steps = 1.0)            = discard
proc left*(steps = 1.0)            = discard
proc right*(steps = 1.0)           = discard
proc turn_left*(degrees = 90.0)    = discard
proc turn_right*(degrees = 90.0)   = discard
proc fd*(steps = 1.0)              = forward(steps)
proc bk*(steps = 1.0)              = back(steps)
proc lt*(steps = 1.0)              = left(steps)
proc rt*(steps = 1.0)              = right(steps)
proc tl*(degrees = 90.0)           = turn_left(degrees)
proc tr*(degrees = 90.0)           = turn_right(degrees)
proc print*(msg: string)           = discard
proc echo*(msg: string)            = discard
proc play*(animation_name: string) = discard
proc set_speed*(spd: float)        = speed = spd

proc walk*() =
  speed = 1.0
  play("walk")

proc run*() =
  speed = 5.0
  play("run")
