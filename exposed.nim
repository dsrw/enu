
proc forward*(steps = 1.0) = discard
proc back*(steps = 1.0)    = discard
proc fd*(steps = 1.0)      = forward(steps)
proc bk*(steps = 1.0)      = back(steps)

template go*(rules) =
  proc build_rules*() =
    rules
  
  when not defined(vm):
    build_rules()