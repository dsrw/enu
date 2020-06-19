import macros

var
  speed* = 0.1
  index* = 0

proc forward*(steps = 1) = discard
proc back*(steps = 1)    = discard
proc left*(degrees = 90.0) = discard
proc right*(degrees = 90.0)= discard
proc up*(steps = 1) = discard
proc down*(steps = 1) = discard
proc fd*(steps = 1)      = forward(steps)
proc bk*(steps = 1)      = back(steps)
proc lt*(degrees = 90.0)   = left(degrees)
proc rt*(degrees = 90.0)   = right(degrees)
proc print*(msg: string)   = discard
proc echo*(msg: string)   = discard

proc fill_square*(length = 1) =
  for l in 0..length:
    for i in 0..3:
      forward(length - l)
      right()

template main*(rules) =
  proc main*() =
    rules
  proc get_speed*(): float   = speed
  proc get_index*(): int = index

macro debug*(x: typed): untyped =
  let s = x.toStrLit
  let r = quote do:
    echo(`s` & " = " & $`x`)
  return r
