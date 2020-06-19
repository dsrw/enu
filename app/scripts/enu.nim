var
  speed* = 1.0

proc forward*(steps = 1.0) = discard
proc back*(steps = 1.0)    = discard
proc left*(degrees = 90.0) = discard
proc right*(degrees = 90.0)= discard
proc fd*(steps = 1.0)      = forward(steps)
proc bk*(steps = 1.0)      = back(steps)
proc lt*(degrees = 90.0)   = left(degrees)
proc rt*(degrees = 90.0)   = right(degrees)
proc print*(msg: string)   = discard
proc play*(animation_name: string)      = discard
proc set_speed*(spd: float) = speed = spd
proc walk*() =
  speed = 1.0
  play("walk")

proc run*() =
  speed = 5.0
  play("run")

template main*(rules) =
  proc main*() =
    rules
  proc get_speed*(): float   = speed
