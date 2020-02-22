import enupkg/engine, os, strformat

proc forward(e: Engine, a: VmArgs) =
  let steps = get_float(a, 0)
  echo &"forward {steps}"
  e.pause()

proc back(e: Engine, a: VmArgs) =
  let steps = get_float(a, 0)
  echo &"back {steps}"
  e.pause()

while true:
  let engine = load("myscript.nim")
  if engine != nil:
    engine.expose("exposed", "forward", forward)
    engine.expose("exposed", "back", back)
    engine.call("run")
    while engine.resume():
      sleep(250)
