import random

# API
proc forward*(steps = 1.0)          = discard
proc back*(steps = 1.0)             = discard
proc left*(steps = 1.0)             = discard
proc right*(steps = 1.0)            = discard
proc turn_left*(degrees = 90.0)     = discard
proc turn_right*(degrees = 90.0)    = discard
proc turn_up*(degrees = 90.0)       = discard
proc turn_down*(degrees = 90.0)     = discard
proc up*(steps = 1.0)               = discard
proc down*(steps = 1.0)             = discard
proc fd*(steps = 1.0)               = forward(steps)
proc bk*(steps = 1.0)               = back(steps)
proc lt*(steps = 1.0)               = left(steps)
proc rt*(steps = 1.0)               = right(steps)
proc tl*(degrees = 90.0)            = turn_left(degrees)
proc tr*(degrees = 90.0)            = turn_right(degrees)
proc tu*(degrees = 90.0)            = turn_up(degrees)
proc td*(degrees = 90.0)            = turn_down(degrees)
